-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
BLIZZCON = createHeader({
	readable = "BlizzCon",
	icon = [[~_.asset("Promotion_Blizzcon")]],
	eventID = 1181,
	text = {
		en = "BlizzCon",
		ko = "블리즈컨",
		cn = "暴雪嘉年华",
		tw = "暴雪嘉年華",
	},
});
root(ROOTS.Promotions, n(BLIZZCON, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
	ach(411, {	-- Blizzcon 2005 - Murky
		["provider"] = { "i", 20371 },	-- Murky (PET!)
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(20371, {	-- Murky (PET!)
		["timeline"] = { ADDED_1_11_1 },
	}),

	ach(412, {	-- Blizzcon 2007 - Murloc Costume
		["provider"] = { "i", 33079 },	-- Murloc Costume (TOY!)
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(33079, {	-- Murloc Costume (TOY!)
		["timeline"] = { ADDED_2_1_3 },
	}),

	ach(415, {	-- Blizzcon 2008 - Big Blizzard Bear
		["provider"] = { "i", 43599 },	-- Big Blizzard Bear (MOUNT!)
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(43599, {	-- Big Blizzard Bear (MOUNT!)
		["timeline"] = { ADDED_3_0_2 },
	}),

	ach(3536, {	-- Blizzcon 2009 - The Marine Marine
		["provider"] = { "i", 46802 },	-- Grunty (PET!)
		["timeline"] = { ADDED_3_2_0 },
	}),
	i(46802, {	-- Grunty (PET!)
		["timeline"] = { ADDED_3_2_0 },
	}),

	ach(5378, {	-- Blizzcon 2010 - Deathy
		["provider"] = { "i", 67418 },	-- Deathy (PET!)
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(67418, {	-- Deathy (PET!)
		["timeline"] = { ADDED_4_0_1 },
	}),

	ach(6185, {	-- Blizzcon 2011 - Murkablo
		["provider"] = { "i", 71726 },	-- Murkablo (PET!)
		["timeline"] = { ADDED_4_3_0 },
	}),
	i(71726, {	-- Murkablo (PET!)
		["timeline"] = { ADDED_4_2_0 },
	}),

	ach(8793, {	-- Blizzcon 2013 - Murkalot
		["provider"] = { "i", 106244 },	-- Murkalot (PET!)
		["timeline"] = { ADDED_5_4_2 },
	}),
	i(106244, {	-- Murkalot (PET!)
		["timeline"] = { ADDED_5_4_2 },
	}),

	ach(9763, {	-- Blizzcon 2014 - Grommloc
		["provider"] = { "i", 118517 },	-- Grommloc (PET!)
		["timeline"] = { ADDED_6_1_0 },
	}),
	i(118517, {	-- Grommloc (PET!)
		["timeline"] = { ADDED_6_0_3 },
	}),

	ach(10322, {	-- Blizzcon 2015 - Murkidan
		["provider"] = { "i", 128427 },	-- Murkidan (PET!)
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(128427, {	-- Murkidan (PET!)
		["timeline"] = { ADDED_6_2_2 },
	}),

	ach(11294, {	-- Blizzcon 2016 - Murloc Battlemasters
		["providers"] = {
			{ "i", 141894 },	-- Knight Captain Murky (PET!)
			{ "i", 141895 },	-- Legionnaire Murky (PET!)
		},
		["timeline"] = { ADDED_7_2_0 },
	}),
	a(i(141894, {	-- Knight Captain Murky (PET!)
		["timeline"] = { ADDED_7_1_0 },
	})),
	h(i(141895, {	-- Legionnaire Murky (PET!)
		["timeline"] = { ADDED_7_1_0 },
	})),

	ach(11931, {	-- Blizzcon 2017 - Rides of War
		["providers"] = {
			{ "i", 151617 },	-- Orgrimmar Interceptor (MOUNT!)
			{ "i", 151618 },	-- Stormwind Skychaser (MOUNT!)
		},
		["timeline"] = { ADDED_7_3_2 },
	}),
	h(i(151617, {	-- Orgrimmar Interceptor (MOUNT!)
		["timeline"] = { ADDED_7_3_0 },
	})),
	a(i(151618, {	-- Stormwind Skychaser (MOUNT!)
		["timeline"] = { ADDED_7_3_0 },
	})),

	ach(13138, {	-- Blizzcon 2018 - Flying Colors
		["providers"] = {
			{ "i", 163986 },	-- Orgrimmar Hero's War Banner (TOY!)
			{ "i", 163987 },	-- Stormwind Champion's War Banner (TOY!)
		},
		["timeline"] = { ADDED_8_1_0 },
	}),
	i(163986, {	-- Orgrimmar Hero's War Banner (TOY!)
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = HORDE_ONLY,
		["f"] = TOYS,
	}),
	i(163987, {	-- Stormwind Champion's War Banner (TOY!)
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = ALLIANCE_ONLY,
		["f"] = TOYS,
	}),
	i(163985, {	-- War Mantle of the Alliance
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = ALLIANCE_ONLY,
		["filterID"] = CLOAKS,
	}),
	i(163984, {	-- War Mantle of the Horde
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = HORDE_ONLY,
		["filterID"] = CLOAKS,
	}),

	-- Blizzcon 2019
	ach(14027, {	-- Blizzcon 2019 - Battle for Mrrglroth
		["timeline"] = { ADDED_8_2_5 },
	}),
	-- #if AFTER 11.2.5
	iensemble(258422, {	-- Ensemble: Wooly Wendigo
		["timeline"] = { ADDED_11_2_5 },
	}),
	-- #else
	i(171341, {	-- Wooly Wendigo Pullover
		["timeline"] = { ADDED_8_2_5 },
	}),
	i(171340, {	-- Wooly Wendigo Hood
		["timeline"] = { ADDED_8_2_5 },
	}),
	i(171339, {	-- Wooly Wendigo Sweatpants
		["timeline"] = { ADDED_8_2_5 },
	}),
	i(171338, {	-- Wooly Wendigo Slippers
		["timeline"] = { ADDED_8_2_5 },
	}),
	i(171337, {	-- Wooly Wendigo Mittens
		["timeline"] = { ADDED_8_2_5 },
	}),
	-- #endif
	-- #if AFTER 11.2.5
	i(258418, {	-- Gillvanas (PET!)
	-- #else
	pet(2777, {	-- Gillvanas (PET!)
	-- #endif
		["timeline"] = { ADDED_8_2_5 },
		["races"] = HORDE_ONLY,
	}),
	-- #if AFTER 11.2.5
	i(258419, {	-- Finduin (PET!)
	-- #else
	pet(2778, {	-- Finduin (PET!)
	-- #endif
		["timeline"] = { ADDED_8_2_5 },
		["races"] = ALLIANCE_ONLY,
	}),

	-- Blizzconline 2021 "Celebration Collection" (Removed from store 21 Feb 2022)
	-- #if AFTER 11.2.5
	i(258428, {	-- Snowstorm (MOUNT!)
	-- #else
	mount(341821, {	-- Snowstorm (MOUNT!)
	-- #endif
		["timeline"] = { ADDED_9_0_2, REMOVED_9_2_0 },
	}),
	-- #if AFTER 11.2.5
	i(258429, {	-- Moon-Touched Netherwhelp (PET!)
	-- #else
	pet(3053, {	-- Moon-Touched Netherwhelp (PET!)
	-- #endif
		["timeline"] = { ADDED_9_0_2, REMOVED_9_2_0 },
	}),
	ach(14904, {	-- Netherwhelp Online
		["timeline"] = { ADDED_9_0_2, REMOVED_9_2_0 },
	}),

	-- Blizzcon 2023 Collection
	-- #if AFTER 11.2.5
	i(258427, {	-- Bound Blizzard (MOUNT!)
	-- #else
	mount(358072, {	-- Bound Blizzard (MOUNT!)
	-- #endif
		["description"] = "Received after buying the Blizzcon 2023 Collection: Legendary Pack.",
		["timeline"] = { ADDED_10_1_7, REMOVED_10_2_5 },
		["u"] = REAL_MONEY,
	}),
	i(210042, {	-- Chilling Celebration Banner (TOY!)
		["description"] = "Received after buying the Blizzcon 2023 Collection: Epic Pack.",
		["timeline"] = { ADDED_10_1_7, REMOVED_10_2_5 },
		["u"] = REAL_MONEY,
	}),
	-- #if AFTER 11.2.5
	i(258482, {	-- Ysergle
	-- #else
	pet(3579, {	-- Ysergle The Dreamurk (PET!)
	-- #endif
		["description"] = "Received after buying the Blizzcon 2023 Collection: Epic Pack.",
		["timeline"] = { ADDED_10_1_7, REMOVED_10_2_5 },
		["u"] = REAL_MONEY,
	}),
	ach(18250, {	-- Ysergle The Dreamurk
		["timeline"] = { ADDED_10_1_7, REMOVED_10_2_5 },
		["u"] = REAL_MONEY,
	}),
})));
