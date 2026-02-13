-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

local VICIOUS_SADDLE = 103533;

root(ROOTS.PVP, pvp(filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
	n(73190, {	-- Necrolord Sipe <Combatant Mount Quartermaster>
		["coord"] = { 76.8, 65.6, STORMWIND_CITY },
		["races"] = ALLIANCE_ONLY,
		["groups"] = sharedData({
			["races"] = ALLIANCE_ONLY,
			["cost"] = { { "i", VICIOUS_SADDLE, 1 } },
		}, {
			i(165019, {	-- Vicious Black Warsaber (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(213439, {	-- Vicious Dreamtalon [A] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(140353, {	-- Vicious Gilnean Warhorse (MOUNT!)
				["timeline"] = { ADDED_7_0_3_LAUNCH }
			}),
			i(102514),	-- Vicious Kaldorei Warsaber (MOUNT!)
			i(210070, {	-- Vicious Moonbeast [A] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(201789, {	-- Vicious Sabertooth [A] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(163122, {	-- Vicious War Basilisk [A] (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(142234, {	-- Vicious War Bear [A] (MOUNT!)
				["timeline"] = { ADDED_7_2_0 },
			}),
			i(140350, {	-- Vicious War Elekk (MOUNT!)
				["timeline"] = { ADDED_7_0_3_LAUNCH }
			}),
			i(152870, {	-- Vicious War Fox [A] (MOUNT!)
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(186178, {	-- Vicious War Gorm [A] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(187681, {	-- Vicious War Gulper [A] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(142237, {	-- Vicious War Lion (MOUNT!)
				["timeline"] = { ADDED_7_2_0 },
			}),
			i(124089, {	-- Vicious War Mechanostrider (MOUNT!)
				["timeline"] = { ADDED_6_2_0 },
			}),
			i(116777, {	-- Vicious War Ram (MOUNT!)
				["timeline"] = { ADDED_6_0_3_LAUNCH },
			}),
			i(163123, {	-- Vicious War Riverbeast (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(205246, {	-- Vicious War Snail [A] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(184014, {	-- Vicious War Spider [A] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(70909),	-- Vicious War Steed (MOUNT!)
			i(143648, {	-- Vicious War Turtle [A] (MOUNT!)
				["timeline"] = { ADDED_7_3_0 },
			}),
			i(187644, {	-- Vicious Warstalker (A) (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(173714, {	-- Vicious White Warsaber (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
		}),
	}),
	n(73151, {	-- Deathguard Netharian <Combatant Mount Quartermaster>
		["coord"] = { 41.8, 73.0, ORGRIMMAR },
		["races"] = HORDE_ONLY,
		["groups"] = sharedData({
			["races"] = HORDE_ONLY,
			["cost"] = { { "i", VICIOUS_SADDLE, 1 } },
		}, {
			i(165020, {	-- Vicious Black Bonesteed (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(213440, {	-- Vicious Dreamtalon [H] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(210069, {	-- Vicious Moonbeast [H] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(201788, {	-- Vicious Sabertooth [H] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(102533),	-- Vicious Skeletal Warhorse (MOUNT!)
			i(163121, {	-- Vicious War Basilisk [H] (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(142235, {	-- Vicious War Bear (H) (MOUNT!)
				["timeline"] = { ADDED_7_2_0 },
			}),
			i(163124, {	-- Vicious War Clefthoof (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(152869, {	-- Vicious War Fox [H] (MOUNT!)
				["timeline"] = { ADDED_7_3_5 },
			}),
			i(186179, {	-- Vicious War Gorm [H] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(187680, {	-- Vicious War Gulper [H] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(124540, {	-- Vicious War Kodo (MOUNT!)
				["timeline"] = { ADDED_6_2_0 },
			}),
			i(116778, {	-- Vicious War Raptor (MOUNT!)
				["timeline"] = { ADDED_6_0_3_LAUNCH },
			}),
			i(142437, {	-- Vicious War Scorpion (MOUNT!)
				["timeline"] = { ADDED_7_2_0 },
			}),
			i(205245, {	-- Vicious War Snail [H] (MOUNT!)
				["timeline"] = { ADDED_11_0_2 },
			}),
			i(184013, {	-- Vicious War Spider [H] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(140354, {	-- Vicious War Trike (MOUNT!)
				["timeline"] = { ADDED_7_0_3_LAUNCH }
			}),
			i(143649, {	-- Vicious War Turtle [H] (MOUNT!)
				["timeline"] = { ADDED_7_3_0 },
			}),
			i(70910),	-- Vicious War Wolf (MOUNT!)
			i(187642, {	-- Vicious Warstalker [H] (MOUNT!)
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(140348, {	-- Vicious Warstrider (MOUNT!)
				["timeline"] = { ADDED_7_0_3_LAUNCH }
			}),
			i(173713, {	-- Vicious White Bonesteed (MOUNT!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
		}),
	}),
}))));
