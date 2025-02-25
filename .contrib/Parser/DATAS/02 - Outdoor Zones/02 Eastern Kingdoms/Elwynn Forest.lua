---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(ELWYNN_FOREST, {
		["lore"] = "Elwynn Forest is the starting zone for Human characters. It is a lush valley with farmers and loggers, with Stormwind City at its center. The mines are infested by kobolds and the farmlands have been taken over by the Defias.",
		["icon"] = 236761,
		-- #if AFTER CATA
		["maps"] = {
			38,	-- Fargodeep Mine Lv1
			39,	-- Fargodeep Mine Lv2
			40,	-- Jasperlode Mine
		},
		-- #endif
		["groups"] = {
			m(NORTHSHIRE_VALLEY, {
				["lore"] = "Northshire was the pride of Stormwind's vineyards until recently when Defias bandits drove off the farmers and occupied the farm and fields. This is where the human starting area is located, though the serene valley is visited by adventurers from all over the world.",
				["icon"] = 236447,
				-- #if BEFORE MOP
				["zone-text-areas"] = {
					9,	-- Northshire Valley
					59,	-- Northshire Vineyards
					24,	-- Northshire Abbey
					34,	-- Echo Ridge Mine
				},
				-- #endif
				["groups"] = {
					n(QUESTS, {
						q(783, {	-- A Threat Within
							["qg"] = 823,	-- Deputy Willem
							["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(28762, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(57255, {	-- Worg Handler's Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(29078, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(131899, {	-- Chaser's Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57253, {	-- Northshire Abbot's Cinch
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(118532, {	-- Runner's Belt
									["timeline"] = { ADDED_6_0_2 },
								}),
								i(57254, {	-- Runner's Boots
									["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },	-- They were available at some point, but not sure when removed.
								}),
								i(57255, {	-- Worg Handler's Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28767, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(131899, {	-- Chaser's Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57254, {	-- Runner's Boots
									["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },	-- They were available at some point, but not sure when removed.
								}),
							},
						}),
						q(28766, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(57255, {	-- Worg Handler's Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28763, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(57253, {	-- Northshire Abbot's Cinch
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28764, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(118532, {	-- Runner's Belt
									["timeline"] = { ADDED_6_0_2 },
								}),
								i(57254, {	-- Runner's Boots
									["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },	-- They were available at some point, but not sure when removed.
								}),
							},
						}),
						q(28757, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(57253, {	-- Northshire Abbot's Cinch
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28765, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(57253, {	-- Northshire Abbot's Cinch
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(31139, {	-- Beating Them Back!
							["qg"] = 197,	-- Marshal McBride
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { HUMAN, KULTIRAN },
							["classes"] = { DEATHKNIGHT, DRUID, MONK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/6 Blackrock Worg slain
									["provider"] = { "n", 49871 },	-- Blackrock Worg
								}),
								i(118532, {	-- Runner's Belt
									["timeline"] = { ADDED_6_0_2 },
								}),
								i(57254, {	-- Runner's Boots
									["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },	-- They were available at some point, but not sure when removed.
								}),
							},
						}),
						q(26389, {	-- Blackrock Invasion
							["qg"] = 197,	-- Marshal McBride
							["sourceQuests"] = {
								28819,	-- The Rear is Clear (human paladin)
								28822,	-- The Rear is Clear (human warlock)
								-- #if AFTER 5.0.4
								31145,	-- The Rear is Clear (human monk)
								-- #endif
								28821,	-- The Rear is Clear (human rogue)
								28817,	-- The Rear is Clear (human hunter)
								28823,	-- The Rear is Clear (human warrior)
								28820,	-- The Rear is Clear (human priest)
								28818,	-- The Rear is Clear (human mage)
								29083,	-- The Rear is Clear (non-human)
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Orc Weapon
									["provider"] = { "i", 58361 },	-- Blackrock Orc Weapon
									["cr"] = 42937,	-- Blackrock Invader
								}),
								-- #if BEFORE 7.3.5
								-- CRIEVE NOTE: Not sure at which patch, but these were moved to Ending the Invasion
								-- The shortsword was lost forever.
								i(133699, {	-- Militia Dagger
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(2224, {	-- Militia Dagger
									-- CRIEVE NOTE: Not sure at which patch, but the dagger was lost forever.
									["timeline"] = { REMOVED_7_0_3 },
								}),
								i(5580),	-- Militia Hammer
								i(1161, {	-- Militia Shortsword
									["timeline"] = { ADDED_4_0_3, REMOVED_7_3_5 },
								}),
								i(5579),	-- Militia Warhammer
								i(1159, {	-- Militia Quarterstaff
									["timeline"] = { ADDED_4_0_3, REMOVED_7_3_5 },
								}),
								i(85575, {	-- Peacebringer's Staff
									-- At some point this staff replaced the other one.
									["timeline"] = { CREATED_5_0_4, ADDED_7_3_5 },
								}),
								-- #endif
							},
						}),
						q(6, {	-- Bounty on Garrick Padfoot
							["qg"] = 823,	-- Deputy Willem
							["sourceQuest"] = 18,	-- Brotherhood of Thieves
							["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Garrick's Head
									["provider"] = { "i", 182 },	-- Garrick's Head
									["coord"] = { 57.4, 48.6, ELWYNN_FOREST },
									["cr"] = 103,	-- Garrick Padfoot
								}),
								i(6076, {	-- Tapered Pants
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(60, {	-- Layered Tunic
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(3070, {	-- Ensign Cloak
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(18, {	-- Brotherhood of Thieves
							["qg"] = 823,	-- Deputy Willem
							["coord"] = { 48.2, 42.8, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/12 Red Burlap Bandana
									["provider"] = { "i", 752 },	-- Red Burlap Bandana
									["cr"] = 38,	-- Defias Thug
								}),
								i(2224, {	-- Militia Dagger
									-- CRIEVE NOTE: Not sure at which patch, but the dagger was lost forever.
									["timeline"] = { REMOVED_7_3_5 },
								}),
								i(5580),	-- Militia Hammer
								i(1161, {	-- Militia Shortsword
									-- CRIEVE NOTE: Not sure at which patch, but the shortsword was lost forever.
									["timeline"] = { REMOVED_7_3_5 },
								}),
								i(5579),	-- Militia Warhammer
								i(1159, {	-- Militia Quarterstaff
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(31141, {	-- Calligraphed Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 85160 },	-- Calligraphed Letter
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MONK },
						}),
						q(26913, {	-- Charging into Battle
							["qg"] = 911,	-- Llane Beshere <Warrior Trainer>
							["sourceQuest"] = 3100,	-- Simple Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 40.6, 53.6, NORTHSHIRE_VALLEY },
								-- #else
								{ 50.2, 42.2, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
							["groups"] = {
								objective(1, {	-- Practice Charge
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						q(3101, {	-- Consecrated Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9570 },	-- Consecrated Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PALADIN },
							["races"] = { HUMAN },
						}),
						-- #if AFTER 5.0.4
						q(26914, {	-- Corruption [MOP] / Immolation [CATA]
							["qg"] = 459,	-- Drusilla La Salle <Warlock Trainer>
							["sourceQuest"] = 3105,	-- Tainted Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 39.6, 55.2, NORTHSHIRE_VALLEY },
								-- #else
								{ 49.8, 42.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["groups"] = {
								objective(1, {	-- Practice Corruption
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #endif
						q(5261, {	-- Eagan Peltskinner
							["qg"] = 823,	-- Deputy Willem
							["sourceQuest"] = 783,	-- A Threat Within
							["coord"] = { 48.17, 42.94, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(3102, {	-- Encrypted Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9555 },	-- Encrypted Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
						}),
						q(26390, {	-- Ending the Invasion!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 26389,	-- Blackrock Invasion
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/1 Kurtok the Slayer slain
									["provider"] = { "n", 42938 },	-- Kurtok the Slayer
								}),
								i(57393, {	-- Abbey Defender's Crossbow
									["timeline"] = { ADDED_4_0_3 },
								}),
								-- #if AFTER 7.3.5
								-- CRIEVE NOTE: Not sure at which patch, but these were moved from Blackrock Invasion.
								-- They ended up replacing the Mitts + Wand.
								i(133699, {	-- Militia Dagger
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(5580),	-- Militia Hammer
								i(5579),	-- Militia Warhammer
								i(85575, {	-- Peacebringer's Staff
									["timeline"] = { ADDED_5_0_4 },
								}),
								-- #endif
								-- CRIEVE NOTE: The following two items were replaced with the above items.
								i(57392, {	-- Willem's Mitts
									["timeline"] = { ADDED_4_0_3, REMOVED_7_3_5 },
								}),
								i(57394, {	-- Long Lost Wand
									["timeline"] = { ADDED_4_0_3, REMOVED_7_3_5 },
								}),
							},
						}),
						q(26910, {	-- Etched Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 60677 },	-- Etched Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
						}),
						q(26391, {	-- Extinguishing Hope
							["qg"] = 9296,	-- Milly Osworth
							["sourceQuests"] = {
								28819,	-- The Rear is Clear (human paladin)
								28822,	-- The Rear is Clear (human warlock)
								-- #if AFTER 5.0.4
								31145,	-- The Rear is Clear (human monk)
								-- #endif
								28821,	-- The Rear is Clear (human rogue)
								28817,	-- The Rear is Clear (human hunter)
								28823,	-- The Rear is Clear (human warrior)
								28820,	-- The Rear is Clear (human priest)
								28818,	-- The Rear is Clear (human mage)
								29083,	-- The Rear is Clear (non-human)
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 33.3, 54.6, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/8 Vineyard Fire Extinguished
									["provider"] = { "i", 58362 },	-- Milly's Fire Extinguisher
								}),
								i(57247, {	-- Grape-Picking Sack
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(11475),	-- Wine-stained Cloak
							},
						}),
						q(28811, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28787,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57257, {	-- Borderlands Bracers
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28812, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28788,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57256, {	-- Northshire Abbot's Shoes
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28810, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28786,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57256, {	-- Northshire Abbot's Shoes
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28813, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28789,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57258, {	-- Wolf Hunter's Vest
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28806, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28780,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(131874, {	-- Light Gleaming Bracers
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(28808, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28784,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57256, {	-- Northshire Abbot's Shoes
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28809, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 28785,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57258, {	-- Wolf Hunter's Vest
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(29082, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 29080,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, KULTIRAN, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57257, {	-- Borderlands Bracers
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131874, {	-- Light Gleaming Bracers
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57256, {	-- Northshire Abbot's Shoes
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57258, {	-- Wolf Hunter's Vest
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(63447, {	-- Fear No Evil
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 29080,	-- Join the Battle
							["coords"] = {
								-- #if AFTER MOP
								{ 35.3, 37.9, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.6, 38.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_9_0_5 },
							["races"] = { KULTIRAN },
							["groups"] = {
								objective(1, {	-- 0/4 Injured Soldier Revived
									["providers"] = {
										{ "n", 50047 },	-- Injured Stormwind Infantry
										{ "i", 65733 },	-- Paxton's Prayer Book
									},
								}),
								i(57257, {	-- Borderlands Bracers
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131874, {	-- Light Gleaming Bracers
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57256, {	-- Northshire Abbot's Shoes
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57258, {	-- Wolf Hunter's Vest
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(3104, {	-- Glyphic Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9571 },	-- Glyphic Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
						}),
						q(3905, {	-- Grape Manifest
							["providers"] = {
								{ "n", 9296 },	-- Milly Osworth
								{ "i", 11125 },	-- Grape Manifest
							},
							["sourceQuest"] = 3904,	-- Milly's Harvest
							["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								i(2690, {	-- Latched Belt
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(11475),	-- Wine-stained Cloak
							},
						}),
						q(3103, {	-- Hallowed Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9548 },	-- Hallowed Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
						}),
						-- #if BEFORE 5.0.4
						q(26919, {	-- Healing the Wounded [CATA] / Learning the Word [MOP]
							["qg"] = 375,	-- Priestess Anetta <Priest Trainer>
							["sourceQuest"] = 3103,	-- Hallowed Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 39.2, 44.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 49.8, 39.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["groups"] = {
								objective(1, {	-- Heal Wounded Trainee
									["provider"] = { "n", 44564 },	-- Wounded Trainee
								}),
							},
						}),
						q(26914, {	-- Immolation [CATA] / Corruption [MOP]
							["qg"] = 459,	-- Drusilla La Salle <Warlock Trainer>
							["sourceQuest"] = 3105,	-- Tainted Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 39.6, 55.2, NORTHSHIRE_VALLEY },
								-- #else
								{ 49.8, 42.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["groups"] = {
								objective(1, {	-- Practice Immolation
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #endif
						q(5623, {	-- In Favor of the Light
							["qg"] = 375,	-- Priestess Anetta <Priest Trainer>
							["coord"] = { 49.8, 39.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["isBreadcrumb"] = true,
							["lvl"] = 5,
						}),
						q(345, {	-- Ink Supplies
							["qg"] = 951,	-- Brother Paxton
							["sourceQuest"] = 344,	-- Brother Paxton (quest in Stormwind)
							["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 20,
						}),
						q(15, {	-- Investigate Echo Ridge
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Kobold Worker
									["provider"] = { "n", 257 },	-- Kobold Worker
								}),
							},
						}),
						q(29080, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 29079,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, MECHAGNOME }, ALLIANCE_ONLY),
						}),
						q(28789, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28774,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
						}),
						q(28786, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28771,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
						}),
						q(28785, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28770,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
						}),
						q(28787, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28772,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
						}),
						q(28784, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28769,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
						}),
						q(28780, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28759,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
						}),
						q(28788, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28773,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
						}),
						q(31143, {	-- Join the Battle!
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 31140,	-- Lions for Lambs
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { KULTIRAN, HUMAN },
							["classes"] = { DRUID, MONK },
						}),
						q(7, {	-- Kobold Camp Cleanup
							["qg"] = 197,	-- Marshal McBride
							["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Kobold Vermin
									["provider"] = { "n", 6 },	-- Kobold Vermin
								}),
							},
						}),
						-- #if AFTER 5.0.4
						q(26919, {	-- Learning the Word [MOP] / Healing the Wounded [CATA]
							["qg"] = 375,	-- Priestess Anetta <Priest Trainer>
							["sourceQuest"] = 3103,	-- Hallowed Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 39.2, 44.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 49.8, 39.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["groups"] = {
								objective(1, {	-- Practice Shadow Word: Pain
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #endif
						q(28771, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28763,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57386, {	-- Northshire Abbot's Robe
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28772, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28764,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57387, {	-- Spymaster's Legs
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28773, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28765,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57386, {	-- Northshire Abbot's Robe
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28774, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28766,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57388, {	-- Stormwind Infantry Belt
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28759, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28767,	-- Beating Them Back
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(131875, {	-- Spy Dispatchers Greaves
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(29079, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 29078,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57386, {	-- Northshire Abbot's Robe
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131875, {	-- Spy Dispatchers Greaves
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57387, {	-- Spymaster's Legs
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57388, {	-- Stormwind Infantry Belt
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(31140, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 31139,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { HUMAN, KULTIRAN },
							["classes"] = { DEATHKNIGHT, DRUID, MONK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57387, {	-- Spymaster's Legs
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28769, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28757,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57386, {	-- Northshire Abbot's Robe
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(28770, {	-- Lions for Lambs
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 28762,	-- Beating Them Back!
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Blackrock Spy slain
									["provider"] = { "n", 49874 },	-- Blackrock Spy
								}),
								i(57388, {	-- Stormwind Infantry Belt
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(26916, {	-- Mastering the Arcane
							["qg"] = 198,	-- Khelden Bremen <Mage Trainer>
							["sourceQuest"] = 3104,	-- Glyphic Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 38.6, 43.6, NORTHSHIRE_VALLEY },
								-- #else
								{ 49.6, 39.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
							["groups"] = {
								objective(1, {	-- Practice Frost Nova
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77619, {	-- Meditation on the Light
							["qg"] = 375,	-- Priestess Anetta <Priest Trainer>
							["coord"] = { 49.8, 39.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PRIEST },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
									["provider"] = { "i", 205951 },	-- Memory of a Troubled Acolyte
									["coord"] = { 48.2, 30.2, ELWYNN_FOREST },
									["description"] = "Kneel (/kneel) inside Northshire Abbey to gain a Meditation buff, then use the Rune to complete the quest.",
									["cr"] = 80,	-- Kobold Laborer
								}),
								recipe(402862),	-- Engrave Gloves - Penance
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						-- #endif
						q(3903, {	-- Milly Osworth
							["qg"] = 823,	-- Deputy Willem
							["sourceQuest"] = 18,	-- Brotherhood of Thieves
							["coord"] = { 48.2, 42.8, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
						}),
						q(3904, {	-- Milly's Harvest
							["qg"] = 9296,	-- Milly Osworth
							["sourceQuest"] = 3903,	-- Milly Osworth
							["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/8 Milly's Harvest
									["providers"] = {
										{ "o", 161557 },	-- Milly's Harvest
										{ "i",  11119 },	-- Milly's Harvest
									},
								}),
							},
						}),
						q(31142, {	-- Palm of the Tiger
							["qg"] = 63258,	-- Bao
							["sourceQuest"] = 31141,	-- Calligraphed Letter
							["coord"] = { 41.0, 52.2, NORTHSHIRE_VALLEY },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MONK },
							["groups"] = {
								objective(1, {	-- Practice Tiger Palm
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77617, {	-- Relics of the Light
							["qg"] = 925,	-- Brother Sammuel <Paladin Trainer>
							["coord"] = { 50.4, 42.0, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PALADIN },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Crusader Strike
									["provider"] = { "i", 205420 },	-- Libram of Judgement
									["cr"] = 38,	-- Defias Thug
								}),
								recipe(410002),	-- Engrave Gloves - Crusader Strike
								i(2385),	-- Tarnished Chain Gloves
							},
						})),
						-- #endif
						q(54, {	-- Report to Goldshire
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 745 },	-- Marshal McBride's Documents
							},
							["sourceQuests"] = {
								-- #if BEFORE CATA
								21,	-- Skirmish at Echo Ridge
								-- #else
								26390,	-- Ending the Invasion
								-- #endif
							},
							["coords"] = {
								-- #if BEFORE CATA
								{ 48.9, 41.6, ELWYNN_FOREST },
								-- #elseif AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["isBreadcrumb"] = true,	-- TODO Not required for q:62, confirm it becomes unavailable with q:62 complete
							["races"] = exclude({ DRACTHYR_ALLIANCE, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								i(131876, {	-- Deputy's Chainmail
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57390, {	-- Goldshire Heavy Jacket
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57389, {	-- Innkeeper's Longstockings
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(6078),	-- Pikeman Shield
								i(57391, {	-- Pikeman Trousers
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(2158, {	-- Rest and Relaxation
							["qg"] = 6774,	-- Falkhaan Isenstrider
							["coords"] = {
								-- #if AFTER MOP
								{ 24.2, 73.4, NORTHSHIRE_VALLEY },
								-- #else
								{ 45.6, 47.8, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_6_0_2 },
							-- #if AFTER 6.0.2
							["description"] = "This quest gets marked as completed when you complete the quest 'Rest and Relaxation' (37112).",
							-- #endif
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(57395, {	-- Lion's Pride Bracer
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57396, {	-- Innkeeper's Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(132094, {	-- Proprietor's Mitts
									-- this is the only source, but it's added to a quest after the quest was removed?? what
									-- ["timeline"] = { ADDED_7_0_3 },
								}),
								i(57397, {	-- Goldshire Iron Bracer
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(37112, {	-- Rest and Relaxation
							["qg"] = 6774,	-- Falkhaan Isenstrider
							["coords"] = {
								-- #if AFTER MOP
								{ 45.4, 49.0, ELWYNN_FOREST },
								-- #else
								{ 45.6, 47.8, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_6_0_2 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(57395, {	-- Lion's Pride Bracer
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57396, {	-- Innkeeper's Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131715, {	-- Smith's Chain Gloves
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57397, {	-- Goldshire Iron Bracer
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(346, {	-- Return to Kristoff
							["providers"] = {
								{ "n", 951 },	-- Brother Paxton
								{ "i", 2795 },	-- Book: Stresses of Iron
							},
							["sourceQuest"] = 347,	-- Rethban Ore (quest in Redridge Mountains)
							["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 20,
							["groups"] = {
								i(6095, {	-- Wandering Boots
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(3100, {	-- Simple Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9542 },	-- Simple Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.8, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
						}),
						q(21, {	-- Skirmish at Echo Ridge
							["qg"] = 197,	-- Marshal McBride
							["sourceQuest"] = 15,	-- Investigate Echo Ridge
							["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/12 Kobold Laborer
									["provider"] = { "n", 80 },	-- Kobold Laborer
								}),
								i(2186),	-- Outfitter Belt
								i(2691),	-- Outfitter Boots
								i(11192),	-- Outfitter Gloves
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77620, {	-- Spell Research
							["providers"] = {
								{ "n", 198 },	-- Khelden Bremen <Mage Trainer>
								{ "i", 211809 },	-- Comprehension Primer
							},
							["coord"] = { 49.6, 39.4, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { MAGE },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Ice Lance
									["provider"] = { "i", 203745 },	-- Spell Notes: Ice Lance
								}),
								recipe(401760),	-- Engrave Gloves - Ice Lance
								i(211779),	-- Comprehension Charm
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						applyclassicphase(SOD_PHASE_ONE, q(77621, {	-- Stolen Power
							["qg"] = 459,	-- Drusilla La Salle <Warlock Trainer>
							["coord"] = { 49.8, 42.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARLOCK },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
									["provider"] = { "i", 205230 },	-- Rune of Haunting
								}),
								recipe(403919),	-- Engrave Gloves - Haunt
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						-- #endif
						q(3105, {	-- Tainted Letter
							["providers"] = {
								{ "n", 197 },	-- Marshal McBride
								{ "i", 9576 },	-- Tainted Letter
							},
							["sourceQuest"] = 7,	-- Kobold Camp Cleanup
							["coords"] = {
								-- #if AFTER MOP
								{ 33.5, 53.0, NORTHSHIRE_VALLEY },
								-- #elseif AFTER CATA
								{ 48.0, 42.0, ELWYNN_FOREST },
								-- #else
								{ 48.8, 41.6, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
						}),
						q(26915, {	-- The Deepest Cut
							["qg"] = 915,	-- Jorik Kerridan <Rogue Trainer>
							["sourceQuest"] = 3102,	-- Encrypted Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 41.8, 45.8, NORTHSHIRE_VALLEY },
								-- #else
								{ 50.3, 39.9, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
							["groups"] = {
								objective(1, {	-- Practice Eviscerate
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						q(26917, {	-- The Hunter's Path
							["qg"] = 43278,	-- Ashley Blank <Hunter Trainer>
							["sourceQuest"] = 26910,	-- Etched Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 34.6, 55.8, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.5, 42.5, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
							["groups"] = {
								objective(1, {	-- Practice Steady Shot
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77616, {	-- The Lost Rune
							["qg"] = 911,	-- Llane Beshere <Warrior Trainer>
							["coord"] = { 50.2, 42.2, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
									["providers"] = {
										{ "i", 204806 },	-- Rune of Victory Rush
										{ "o", 397987 },	-- Kobold Stashbox
									},
									["coord"] = { 50.6, 27.2, ELWYNN_FOREST },
								}),
								recipe(403470),	-- Engrave Gloves - Victory Rush
								i(2385),	-- Tarnished Chain Gloves
							},
						})),
						-- #endif
						q(26918, {	-- The Power of the Light
							["qg"] = 925,	-- Brother Sammuel <Paladin Trainer>
							["sourceQuest"] = 3101,	-- Consecrated Letter
							["coords"] = {
								-- #if AFTER MOP
								{ 41.2, 53.0, NORTHSHIRE_VALLEY },
								-- #else
								{ 50.4, 42.0, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { PALADIN },
							["races"] = { HUMAN },
							["groups"] = {
								objective(1, {	-- Practice Seal of Command
									["provider"] = { "n", 44548 },	-- Training Dummy
								}),
							},
						}),
						q(28819, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28793,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
						}),
						q(28822, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28796,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
						}),
						q(31145, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 31144,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { HUMAN, KULTIRAN },
							["classes"] = { DRUID, MONK },
						}),
						q(28821, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28795,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
						}),
						q(28817, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28791,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
						}),
						q(28823, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28797,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
						}),
						q(28820, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28794,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
						}),
						q(28818, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28792,	-- They Sent Assassins
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
						}),
						q(29083, {	-- The Rear is Clear
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 29081,	-- They Sent Assassin
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, MECHAGNOME }, ALLIANCE_ONLY),
						}),
						q(1598, {	-- The Stolen Tome
							["qg"] = 459,	-- Drusilla La Salle <Warlock Trainer>
							["altQuests"] = { 1599 },	-- Beginnings
							["coord"] = { 49.9, 42.6, ELWYNN_FOREST },
							["timeline"] = { REMOVED_3_3_0 },
							["races"] = ALLIANCE_ONLY,
							["classes"] = { WARLOCK },
							-- #if BEFORE 3.3.0
							["groups"] = {
								objective(1, {	-- 0/1 Powers of the Void
									["provider"] = { "i", 6785 },	-- Powers of the Void
									["coord"] = { 56.7, 44.0, ELWYNN_FOREST },
								}),
								recipe(688),	-- Summon Imp
							},
							-- #endif
						}),
						q(28792, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28784,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { MAGE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(11192),	-- Outfitter Gloves
							},
						}),
						q(31144, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 31143,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { KULTIRAN, HUMAN },
							["classes"] = { DRUID, MONK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(2186),	-- Outfitter Gloves
							},
						}),
						q(28794, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28786,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PRIEST },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(11192),	-- Outfitter Gloves
							},
						}),
						q(28793, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28785,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { PALADIN },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(2691),	-- Outfitter Boots
							},
						}),
						q(28795, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28787,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { ROGUE },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(2186),	-- Outfitter Gloves
							},
						}),
						q(28797, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28789,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARRIOR },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(2691),	-- Outfitter Boots
							},
						}),
						q(28791, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28780,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { HUNTER },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(131924, {	-- Outrider Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(28796, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 28788,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { HUMAN },
							["classes"] = { WARLOCK },
							["_drop"] = { "g" },	-- API returns all 4 armor classes, despite these quests being class-restricted
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(11192),	-- Outfitter Gloves
							},
						}),
						q(29081, {	-- They Sent Assassins
							["qg"] = 823,	-- Sergeant Willem
							["sourceQuest"] = 29080,	-- Join the Battle!
							["coords"] = {
								-- #if AFTER MOP
								{ 35.7, 39.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 48.8, 38.4, ELWYNN_FOREST },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_6 },
							["races"] = exclude({ DRACTHYR_ALLIANCE, HUMAN, MECHAGNOME }, ALLIANCE_ONLY),
							["groups"] = {
								objective(1, {	-- 0/8 Goblin Assassin slain
									["provider"] = { "n", 50039 },	-- Goblin Assassin
								}),
								i(2186),	-- Outfitter Belt
								i(2691),	-- Outfitter Boots
								i(11192),	-- Outfitter Gloves
								i(131924, {	-- Outrider Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77618, {	-- Thrice Stolen
							["qg"] = 915,	-- Jorik Kerridan <Rogue Trainer>
							["coord"] = { 50.6, 40.0, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { ROGUE },
							["races"] = { HUMAN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
									["provider"] = { "i", 204795 },	-- Rune of Shadowstrike
								}),
								recipe(400105),	-- Engrave Gloves - Shadowstrike
								i(2125),	-- Cracked Leather Gloves
							},
						})),
						-- #endif
						q(33, {	-- Wolves Across the Border
							["qg"] = 196,	-- Eagan Peltskinner
							["sourceQuest"] = 5261,	-- Eagan Peltskinner
							["coord"] = { 48.9, 40.1, ELWYNN_FOREST },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Tough Wolf Meat
									["provider"] = { "i", 750 },
									["crs"] = {
										299,	-- Young Wolf
										69,	-- Timber Wolf
									},
								}),
								i(80, {	-- Soft Fur-lined Shoes
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(6070, {	-- Wolfskin Bracers
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
					}),
					-- #if AFTER 4.0.3
					n(RARES, {
						n(62, {	-- Gug Fatcandle
							["coord"] = { 31.6, 16.7, NORTHSHIRE_VALLEY },
							["timeline"] = { ADDED_4_0_3 },
							["groups"] = {
								i(56147, {	-- Fatcandle Bag
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(2055, {	-- Small Wooden Hammer
									["timeline"] = { ADDED_10_1_7 },
								}),
							},
						}),
					}),
					-- #endif
					n(VENDORS, {
						n(190, {	-- Dermot Johns <Cloth & Leather Armor Merchant>
							["coords"] = {
								-- #if AFTER MOP
								{ 31.3, 50.6, NORTHSHIRE_VALLEY },
								-- #else
								{ 47.6, 41.4, ELWYNN_FOREST },	-- WoWhead data
								-- #endif
							},
							["sym"] = {{"select","itemID",
								2122,	-- Cracked Leather Belt
								2123,	-- Cracked Leather Boots
								2124,	-- Cracked Leather Bracers
								2125,	-- Cracked Leather Gloves
								2126,	-- Cracked Leather Pants
								2127,	-- Cracked Leather Vest
								2121,	-- Thin Cloth Armor
								3599,	-- Thin Cloth Belt
								3600,	-- Thin Cloth Bracers
								2119,	-- Thin Cloth Gloves
								2120,	-- Thin Cloth Pants
								2117,	-- Thin Cloth Shoes
							}},
						}),
						n(1213, {	-- Godric Rothgar <Armorer & Shieldcrafter>
							["coords"] = {
								-- #if AFTER MOP
								{ 31.7, 50.7, NORTHSHIRE_VALLEY },
								-- #else
								{ 47.6, 41.4, ELWYNN_FOREST },	-- WoWhead data
								-- #endif
							},
							["sym"] = {{"select","itemID",
								2129,	-- Large Round Shield
								17184,	-- Small Shield
								2380,	-- Tarnished Chain Belt
								2383,	-- Tarnished Chain Boots
								2384,	-- Tarnished Chain Bracers
								2385,	-- Tarnished Chain Gloves
								2381,	-- Tarnished Chain Leggings
								2379,	-- Tarnished Chain Vest
							}},
						}),
						n(78, {	-- Janos Hammerknuckle <Weaponsmith>
							["coords"] = {
								-- #if AFTER MOP
								{ 30.1, 52.4, NORTHSHIRE_VALLEY },
								-- #else
								{ 47.2, 41.8, ELWYNN_FOREST },	-- WoWhead data
								-- #endif
							},
							["sym"] = {{"select","itemID",
								1194,	-- Bastard Sword
								2479,	-- Broad Axe
								2130,	-- Club
								2139,	-- Dirk
								2134,	-- Hand Axe
								2480,	-- Large Club
								2131,	-- Shortsword
								2132,	-- Short Staff
							}},
						}),
					}),
					-- #if SEASON_OF_DISCOVERY
					n(TREASURES, {
						applyclassicphase(SOD_PHASE_ONE, o(387477, {	-- Defias Stashbox
							["coord"] = { 52.6, 51.8, ELWYNN_FOREST },
							["timeline"] = { REMOVED_2_0_1 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(205230, {	-- Rune of Haunting
									["classes"] = { WARLOCK },
								}),
								i(204795, {	-- Rune of Shadowstrike
									["classes"] = { ROGUE },
								}),
							},
						})),
					}),
					-- #endif
					n(ZONE_DROPS, {
						-- #if BEFORE 8.1.0.28724
						i(2057, {	-- Pitted Defias Shortsword
							["timeline"] = { REMOVED_4_0_3 },
							["cr"] = 38,	-- Defias Thug
						}),
						-- #endif
						i(2055, {	-- Small Wooden Hammer
							["timeline"] = { REMOVED_4_0_3 },
							-- #if BEFORE 4.0.3
							["cr"] = 80,	-- Kobold Laborer
							["coords"] = {
								{ 49.0, 29.0, ELWYNN_FOREST },
								{ 50.2, 26.6, ELWYNN_FOREST },
							},
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(203751, {	-- Spell Notes: CALE ENCI
							["classes"] = { MAGE },
							["cr"] = 38,	-- Defias Thug
						})),
						-- #endif
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				explorationAch(776),	-- Explore Elwynn Forest
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					646,	-- Chicken (PET!)
				}},
				["groups"] = {
					pet(374),	-- Black Lamb (PET!)
					pet(459, {	-- Cat (PET!)
						["description"] = "Found commonly around the small farmhouse SW of Northshire and on Sunstrider Isle.",
					}),
					pet(447),	-- Fawn (PET!)
					pet(378),	-- Rabbit (PET!)
					pet(419),	-- Small Frog (PET!)
					pet(379),	-- Squirrel (PET!)
					pet(675),	-- Stormwind Rat (PET!)
				},
			}),
			explorationHeader({
				exploration(62),	-- Brackwell Pumpkin Patch
				visit_exploration(18,{coord={47.4,62.2,ELWYNN_FOREST}}),	-- Crystal Lake
				exploration(88),	-- Eastvale Logging Camp
				exploration(57),	-- Fargodeep Mine
				exploration(60),	-- Forest's Edge
				exploration(87),	-- Goldshire
				-- #if AFTER CATA
				exploration(5176),	-- Goldtooth's Den
				-- #endif
				visit_exploration(56, {coord={74.5,54.0,ELWYNN_FOREST}}),	-- Heroes' Vigil
				visit_exploration(5174,{coord={24.9,94.2,ELWYNN_FOREST}}),	-- Hogger Hill
				exploration(54),	-- Jasperlode Mine
				exploration(797),	-- Jerod's Landing
				visit_exploration(5637,{coord={42.9,65.6,ELWYNN_FOREST}}),	-- Lion's Pride Inn
				visit_exploration(92, {coord={32.1,58.2,ELWYNN_FOREST}}),	-- Mirror Lake
				visit_exploration(89, {coord={31.6,64.8,ELWYNN_FOREST}}),	-- Mirror Lake Orchard
				visit_exploration(9,   {coord={45.5,48.7,ELWYNN_FOREST}}),	-- Northshire Valley
				exploration(798),	-- Ridgepoint Tower
				exploration(86),	-- Stone Cairn Lake
				exploration(1519),	-- Stormwind City
				visit_exploration(7486,{coord={33.7,50.8,ELWYNN_FOREST}}),	-- Stormwind Gate
				exploration(64),	-- The Maclure Vineyards
				exploration(63),	-- The Stonefield Farm
				exploration(91),	-- Tower of Azora
				exploration(120),	-- Westbrook Garrison
			}),
			-- #if AFTER 4.0.1.12984
			n(FLIGHT_PATHS, {
				fp(589, {	-- Eastvale Logging Camp, Elwynn
					["coord"] = { 81.8, 66.4, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_1 },
					["cr"] = 43000,	-- Goss the Swift <Gryphon Master>
					["races"] = ALLIANCE_ONLY,
				}),
				fp(582, {	-- Goldshire, Elwynn
					["coord"] = { 41.8, 64.6, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_1 },
					["cr"] = 42983,	-- Bartlett the Brave <Gryphon Master>
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(203723, {	-- Cutty's Note
						["coords"] = {
							{ 57.4, 48.6, ELWYNN_FOREST },
							{ 71.0, 80.6, ELWYNN_FOREST },
						},
						["timeline"] = { REMOVED_2_0_1 },
						["maps"] = { NORTHSHIRE_VALLEY },
						["classes"] = { ROGUE },
						["crs"] = {
							103,	-- Garrick Padfoot
							473,	-- Morgan the Collector
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(203750, {	-- Elwynn Treasure Map
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 203787, 1 },	-- Bottom-Left Map Piece
							{ "i", 203786, 1 },	-- Bottom-Right Map Piece
							{ "i", 203785, 1 },	-- Top-Left Map Piece
							{ "i", 203784, 1 },	-- Top-Right Map Piece
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(203787, {	-- Bottom-Left Map Piece
						["coord"] = { 26.2, 88.6, ELWYNN_FOREST },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cr"] = 478,	-- Riverpaw Outrunner
					})),
					applyclassicphase(SOD_PHASE_ONE, i(203786, {	-- Bottom-Right Map Piece
						["coord"] = { 79.2, 57.4, ELWYNN_FOREST },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cr"] = 46,	-- Murloc Forager
					})),
					applyclassicphase(SOD_PHASE_ONE, i(203785, {	-- Top-Left Map Piece
						["coord"] = { 68.8, 78.6, ELWYNN_FOREST },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							6866,	-- Defias Bodyguard
							116,	-- Defias Bandit
							 38,	-- Defias Thug
							474,	-- Defias Rogue Wizard
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(203784, {	-- Top-Right Map Piece
						["coord"] = { 39.3, 80.4, ELWYNN_FOREST },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							 40,	-- Kobold Miner
							475,	-- Kobold Tunneler
							257,	-- Kobold Worker
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(5545, {	-- A Bundle of Trouble
					["qg"] = 10616,	-- Supervisor Raelen
					["coord"] = { 81.4, 66.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Bundle of Wood
							["providers"] = {
								{ "i",  13872 },	-- Bundle of Wood
								{ "o", 176793 },	-- Bundle of Wood
							},
						}),
					},
				}),
				q(40, {	-- A Fishy Peril
					["qg"] = 241,	-- Remy "Two Times"
					["coord"] = { 42.2, 67.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(26393, {	-- A Swift Message
					["providers"] = {
						{ "n", 514 },	-- Smith Argus
						{ "i", 58364 },	-- Argus' Note
					},
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { HUMAN, KULTIRAN },
				}),
				q(26150, {	-- A Visit With Maybell
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 60,	-- Kobold Candles
					["coord"] = { 43.3, 65.7, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(84, {	-- Back to Billy
					["providers"] = {
						{ "n", 246 },	-- "Auntie" Bernice Stonefield
						{ "i", 962 },	-- Pork Belly Pie
					},
					["sourceQuest"] = 86,	-- Pie for Billy
					["coord"] = { 34.4, 84.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(46, {	-- Bounty on Murlocs
					["providers"] = {
						-- #if AFTER CATA
						{ "o", 203733 },	-- Bounty Board
						-- #else
						{ "n", 261 },	-- Guard Thomas
						-- #endif
					},
					-- #if BEFORE CATA
					["sourceQuest"] = 39,	-- Deliver Thomas' Report
					-- #endif
					["coord"] = { 74.0, 72.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Torn Murloc Fin
							["provider"] = { "i", 780 },	-- Torn Murloc Fin
							["crs"] = {
								46,		-- Murloc Forager
								732,	-- Murloc Lurker
							},
						}),
						i(4840),	-- Long Bayonet
						i(1158),	-- Solid Metal Club
						i(1008, {	-- Well-used Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(57248, {	-- Well-Used Greatsword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57521, {	-- Marshal's Light Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156980, {	-- Solid Wooden Club
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156981, {	-- Field Tested Spear
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(59, {	-- Cloth and Leather Armor
					["providers"] = {
						-- #if AFTER CATA
						{ "n", 261 },	-- Guard Thomas
						{ "i", 748 },	-- Stormwind Armor Marker
						-- #else
						{ "n", 240 },	-- Marshal Dughan
						{ "i", 748 },	-- Stormwind Armor Marker
						-- #endif
					},
					["sourceQuests"] = {
						-- #if AFTER CATA
						71,	-- Report to Thomas
						-- #else
						39,	-- Deliver Thomas' Report
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 73.9, 72.1, ELWYNN_FOREST },
						-- #else
						{ 42.2, 65.8, ELWYNN_FOREST },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						i(131194, {	-- Hand-Welded Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(2237),	-- Patched Pants
						i(57520, {	-- Studded Arm Protector
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(1171),	-- Well-stitched Robe
					},
				}),
				q(112, {	-- Collecting Kelp
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 107,	-- Note to William
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/4 Crystal Kelp Frond
							["provider"] = { "i", 1256 },	-- Crystal Kelp Frond
							["crs"] = {
								285,	-- Murloc
								735,	-- Murloc Streamrunner
							},
						}),
					},
				}),
				q(26394, {	-- Continue to Stormwind
					["providers"] = {
						{ "n", 42983 },	-- Bartlett the Brave
						{ "i", 58364 },	-- Argus' Note
					},
					["sourceQuest"] = 26393,	-- A Swift Message
					["coord"] = { 41.7, 64.6, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = { KULTIRAN, HUMAN },
				}),
				q(1667, {	-- Dead-tooth Jack
					["qg"] = 294,	-- Marshal Haggard
					["sourceQuest"] = 1666,	-- Marshal Haggard
					["coord"] = { 84.6, 69.4, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Marshal Haggard's Badge
							["providers"] = {
								{ "i", 6782 },	-- Marshal Haggard's Badge
								{ "o", 85563 },	-- Dead-tooth's Strongbox
							},
							["cost"] = { { "i", 6783, 1 } },	-- Dead-tooth's Key
							["coord"] = { 89.2, 80.6, ELWYNN_FOREST },
							["cr"] = 6093,	-- Dead-Tooth Jack
						}),
						i(6979, {	-- Haggard's Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6980, {	-- Haggard's Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6983, {	-- Haggard's Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6985, {	-- Haggard's Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(39, {	-- Deliver Thomas' Report
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 71,	-- Report to Thomas
					["coord"] = { 74, 72.2, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				-- #if NOT ANYCLASSIC
				q(5635, {	-- Desperate Prayer
					["qg"] = 377,	-- Priestess Josetta <Priest Trainer>
					["coord"] = { 43.4, 65.6, ELWYNN_FOREST },
					["altQuests"] = {
						5634,	-- Desperate Prayer [Stormwind City #1]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(45, {	-- Discover Rolf's Fate
					["provider"] = { "o", 55 },	-- A half-eaten body
					["sourceQuest"] = 37,	-- Find the Lost Guards
					["coord"] = { 72.7, 60.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(1097, {	-- Elmore's Task
					-- #if AFTER CATA
					["qg"] = 514,	-- Smith Argus
					["coord"] = { 41.6, 65.6, ELWYNN_FOREST },
					-- #else
					["qgs"] = {
						514,	-- Smith Argus
						415,	-- Verner Osgood
					},
					["coords"] = {
						{ 41.6, 65.6, ELWYNN_FOREST },	-- Smith Argus
						{ 31.0, 47.4, REDRIDGE_MOUNTAINS },	-- Verner Osgood
					},
					-- #endif
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for "Stormpike's Delivery" in Stormwind
					["lvl"] = lvlsquish(9, 9, 1),
				}),
				q(37, {	-- Find the Lost Guards
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 35,	-- Further Concerns
					["coord"] = { 73.9, 72.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				-- #if AFTER 4.0.3
				q(83, {	-- Fine Linen Goods [CATA] / Red Linen Goods
					["qg"] = 278,	-- Sara Timberlain
					["coord"] = { 79.4, 68.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Linen Scrap
							["provider"] = { "i", 1019 },	-- Linen Scrap
							["crs"] = {
								116,	-- Bandit
								6866,	-- Bodyguard
								6846,	-- Dockmaster
								6927,	-- Dockworker
								880,	-- Erlan Drudgemoor
								13159,	-- James Clark
								473,	-- Morgan the Collector
								474,	-- Rogue Wizard
								881,	-- Surena Caledon
							},
						}),
						i(57405, {	-- Fine Leather Sash
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131195, {	-- Padded Chain Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(983),		-- Red Linen Sash
						i(2575),	-- Red Linen Shirt
						i(57406, {	-- Reinforced Plate Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(35, {	-- Further Concerns
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 40,	-- A Fishy Peril
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(5624, {	-- Garments of the Light
					["qg"] = 377,	-- Priestess Josetta <Priest Trainer>
					["sourceQuest"] = 5623,	-- In Favor of the Light
					["coord"] = { 43.4, 65.6, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16605, {	-- Friar's Robes of the Light
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(16, {	-- Give Gerard a Drink
					["qg"] = 255,	-- Gerard Tiller
					["coord"] = { 43.0, 85.6, ELWYNN_FOREST },
					["cost"] = { { "i", 159, 1 }, },	-- Refreshing Spring Water
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(4536),	-- Shiny Red Apple
					},
				}),
				q(47, {	-- Gold Dust Exchange
					["qg"] = 241,	-- Remy "Two Times"
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 42.2, 67.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Gold Dust
							["provider"] = { "i", 773 },	-- Gold Dust
							["crs"] = {
								327,	-- Goldtooth
								476,	-- Kobold Geomancer
								40,		-- Kobold Miner
								475,	-- Kobold Tunneler
							},
						}),
						i(1191, {	-- Bag of Marbles
							-- #if BEFORE 4.0.3
							["description"] = "One of the single best PvE defensive cooldowns. Choose your targets wisely... Save for Patchwerk!",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(57400, {	-- Gold Dust Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57401, {	-- Jasperlode Chestguard
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(87, {	-- Goldtooth
					["qg"] = 247,	-- Billy Maclure
					["sourceQuest"] = 84,	-- Back to Billy
					["coord"] = { 43, 85.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Bernice's Necklace
							["provider"] = { "i", 981 },	-- Bernice's Necklace
							["coords"] = {
								-- #if AFTER CATA
								{ 40.2, 80.8, ELWYNN_FOREST },
								-- #else
								{ 41.6, 78.8, ELWYNN_FOREST },
								-- #endif
							},
							["cr"] = 327,	-- Goldtooth
						}),
						i(1359),	-- Lion-stamped Gloves
						i(57402, {	-- Uncle Stonefield's Pants
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131196, {	-- Auntie's Oven Mitts
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(60, {	-- Kobold Candles
					["qg"] = 253,	-- William Pestle
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(3, 3, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Large Candle
							["provider"] = { "i", 772 },	-- Large Candle
							["crs"] = {
								327,	-- Goldtooth
								476,	-- Kobold Geomancer
								40,		-- Kobold Miner
								475,	-- Kobold Tunneler
							},
						}),
						i(1434, {	-- Glowing Wax Stick
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(57398, {	-- Candlewax Streaked Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57399, {	-- Kobold Hunter's Trophy Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(32618, {	-- Learn To Ride
					-- #if BEFORE 10.1.5
					["description"] = "This quest is available to Humans upon reaching level 10.",
					-- #endif
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { HUMAN },
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(14079, {	-- Learn to Ride in Elwynn Forest
					["provider"] = { "i", 46875 },	-- Riding Training Pamphlet
					["description"] = "The pamphlet that starts this quest is sent to Humans in their Mailbox upon reaching the specified level.",
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["races"] = { HUMAN },
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(85, {	-- Lost Necklace
					["qg"] = 246,	-- "Auntie" Bernice Stonefield
					["coord"] = { 34.4, 84.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(147, {	-- Manhunt
					["qgs"] = {
						-- #if AFTER CATA
						42256,	-- Marshal Patterson
						-- #else
						240,	-- Marshal Dughan
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 81.8, 66.0, ELWYNN_FOREST },
						-- #else
						{ 42.1, 65.9, ELWYNN_FOREST },
						-- #endif
					},
					["sourceQuest"] = 123,	-- The Collector
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/1 The Collector's Ring
							["provider"] = { "i", 2239 },	-- The Collector's Ring
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
							["cr"] = 473,	-- Morgan the Collector
						}),
						i(1183),	-- Elastic Wristguards
						i(57522, {	-- Patterson's Sparring Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(1360),	-- Stormwind Plate Gloves
						i(131198, {	-- Wrangling Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57251, {	-- "Collecting" Bag
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(107, {	-- Note to William
					["providers"] = {
						{ "n", 248 },	-- Gramma Stonefield
						{ "i", 1252 },	-- Gramma Stonefield's Note
					},
					["sourceQuest"] = 111,	-- Speak with Gramma
					["coord"] = { 34.8, 83.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(7678, {	-- Palomino Exchange
					["qg"] = 384,	-- Katie Hunter
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12354, 1 } },	-- Palomino (MOUNT!)
					["sym"] = { { "select", "itemID", 18777, 18776, 18778 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(86, {	-- Pie for Billy
					["qg"] = 247,	-- Billy Maclure
					["sourceQuest"] = 85,	-- Lost Necklace
					["coord"] = { 43, 85.8, ELWYNN_FOREST },
					-- #if BEFORE CATA
					["cost"] = { { "i", 769, 4 } },	-- Chunk of Boar Meat
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					-- #if AFTER CATA
					["groups"] = {
						objective(1, {	-- 0/4 Tender Boar Meat
							["provider"] = { "i", 60401 },	-- Tender Board Meat
							["cr"] = 113,	-- Stonetusk Boar
						}),
					},
					-- #endif
				}),
				q(88, {	-- Princess Must Die!
					["qg"] = 244,	-- Ma Stonefield
					["coord"] = { 34.6, 84.4, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Brass Collar
							["provider"] = { "i", 1006 },	-- Brass Collar
							["coords"] = {
								-- #if AFTER CATA
								{ 33.6, 85.6, ELWYNN_FOREST },
								-- #else
								{ 69.8, 79.4, ELWYNN_FOREST },
								-- #endif
							},
							["cr"] = 330,	-- Princess
						}),
						i(1173),	-- Weather-worn Boots
						i(1182),	-- Brass-studded Bracers
						i(11191),	-- Farmer's Boots
						i(131197, {	-- Rusty-Chain Galoshes
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(52, {	-- Protect the Frontier
					["qg"] = 261,	-- Guard Thomas
					["coord"] = { 74, 72.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Prowler (or Gray Forest Wolf after Cata)
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 1922 },	-- Gray Forest Wolf
								-- #endif
								{ "n", 118 },	-- Prowler
							},
						}),
						objective(2, {	-- 0/5 Young Forest Bear
							["provider"] = { "n", 822 },	-- Young Forest Bear
						}),
						i(57523, {	-- Wolf Fur Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57524, {	-- Frontier Bracer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57525, {	-- Shrouded Bearskin Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131193, {	-- Steel Reinforced Bracer
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5628, {	-- Returning Home [Elwynn Forest]
					["qg"] = 377,	-- Priestess Josetta <Priest Trainer>
					["coord"] = { 43.4, 65.6, ELWYNN_FOREST },
					["altQuests"] = {
						5627,	-- Returning Home [Darnassus]
						5629,	-- Returning Home [Teldrassil]
						5630,	-- Returning Home [Dun Morogh]
						5631,	-- Returning Home [Stormwind City]
						5632,	-- Returning Home [Stormwind City]
						5633,	-- Returning Home [Ironforge]
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if BEFORE 4.0.3
				q(83, {	-- Red Linen Goods / Fine Linen Goods [CATA]
					["qg"] = 278,	-- Sara Timberlain
					["coord"] = { 79.5, 68.7, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/6 Red Linen Bandana
							["provider"] = { "i", 1019 },	-- Red Linen Bandana
							["crs"] = {
								583,	-- Defias Ambusher
								116,	-- Defias Bandit
								6866,	-- Defias Bodyguard
								6846,	-- Defias Dockmaster
								6927,	-- Defias Dockworker
								474,	-- Defias Rogue Wizard
								880,	-- Erlan Drudgemoor
								473,	-- Morgan the Collector
								881,	-- Surena Caledon
							},
						}),
						i(2575),	-- Red Linen Shirt
						i(983),		-- Red Linen Sash
					},
				}),
				-- #endif
				q(71, {	-- Report to Thomas
					["providers"] = {
						{ "o", 56 },	-- Rolf's corpse
						{ "i", 735 },	-- Rolf and Malakai's Medallions
					},
					["sourceQuest"] = 45,	-- Discover Rolf's Fate
					["coord"] = { 79.8, 55.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(11, {	-- Riverpaw Gnoll Bounty
					["qg"] = 963,	-- Deputy Rainer
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["coord"] = { 24.2, 74.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Painted Gnoll Armband
							["provider"] = { "i", 782 },	-- Painted Gnoll Armband
							["crs"] = {
								478,	-- Riverpaw Outrunner
								97,		-- Riverpaw Runt
							},
						}),
						i(2249, {	-- Militia Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2238),	-- Urchin's Pants
						i(57527, {	-- Stone Cairne Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57526, {	-- Gnollbreaker's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131192, {	-- Riverpaw Gnoll Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2205, {	-- Seek out SI: 7
					["providers"] = {
						{ "n", 917 },	-- Keryn Sylvius
						{ "i", 7674 },	-- Delivery to Mathias
					},
					["altQuests"] = {
						2218,	-- Road to Salvation
						2241,	-- The Apple Falls
					},
					["coord"] = { 43.9, 65.9, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(61, {	-- Shipment to Stormwind
					["providers"] = {
						{ "n", 253 },	-- William Pestle
						{ "i", 957 },	-- William's Shipment
					},
					["sourceQuest"] = 47,	-- Gold Dust Exchange
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 3,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(2454),	-- Elixir of Lion's Strength
						i(1178),	-- Explosive Rocket
						i(1177),	-- Oil of Olaf
					},
					-- #endif
				}),
				q(2300, {	-- SI:7
					["qg"] = 917,	-- Keryn Sylvius
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["coord"] = { 43.8, 65.8, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(111, {	-- Speak with Gramma
					["qg"] = 252,	-- Tommy Joe Stonefield
					["sourceQuest"] = 106,	-- Young Lovers
					["coord"] = { 29.8, 86, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(1860, {	-- Speak with Jennea
					["qg"] = 328,	-- Zaldimar Wefhellt <Mage Trainer>
					["altQuests"] = { 1879 },	-- Speak with Bink
					["coord"] = { 43.3, 66.2, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(123, {	-- The Collector
					["providers"] = {
						{ "i", 1307 },	-- Gold Pickup Schedule
						{ "i", 2223 },	-- The Collector's Schedule
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(114, {	-- The Escape
					["providers"] = {
						{ "n", 253 },	-- William Pestle
						{ "i", 1257 },	-- Invisibility Liquor
					},
					["sourceQuest"] = 112,	-- Collecting Kelp
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(62, {	-- The Fargodeep Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(76, {	-- The Jasperlode Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 62,	-- The Fargodeep Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(26152, {	-- Wanted: James Clark
					["provider"] = { "o", 203733 },	-- Bounty Board
					["coord"] = { 74.0, 72.3, ELWYNN_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 James Clark's Head
							["provider"] = { "i", 57122 },	-- James Clark's Head
							["cr"] = 13159,	-- James Clark
						}),
					},
				}),
				q(176, {	-- Wanted: "Hogger"
					["providers"] = {
						-- #if AFTER 8.1.0.28724
						{ "o", 307265 },	-- Wanted Poster
						{ "o", 307325 },	-- Wanted Poster
						-- #elseif AFTER 8.0.1.27326
						{ "o", 307068 },	-- Bounty Board
						-- #else
						{ "o", 68 },	-- Wanted Poster
						{ "o", 156561 },	-- Wanted Poster
						-- #endif
					},
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["coords"] = {
						-- #if AFTER 8.1.0.28724
						{ 24.5, 78.2, ELWYNN_FOREST },
						{ 24.5, 74.6, ELWYNN_FOREST },
						-- #elseif AFTER 8.0.1.27326
						{ 24.6, 78.1, ELWYNN_FOREST },	-- Bounty Board
						-- #else
						{ 24.5, 74.7, ELWYNN_FOREST },
						{ 24.6, 78.2, ELWYNN_FOREST },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/1 Dealt with "The Hogger Situation"
							["provider"] = { "n", 448 },	-- Hogger
							["coord"] = { 26.6, 89.8, ELWYNN_FOREST },
						}),
						-- #else
						objective(1, {	-- 0/1 Huge Gnoll Claw
							["provider"] = { "i", 1931 },	-- Huge Gnoll Claw
							["coord"] = { 26.6, 89.8, ELWYNN_FOREST },
							["cr"] = 448,	-- Hogger
						}),
						-- #endif
						i(6085),	-- Footman Tunic
						i(6084),	-- Stormwind Guard Leggings
						i(60219, {	-- Balanced Spell Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131199, {	-- Lion Guard Chainmail
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(6215, {	-- Balanced Fighting Stick
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(239, {	-- Westbrook Garrison Needs Help!
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 76,	-- The Jasperlode Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(6, 6, 1),
				}),
				q(7677, {	-- White Stallion Exchange
					["qg"] = 384,	-- Katie Hunter
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12353, 1 } },	-- White Stallion (MOUNT!)
					["sym"] = { { "select", "itemID", 18777, 18776, 18778 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(106, {	-- Young Lovers
					["providers"] = {
						{ "n", 251 },	-- Maybell Maclure
						{ "i", 1208 },	-- Maybell's Love Letter
					},
					-- #if AFTER 4.0.3.13277
					["sourceQuest"] = 26150,	-- A Visit With Maybell
					-- #endif
					["coord"] = { 43, 89.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
			}),
			n(RARES, {
				n(51077, {	-- Bushtail
					["coords"] = {
						{ 83.8, 85.0, ELWYNN_FOREST },
						{ 83.0, 82.8, ELWYNN_FOREST },
						{ 81.6, 85.2, ELWYNN_FOREST },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(204503, {	-- Dead Acolyte
					["coord"] = { 56.6, 57.6, ELWYNN_FOREST },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(205364, {	-- Acolyte's Knapsack
							["classes"] = { WARLOCK },
							["groups"] = {
								i(205184),	-- Acolyte's Note
								i(205181),	-- Unidentified Artifact
							},
						}),
						i(205183, {	-- Fel-Powered Artifact
							["description"] = "Bring the Unidentified Artifact back to the warlock trainer in the zone to receive the Powerless Artifact and then come back to acquire this item.\n\nBring it to Gakin in Stormwind City to receive the rune.",
							["cost"] = {{ "i", 205182, 1 }},	-- Powerless Artifact
							["classes"] = { WARLOCK },
						}),
					},
				})),
				-- #endif
				n(472, {	-- Fedfennel
					["coords"] = {
						-- #if AFTER CATA
						{ 66.4, 40.4, ELWYNN_FOREST },
						{ 66.8, 41.6, ELWYNN_FOREST },
						{ 67.0, 39.2, ELWYNN_FOREST },
						{ 67.8, 39.4, ELWYNN_FOREST },
						{ 67.8, 47.0, ELWYNN_FOREST },
						{ 68.0, 44.4, ELWYNN_FOREST },
						{ 69.2, 38.6, ELWYNN_FOREST },
						{ 70.2, 40.0, ELWYNN_FOREST },
						-- #else
						{ 68.0, 40.6, ELWYNN_FOREST },
						-- #endif
					},
					["groups"] = {
						i(3233),	-- Gnoll Hide Sack
						i(5744, {	-- Pale Skinner
							["timeline"] = { REMOVED_4_0_1, ADDED_8_0_1 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(202060, {	-- Frozen Murloc
					["coord"] = { 77.0, 51.8, ELWYNN_FOREST },
					["classes"] = { MAGE, WARLOCK },
					["groups"] = {
						i(205228, {	-- Rune of Chaos Bolt
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403925),	-- Engrave Gloves - Chaos Bolt
							},
						}),
						i(203748, {	-- Spell Notes: Burnout
							["classes"] = { MAGE },
							["groups"] = {
								recipe(401759),	-- Engrave Chest - Burnout
							},
						}),
					},
				})),
				-- #endif
				n(50926, {	-- Grizzled Ben
					["coord"] = { 27.2, 67.5, ELWYNN_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(100, {	-- Gruff Swiftbite
					["coords"] = {
						-- #if AFTER CATA
						{ 25.9, 92.0, ELWYNN_FOREST },
						-- #else
						{ 27.6, 88.4, ELWYNN_FOREST },
						-- #endif
					},
					["groups"] = {
						i(38513, {	-- Boarhide Leggings
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3, ADDED_8_0_1 },
						}),
					},
				}),
				n(50916, {	-- Lamepaw the Whimperer
					["coord"] = { 51.3, 64.6, ELWYNN_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(99, {	-- Morgaine the Sly
					["coords"] = {
						-- #if AFTER CATA
						{ 30.8, 64.6, ELWYNN_FOREST },
						-- #else
						{ 31.8, 65.6, ELWYNN_FOREST },
						-- #endif
					},
					["groups"] = {
						i(1917, {	-- Jeweled Dagger
							["timeline"] = { REMOVED_4_0_1, ADDED_8_0_1 },
						}),
						i(6201, {	-- Lithe Boots
							["timeline"] = { REMOVED_4_0_1, ADDED_8_0_1 },
						}),
						i(2091, {	-- Magic Dust
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				n(471, {	-- Mother Fang
					["coords"] = {
						-- #if AFTER CATA
						{ 54.3, 31.1, 40 },
						-- #else
						{ 61.8, 47.8, ELWYNN_FOREST },
						-- #endif
					},
					["groups"] = {
						i(3000, {	-- Brood Mother Carapace
							["timeline"] = { REMOVED_4_0_1, ADDED_8_0_1 },
						}),
						i(6148, {	-- Web-covered Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_8_0_1 },
						}),
					},
				}),
				n(79, {	-- Narg the Taskmaster
					["coords"] = {
						-- #if AFTER CATA
						{ 38.1, 83.3, ELWYNN_FOREST },
						-- #else
						{ 41.2, 78.8, ELWYNN_FOREST },
						-- #endif
					},
					["groups"] = {
						i(6147, {	-- Ratty Old Belt
							["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },
						}),
						i(1913, {	-- Studded Blackjack
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(50942, {	-- Snoot the Rooter
					["coord"] = { 69.7, 80.0, ELWYNN_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50752, {	-- Tarantis
					["coords"] = {
						{ 65.8, 65.0, ELWYNN_FOREST },
						{ 67.6, 63.2, ELWYNN_FOREST },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51014, {	-- Terrapis
					["coords"] = {
						{ 73.5, 86.0, ELWYNN_FOREST },
						{ 70.2, 85.4, ELWYNN_FOREST },
						{ 67.4, 84.4, ELWYNN_FOREST },
						{ 62.6, 82.4, ELWYNN_FOREST },
						{ 59.6, 83.0, ELWYNN_FOREST },
						{ 56.2, 85.4, ELWYNN_FOREST },
						{ 53.8, 87.8, ELWYNN_FOREST },
						{ 50.6, 87.2, ELWYNN_FOREST },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(61, {	-- Thuros Lightfingers
					-- #if AFTER CATA
					["coord"] = { 50.6, 83.0, ELWYNN_FOREST },
					-- #else
					["coords"] = {
						{ 30.0, 59.6, ELWYNN_FOREST },
						{ 51.4, 60.8, ELWYNN_FOREST },
						{ 51.2, 85.0, ELWYNN_FOREST },
						{ 89.6, 78.6, ELWYNN_FOREST },
					},
					-- #endif
					["groups"] = {
						i(6202, {	-- Fingerless Gloves
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6203, {	-- Thuggish Shield
							["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
					["provider"] = { "o", 392029 },	-- Swordsman's Reward
					["coords"] = {
						{ 25.6, 69.6, ELWYNN_FOREST },
						{ 30.6, 74.2, ELWYNN_FOREST },
						{ 38.4, 76.8, ELWYNN_FOREST },
					},
					["groups"] = {
						i(204441, {	-- Rune of Blood Frenzy
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403474),	-- Engrave Chest - Blood Frenzy
							},
						}),
					},
				})),
				-- #endif
			}),
			-- #if BEFORE TBC
			n(RIDING_TRAINER, {
				n(4732, {	-- Randal Hunter <Horse Riding Instructor>
					["coord"] = { 84.2, 65.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,

					-- Available to Humans without faction requirements.
					["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. HUMAN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(824, {	-- Horse Riding
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			-- #endif
			-- #if AFTER 8.1.0.28724
			n(TREASURES, {
				o(310709, {	-- Waterlogged Chest
					["questID"] = 54131,
					["coord"] = { 32.3, 63.6, ELWYNN_FOREST },
					["timeline"] = { ADDED_8_1_0 },
					["lvl"] = 110,
					["groups"] = {
						i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
						i(7997),	-- Red Defias Mask
						i(2057, {	-- Pitted Defias Shortsword
							["timeline"] = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
					["provider"] = { "n", 204827 },	-- Adventurer's Remains
					["coord"] = { 52.2, 84.65, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(210589, {	-- Echo of the Ancestors
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410099),	-- Engrave Pants - Ancestral Guidance
							},
						}),
						i(205944, {	-- Reciprocal Epiphany
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402848),	-- Engrave Pants - Prayer of Mending
							},
						}),
						i(206264, {	-- Rune of Inspiration
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410011),	-- Engrave Pants - Inspiration Exemplar
							},
						}),
						i(206970, {	-- Rune of Life
							["classes"] = { DRUID },
							["groups"] = {
								recipe(410033),	-- Engrave Pants - Lifebloom
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203755, {	-- Archmage Theocritus's Research Journal
					["provider"] = { "o", 386759 },	-- Library Book
					["coord"] = { 65.4, 70.1, ELWYNN_FOREST },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
					["provider"] = { "o", 387466 },	-- Rusty Lockbox
					["coord"] = { 46.2, 62.1, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
					["provider"] = { "o", 386675 },	-- Buried Treasure
					["coord"] = { 80.3, 79.1, ELWYNN_FOREST },
					["cost"] = {{ "i", 203750, 1 }},	-- Elwynn Treasure Map
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400095),	-- Engrave Chest - Quick Draw
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(204989, {	-- Wounded Adventurer
					["coord"] = { 62.0, 47.32, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(205685, {	-- Rune of Aegis
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425619),	-- Engrave Chest - Aegis
							},
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(2046, {	-- Andrew Krighton <Armorer & Shieldcrafter>
					["coord"] = { 41.7, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1201,	-- Dull Heater Shield
						2392,	-- Light Mail Armor
						2393,	-- Light Mail Belt
						2395,	-- Light Mail Boots
						2396,	-- Light Mail Bracers
						2397,	-- Light Mail Gloves
						2394,	-- Light Mail Leggings
						17186,	-- Small Targe
					}},
				}),
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["description"] = "This vendor travels in a big circuit from Elwynn Forest (stopping in Goldshire) to Westfall (stopping in Sentinel Hill) to Duskwood (stopping in Darkshire) to Redridge Mountains (stopping in Lakeshire) and then back to Elwynn Forest.  If you cannot find him in this zone, check one of the other three.",
					["coords"] = {
						-- #if AFTER CATA
						{ 74.4, 41.2, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
						{ 19.6, 60.6, DUSKWOOD },
						{ 42.6, 66.6, ELWYNN_FOREST },
						{ 75.0, 72.4, ELWYNN_FOREST },
						{ 27.8, 43.6, REDRIDGE_MOUNTAINS },
						{ 57.4, 52.2, WESTFALL },
						-- #else
						{ 19.6, 60.6, DUSKWOOD },
						{ 50.8, 66.6, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
						{ 42.6, 66.6, ELWYNN_FOREST },
						{ 68.8, 71.6, ELWYNN_FOREST },
						{ 75.0, 72.4, ELWYNN_FOREST },
						{ 29.1, 47.4, REDRIDGE_MOUNTAINS },
						{ 57.4, 52.2, WESTFALL },
						{ 57.8, 65.0, WESTFALL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						-- #endif
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
						-- #if BEFORE 4.0.3
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(465, {	-- Barkeep Dobbins <Bartender>
					["coord"] = { 43.8, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1939),	-- Skin of Sweet Rum
					},
				}),
				n(54, {	-- Corina Steele <Weaponsmith>
					["coord"] = { 41.4, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2492,	-- Cudgel
						2488,	-- Gladius
						2491,	-- Large Axe
						2494,	-- Stiletto
						2490,	-- Tomahawk
						2489,	-- Two-Handed Sword
						2495,	-- Walking Stick
						2493,	-- Wooden Mallet
					}},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(201854, {	-- Cutty
					["coord"] = { 49.8, 52.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(203990, {	-- Rune of Mutilation
							["cost"] = {{ "i", 203723, 1 }},	-- Cutty's Note
							["classes"] = { ROGUE },
							["groups"] = {
								recipe(400094),	-- Engrave Gloves - Mutilate
							},
						}),
					},
				})),
				-- #endif
				n(6367, {	-- Donni Anthania <Crazy Cat Lady>
					["coord"] = { 44.2, 53.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8485),	-- Bombay Cat (PET!)
						i(8486),	-- Cornish Rex Cat (PET!)
						i(8487),	-- Orange Tabby Cat (PET!)
						i(8488),	-- Silver Tabby Cat (PET!)
					},
				}),
				n(1250, {	-- Drake Lindgren <General & Trade Supplies>
					["coord"] = { 83.2, 66.7, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6749, {	-- Erma <Stable Master>
					["coord"] = { 42.8, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12354, {	-- Palomino (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
						i(12353, {	-- White Stallion (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
					},
				}),
				n(384, {	-- Katie Hunter <Horse Breeder>
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					-- Available to Humans without faction requirements.
					["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. HUMAN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5656),	-- Brown Horse (MOUNT!)
						i(5655),	-- Chestnut Mare (MOUNT!)
						i(2414),	-- Pinto (MOUNT!)
						i(18777),	-- Swift Brown Steed (MOUNT!)
						i(18776),	-- Swift Palomino (MOUNT!)
						i(18778),	-- Swift White Steed (MOUNT!)
					},
				}),
				n(74, {	-- Kurran Steele <Cloth & Leather Armor Merchant>
					["coord"] = { 41.4, 65.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
						1839,	-- Rough Leather Belt
						796,	-- Rough Leather Boots
						1840,	-- Rough Leather Bracers
						797,	-- Rough Leather Gloves
						798,	-- Rough Leather Pants
						799,	-- Rough Leather Vest
					}},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(906, {	-- Maximillian Crowe <Warlock Trainer>
					["coord"] = { 44.4, 66.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(205182, {	-- Powerless Artifact
							["cost"] = {{ "i", 205181, 1 }},	-- Unidentified Artifact
							["classes"] = { WARLOCK },
						})),
					},
				}),
				-- #endif
				n(959, {	-- Morley Eberlein <Clothier>
					["coord"] = { 64.7, 69.5, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
					}},
				}),
				n(1198, {	-- Rallic Finn <Bowyer>
					["coord"] = { 83.2, 66.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(66, {	-- Tharynn Bouden <Trade Supplies>
					["coord"] = { 41.8, 67.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_ONE, n(WILD_POLYMORPH, {
				["classes"] = { MAGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(203749, {	-- Spell Notes: Enlightenment
						["cost"] = {{ "i", 204864, 6 }},	-- Azora Apprentice Notes
						["classes"] = { MAGE },
						["groups"] = {
							recipe(415942),	-- Engrave Chest - Enlightenment
						},
					}),
					i(204864, {	-- Azora Apprentice Notes
						["cr"] = 202093,	-- Polymorphed Apprentice
					}),
				},
			})),
			-- #endif
			n(ZONE_DROPS, {
				-- #if ANYCLASSIC
				i(769, {	-- Chunk of Boar Meat
					["coord"] = { 41.6, 88.0, ELWYNN_FOREST },
					["crs"] = {
						119,	-- Longsnout
						390,	-- Porcine Entourage
						330,	-- Princess
						524,	-- Rockhide Boar
						113,	-- Stonetusk Boar
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(204906, {	-- Gnoll Blood
					["coords"] = {
						{ 68.2, 38.2, ELWYNN_FOREST },
						{ 27.0, 88.6, ELWYNN_FOREST },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						 97,	-- Riverpaw Runt
						478,	-- Riverpaw Outrunner
					},
				})),
				-- #endif
				i(1307, {	-- Gold Pickup Schedule
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						-- #if BEFORE CATA
						100,	-- Gruff Swiftbite
						448,	-- Hogger
						478,	-- Riverpaw Outrunner
						97,		-- Riverpaw Runt
						-- #else
						13159,	-- James Clark
						-- #endif
					},
				}),
				i(778, {	-- Kobold Excavation Pick
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 10.1.7
					["isBounty"] = true,
					-- #endif
					["cr"] = 476,	-- Kobold Geomancer
				}),
				i(1389, {	-- Kobold Mining Mallet
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["cr"] = 40,	-- Kobold Miner
					["coords"] = {
						{ 61.4, 50.4, ELWYNN_FOREST },
						{ 64.6, 56.4, ELWYNN_FOREST },
						{ 41.6, 80.0, ELWYNN_FOREST },
					},
				}),
				i(1195, {	-- Kobold Mining Shovel
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["cr"] = 475,	-- Kobold Tunneler
					["coords"] = {
						{ 41.6, 78.8, ELWYNN_FOREST },
						{ 40.0, 83.8, ELWYNN_FOREST },
						{ 38.0, 87.0, ELWYNN_FOREST },
					},
				}),
				i(1399, {	-- Magic Candle
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 476,	-- Kobold Geomancer
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(205940, {	-- Memory of a Dark Purpose
					["coord"] = { 41.6, 78.8, ELWYNN_FOREST },
					["classes"] = { PRIEST },
					["cr"] = 327,	-- Goldtooth
					["groups"] = {
						recipe(425216),	-- Engrave Chest - Void Plague
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
					["description"] = "This can also drop from any of the rare mobs in the zone.",
					["coords"] = {
						{ 41.6, 79.2, ELWYNN_FOREST },
						{ 63.6, 55.4, ELWYNN_FOREST },
					},
					["classes"] = { PRIEST },
					["cr"] = 40,	-- Kobold Miner
					["groups"] = {
						recipe(402854),	-- Engrave Pants - Shared Pain
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204905, {	-- Ominous Tome
					["coords"] = {
						{ 71.0, 80.6, ELWYNN_FOREST },
						{ 62.6, 54.2, ELWYNN_FOREST },
						{ 74.0, 51.8, ELWYNN_FOREST },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						881,	-- Surena Caledon
						476,	-- Kobold Geomancer
						474,	-- Defias Rogue Wizard
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
					["coord"] = { 74.0, 51.8, ELWYNN_FOREST },
					["classes"] = { PRIEST },
					["cr"] = 474,	-- Defias Rogue Wizard
					["groups"] = {
						recipe(402852),	-- Engrave Pants - Homunculi
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204809, {	-- Rune of Furious Thunder
					["coord"] = { 41.6, 78.8, ELWYNN_FOREST },
					["classes"] = { WARRIOR },
					["crs"] = {
						327,	-- Goldtooth
						100,	-- Gruff Swiftbite
						448,	-- Hogger
					},
					["groups"] = {
						recipe(403476),	-- Engrave Pants - Furious Thunder
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
					["coord"] = { 50.15, 62.81, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						448,	-- Hogger
						478,	-- Riverpaw Outrunner
						 97,	-- Riverpaw Runt
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204476, {	-- Severed Kobold Head
					["coord"] = { 39.0, 85.24, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						327,	-- Goldtooth
						 40,	-- Kobold Miner
						475,	-- Kobold Tunneler
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204477, {	-- Severed Murloc Head
					["coord"] = { 50.15, 62.81, ELWYNN_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						285,	-- Murloc
						 46,	-- Murloc Forager
						735,	-- Murloc Streamrunner
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
					["coord"] = { 62.6, 54.2, ELWYNN_FOREST },
					["classes"] = { MAGE },
					["cr"] = 476,	-- Kobold Geomancer
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203753, {	-- Spell Notes: RING SEFF OSTROF
					["coord"] = { 26.6, 89.8, ELWYNN_FOREST },
					["classes"] = { MAGE },
					["cr"] = 448,	-- Hogger
				})),
				-- #endif
				i(781, {	-- Stone Gnoll Hammer
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["crs"] = {
						478,	-- Riverpaw Outrunner
						97,		-- Riverpaw Runt
					},
					["coords"] = {
						{ 28.0, 86.8, ELWYNN_FOREST },
						{ 26.6, 89.6, ELWYNN_FOREST },
						{ 27.6, 95.4, ELWYNN_FOREST },
						{ 23.8, 91.6, ELWYNN_FOREST },
					},
				}),
				i(1972, {	-- Westfall Deed
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						116,	-- Defias Bandit
						6866,	-- Defias Bodyguard
						6846,	-- Defias Dockmaster
						6927,	-- Defias Dockworker
						474,	-- Defias Rogue Wizard
						880,	-- Erlan Drudgemoor
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(204907, {	-- Wolf Jawbone
					["coords"] = {
						{ 48.4, 39.0, ELWYNN_FOREST },
						{ 41.6, 58.6, ELWYNN_FOREST },
						{ 30.2, 72.6, ELWYNN_FOREST },
						{ 62.0, 67.2, ELWYNN_FOREST },
						{ 73.5, 63.6, ELWYNN_FOREST },
						{ 80.6, 83.2, ELWYNN_FOREST },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						299,	-- Young Wolf
						525,	-- Mangy Wolf
						1922,	-- Gray Forest Wolf
						 69,	-- Timber Wolf
						118,	-- Prowler
					},
				})),
				-- #endif
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(EASTERN_KINGDOMS, {
		m(ELWYNN_FOREST, {
			n(QUESTS, {
				q(43464),	-- Talking to Alaina Hearthsong
				q(43465),	-- Looting Alaina's Bonnet
			}),
		}),
	}),
})));