-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641394,
			["groups"] = {
				n(COMMAND_TABLE, {
					n(TIER_ONE, {
						["icon"] = 3675495,
						["groups"] = {
							n(FOLLOWERS, bubbleDownSelf({
								["collectible"] = false,
								["u"] = UNLEARNABLE,	-- Temporary troops
							}, {
								follower(1244),	-- Ardenweald Grovetender
								follower(1293),	-- Ardenweald Grovetender
								follower(1294),	-- Ardenweald Grovetender
								follower(1316),	-- Ardenweald Grovetender
								follower(1245),	-- Ardenweald Trapper
								follower(1295),	-- Ardenweald Trapper
								follower(1296),	-- Ardenweald Trapper
								follower(1317),	-- Ardenweald Trapper
								follower(1318),	-- Ardenweald Trapper
							})),
							n(QUESTS, {
									q(64459, {	-- Adventurer: Elwyn
									["description"] = "Requires Renown 62.",
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["groups"] = {
										follower(1338),	-- Elwyn
									},
								}),
								q(61857, {	-- Adventurer: Groonoomcrooek
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 38.",
									["groups"] = {
										follower(1288),	-- Groonoomcrooek
									},
								}),
								q(61854, {	-- Adventurer: Master Sha'lor
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 17.",
									["groups"] = {
										follower(1284),	-- Master Sha'lor
									},
								}),
								q(61852, {	-- Adventurer: Guardian Kota
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 4.",
									["groups"] = {
										follower(1283),	-- Guardian Kota
									},
								}),
								q(61855, {	-- Adventurer: Qadarin
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 27.",
									["groups"] = {
										follower(1286),	-- Qadarin
									},
								}),
								q(64458, {	-- Adventurer: Sulanoom
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 44.",
									["groups"] = {
										follower(1337),	-- Sulanoom
									},
								}),
								q(61853, {	-- Adventurer: Te'zan
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 12.",
									["groups"] = {
										follower(1285),	-- Te'zan
									},
								}),
								q(61856, {	-- Adventurer: Watcher Vesperbloom
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 33.",
									["groups"] = {
										follower(1287),	-- Watcher Vesperbloom
									},
								}),
								q(64460, {	-- Adventurer: Yanlar
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuest"] = 61553,	-- Know Where to Strike
									["coord"] = { 44.7, 56.3, ARDENWEALD },
									["description"] = "Requires Renown 71.",
									["groups"] = {
										follower(1339),	-- Yanlar
									},
								}),
								q(61553, {	-- Know Where to Strike
									["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
									["sourceQuests"] = { 61552 },	-- The Hunt Watches
									["coord"] = { 44.6, 56.2, ARDENWEALD },
								}),
								q(61552, {	-- The Hunt Watches
									["provider"] = { "n", 165702 },	-- Zayhad, The Builder
									["coord"] = { 39.7, 55.7, THE_ROOTS },
								}),
							}),
							n(REWARDS, {
								currency(1828),	-- Soul Ash
								i(177698, {	-- Untamed Spirit Ardenweald (Uncommon)
									["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
								}),
								i(177699),	-- Divine Untamed Spirit Ardenweald (Rare)
								i(178881, {	-- Dutiful Spirit Bastion (Uncommon)
									["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
								}),
								i(178880),	-- Divine Dutiful Spirit (Rare)
								i(178874, {	-- Martial Spirit Maldraxxus (Uncommon)
									["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
								}),
								i(178877),	-- Divine Martial Spirit (Rare)
								i(178882, {	-- Prideful Spirit Revendreth (Uncommon)
									["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
								}),
								i(178883),	-- Divine Prideful Spirit (Rare)
							}),
						},
					}),
				}),
			},
		}),
	}),
})));