-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
-- #if AFTER 2.3.0
RECRUIT_A_FRIEND = createHeader({
	readable = "Recruit A Friend",
	icon = 236688,
	text = {
		en = [[~REFER_A_FRIEND]],
	},
});
root(ROOTS.Promotions, {
	-- Retired Rewards
	n(RECRUIT_A_FRIEND, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
		ach(1436, {	-- Friends In High Places
			["timeline"] = { ADDED_3_0_2 },
		}),
		i(37719, {	-- Swift Zhevra (MOUNT!)
			["timeline"] = { ADDED_2_4_3 },
		}),

		ach(4832, {	-- Friends In Even Higher Places
			["timeline"] = { ADDED_4_0_1 },
		}),
		i(54860, {	-- X-53 Touring Rocket (MOUNT!)
			["timeline"] = { ADDED_3_3_3 },
		}),

		ach(8213, {	-- Friends In Places Higher Yet
			["timeline"] = { ADDED_5_0_4 },
		}),
		i(83086, {	-- Heart of the Nightwing (MOUNT!)
			["timeline"] = { ADDED_5_0_4 },
		}),

		ach(8794, {	-- Friends In Places Even Higher Than That
			["timeline"] = { ADDED_5_4_2 },
		}),
		i(106246, {	-- Emerald Hippogryph (MOUNT!)
			["timeline"] = { ADDED_5_4_2 },
		}),

		ach(9925, {	-- Friends In Places Yet Even Higher Than That
			["timeline"] = { ADDED_6_0_2 },
		}),
		i(118515, {	-- Cindermane Charger (MOUNT!)
			["timeline"] = { ADDED_6_0_2 },
		}),

		-- Chinese & Taiwan Servers only until 5.4.1
		ach(3636, {	-- Jade Tiger
			["description"] = "Chinese & Taiwan Only",
			["timeline"] = { ADDED_4_0_3 },
		}),
		i(46894, {	-- Jade Tiger (PET!)
			["description"] = "Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",
			["timeline"] = { CREATED_3_0_2, ADDED_4_0_3 },
		}),
		i(49664, {	-- Zipao Tiger (PET!)
			["description"] = "Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",
			["timeline"] = { CREATED_3_0_2, ADDED_4_0_3 },
		}),
		i(34518, {	-- Golden Pig (PET!)
			["description"] = "Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",
			["timeline"] = { ADDED_2_3_0 },
		}),
		i(34519, {	-- Silver Pig (PET!)
			["description"] = "Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",
			["timeline"] = { ADDED_2_3_0 },
		}),

		-- Desert Path
		iensemble(173300, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 } }, {	-- Ensemble: Renowned Explorer's Attire
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
		})),
		i(171363, {	-- Illusion: Stinging Sands (ILLUSION!)
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
		i(173299, {	-- Explorer's Jungle Hopper (MOUNT!)
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
		i(173297, {	-- Explorer's Dunetrekker (MOUNT!)
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
		i(173298, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 } }, {	-- Explorer's Certification
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["groups"] = {
				title(410),	-- Renowned Explorer <Name>
			},
		})),
		i(171333, {	-- Renowned Explorer's Rucksack
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
		i(171361, {	-- Renowned Explorer's Tabard
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
		i(173296, {	-- Rikki (PET!)
			["description"] = "Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",
			["timeline"] = { ADDED_8_2_5, REMOVED_10_0_7 },
		}),
	})),

	-- Current Rewards
	n(RECRUIT_A_FRIEND, bubbleDown({ ["u"] = REAL_MONEY }, {
		i(173301, {	-- Game Time
			["timeline"] = { ADDED_8_2_5 },
		}),
		i(204183, {	-- Volatile Self-Driving Toolbox (PET!)
			["timeline"] = { ADDED_10_0_7 },
		}),
		ach(17426, {	-- Toolbox Trouble
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204081, {	-- Shredderizing Glove
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204082, {	-- Sappy Buddy
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204086, {	-- S.C.A.N.N.E.R. Mk3
			["b"] = 1,	-- b for binding, to overcome Hide BoE items filter
			["timeline"] = { ADDED_10_0_7 },
		}),
		i(204091, {	-- Rocket Shredder 9001 (MOUNT!)
			["timeline"] = { ADDED_10_0_7 },
		}),
	})),
});
-- #endif
