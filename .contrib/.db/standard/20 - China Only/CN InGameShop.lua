-------------------------------------
--     I N - G A M E   S H O P     --
-------------------------------------

-- Content of this folder will automatically merge into the IngameShop File in the Game.
-- Listing China Only Things here for easier accessibility

-- #if AFTER 2.0.1
root(ROOTS.InGameShop, bubbleDown({ ["u"] = REAL_MONEY }, {
	filter(BATTLE_PETS, {	-- AVAILABLE --
		cnONLY(i(233190, {	-- Wanderer Liu/Xiao Liu
			["timeline"] = { ADDED_11_0_7 },
		})),
	}),
	filter(BATTLE_PETS, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {	-- REMOVED --
	})),
	-- #if AFTER 5.4.0.17227
	filter(COSMETIC, {	-- AVAILABLE --
	}),
	filter(COSMETIC, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {	-- REMOVED --
	})),
	-- #endif
	n(DECOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1 } }, {
		cnONLY(i(264721, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Curio Display
		cnONLY(i(264724, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Golden Carp Lantern
		cnONLY(i(264725, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Imperial Lion
		cnONLY(i(264722, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Inkmaster's Desk
		cnONLY(i(269605, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Meal Case
		cnONLY(i(269604, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Picnic Basket
		cnONLY(i(272354, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Stone Lion
		cnONLY(i(264723, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Tree of Fortune
		cnONLY(i(272353, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Verdant Basin
		cnONLY(i(266071, { ["timeline"] = { ADDED_12_0_5 } })),	-- Auspicious Wooden Chair
	})),
	filter(MOUNTS, {	-- AVAILABLE --
		cnONLY(i(272920, {	-- Spring Panda (MOUNT!)
			["timeline"] = { ADDED_12_0_7 },
		})),
	}),
	filter(MOUNTS, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {	-- REMOVED --
	})),
	-- #if AFTER 5.0.4
	filter(TOYS, {
	}),
	-- #endif
	cnONLY(i(235378, {	-- Landro's Loot Box (CN Only)
		["description"] = "Can be bought for ¥200 RMB (~$27 USD) in the Ingame Shop.\n\nYou can only purchase 12 boxes per year.",
		["timeline"] = { ADDED_3_4_3, "removed 3.5.10", "added 4.0.3" },	-- Originally added in Wotlk Classic, it later got also added in Retail. Not available in Titan Reforged
		["groups"] = {
			cnONLY(i(227362)),	-- Golden Ashes of Al'ar (MOUNT!) (CN Only)
			cnONLY(i(35223)),	-- Papa Hummel's Old-Fashioned Pet Biscuit
			cnONLY(i(46779)),	-- Path of Cenarius
			cnONLY(i(49284)),	-- Reins of the Swift Spectral Tiger (MOUNT!)
			cnONLY(i(49283)),	-- Reins of the Spectral Tiger (MOUNT!)
			cnONLY(i(45047)),	-- Sandbox Tiger
			cnONLY(i(49285)),	-- X-51 Nether-Rocket (MOUNT!)
			cnONLY(i(49286)),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
		},
	})),
}));
-- #endif
