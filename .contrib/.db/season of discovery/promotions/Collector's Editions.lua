-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

root(ROOTS.Promotions, n(COLLECTORS_EDITION, bubbleDownSelf({ u = REAL_MONEY }, {
	expansion(EXPANSION.CLASSIC, {
		description = "These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",
		groups = {
			n(QUESTS, {
				groups = {
					q(91888, {	-- A Special Delivery
						timeline = { ADDED_1_15_5 },
						description = "These rewards were made available to anyone who purchased a 2024 employee 30th anniversary collector's edition.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.",
						qg = 17249,	-- Landro Longshot <The Black Flame>
						coords = { 28.2, 75.8, STRANGLETHORN_VALE },
						maps = {
							IRONFORGE,
							STORMWIND_CITY,
							UNDERCITY,
							THUNDER_BLUFF,
							ORGRIMMAR,
						},
						crs = {
							5111,	-- Innkeeper Firebrew <Innkeeper>
							6740,	-- Innkeeper Allison <Innkeeper>
							6741,	-- Innkeeper Norman <Innkeeper>
							6746,	-- Innkeeper Pala <Innkeeper>
							6929,	-- Innkeeper Gryshka <Innkeeper>
						},
						groups = {
							i(13584, {	-- Mini Diablo (PET!)
								timeline = { ADDED_1_11_1 },
							}),
							i(13583, {	-- Panda Cub (PET!)
								timeline = { ADDED_1_11_1 },
							}),
							i(13582, {	-- Zergling (PET!)
								timeline = { ADDED_1_11_1 },
							}),
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, n(COLLECTORS_EDITION, bubbleDownSelf({ u = REAL_MONEY }, {
		q(91889, { timeline = { ADDED_1_15_5 } }),	-- A Special Thanks (Innkeepers);
})));
