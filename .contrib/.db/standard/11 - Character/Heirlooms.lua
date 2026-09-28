-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
-- Heirloom Upgrades are listed here as they are 'filled' on load in game with all possible Upgrade level groups via Heirlooms.lua:CacheHeirlooms()
root(ROOTS.Character, n(HEIRLOOMS, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {
	n(ACHIEVEMENTS, {
		ach(9909, {	-- Heirloom Hoarder (35)
			i(122718, {	-- Clinking Present
				i(120968),	-- Chauffered Chopper (H)
				i(122703),	-- Chauffered Chopper (A)
			}),
		}),
		ach(9908),	-- Ready for Powerleveling (15)
		ach(9906),	-- Alt-ernative Lifestyle (5)
		ach(9911),	-- Where's the Mailbox? (1)
	}),
	container(122338, {	-- Ancient Heirloom Armor Casing
		["timeline"] = { ADDED_6_1_0 },
	}),
	container(122339, {	-- Ancient Heirloom Scabbard
		["timeline"] = { ADDED_6_1_0 },
	}),
	container(122340, {	-- Timeworn Heirloom Armor Casing
		["timeline"] = { ADDED_6_1_0 },
	}),
	container(122341, {	-- Timeworn Heirloom Scabbard
		["timeline"] = { ADDED_6_1_0 },
	}),
	container(151614, {	-- Weathered Heirloom Armor Casing
		["timeline"] = { ADDED_7_2_5 },
	}),
	container(151615, {	-- Weathered Heirloom Scabbard
		["timeline"] = { ADDED_7_2_5 },
	}),
	container(167731, {	-- Battle-Hardened Heirloom Armor Casing
		["timeline"] = { ADDED_8_1_5 },
	}),
	container(167732, {	-- Battle-Hardened Heirloom Scabbard
		["timeline"] = { ADDED_8_1_5 },
	}),
	container(187997, {	-- Eternal Heirloom Armor Casing
		["timeline"] = { ADDED_9_1_5 },
	}),
	container(187998, {	-- Eternal Heirloom Scabbard
		["timeline"] = { ADDED_9_1_5 },
	}),
	container(204336, {	-- Awakened Heirloom Armor Casing
		["timeline"] = { ADDED_10_0_7 },
	}),
	container(204337, {	-- Awakened Heirloom Scabbard
		["timeline"] = { ADDED_10_0_7 },
	}),
})))