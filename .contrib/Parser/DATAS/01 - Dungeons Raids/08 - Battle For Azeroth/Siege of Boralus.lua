-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1023, {	-- Siege of Boralus
		["coords"] = {
			{ 72.2, 15.5, BORALUS },	-- Alliance
			{ 88.2, 50.9, TIRAGARDE_SOUND },	-- Horde
		},
		["maps"] = { 1162 },	-- Siege of Boralus
		["lvl"] = 120,
		["groups"] = {
			n(QUESTS, {
				q(53128, {	-- The Lord Admiral's Lament
					["provider"] = { "o", 296479 },	-- Lord Admiral's Footlocker
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163336),	-- Illegible Correspondence (QI!)
					},
				}),
				q(53127, {	-- The Lord Admiral's Lament
					["provider"] = { "o", 296479 },	-- Lord Admiral's Footlocker
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(163336),	-- Illegible Correspondence (QI!)
					},
				}),
			}),
			n(WORLD_QUESTS, sharedData({
				["isWorldQuest"] = true,
			},{
				q(52761, {	-- Siege of Boralus: Blood Money
					["races"] = ALLIANCE_ONLY,
				}),
				q(52771, {	-- Siege of Boralus: Breaking Irons
					["races"] = ALLIANCE_ONLY,
				}),
				q(52778, {	-- Siege of Boralus: Crushing the Horde
					["races"] = ALLIANCE_ONLY,
				}),
				q(52775, {	-- Siege of Boralus: What's Yours is Mine
					["races"] = HORDE_ONLY,
				}),
			})),
			-- #if BEFORE 8.1.0
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["groups"] = {
					e(2132, {	-- Chopper Redhook [1st Encounter - Alliance]
						-- This fight is Alliance-only. We are going to set the boss as such, but leave the items not marked Alliance due to the fact that Horde should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 128650 },	-- Chopper Redhook
						["groups"] = {
							i(159972),	-- Mutineer's Fate
							i(159973),	-- Boarder's Billy Club
							i(159968),	-- Gloves of the Iron Reavers
							i(159965),	-- Redhook's Cummerbund
							i(159427),	-- Legplates of the Irontide Raider
							i(159969),	-- Powdershot Leggings
							i(159251),	-- Top-Sail Footwraps
							i(162541),	-- Band of the Roving Scalawag
						},
					}),
					e(2133, {	-- Sergeant Bainbridge [1st Encounter - Horde]
						-- This fight is Horde-only. We are going to set the boss as such, but leave the items not marked Horde due to the fact that Alliance should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						["races"] = HORDE_ONLY,
						["crs"] = { 128649 },	-- Sergeant Bainbridge
						["groups"] = {
							i(159647),	-- Siegebreaker's Halberd
							i(159648),	-- Bainbridge's Blackjack
							i(159328),	-- Wharf Warden's Gloves
							i(159245),	-- Cord of the Pious Warder
							i(159411),	-- Legplates of the Maritime Guard
							i(159367),	-- Unstoppable Zealot's Legplates
							i(159278),	-- Slippers of Unwavering Faith
							i(162542),	-- Seal of the City Watch
						},
					}),
					e(2173, {	-- Dread Captain Lockwood [2nd Encounter - Both Factions]
						["crs"] = { 129208 },	-- Dread Captain Lockwood
						["groups"] = {
							ach(12727),	-- Stand by Me
							i(159649),	-- Saber of Dread Pirate Lockwood
							i(159372),	-- Dread Captain's Irons
							i(159237),	-- Captain's Dustfinders
							i(159429),	-- Rope-Scored Gauntlets
							i(159434),	-- Cannoneer's Toolbelt
							i(159309),	-- Port Pillager's Belt
							i(159250),	-- Powder Monkey's Leggings
							i(159320),	-- Besieger's Deckstalkers
							i(159379),	-- Sure-Foot Sabatons
							i(159623),	-- Dead-Eye Spyglass
						},
					}),
					e(2134, {	-- Hadal Darkfathom [3rd Encounter - Both Factions]
						["crs"] = { 128651 },	-- Hadal Darkfathom
						["groups"] = {
							i(159650),	-- Dismembered Submersible Claw
							i(159386),	-- Anchor Chain Girdle
							i(159322),	-- Seawalker's Pantaloons
							i(159428),	-- Ballast Sinkers
							i(159461),	-- Band of the Ancient Dredger
							i(159622),	-- Hadal's Nautilus
						},
					}),
					e(2140, {	-- Viq'Goth [4th Encounter - Both Factions]
						["crs"] = { 128652 },	-- Viq'Goth
						["groups"] = {
							ach(12726),	-- A Fish Out of Water
							ach(12847),	-- Siege of Boralus
							ach(13007),	-- Siege of Boralus Guild Run
							i(159651),	-- Coral-Edged Crescent
							i(159310),	-- Circlet of the Enveloping Leviathan
							i(159252),	-- Grasping Crown of the Deep
							i(159376),	-- Hook-Barbed Spaulders
							i(159431),	-- Kraken Shell Pauldrons
							i(159314),	-- Cephalohide Jacket
							i(159416),	-- Harpooner's Plate Cuirass
							i(159362),	-- Tri-Heart Chestguard
							i(159256),	-- Iron-Kelp Wristwraps
							i(168130),	-- Essence of the Depths
						},
					}),
				},
			}),
			-- #endif
			-- Only during TWW Season 1
			-- #if AFTER 11.0.2
			-- #if BEFORE 11.1.0
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				["difficulties"] = { DIFFICULTY.DUNGEON.HEROIC, DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["groups"] = {
					e(2132, {	-- Chopper Redhook [1st Encounter - Alliance]
						-- This fight is Alliance-only. We are going to set the boss as such, but leave the items not marked Alliance due to the fact that Horde should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 128650 },	-- Chopper Redhook
						["groups"] = {
							i(159972),	-- Mutineer's Fate
							i(159973),	-- Boarder's Billy Club
							i(159968),	-- Gloves of the Iron Reavers
							i(159965),	-- Redhook's Cummerbund
							i(159427),	-- Legplates of the Irontide Raider
							i(159969),	-- Powdershot Leggings
							i(159251),	-- Top-Sail Footwraps
							i(162541),	-- Band of the Roving Scalawag
						},
					}),
					e(2133, {	-- Sergeant Bainbridge [1st Encounter - Horde]
						-- This fight is Horde-only. We are going to set the boss as such, but leave the items not marked Horde due to the fact that Alliance should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						["races"] = HORDE_ONLY,
						["crs"] = { 128649 },	-- Sergeant Bainbridge
						["groups"] = {
							i(159647),	-- Siegebreaker's Halberd
							i(159648),	-- Bainbridge's Blackjack
							i(159328),	-- Wharf Warden's Gloves
							i(159245),	-- Cord of the Pious Warder
							i(159411),	-- Legplates of the Maritime Guard
							i(159367),	-- Unstoppable Zealot's Legplates
							i(159278),	-- Slippers of Unwavering Faith
							i(162542),	-- Seal of the City Watch
						},
					}),
					e(2173, {	-- Dread Captain Lockwood [2nd Encounter - Both Factions]
						["crs"] = { 129208 },	-- Dread Captain Lockwood
						["groups"] = {
							i(159649),	-- Saber of Dread Pirate Lockwood
							i(159372),	-- Dread Captain's Irons
							i(159237),	-- Captain's Dustfinders
							i(159429),	-- Rope-Scored Gauntlets
							i(159434),	-- Cannoneer's Toolbelt
							i(159309),	-- Port Pillager's Belt
							i(159250),	-- Powder Monkey's Leggings
							i(159320),	-- Besieger's Deckstalkers
							i(159379),	-- Sure-Foot Sabatons
							i(159623),	-- Dead-Eye Spyglass
						},
					}),
					e(2134, {	-- Hadal Darkfathom [3rd Encounter - Both Factions]
						["crs"] = { 128651 },	-- Hadal Darkfathom
						["groups"] = {
							i(159650),	-- Dismembered Submersible Claw
							i(159386),	-- Anchor Chain Girdle
							i(159322),	-- Seawalker's Pantaloons
							i(159428),	-- Ballast Sinkers
							i(159461),	-- Band of the Ancient Dredger
							i(159622),	-- Hadal's Nautilus
						},
					}),
					e(2140, {	-- Viq'Goth [4th Encounter - Both Factions]
						["crs"] = { 128652 },	-- Viq'Goth
						["groups"] = {
							i(159651),	-- Coral-Edged Crescent
							i(159256),	-- Iron-Kelp Wristwraps
							i(168130),	-- Essence of the Depths
							
							i(231824, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Circlet of the Enveloping Leviathan
							i(231818, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Grasping Crown of the Deep
							i(231826, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Hook-Barbed Spaulders
							i(231830, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Kraken Shell Pauldrons
							i(231822, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Cephalohide Jacket
							i(231827, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Harpooner's Plate Cuirass
							i(231825, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Tri-Heart Chestguard
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["groups"] = {
					e(2173, {	-- Dread Captain Lockwood [2nd Encounter - Both Factions]
						["crs"] = { 129208 },	-- Dread Captain Lockwood
						["groups"] = {
							ach(12727),	-- Stand by Me
						},
					}),
					e(2140, {	-- Viq'Goth [4th Encounter - Both Factions]
						["crs"] = { 128652 },	-- Viq'Goth
						["groups"] = {
							ach(12726),	-- A Fish Out of Water
							ach(12847),	-- Siege of Boralus
							ach(13007),	-- Siege of Boralus Guild Run
						},
					}),
				},
			}),
			-- Outside of TWW Season 1
			-- #else
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				["difficulties"] = { DIFFICULTY.DUNGEON.HEROIC, DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["groups"] = {
					e(2132, {	-- Chopper Redhook [1st Encounter - Alliance]
						-- This fight is was Alliance-only. We are going to set the boss as such, but leave the items not marked Alliance due to the fact that Horde should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						-- #if BEFORE 11.1.0
						["races"] = ALLIANCE_ONLY,
						-- #endif
						["crs"] = { 128650 },	-- Chopper Redhook
						["groups"] = {
							i(159972),	-- Mutineer's Fate
							i(159973),	-- Boarder's Billy Club
							i(159968),	-- Gloves of the Iron Reavers
							i(159965),	-- Redhook's Cummerbund
							i(159427),	-- Legplates of the Irontide Raider
							i(159969),	-- Powdershot Leggings
							i(159251),	-- Top-Sail Footwraps
							i(162541),	-- Band of the Roving Scalawag
						},
					}),
					e(2133, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_11_0_2 } }, {	-- Sergeant Bainbridge [1st Encounter - Horde]
						-- This boss was removed in TWW season 1 and did not return when the season ended
						-- This fight is Horde-only. We are going to set the boss as such, but leave the items not marked Horde due to the fact that Alliance should be able to transmog them, and in the event Blizzard makes them available for the opposite faction later.
						["races"] = HORDE_ONLY,
						["crs"] = { 128649 },	-- Sergeant Bainbridge
						["groups"] = {
							i(159647),	-- Siegebreaker's Halberd
							i(159648),	-- Bainbridge's Blackjack
							i(159328),	-- Wharf Warden's Gloves
							i(159245),	-- Cord of the Pious Warder
							i(159411),	-- Legplates of the Maritime Guard
							i(159367),	-- Unstoppable Zealot's Legplates
							i(159278),	-- Slippers of Unwavering Faith
							i(162542),	-- Seal of the City Watch
						},
					})),
					e(2173, {	-- Dread Captain Lockwood [2nd Encounter - Both Factions]
						["crs"] = { 129208 },	-- Dread Captain Lockwood
						["groups"] = {
							i(159649),	-- Saber of Dread Pirate Lockwood
							i(159372),	-- Dread Captain's Irons
							i(159237),	-- Captain's Dustfinders
							i(159429),	-- Rope-Scored Gauntlets
							i(159434),	-- Cannoneer's Toolbelt
							i(159309),	-- Port Pillager's Belt
							i(159250),	-- Powder Monkey's Leggings
							i(159320),	-- Besieger's Deckstalkers
							i(159379),	-- Sure-Foot Sabatons
							i(159623),	-- Dead-Eye Spyglass
						},
					}),
					e(2134, {	-- Hadal Darkfathom [3rd Encounter - Both Factions]
						["crs"] = { 128651 },	-- Hadal Darkfathom
						["groups"] = {
							i(159650),	-- Dismembered Submersible Claw
							i(159386),	-- Anchor Chain Girdle
							i(159322),	-- Seawalker's Pantaloons
							i(159428),	-- Ballast Sinkers
							i(159461),	-- Band of the Ancient Dredger
							i(159622),	-- Hadal's Nautilus
						},
					}),
					e(2140, {	-- Viq'Goth [4th Encounter - Both Factions]
						["crs"] = { 128652 },	-- Viq'Goth
						["groups"] = {
							i(159651),	-- Coral-Edged Crescent
							i(159310),	-- Circlet of the Enveloping Leviathan
							i(159252),	-- Grasping Crown of the Deep
							i(159376),	-- Hook-Barbed Spaulders
							i(159431),	-- Kraken Shell Pauldrons
							i(159314),	-- Cephalohide Jacket
							i(159416),	-- Harpooner's Plate Cuirass
							i(159362),	-- Tri-Heart Chestguard
							i(159256),	-- Iron-Kelp Wristwraps
							i(168130),	-- Essence of the Depths
							i(231824, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Circlet of the Enveloping Leviathan
							i(231818, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Grasping Crown of the Deep
							i(231826, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Hook-Barbed Spaulders
							i(231830, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Kraken Shell Pauldrons
							i(231822, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Cephalohide Jacket
							i(231827, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Harpooner's Plate Cuirass
							i(231825, {["timeline"] = {ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART}}),	-- Tri-Heart Chestguard
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["groups"] = {
					e(2173, {	-- Dread Captain Lockwood [2nd Encounter - Both Factions]
						["crs"] = { 129208 },	-- Dread Captain Lockwood
						["groups"] = {
							ach(12727),	-- Stand by Me
						},
					}),
					e(2140, {	-- Viq'Goth [4th Encounter - Both Factions]
						["crs"] = { 128652 },	-- Viq'Goth
						["groups"] = {
							ach(12726),	-- A Fish Out of Water
							ach(12847),	-- Siege of Boralus
							ach(13007),	-- Siege of Boralus Guild Run
						},
					}),
				},
			}),
			-- #endif
		},
	}),
})));
