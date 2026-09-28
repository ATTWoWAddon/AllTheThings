---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local ENERGY_CELL = 166970;
local SPARE_CRATE = 169610;
local SPARE_PARTS = 166846;
local GALVANIC_IGNITERCOIL = 168327;
local GALVANIC_OSCILLATOR = 168832;

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(VENDORS, {
			n(152321, {	-- Cork Stuttguard
				["coord"] = { 63.3, 42.9, MECHAGON },
				["groups"] = {
					i(167787, {	-- Blueprint: Mechanocat Laser Pointer
						["cost"] = 5000000,	-- 500g
					}),
					i(168327, {	-- Chain Ignitercoil
						["cost"] = 350000000,	-- 35,000g
					}),
					i(168115),	-- Mechanobot Ignition
					i(168806),	-- Mechanocat and Rider
				},
			}),
			n(151462, {	-- Danielle Anglers
				["coord"] = { 37.20, 47.16, MECHAGON },
				["groups"] = {
					i(167698, {	-- Secret Fish Goggles
						-- #if AFTER 11.1.5
						["description"] = "This is a toy since 11.1.5.\nIf you buy the goggles from the vendor, the toy is automatically added to your Toy Box. You do not have to click it on to add it (as you do with most toys).\n\nBut, the vendor won't sell you the goggles if you already have one on your bag or your bank, so make sure to delete it first.",
						-- #endif
						["sourceAchievement"] = 13489,	-- Secret Fish of Mechagon
					}),
					i(161475, {	-- Secret Fish Lure
						["sourceQuest"] = 51355,	-- Secretest Fish
					}),
				},
			}),
			n(150716, {	-- Stolen Royal Vendorbot
				["coord"] = { 73.7, 36.9, MECHAGON },
				["groups"] = bubbleDownClassicRep(FACTION_RUSTBOLT_RESISTANCE, {
					{		-- Neutral
						i(246601, {	-- Bolt Chair (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "i", SPARE_PARTS, 10 } },
						}),
						i(246703, {	-- Double-Sprocket Table (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 2400000 },	-- 240g
								{ "i", SPARE_CRATE, 3 },
							},
						}),
						i(246603, {	-- Gnomish Cog Stack (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "i", SPARE_PARTS, 50 } },
						}),
						i(246701, {	-- Gnomish Sprocket Table (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 1600000 },	-- 160g
								{ "i", SPARE_CRATE, 2 },
							},
						}),
						i(246479, {	-- Gnomish T.O.O.L.B.O.X. (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "i", SPARE_PARTS, 100 } },
						}),
						i(246483, {	-- Redundant Reclamation Rig (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 4000000 },	-- 400g
								{ "i", ENERGY_CELL, 2 },
								{ "i", GALVANIC_IGNITERCOIL, 1 },
							},
						}),
						i(246598, {	-- Screw-Sealed Stembarrel (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "i", SPARE_CRATE, 1 } },
						}),
					}, {	-- Friendly
						i(246484, {	-- Mechagon Hanging Floodlight (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 800000 },	-- 80g
								{ "i", ENERGY_CELL, 1 },
							},
						}),
						i(167693),	-- Neural Autonomy
						i(168400, {	-- Null Force Containment Unit (Rank 1)
							["cost"] = {
								{ "i", SPARE_CRATE, 2 },
								{ "i", GALVANIC_OSCILLATOR, 1 },
							},
						}),
						i(168932, {	-- Reactive Existence Battery (Rank 1)
							["cost"] = {
								{ "i", SPARE_CRATE, 2 },
								{ "i", GALVANIC_OSCILLATOR, 1 },
							},
						}),
						i(246497, {	-- Small Emergency Warning Lamp (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 800000 },	-- 80g
								{ "i", ENERGY_CELL, 1 },
							},
						}),
						i(168858, {	-- Titan Purification Protocols (Rank 1)
							["cost"] = {
								{ "i", SPARE_CRATE, 2 },
								{ "i", GALVANIC_OSCILLATOR, 1 },
							},
						}),
					}, {	-- Honored
						i(169112, {	-- Blueprint: Advanced Adventurer Augment
							["cost"] = 20480000,	-- 2,048g
						}),
						i(246498, {	-- Emergency Warning Lamp (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 800000 },	-- 80g
								{ "i", ENERGY_CELL, 1 },
							},
						}),
						i(168933, {	-- Enhanced Existence Capacitor (Rank 2)
							["cost"] = {
								{ "i", SPARE_CRATE, 8 },
								{ "i", GALVANIC_OSCILLATOR, 4 },
							},
						}),
						i(246503, {	-- Large H.O.M.E. Cog (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 800000 },	-- 80g
								{ "i", SPARE_CRATE, 2 },
							},
						}),
						i(168566, {	-- Null Force Cooling Unit (Rank 2)
							["cost"] = {
								{ "i", SPARE_CRATE, 8 },
								{ "i", GALVANIC_OSCILLATOR, 4 },
							},
						}),
						i(169380, {	-- Mustyfur Snooter (PET!)
							["cost"] = 5000000,	-- 500g
						}),
						i(168859, {	-- Targeted Purification Protocols (Rank 2)
							["cost"] = {
								{ "i", SPARE_CRATE, 8 },
								{ "i", GALVANIC_OSCILLATOR, 4 },
							},
						}),
					}, {	-- Revered
						i(169134, {	-- Blueprint: Extraordinary Adventurer Augment
							["cost"] = 20480000,	-- 2,048g
						}),
						i(168934, {	-- Calibrated Existence Gauge (Rank 3)
							["cost"] = {
								{ "i", SPARE_CRATE, 30 },
								{ "i", GALVANIC_OSCILLATOR, 6 },
							},
						}),
						i(167672),	-- Cyclotronic Blast
						i(168860, {	-- Enhanced Purification Protocols (Rank 3)
							["cost"] = {
								{ "i", SPARE_CRATE, 30 },
								{ "i", GALVANIC_OSCILLATOR, 6 },
							},
						}),
						i(246605, {	-- Mecha-Storage Mecha-Chest (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 1200000 },	-- 120g
								{ "i", GALVANIC_IGNITERCOIL, 2 },
							},
						}),
						i(246499, {	-- Mechagon Eyelight Lamp (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 1200000 },	-- 120g
								{ "i", ENERGY_CELL, 2 },
							},
						}),
						i(168568, {	-- Null Force Nullifier (Rank 3)
							["cost"] = {
								{ "i", SPARE_CRATE, 30 },
								{ "i", GALVANIC_OSCILLATOR, 6 },
							},
						}),
						i(169108, {	-- Rustbolt Banner (TOY!)
							["cost"] = 5120000,	-- 512g
						}),
						i(168533, {	-- Schematic: Ub3r-Module: P.O.G.O. (RECIPE!)
							["description"] = "Must be an engineer, have completed the |cFFFFD700Iteration Is Key|r quest, and have a crafted Ub3r-Spanner for this to show up on the vendor.",
							["cost"] = 14000000,	-- 1,400g
						}),
						i(168535, {	-- Schematic: Ub3r-Module: Scrap Cannon (RECIPE!)
							["description"] = "Must be an engineer, have completed the |cFFFFD700Iteration Is Key|r quest, and have a crafted Ub3r-Spanner for this to show up on the vendor.",
							["cost"] = 14000000,	-- 1,400g
						}),
						i(168534, {	-- Schematic: Ub3r-Module: Ub3r-Coil (RECIPE!)
							["description"] = "Must be an engineer, have completed the |cFFFFD700Iteration Is Key|r quest, and have a crafted Ub3r-Spanner for this to show up on the vendor.",
							["cost"] = 14000000,	-- 1,400g
						}),
						i(169547, {	-- Technique: Contract: Rustbolt Resistance (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
					}, {	-- Exalted
						i(246480, {	-- Automated Gnomeregan Guardian (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 8000000 },	-- 800g
								{ "i", GALVANIC_IGNITERCOIL, 5 },
								{ "i", GALVANIC_OSCILLATOR, 5 },
							},
						}),
						i(168493, {	-- Blueprint: Battle Box
							["cost"] = 10240000,	-- 1,024g
						}),
						i(246501, {	-- Gnomish Safety Flamethrower (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 1600000 },	-- 160g
								{ "i", GALVANIC_OSCILLATOR, 2 },
							},
						}),
						i(168369, {	-- Recipe: Famine Evaluator And Snack Table [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
						}),
						i(168619),	-- Rustbolt Resistance Tabard
						i(168829, {	-- Rustbolt Resistor (MOUNT!)
							["cost"] = 5242880000,	-- 524,288g
						}),
						i(168660, {	-- Schematic: Blingtron 7000 (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
		}),
	}),
})));
