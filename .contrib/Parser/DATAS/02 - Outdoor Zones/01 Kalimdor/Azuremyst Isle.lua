---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COOKIE_GROUPS = {};

root(ROOTS.Zones, m(KALIMDOR, applyclassicphase(TBC_PHASE_ONE, {
	m(AZUREMYST_ISLE, {
		["lore"] = "Azuremyst Isle is the zone the Draenei spaceship crashed into, leading to the formation of the Exodar as their capital city. Quests focus on the draenei acquainting themselves with the land and trying to strengthen their struggling settlements. Since this island was so far-out, there was very little other civilization before the crash.",
		["icon"] = 236715,
		["timeline"] = { ADDED_2_0_1 },
		["maps"] = {
			98,		-- Tides' Hollow
			99,		-- Stillpine Hold
		},
		["groups"] = {
			m(AMMEN_VALE, {
				["lore"] = "Ammen Vale is a small island and subzone off the coast of Azuremyst Isle. It is a lightly forested valley with escape pods, crystals, and smoking bits of the crashed planar ship scattered about the landscape.",
				["icon"] = 135756,
				-- #if BEFORE MOP
				["zone-text-areas"] = {
					3526,	-- Ammen Vale
					3560,	-- Ammen Fields
					3527,	-- Crash Site
					3559,	-- Nestlewood Hills
					3529,	-- Nestlewood Thicket
					3530,	-- Shadow Ridge
					3528,	-- Silverline Lake
					3561,	-- The Sacred Grove
				},
				-- #endif
				["groups"] = {
					n(QUESTS, {
						q(9798, {	-- Blood Elf Plans
							["provider"] = { "i", 24414 },	-- Blood Elf Plans
							["cost"] = { { "i", 23003, 1 } },	-- Blood Elf Plans
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
						}),
						q(9311, {	-- Blood Elf Spy
							["sourceQuest"] = 10303,	-- The Blood Elves
							["qg"] = 16546,	-- Tolaan
							["coords"] = {
								-- #if AFTER MOP
								{ 33.8, 69.2, AMMEN_VALE },
								-- #else
								{ 72.0, 60.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Surveyor Candress slain
									["provider"] = { "n", 16522 },	-- Surveyor Candress
									["coords"] = {
										-- #if AFTER MOP
										{ 28.2, 80.0, AMMEN_VALE },
										-- #else
										{ 69.3, 65.8, AZUREMYST_ISLE },
										-- #endif
									},
								}),
								i(23390),	-- Exodar Bastard Sword
								i(23391),	-- Exodar Dagger
								i(23392),	-- Exodar Maul
								i(23393),	-- Exodar Shortsword
								i(24441),	-- Exodar Crossbow
								i(25553),	-- Exodar Staff
							},
						}),
						q(9799, {	-- Botanical Legwork
							["sourceQuest"] = 10302,	-- Volatile Mutations
							["qg"] = 20233,	-- Apprentice Vishael
							["coords"] = {
								-- #if AFTER MOP
								{ 49.7, 37.5, AMMEN_VALE },
								-- #else
								{ 79.1, 46.6, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/3 Corrupted Flower
									["providers"] = {
										{ "i",  24416 },	-- Corrupted Flower
										{ "o", 182127 },	-- Corrupted Flower
									},
								}),
							},
						}),
						q(9371, {	-- Botanist Taerix
							["sourceQuest"] = 9409,	-- Urgent Delivery!
							["qg"] = 16477,	-- Proenitus
							["coords"] = {
								-- #if AFTER MOP
								{ 52.7, 35.9, AMMEN_VALE },
								-- #else
								{ 80.4, 45.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(9449, {	-- Call of Earth (1/3)
							["qg"] = 17089,	-- Firmanvaar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.2, 43.0, AMMEN_VALE },
								-- #else
								{ 79.3, 49.1, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { SHAMAN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(4, 4, 1),
						}),
						q(9450, {	-- Call of Earth (2/3)
							["sourceQuest"] = 9449,	-- Call of Earth (1/3)
							["qg"] = 17087,	-- Spirit of the Vale
							["coords"] = {
								-- #if AFTER MOP
								{ 33.6, 23.8, AMMEN_VALE },
								-- #else
								{ 71.3, 39.1, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { SHAMAN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(4, 4, 1),
							["groups"] = {
								objective(1, {	-- 0/4 Restless Spirit of Earth slain
									["provider"] = { "n", 17179 },	-- Restless Spirit of Earth
								}),
							},
						}),
						q(9451, {	-- Call of Earth (3/3)
							["sourceQuest"] = 9450,	-- Call of Earth (2/3)
							["providers"] = {
								{ "n", 17087 },	-- Spirit of the Vale
								{ "i", 23671 },	-- Earth Crystal
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 33.6, 23.8, AMMEN_VALE },
								-- #else
								{ 71.3, 39.1, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { SHAMAN },
							["races"] = { DRAENEI },
							["lvl"] = 4,
							-- #if BEFORE CATA
							["groups"] = {
								recipe(8071),	-- Stoneskin Totem
								i(5175, {	-- Earth Totem
									["description"] = "You must keep this in your bags forever.",
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
							-- #endif
						}),
						q(26968, {	-- Arcane Missiles [Cata] / Frost Nova [MoP+] (Draenei)
							["qg"] = 16500,	-- Valaatu <Mage Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 51.0, 43.0, AMMEN_VALE },
								-- #else
								{ 79.6, 48.8, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { DRAENEI },
							["classes"] = { MAGE },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9294, {	-- Healing the Lake
							["sourceQuest"] = 9293,	-- What Must Be Done...
							["qg"] = 16514,	-- Botanist Taerix
							["coords"] = {
								-- #if AFTER MOP
								{ 49.9, 37.3, AMMEN_VALE },
								-- #else
								{ 79.1, 46.5, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Disperse the Neutralizing Agent
									["providers"] = {
										{ "i", 22955 },	-- Neutralizing Agent
										{ "o", 181433 },	-- Irradiated Power Crystal
									},
									["coords"] = {
										-- #if AFTER MOP
										{ 45.2, 64.9, AMMEN_VALE },
										-- #else
										{ 77.2, 59.0, AZUREMYST_ISLE },
										-- #endif
									},
								}),
							},
						}),
						q(9288, {	-- Hunter Training
							["qg"] = 16499,	-- Keilnei
							["coords"] = {
								-- #if AFTER MOP
								{ 51.6, 44.2, AMMEN_VALE },
								-- #else
								{ 79.9, 49.7, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { HUNTER },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9303, {	-- Inoculation [Original]
							["sourceQuest"] = 10304,	-- Vindicator Aldar
							-- #if AFTER 6.0.2.18816
							["altQuests"] = { 37444 },	-- Inoculation [Skipped Breadcrumb]
							-- #endif
							["qg"] = 16535,	-- Vindicator Aldar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.6, 48.7, AMMEN_VALE },
								-- #else
								{ 79.5, 51.6, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
							-- 9303 is only given to you instead of 37444 if you turn in Vindicator Aldar first, confirmed by Crieve, deleted 3 level 4 Draenei to test it and different scenarios.
							-- There was absolutely nothing different about the quest other than the quest text, so rather than duplicate the entry, using altQuests instead.
							-- The extra information doesn't help a new player and you get credit for both anyways on turn in, so it's whatever.
							["groups"] = {
								objective(1, {	-- Nestlewood Owlkin inoculated
									["provider"] = { "i", 22962 },	-- Inoculating Crystal
									["cr"] = 16518,	-- Nestlewood Owlkin
								}),
							},
						}),
						q(37444, {	-- Inoculation
							["description"] = "This quest is given if you pick it up before getting or turning in the quest |cFFFFD700Vindicator Aldar|r.",
							["sourceQuest"] = 10302,	-- Volatile Mutations
							["qg"] = 16535,	-- Vindicator Aldar
							["coord"] = { 50.6, 48.7, AMMEN_VALE },
							["timeline"] = { ADDED_6_0_2 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- Nestlewood Owlkin inoculated
									["provider"] = { "i", 22962 },	-- Inoculating Crystal
									["cr"] = 16518,	-- Nestlewood Owlkin
								}),
							},
						}),
						q(26970, {	-- Aiding the Injured [Cata] / Learning the Word [MoP+]
							["qg"] = 16502,	-- Zalduun
							["coords"] = {
								-- #if AFTER MOP
								{ 52.1, 42.4, AMMEN_VALE },
								-- #else
								{ 80.1, 48.9, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9290, {	-- Mage Training
							["qg"] = 16500,	-- Valaatu
							["coords"] = {
								-- #if AFTER MOP
								{ 51.0, 43.0, AMMEN_VALE },
								-- #else
								{ 79.6, 48.8, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { MAGE },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(31172, {	-- Monk Training
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { DRAENEI },
							["classes"] = { MONK },
						}),
						q(9287, {	-- Paladin Training
							["qg"] = 16501,	-- Aurelon
							["coords"] = {
								-- #if AFTER MOP
								{ 51.2, 41.2, AMMEN_VALE },
								-- #else
								{ 79.7, 48.2, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { PALADIN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9291, {	-- Priest Training
							["qg"] = 16502,	-- Zalduun
							["coords"] = {
								-- #if AFTER MOP
								{ 52.1, 42.4, AMMEN_VALE },
								-- #else
								{ 80.1, 48.9, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { PRIEST },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(26969, {	-- Primal Strike
							["qg"] = 17089,	-- Firmanvaar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.2, 43.0, AMMEN_VALE },
								-- #else
								{ 79.3, 49.1, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { SHAMAN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9280, {	-- Replenishing the Healing Crystals
							["sourceQuest"] = 9279,	-- You Survived!
							["altQuests"] = { 9369 },	-- Replenishing the Healing Crystals [Non-Draenei Only]
							["qg"] = 16477,	-- Proenitus
							["coords"] = {
								-- #if AFTER MOP
								{ 52.7, 35.9, AMMEN_VALE },
								-- #else
								{ 80.4, 45.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = { DRAENEI },
							["groups"] = {
								objective(1, {	-- 0/6 Vial of Moth Blood
									["provider"] = { "i", 22889 },	-- Vial of Moth Blood
									["cr"] = 16520,	-- Vale Moth
								}),
								i(24129),	-- Salvaged Leather Belt
								i(24131),	-- Slightly Rusted Bracers
								i(24130),	-- Worn Slippers
								-- #if AFTER LEGION
								i(131819),	-- Partially Tarnished Chain
								-- #endif
							},
						}),
						q(9369, {	-- Replenishing the Healing Crystals
							["sourceQuest"] = 9279,	-- You Survived!
							["qg"] = 16477,	-- Proenitus
							["coords"] = {
								-- #if AFTER MOP
								{ 52.7, 35.9, AMMEN_VALE },
								-- #else
								{ 80.4, 45.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = exclude(DRAENEI, ALLIANCE_ONLY),	-- all other races except draenei
							["groups"] = {
								objective(1, {	-- 0/6 Vial of Moth Blood
									["provider"] = { "i", 22889 },	-- Vial of Moth Blood
									["cr"] = 16520,	-- Vale Moth
								}),
								i(24129),	-- Salvaged Leather Belt
								i(24131),	-- Slightly Rusted Bracers
								i(24130),	-- Worn Slippers
								-- #if AFTER LEGION
								i(131819),	-- Partially Tarnished Chain
								-- #endif
							},
						}),
						q(9283, {	-- Rescue the Survivors!
							["sourceQuest"] = 9409,	-- Urgent Delivery!
							["qg"] = 16502,	-- Zalduun
							["coords"] = {
								-- #if AFTER MOP
								{ 52.1, 42.4, AMMEN_VALE },
								-- #else
								{ 80.1, 48.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = { DRAENEI },
							["groups"] = {
								objective(1, {	-- Draenei Survivors Saved
									["spellID"] = 28880,	-- Gift of the Naaru
									["cr"] = 16483,	-- Draenei Survivor
								}),
								i(23389),	-- Empty Draenei Supply Pouch
							},
						}),
						q(9421, {	-- Shaman Training
							["qg"] = 17089,	-- Firmanvaar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.2, 43.0, AMMEN_VALE },
								-- #else
								{ 79.3, 49.1, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { SHAMAN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9305, {	-- Spare Parts
							["sourceQuest"] = 10302,	-- Volatile Mutations
							-- #if AFTER WOD
							["altQuests"] = { 37445 },	-- Spare Parts [New one that exists for no reason]
							-- #endif
							["qg"] = 17071,	-- Technician Zhanaa
							["coords"] = {
								-- #if AFTER MOP
								{ 50.5, 47.9, AMMEN_VALE },
								-- #else
								{ 79.4, 51.2, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- 0/4 Emitter Spare Part
									["providers"] = {
										{ "i",  22978 },	-- Emitter Spare Part
										{ "o", 181283 },	-- Emitter Spare Part
									},
									["coords"] = {
										-- #if AFTER MOP
										{ 64.6, 84.4, AMMEN_VALE },
										-- #else
										{ 86.0, 66.8, AZUREMYST_ISLE },
										-- #endif
									},
								}),
								i(24423),	-- Beaten Plate Leggings
								i(24424),	-- Rough Leather Leggings
								i(24425),	-- Hand Sewn Pants
								-- #if AFTER LEGION
								i(131250),	-- Coarse Mail Leggings
								-- #endif
							},
						}),
						q(37445, {	-- Spare Parts
							["sourceQuest"] = 10302,	-- Volatile Mutations
							["qg"] = 17071,	-- Technician Zhanaa
							["coord"] = { 50.5, 47.9, AMMEN_VALE },
							["timeline"] = { ADDED_6_0_2 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/4 Emitter Spare Part
									["providers"] = {
										{ "i",  22978 },	-- Emitter Spare Part
										{ "o", 181283 },	-- Emitter Spare Part
									},
									["coord"] = { 64.6, 84.4, AMMEN_VALE },
								}),
								i(24423),	-- Beaten Plate Leggings
								i(24424),	-- Rough Leather Leggings
								i(24425),	-- Hand Sewn Pants
								-- #if AFTER LEGION
								i(131250),	-- Coarse Mail Leggings
								-- #endif
							},
						}),
						q(26963, {	-- Steadying Your Shot
							["qg"] = 16499,	-- Keilnei
							["coords"] = {
								-- #if AFTER MOP
								{ 51.6, 44.2, AMMEN_VALE },
								-- #else
								{ 79.9, 49.7, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { HUNTER },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(10303, {	-- The Blood Elves
							["sourceQuest"] = 9309,	-- The Missing Scout
							["qg"] = 16546,	-- Tolaan
							["coords"] = {
								-- #if AFTER MOP
								{ 33.8, 69.2, AMMEN_VALE },
								-- #else
								{ 72.0, 60.9, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(3, 3, 1),
							["groups"] = {
								objective(1, {	-- 0/10 Blood Elf Scout slain
									["provider"] = { "n", 16521 },	-- Blood Elf Scout
									["coords"] = {
										-- #if AFTER MOP
										{ 30.2, 78.2, AMMEN_VALE },
										-- #else
										{ 70.6, 62.8, AZUREMYST_ISLE },
										-- #endif
									},
								}),
								i(24135),	-- Weathered Cloth Armor
								i(24134),	-- Weathered Leather Vest
								i(24133),	-- Weathered Plate Tunic
								-- #if AFTER LEGION
								i(131820),	-- Weathered Chain Shirt
								-- #endif
							},
						}),
						q(9312, {	-- The Emitter
							["sourceQuest"] = 9311,	-- Blood Elf Spy
							["qg"] = 16535,	-- Vindicator Aldar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.6, 48.7, AMMEN_VALE },
								-- #else
								{ 79.5, 51.6, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(2, 2, 1),
						}),
						q(26966, {	-- The Light's Power
							["qg"] = 16501,	-- Aurelon
							["coords"] = {
								-- #if AFTER MOP
								{ 51.2, 41.2, AMMEN_VALE },
								-- #else
								{ 79.7, 48.2, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { PALADIN },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9309, {	-- The Missing Scout
							["sourceQuest"] = 9303,	-- Inoculation [Original]
							["qg"] = 16535,	-- Vindicator Aldar
							["coords"] = {
								-- #if AFTER MOP
								{ 50.6, 48.7, AMMEN_VALE },
								-- #else
								{ 79.5, 51.6, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(31173, {	-- The Tiger Palm
							["qg"] = 63335,	-- Mojo Stormstout
							["coord"] = { 50.6, 48.6, AMMEN_VALE },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["classes"] = { MONK },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9313, {	-- Travel to Azure Watch
							["sourceQuest"] = 9312,	-- The Emitter
							["qg"] = 17071,	-- Technician Zhanaa
							["coords"] = {
								-- #if AFTER MOP
								{ 50.5, 47.9, AMMEN_VALE },
								-- #else
								{ 79.4, 51.2, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = lvlsquish(4, 4, 1),
						}),
						q(9409, {	-- Urgent Delivery!
							["sourceQuests"] = {
								9369,	-- Replenishing the Healing Crystal (All other ally races)
								9280,	-- Replenishing the Healing Crystal (Draenei)
							},
							["qg"] = 16477,	-- Proenitus
							["coords"] = {
								-- #if AFTER MOP
								{ 52.7, 35.9, AMMEN_VALE },
								-- #else
								{ 80.4, 45.9, AZUREMYST_ISLE },
								-- #endif
							},
							["cost"] = { { "i", 23568, 1 } },	-- Bundle of Vials
							["races"] = ALLIANCE_ONLY,
						}),
						q(10304, {	-- Vindicator Aldar
							["sourceQuest"] = 9294,	-- Healing the Lake
							["qg"] = 16514,	-- Botanist Taerix
							["coords"] = {
								-- #if AFTER MOP
								{ 49.9, 37.3, AMMEN_VALE },
								-- #else
								{ 79.1, 46.5, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(10302, {	-- Volatile Mutations
							["sourceQuests"] = {
								-- #if AFTER MOP
								-- TODO: Test this source quest list.
								9369,	-- Replenishing the Healing Crystal (All other ally races)
								9280,	-- Replenishing the Healing Crystal (Draenei)
								-- #endif
								9371,	-- Botanist Taerix (breadcrumb)
							},
							["qg"] = 16514,	-- Botanist Taerix
							["coords"] = {
								-- #if AFTER MOP
								{ 49.9, 37.3, AMMEN_VALE },
								-- #else
								{ 79.1, 46.5, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Volatile Mutation slain
									["provider"] = { "n", 16516 },	-- Volatile Mutation
								}),
							},
						}),
						q(9289, {	-- Warrior Training
							["qg"] = 16503,	-- Kore
							["coords"] = {
								-- #if AFTER MOP
								{ 51.0, 43.8, AMMEN_VALE },
								-- #else
								{ 79.6, 49.5, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { WARRIOR },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						q(9293, {	-- What Must Be Done...
							["sourceQuest"] = 10302,	-- Volatile Mutations
							["qg"] = 16514,	-- Botanist Taerix
							["coords"] = {
								-- #if AFTER MOP
								{ 49.9, 37.3, AMMEN_VALE },
								-- #else
								{ 79.1, 46.5, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Lasher Sample
									["provider"] = { "i", 22934 },	-- Lasher Sample
									["cr"] = 16517,	-- Mutated Root Lasher
								}),
							},
						}),
						q(9279, {	-- You Survived!
							["qg"] = 16475,	-- Megelon
							["coords"] = {
								-- #if AFTER MOP
								{ 61.2, 29.5, AMMEN_VALE },
								-- #else
								{ 84.2, 43.0, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = { DRAENEI },
							["isBreadcrumb"] = true,
						}),
						q(26958, {	-- Your First Lesson
							["qg"] = 16503,	-- Kore
							["coords"] = {
								-- #if AFTER MOP
								{ 51.0, 43.8, AMMEN_VALE },
								-- #else
								{ 79.6, 49.5, AZUREMYST_ISLE },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { WARRIOR },
							["races"] = { DRAENEI },
							["lvl"] = lvlsquish(3, 3, 1),
						}),
					}),
					n(ZONE_DROPS, {
						i(24414, {	-- Blood Elf Plans
							["coords"] = {
								-- #if AFTER MOP
								{ 28.2, 80.0, AMMEN_VALE },
								-- #else
								{ 69.4, 65.6, AZUREMYST_ISLE },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
							["cr"] = 16522,	-- Surveyor Candress
						}),
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				ach(860),	-- Explore Azuremyst Isle
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					378,	-- Rabbit (PET!)
					397,	-- Skunk (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(464),	-- Grey Moth (PET!)
				},
			}),
			explorationHeader({
				exploration(3560),	-- Ammen Fields
				exploration(3857),	-- Ammen Ford
				exploration(3526),	-- Ammen Vale
				exploration(3576),	-- Azure Watch
				exploration(3571),	-- Bristlelimb Village
				exploration(3564),	-- Emberglade
				exploration(3915),	-- Fairbridge Strand
				exploration(3577),	-- Geezle's Camp
				exploration(3578),	-- Menagerie Wreckage
				exploration(3916),	-- Moongraze Woods
				exploration(3566),	-- Moonwing Den
				exploration(3559),	-- Nestlewood Hills
				exploration(3573),	-- Odesyus' Landing
				exploration(3567),	-- Pod Cluster
				exploration(3568),	-- Pod Wreckage
				exploration(3530),	-- Shadow Ridge
				exploration(3575),	-- Silting Shore
				exploration(3639),	-- Silvermyst Isle
				exploration(3572),	-- Stillpine Hold
				exploration(3557),	-- The Exodar
				exploration(3579),	-- Traitor's Cove
				exploration(3574),	-- Valaar's Berth
				exploration(3570),	-- Wrathscale Point
			}),
			-- #if AFTER CATA
			n(FLIGHT_PATHS, {
				fp(624, {	-- Azure Watch, Azuremyst Isle [Alliance]
					["cr"] = 43991,	-- Zaldaan <Flight Master>
					["coord"] = { 49.6, 49.2, AZUREMYST_ISLE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #endif
			petbattles({
				q(31569, {	-- Got one! (Lehna)
					["sourceQuest"] = 31825,	-- Level Up!
					["qg"] = 63077,	-- Lehna
					["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31556, {	-- Learning the Ropes (Lehna)
					["qg"] = 63077,	-- Lehna
					["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31825, {	-- Level Up! (Lehna)
					["sourceQuest"] = 31568,	-- On The Mend
					["qg"] = 63077,	-- Lehna
					["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31568, {	-- On The Mend (Lehna)
					["sourceQuest"] = 31556,	-- Learning the Ropes
					["qg"] = 63077,	-- Lehna
					["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 17485 },	-- Esbina <Stable Master>
							["coord"] = { 49.0, 49.8, AZUREMYST_ISLE },
						}),
					},
				}),
			}),
			n(QUESTS, {
				q(9528, {	-- A Cry For Help
					["qg"] = 17312,	-- Magwin
					["coord"] = { 13.6, 73.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						i(24113),	-- Cowlen's Bracers of Kinship
					},
				}),
				q(9612, {	-- A Hearty Thanks!
					["description"] = "1. Find a |cFFFFD700Draenei Youngling|r.\n2. Get them to engage in combat with an aggressive mob.\n3. Once they take damage, use |cFFFFD700Gift of the Naaru.|r\n4. Kill the creature for the quest to be offered.\n\nThis quest is presumably unobtainable by Warlocks.",
					["qg"] = 17587,	-- Draenei Youngling
					["coords"] = {
						{ 37.6, 18.6, AZUREMYST_ISLE },
						{ 40.6, 71.0, AZUREMYST_ISLE },
						{ 42.0, 57.4, AZUREMYST_ISLE },
						{ 46.2, 31.8, AZUREMYST_ISLE },
						{ 53.4, 42.4, AZUREMYST_ISLE },
						{ 55.6, 29.4, AZUREMYST_ISLE },
						{ 55.6, 47.8, AZUREMYST_ISLE },
						{ 56.8, 59.6, AZUREMYST_ISLE },
						{ 58.0, 41.6, AZUREMYST_ISLE },
						{ 39.5, 37.4, AZUREMYST_ISLE },
					},
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9506, {	-- A Small Start
					["sourceQuest"] = 9505,	-- The Prophecy of Velen (breadcrumb?)
					["qg"] = 17240,	-- Admiral Odesyus
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Nautical Compass
							["providers"] = {
								{ "i",  23738 },	-- Nautical Compass
								{ "o", 181675 },	-- Nautical Compass
							},
							["coord"] = { 59.6, 67.7, AZUREMYST_ISLE },
						}),
						objective(2, {	-- 0/1 Nautical Map
							["providers"] = {
								{ "i",  23739 },	-- Nautical Map
								{ "o", 181674 },	-- Nautical Map
							},
							["coord"] = { 58.6, 66.4, AZUREMYST_ISLE },
						}),
					},
				}),
				q(9527, {	-- All That Remains
					["sourceQuest"] = 10428,	-- The Missing Fisherman
					["qg"] = 17311,	-- Cowlen
					["coord"] = { 16.6, 94.4, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Remains of Cowlen's Family
							["provider"] = { "i", 23789 },	-- Remains of Cowlen's Family
							["crs"] = {
								17187,	-- Aberrant Owlbeast
								17186,	-- Deranged Owlbeast
							},
						}),
					},
				}),
				q(9473, {	-- An Alternative Alternative
					["sourceQuest"] = 9463,	-- Medicinal Purpose
					["qg"] = 17215,	-- Daedal
					["coord"] = { 48.4, 51.4, AZUREMYST_ISLE },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Azure Snapdragon Bulb
							["providers"] = {
								{ "i", 23692 },	-- Azure Snapdragon Bulb
								{ "o", 181644 },	-- Azure Snapdragon
							},
						}),
					},
				}),
				q(9616, {	-- Bandits!
					["provider"] = { "i", 23910 },	-- Blood Elf Communications
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						i(24141),	-- Battle Worn Gauntlets
						i(24142),	-- Battle Worn Gloves
						i(24144),	-- Battle Worn Handguards
						-- #if AFTER LEGION
						i(131263),	-- Battle Worn Grips
						-- #endif
					},
				}),
				q(9560, {	-- Beasts of the Apocalypse!
					["sourceQuests"] = {
						-- #if AFTER 9.0.2
						9544,	-- The Prophecy of Akida
						-- #elseif BEFORE MOP
						9544,	-- The Prophecy of Akida
						-- #else
						-- This needs to be checked for accuracy each expansion.
						9559,	-- Stillpine Hold
						-- #endif
					},
					["qg"] = 17442,	-- Moordo
					["coord"] = { 44.8, 23.8, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Ravager Hide
							["provider"] = { "i", 23845 },	-- Ravager Hide
							["cr"] = 17199,	-- Ravager Specimen
						}),
						i(24108),	-- Ravager Hide Leggings
						i(24107),	-- Ravager Chitin Tunic
						i(24109),	-- Thick Ravager Belt
						-- #if AFTER LEGION
						i(131257),	-- Ravager Scale Pants
						-- #endif
					},
				}),
				q(9675, {	-- Beast Training
					["sourceQuest"] = 9593,	-- Taming the Beast (3/3)
					["qg"] = 17614,	-- Huntress Kella Nightbow
					["coord"] = { 24.2, 54.4, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_EXODAR },
					["classes"] = { HUNTER },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						i(24138, {	-- Silver Crossbow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE CATA
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
						-- #endif
					},
				}),
				-- #if AFTER CATA
				-- This quest was moved from Bloodmyst Isle after Cataclysm.
				q(9603, {	-- Beds, Bandages, and Beyond
					["qg"] = 16553,	-- Caregiver Chellan
					["coord"] = { 48.3, 49.1, AZUREMYST_ISLE },
					["cost"] = { { "i", 23902, 1 } },	-- Chellan's List
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				-- #endif
				q(10350, {	-- Behomat
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						9582,	-- Strength of One
					},
					["qg"] = 17480,	-- Ruada
					["coord"] = { 49.8, 50.4, AZUREMYST_ISLE },
					["maps"] = { THE_EXODAR },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						i(23429),	-- Mercenary Clout
						i(23423),	-- Mercenary Greatsword
						i(23431),	-- Mercenary Stiletto
						i(23430),	-- Mercenary Sword
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						-- recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
				q(9566, {	-- Blood Crystals
					["sourceQuest"] = 9565,	-- Search Stillpine Hold
					["provider"] = { "o", 181748 },	-- Blood Crystal
					["coord"] = { 50.5, 11.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
				}),
				q(9462, {	-- Call of Fire (1/7)
					["qg"] = 17219,	-- Sulaa <Shaman Trainer>
					["coord"] = { 32.3, 23.9, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9464, {	-- Call of Fire (2/7)
					["sourceQuest"] = 9462,	-- Call of Fire (1/4)
					["qg"] = 17212,	-- Tuluun <Shaman Trainer>
					["coord"] = { 48.0, 50.4, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9465, {	-- Call of Fire (3/7)
					["sourceQuest"] = 9464,	-- Call of Fire (2/4)
					["qg"] = 17205,	-- Temper
					["coord"] = { 59.5, 18.1, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Ritual Torch
							["provider"] = { "i", 23733 },	-- Ritual Torch
							["cr"] = 17189,	-- Crazed Wildkin
						}),
					},
				}),
				q(9467, {	-- Call of Fire (4/7)
					["sourceQuest"] = 9465,	-- Call of Fire (3/4)
					["qg"] = 17205,	-- Temper
					["coord"] = { 59.5, 18.1, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Hauteur's Ashes
							["provider"] = { "i", 23688 },	-- Hauteur's Ashes
							["cost"] = { { "i", 23682, 1 } },	-- Ritual Torch
							["coord"] = { 11.4, 82.2, AZUREMYST_ISLE },
							["cr"] = 17206,	-- Hauteur
						}),
						i(24336, {	-- Fireproof Satchel
							i(24335),	-- Orb of Returning
							i(23682),	-- Ritual Torch
						}),
					},
				}),
				q(9468, {	-- Call of Fire (5/7)
					["sourceQuest"] = 9467,	-- Call of Fire (4/4)
					["qg"] = 17205,	-- Temper
					["coord"] = { 59.5, 18.1, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 23688, 1 } },	-- Hauteur's Ashes
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9461, {	-- Call of Fire (6/7)
					["sourceQuest"] = 9468,	-- Call of Fire (5/4)
					["qg"] = 17212,	-- Tuluun <Shaman Trainer>
					["coord"] = { 48.0, 50.4, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9555, {	-- Call of Fire (7/7)
					["sourceQuest"] = 9461,	-- Call of Fire (6/4)
					["qg"] = 17468,	-- Prophet Velen
					["coord"] = { 32.9, 54.5, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						recipe(3599),	-- Searing Totem
						i(5176, {	-- Fire Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(9573, {	-- Chieftain Oomooroo
					["sourceQuests"] = {
						9560,	-- Beasts of the Apocalypse
						9562,	-- Murlocs... Why Here? Why Now?
					},
					["qg"] = 17445,	-- Stillpine the Younger
					["coord"] = { 46.8, 21.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- Chieftain Oomooroo slain
							["provider"] = { "n", 17448 },	-- Chieftain Oomooroo
							["coord"] = { 47.4, 14.1, AZUREMYST_ISLE },
						}),
						objective(2, {	-- 0/9 Crazed Wildkin
							["provider"] = { "n", 17189 },	-- Crazed Wildkin
						}),
						i(24446),	-- Sturdy Leather Belt
						i(24445),	-- Fortified Wristguards
						-- #if AFTER LEGION
						i(131260),	-- Interlocked Chain Cinch
						-- #endif
					},
				}),
				q(9623, {	-- Coming of Age
					["qg"] = 17116,	-- Exarch Menelaous
					["coord"] = { 47.2, 50.6, AZUREMYST_ISLE },
					["maps"] = { THE_EXODAR },
					["cost"] = { { "i", 23928, 1 } },	-- The Exarch's Orders
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9595, {	-- Control
					["qg"] = 17481,	-- Semid
					["coord"] = { 49.9, 50.0, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Possibly added back the same time as the Ghostlands Mage quest was.
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					-- TODO: verify, if possible?  i don't see any recent comments claiming to have picked this up, just questions about how to get it.
					-- wowhead also doesn't have provider data for it, leading me to believe it has been culled/not seen in a long time
					["groups"] = {
						objective(1, {	-- Quel'dorei Magewraith slain
							["provider"] = { "n", 17612 },	-- Quel'dorei Magewraith
							["coord"] = { 35.2, 21.8, AZUREMYST_ISLE },
						}),
						i(9513),	-- Ley Staff
						i(7508),	-- Ley Orb
					},
				}),
				q(9512, {	-- Cookie's Jumbo Gumbo
					["qg"] = 17246,	-- "Cookie" McWeaksauce
					["coord"] = { 46.7, 70.5, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Skittering Crawler Meat
							["provider"] = { "i", 23757 },	-- Skittering Crawler Meat
							["crs"] = {
								17217,	-- Barbed Crawler
								17216,	-- Skittering Crawler
							},
						}),
						i(23756),	-- Cookie's Jumbo Gumbo
					},
				}),
				q(9602, {	-- Deliver Them From Evil...
					["sourceQuest"] = 9537,	-- Show Gnomercy
					["qg"] = 17240,	-- Admiral Odesyus
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["cost"] = { { "i", 23899, 1 } },	-- Traitor's Communication
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(9453, {	-- Find Acteon!
					["sourceQuest"] = 9452,	-- Red Snapper - Very Tasty!
					["qg"] = 17101,	-- Diktynna
					["coord"] = { 61.0, 54.2, AZUREMYST_ISLE },
					["cost"] = { { "i", 23672, 1 } },	-- Crate of Red Snapper
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(9564, {	-- Gurf's Dignity
					["sourceQuest"] = 9562,	-- Murlocs... Why Here?  Why Now?
					["provider"] = { "i", 23850 },	-- Gurf's Dignity
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						i(24440),	-- Heavy Plate Leggings
						i(24439),	-- Savage Leggings
						i(24438),	-- Fur Covered Robe
						-- #if AFTER LEGION
						i(131258),	-- Fierce Britches
						-- #endif
					},
				}),
				q(9586, {	-- Help Tavara
					["qg"] = 17482,	-- Guvan
					["coord"] = { 56.2, 48.4, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- Heal Tavara
							["spellID"] = 2050,	-- Lesser Heal
							["coord"] = { 56.2, 48.9, AZUREMYST_ISLE },
							["cr"] = 17551,	-- Tavara
						}),
						i(23931, {	-- Azure Watch Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(9530, {	-- I've Got a Plant
					["sourceQuest"] = 9506,	-- A Small Start
					["qg"] = 17240,	-- Admiral Odesyus
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Hollowed Out Tree
							["providers"] = {
								{ "i",  23790 },	-- Hollowed Out Tree
								{ "o", 181696 },	-- Hollowed Out Tree
							},
						}),
						objective(2, {	-- 0/5 Pile of Leaves
							["providers"] = {
								{ "i",  23791 },	-- Pile of Leaves
								{ "o", 181697 },	-- Pile of Leaves
							},
						}),
					},
				}),
				q(9538, {	-- Learning the Language
					["qg"] = 17232,	-- Cryptographer Aurren
					["coord"] = { 49.4, 51.0, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- Stillpine Furbolg Language Primer Read
							["provider"] = { "i", 23818 },	-- Stillpine Furbolg Language Primer
						}),
					},
				}),
				q(9463, {	-- Medicinal Purpose
					["qg"] = 17214,	-- Anchorite Fateema
					["coord"] = { 48.4, 51.8, AZUREMYST_ISLE },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Root Trapper Vine
							["provider"] = { "i", 23685 },	-- Root Trapper Vine
							["cr"] = 17196,	-- Root Trapper
						}),
					},
				}),
				q(9562, {	-- Murlocs... Why Here? Why Now?
					["sourceQuests"] = {
						-- #if AFTER MOP
						-- TODO: Confirm this is true or not.
						9544,	-- The Prophecy of Akida
						-- #else
						9559,	-- Stillpine Hold
						-- #endif
					},
					["qg"] = 17441,	-- Gurf
					["coord"] = { 44.6, 23.4, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Stillpine Grain
							["providers"] = {
								{ "i",  23849 },	-- Stillpine Grain
								{ "o", 181757 },	-- Stillpine Grain
							},
							["crs"] = {
								17475,	-- Murgurgula
								17192,	-- Siltfin Hunter
								17190,	-- Siltfin Murloc
								17191,	-- Siltfin Oracle
							},
						}),
					},
				}),
				q(9456, {	-- Nightstalker Clean Up, Isle 2...
					["sourceQuest"] = 9455,	-- Strange Findings
					["qg"] = 17116,	-- Exarch Menelaous
					["coord"] = { 47.1, 50.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Infected Nightstalker Runt slain
							["provider"] = { "n", 17202 },	-- Infected Nightstalker Runt
						}),
						i(24436),	-- Huntsman's Bracers
						i(24435),	-- Reinforced Plate Boots
						i(24437),	-- Slightly Worn Bracer
						-- #if LEGION
						i(131254),	-- Huntsman's Chain Cuffs
						-- #endif
					},
				}),
				-- #if AFTER CATA
				-- This quest was moved from Bloodmyst Isle after Cataclysm.
				q(9604, {	-- On the Wings of a Hippogryph
					["sourceQuest"] = 9603,	-- Beds, Bandages, and Beyond
					["qg"] = 43991,	-- Zaldaan
					["coord"] = { 49.7, 49.1, AZUREMYST_ISLE },
					["cost"] = { { "i", 23902, 1 } },	-- Chellan's List
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				-- #endif
				q(9523, {	-- Precious and Fragile Things Need Special Handling
					["qg"] = 17242,	-- Archaeologist Adamant Ironheart
					["coord"] = { 47.2, 70.0, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Ancient Relic
							["providers"] = {
								{ "i",  23779 },	-- Ancient Relic
								{ "o", 181683 },	-- Ancient Relic
							},
						}),
					},
				}),
				q(9513, {	-- Reclaiming the Ruins
					["qg"] = 17241,	-- Priestess Kyleen Il'dinare
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Wrathscale Myrmidon slain
							["provider"] = { "n", 17194 },	-- Wrathscale Myrmidon
						}),
						objective(2, {	-- 0/5 Wrathscale Naga slain
							["provider"] = { "n", 17193 },	-- Wrathscale Naga
						}),
						objective(3, {	-- 0/5 Wrathscale Siren slain
							["provider"] = { "n", 17195 },	-- Wrathscale Siren
						}),
					},
				}),
				q(9452, {	-- Red Snapper - Very Tasty!
					["qg"] = 17101,	-- Diktynna
					["coord"] = { 61.1, 54.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Red Snapper
							["providers"] = {
								{ "i",  23614 },	-- Red Snapper
								{ "o", 181616 },	-- School of Red Snapper
							},
							["cost"] = { { "i", 23654, 1 } },	-- Draenei Fishing Net
						}),
					},
				}),
				q(9514, {	-- Rune Covered Tablet
					["sourceQuest"] = 9506,	-- A Small Start
					["provider"] = { "i", 23759 },	-- Rune Covered Tablet
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
				}),
				q(9565, {	-- Search Stillpine Hold
					["sourceQuest"] = 9562,	-- Murlocs... Why Here? Why Now?
					["qg"] = 17440,	-- High Chief Stillpine
					["coord"] = { 46.6, 20.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
				}),
				q(9757, {	-- Seek Huntress Kella Nightbow
					["qg"] = 17110,	-- Acteon <Hunter Trainer>
					["coord"] = { 49.8, 51.8, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(9537, {	-- Show Gnomercy
					["sourceQuest"] = 9531,	-- Tree's Company
					["qg"] = 17240,	-- Admiral Odesyus
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Traitor's Communication
							["provider"] = { "i", 23899 },	-- Traitor's Communication
							["coord"] = { 19.5, 82.4, AZUREMYST_ISLE },
							["cr"] = 17243,	-- Engineer "Spark" Overgrind <Envoy of Mekkatorque>
						}),
						i(24433),	-- Crossbow of the Albatross
						i(24431),	-- McWeaksauce's Meat Tenderizer
						i(24430),	-- Seafarer's Blade
						i(24434),	-- The Discipline Stick
						i(24432),	-- The Shell Cracker
					},
				}),
				q(9559, {	-- Stillpine Hold
					["sourceQuest"] = 9544,	-- The Prophecy of Akida
					["qg"] = 17114,	-- Arugoo of the Stillpine
					["coord"] = { 49.4, 51.0, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9455, {	-- Strange Findings
					["provider"] = { "i", 23678 },	-- Faintly Glowing Crystal
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(9582, {	-- Strength of One
					["altQuests"] = {
						1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						-- 9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					["qg"] = 17480,	-- Ruada
					["coord"] = { 49.8, 50.4, AZUREMYST_ISLE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Death Ravager slain
							["provider"] = { "n", 17556 },	-- Death Ravager
							["coord"] = { 54.0, 9.6, AZUREMYST_ISLE },
							["cost"] = { { "i", 23925, 1 } },	-- Ravager Cage Key
						}),
						i(23925, {	-- Ravager Cage Key
							["cr"] = 17199,	-- Ravager Specimen
						}),
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						-- recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
				q(9591, {	-- Taming the Beast (1/3)
					["sourceQuest"] = 9757,	-- Seek Huntress Kella Nightbow
					["qg"] = 17614,	-- Huntress Kella Nightbow
					["coord"] = { 24.2, 54.2, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Barbed Crawler
							["providers"] = {
								{ "n", 17217 },	-- Barbed Crawler
								{ "i", 23896 },	-- Taming Totem
							},
						}),
					},
				}),
				q(9592, {	-- Taming the Beast (2/3)
					["sourceQuest"] = 9591,	-- Taming the Beast (1/3)
					["qg"] = 17614,	-- Huntress Kella Nightbow
					["coord"] = { 24.2, 54.2, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Greater Timberstrider
							["providers"] = {
								{ "n", 17374 },	-- Greater Timberstrider
								{ "i", 23897 },	-- Taming Totem
							},
						}),
					},
				}),
				q(9593, {	-- Taming the Beast (3/3)
					["sourceQuest"] = 9592,	-- Taming the Beast (2/3)
					["qg"] = 17614,	-- Huntress Kella Nightbow
					["coord"] = { 24.2, 54.2, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Nightstalker
							["providers"] = {
								{ "n", 17203 },	-- Nightstalker
								{ "i", 23898 },	-- Taming Totem
							},
						}),
						-- #if BEFORE CATA
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
						-- #endif
					},
				}),
				q(9454, {	-- The Great Moongraze Hunt (1/2)
					["qg"] = 17110,	-- Acteon
					["coord"] = { 49.8, 51.9, AZUREMYST_ISLE },
					["cost"] = { { "i", 23676, 6 } },	-- Moongraze Stag Tenderloin
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						i(27686),	-- Recipe: Roasted Moongraze Tenderloin (RECIPE!)
					},
				}),
				q(10324, {	-- The Great Moongraze Hunt (2/2)
					["sourceQuest"] = 9454,	-- The Great Moongraze Hunt (1/2)
					["qg"] = 17110,	-- Acteon
					["coord"] = { 49.8, 51.8, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Moongraze Buck Hide
							["provider"] = { "i", 23677 },	-- Moongraze Buck Hide
							["cr"] = 17201,	-- Moongraze Buck
						}),
						i(24104),	-- Moongraze Fur Cloak
						i(24103),	-- Moongraze Hide Boots
						-- #if AFTER LEGION
						i(131274),	-- Moongraze Linked Boots
						-- #endif
					},
				}),
				q(9570, {	-- The Kurken is Lurkin'
					-- #if AFTER MOP
					-- TODO: Double check this when MOP comes out.
					["sourceQuests"] = {
						9560,	-- Beasts of the Apocalypse
						9562,	-- Murlocs... Why Here? Why Now?
					},
					-- #else
					["sourceQuest"] = 9565,	-- Search Stillpine Hold
					-- #endif
					["qg"] = 17443,	-- Kurz the Revelator
					["coord"] = { 46.8, 22.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/1 The Kurken's Hide
							["provider"] = { "i", 23860 },	-- The Kurken's Hide
							["coord"] = { 50.0, 12.8, AZUREMYST_ISLE },
							["cr"] = 17447,	-- The Kurken
						}),
					},
				}),
				q(9571, {	-- The Kurken's Hide
					["sourceQuest"] = 9570,	-- The Kurken is Lurkin'
					["qg"] = 17443,	-- Kurz the Revelator
					["coord"] = { 46.8, 22.2, AZUREMYST_ISLE },
					["cost"] = { { "i", 23860, 1 } },	-- The Kurken's Hide
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						i(24112),	-- Kurkenstoks
						i(24111),	-- Kurken Hide Jerkin
						-- #if AFTER LEGION
						i(131259),	-- Kurken Padded Chainmail
						-- #endif
					},
				}),
				q(10428, {	-- The Missing Fisherman
					["qg"] = 17488,	-- Dulvi
					["coord"] = { 49.0, 51.1, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(6, 6, 1),
				}),
				q(9544, {	-- The Prophecy of Akida
					["sourceQuest"] = 9542,	-- Totem of Vark
					["qg"] = 17364,	-- Totem of Vark
					["coord"] = { 28.2, 62.4, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Stillpine Captive Freed
							["providers"] = {
								{ "i", 23801 },	-- Bristlelimb Key
								{ "o", 181714 },	-- Bristlelimb Cage
							},
							["cr"] = 17375,	-- Stillpine Captive
						}),
						i(23801, {	-- Bristlelimb Key
							["crs"] = {
								17183,	-- Bristlelimb Furbolg
								17185,	-- Bristlelimb Ursa
								17184,	-- Bristlelimb Windcaller
							},
						}),
						i(27399),	-- Stillpine Defender
						i(27403),	-- Stillpine Stinger
						i(27401),	-- Arugoo's Crossbow of Destruction
					},
				}),
				q(9505, {	-- The Prophecy of Velen
					["sourceQuest"] = 9473,	-- An Alternative Alternative
					["qg"] = 17215,	-- Daedal
					["coord"] = { 48.4, 51.4, AZUREMYST_ISLE },
					["races"] = { DRAENEI },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(9539, {	-- Totem of Coo
					["sourceQuest"] = 9538,	-- Learning the Language
					["qg"] = 17360,	-- Totem of Akida
					["coord"] = { 49.4, 51.0, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9540, {	-- Totem of Tikti
					["sourceQuest"] = 9539,	-- Totem of Coo
					["qg"] = 17361,	-- Totem of Coo
					["coord"] = { 55.2, 41.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9542, {	-- Totem of Vark
					["sourceQuest"] = 9541,	-- Totem of Yor
					["qg"] = 17363,	-- Totem of Yor
					["coord"] = { 63.1, 67.9, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9541, {	-- Totem of Yor
					["sourceQuest"] = 9540,	-- Totem of Tikti
					["qg"] = 17362,	-- Totem of Tikti
					["coord"] = { 64.5, 39.8, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9531, {	-- Tree's Company
					["sourceQuest"] = 9530,	-- I've Got a Plant
					["qg"] = 17240,	-- Admiral Odesyus
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- The Traitor Uncovered
							["provider"] = { "i", 23792 },	-- Tree Disguise Kit
							["coord"] = { 19.0, 83.0, AZUREMYST_ISLE },
							["cr"] = 17243,	-- Engineer "Spark" Overgrind <Envoy of Mekkatorque>
						}),
					},
				}),
				q(9515, {	-- Warlord Sriss'tiz
					["sourceQuest"] = 9514,	-- Rune Covered Tablet
					["qg"] = 17241,	-- Priestess Kyleen Il'dinare
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- Warlord Sriss'tiz slain
							["provider"] = { "n", 17298 },	-- Warlord Sriss'tiz
							["coord"] = { 25.2, 74.2, AZUREMYST_ISLE },
						}),
						i(24448),	-- Battle Tested Blade
						i(24447),	-- Naga Plate Boots
						-- #if AFTER LEGION
						i(133691),	-- Battle Tested Dirk
						-- #endif
					},
				}),
				q(9622, {	-- Warn Your People
					["sourceQuest"] = 9570,	-- The Kurken is Lurkin'
					["qg"] = 17440,	-- High Chief Stillpine
					["coord"] = { 46.6, 20.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9314, {	-- Word from Azure Watch
					["qg"] = 16554,	-- Aeun
					["coord"] = { 64.5, 54.0, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(3, 3, 1),
				}),
			}),
			n(RARES, {
				n(17591, {	-- Blood Elf Bandit
					["coords"] = {
						{ 33.9, 18.9, AZUREMYST_ISLE },
						{ 37.0, 20.8, AZUREMYST_ISLE },
						{ 36.4, 32.4, AZUREMYST_ISLE },
						{ 51.6, 18.4, AZUREMYST_ISLE },
						{ 59.2, 18.2, AZUREMYST_ISLE },
						{ 50.2, 29.0, AZUREMYST_ISLE },
						{ 27.4, 52.0, AZUREMYST_ISLE },
						{ 32.4, 62.8, AZUREMYST_ISLE },
						{ 36.0, 60.8, AZUREMYST_ISLE },
						{ 35.2, 64.4, AZUREMYST_ISLE },
						{ 33.6, 70.6, AZUREMYST_ISLE },
						{ 43.0, 63.2, AZUREMYST_ISLE },
					},
					["groups"] = {
						i(23909),	-- Blood Elf Bandit Mask
						i(23910, {	-- Blood Elf Communications
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(17246, {	-- "Cookie" McWeaksauce <Cooking Trainer & Supplies>
					["coord"] = { 46.6, 70.6, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = COOKIE_GROUPS,
				}),
			}),
			n(ZONE_DROPS, {
				i(23678, {	-- Faintly Glowing Crystal
					["coords"] = {
						{ 45.6, 45.0, AZUREMYST_ISLE },
						{ 26.8, 48.0, AZUREMYST_ISLE },
						{ 25.8, 59.2, AZUREMYST_ISLE },
						{ 35.6, 58.8, AZUREMYST_ISLE },
					},
					["races"] = ALLIANCE_ONLY,
					["cr"] = 17202,	-- Infected Nightstalker Runt)
				}),
				i(23850, {	-- Gurf's Dignity
					["description"] = "It is not necessary to complete |cFFFFD700Murlocs...|r but you must at least be ON that quest to loot the item that starts Gurf's Dignity.",
					["coords"] = {	-- Pats up and down
						{ 34.6, 14.0, AZUREMYST_ISLE },
						{ 35.2, 21.8, AZUREMYST_ISLE },
						{ 33.6, 26.0, AZUREMYST_ISLE },
					},
					["races"] = ALLIANCE_ONLY,
					["cr"] = 17475,	-- Murgurgula
				}),
				i(23676, {	-- Moongraze Stag Tenderloin
					["description"] = "Only drops from stags on Azuremyst Isle.",
					["crs"] = {
						17201,	-- Moongraze Buck
						17200,	-- Moongraze Stag
					},
				}),
				i(23759, {	-- Rune Covered Tablet
					["coords"] = {
						{ 25.6, 70.2, AZUREMYST_ISLE },
						{ 28.4, 78.0, AZUREMYST_ISLE },
						{ 31.8, 77.6, AZUREMYST_ISLE },
						{ 36.6, 78.4, AZUREMYST_ISLE },
						{ 39.8, 78.4, AZUREMYST_ISLE },
					},
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						17194,	-- Wrathscale Myrmidon
						17193,	-- Wrathscale Naga
						17195,	-- Wrathscale Siren
					},
				}),
			}),
		},
	}),
})));

-- Add the items that aren't marked with a phase.
appendGroups({
	i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
	i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
}, COOKIE_GROUPS);
