-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
MISCELLANEOUS_PROMOTIONS = createHeader({
	readable = "Miscellaneous",
	icon = 135999,
	text = {
		en = [[~AUCTION_CATEGORY_MISCELLANEOUS]],
	},
	description = {
		en = "This section is for miscellaneous promotions that took place in the real world or something to do with account management.",
	},
});
root(ROOTS.Promotions, n(MISCELLANEOUS_PROMOTIONS, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
	i(19160, {	-- Contest Winner's Tabard [TODO: Move to PVP?]
		["description"] = "This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",
		["timeline"] = { ADDED_1_11_1 },
	}),
	un(REAL_MONEY, i(49646, {	-- Core Hound Pup
		["description"] = "Granted to players that attach an authenticator to their account.",
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_3_3_0,
			-- #else
			ADDED_3_3_0,
			-- #endif
		},
	})),
	i(48527, {	-- Onyx Panther (PET!)
		["description"] = "Reward from a Korean-exclusive World Event that mailed you this pet.",
		["timeline"] = { CREATED_3_0_2, ADDED_4_0_3 },
		["groups"] = {
			ach(3896, {	-- Onyx Panther
				["timeline"] = { ADDED_4_0_3 },
			}),
		},
	}),
	i(32498, {	-- Lucky (PET!)
		["description"] = "Reward from the 2007 Korean Worldwide Invitational (Korea Only)",
		["timeline"] = { ADDED_2_1_0 },
	}),
	i(103632, {	-- Lucky Box of Greatness
		["description"] = "Reward from the Azeroth Academy Mentor Recruitment Promotion (China Only)",
		["timeline"] = { ADDED_5_4_0 },
		["groups"] = {
			i(103630),	-- Riding Turtle (MOUNT!)
			i(103629),	-- Lucky Satchel
			i(103631),	-- Lucky Path of Cenarius
		},
	}),
	ach(3618, {	-- Murkimus the Gladiator
		["timeline"] = { ADDED_3_1_2 },
	}),
	i(45180, {	-- Murkimus the Gladiator [Murkimus' Little Spear] (PET!)
		["description"] = "This was obtained by participating in at least 200 arena matches in the 2009 Arena Tournament, or at least 50 matches on the same team in the years after that.",
		["timeline"] = { ADDED_3_1_2 },
	}),
	i(46892, {	-- Murkimus the Gladiator [Murkimus' Tiny Spear] (PET!)
		["description"] = "This was a reward for the 2011 arena tournament, requirements were to participate in 50 games in your current 3v3 team when the tournament closed",
		["timeline"] = { ADDED_4_2_0 },
	}),
	i(100870, {	-- Murkimus the Gladiator [Murkimus' Tyrannical Spear] (PET!)
		["description"] = "This was a reward for the 2013 arena tournament, requirements were to participate in 50 games in your current 3v3 team when the tournament closed",
		["timeline"] = { ADDED_5_2_0 },
	}),
	i(20651, {	-- Murki (PET!)
		["description"] = "Reward from a Korean Promotional Event (Korea Only)",
		["timeline"] = { "created 1.13.0", ADDED_2_1_0 },
	}),
	i(22114, {	-- Gurky (PET!)
		["description"] = "Offered as a fan website gift around Christmas 2006, in Europe. (EU Only)",
		["timeline"] = { "created 1.13.0", ADDED_2_0_3 },
	}),
	ach(12454, {	-- Salute to Starcraft
		["timeline"] = { ADDED_7_3_5 },
	}),
	i(90953, {	-- Spectral Cub (PET!)
		["description"] = "Reward from the Battle.net World Championship in Shanghai 2012 (China Only)",
		["timeline"] = { ADDED_5_0_4 },
	}),
	i(76755, {	-- Tyrael's Charger (MOUNT!)
		-- #if BEFORE DF
		["description"] = "Reward from the Diablo III Annual Pass promotion. Additionally, it was available on the Taiwan store.",
		-- #endif
		["timeline"] = { ADDED_4_3_0, REMOVED_4_3_2 },
	}),
	ach(414, {	-- Tyrael's Hilt
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(39656, {	-- Mini Tyrael (PET!)
		["description"] = "Reward from the 2008 Worldwide Invitational in Paris.",
		["timeline"] = { ADDED_2_4_2 },
	}),
	i(41133, {	-- Mr. Chilly (PET!)
		["description"] = "This was awarded to players when they linked their original WoW account to a Battle.Net Tag. No longer available as all accounts now require Battle.Net Tag initially, unless you have access to an unattached account.",
		["timeline"] = { ADDED_3_2_2 },
	}),
	ach(9496, {	-- Warlord's Deathwheel
		["timeline"] = { ADDED_6_0_2 },
		["groups"] = {
			crit(25887, {
				["provider"] = { "i", 116788 },
				["_noautomation"] = true,
			}),
			crit(27433, {
				["provider"] = { "i", 116788 },
				["_noautomation"] = true,
			}),
		},
	}),
	i(116788, {	-- Warlord's Deathwheel (MOUNT!)
		["description"] = "Azeroth Choppers promotional mount. You had to have logged in on a Horde character between the 24th of July and the 30th of September 2014 in order for your account to receive this mount.",
		["timeline"] = { ADDED_6_0_2 },
	}),
})));
