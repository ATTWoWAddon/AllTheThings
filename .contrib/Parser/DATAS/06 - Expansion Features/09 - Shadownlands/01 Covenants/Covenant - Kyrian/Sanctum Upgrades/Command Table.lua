-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["customCollect"] = "SL_COV_KYR" }, {
	n(KYRIAN, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641395,
			["groups"] = {
				n(COMMAND_TABLE, {
					n(TIER_ONE, {
						["icon"] = 3675495,
						["groups"] = {
							n(FOLLOWERS, bubbleDownSelf({
								["u"] = TRAINING,	-- Temporary troops
							}, {
								follower(1241),	-- Kyrian Halberdier
								follower(1291),	-- Kyrian Halberdier
								follower(1292),	-- Kyrian Halberdier
								follower(1319),	-- Kyrian Halberdier
								follower(1240),	-- Kyrian Phalanx
								follower(1289),	-- Kyrian Phalanx
								follower(1290),	-- Kyrian Phalanx
								follower(1320),	-- Kyrian Phalanx
							})),
							n(QUESTS, {
								q(57900, {	-- Across the Shadowlands
									["provider"] = { "n", 160389 },	-- Koros
									["sourceQuests"] = { 57899 },	-- More Work?
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["groups"] = {
										follower(1259),	-- Pelagos
									},
								}),
								q(61863, {	-- Adventurer: Apolon
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 27.",
									["groups"] = {
										follower(1276),	-- Apolon
									},
								}),
								q(64463, {	-- Adventurer: Auric Spiritguide
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 71.",
									["groups"] = {
										follower(1343),	-- Auric Spiritguide
									},
								}),
								q(61864, {	-- Adventurer: Bron
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 33.",
									["groups"] = {
										follower(1275),	-- Bron
									},
								}),
								q(61862, {	-- Adventurer: Clora
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 17.",
									["groups"] = {
										follower(1273),	-- Clora
									},
								}),
								q(64462, {	-- Adventurer: Cromas the Mystic
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 62.",
									["groups"] = {
										follower(1342),	-- Cromas the Mystic
									},
								}),
								q(61865, {	-- Adventurer: Disciple Kosmas
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 38.",
									["groups"] = {
										follower(1274),	-- Disciple Kosmas
									},
								}),
								q(64461, {	-- Adventurer: Hermestes
									["provider"] = { "n", 160389 },	-- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 44.",
									["groups"] = {
										follower(1341),	-- Hermestes
									},
								}),
								q(61859, {	-- Adventurer: Nemea
									["provider"] = { "n", 160389 },    -- Koros
									["altQuests"] = { 61860 },	-- Adenturer: Pelodis
									["sourceQuests"] = {
										58103,	-- Pride or Unit
										57900,	-- Across the Shadowlands
									},
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 4. Must choose Nemea in the Pride or Unit quest to get this follower.",
									["DisablePartySync"] = true,
									["groups"] = {
										follower(1270),	-- Nemea
									},
								}),
								q(61860, {	-- Adventurer: Pelodis
									["provider"] = { "n", 160389 },    -- Koros
									["altQuests"] = { 61859 },	-- Adenturer: Nemea
									["sourceQuests"] = {
										58103,	-- Pride or Unit
										57900,	-- Across the Shadowlands
									},
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 4. Must choose Pelodis in the Pride or Unit quest to get this follower.",
									["DisablePartySync"] = true,
									["groups"] = {
										follower(1271),	-- Pelodis
									},
								}),
								q(61861, {	-- Adventurer: Sika
									["provider"] = { "n", 160389 },    -- Koros
									["sourceQuests"] = { 57900 },	-- Across the Shadowlands
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 12.",
									["groups"] = {
										follower(1272),	-- Sika
									},
								}),
								q(57899, {	-- More Work?
									["provider"] = { "n", 167745 },	-- Haephus
									["coord"] = { 42.6, 53.1, ARCHONS_RISE },
								}),
								q(63068, {	-- Settling Disputes
									["provider"] = { "n", 160389 },    -- Koros
									["altQuests"] = { 59674 },    -- A Friendly Rivalry
									["sourceQuests"] = { 57899 },	-- More Work?
									["coord"] = { 43.8, 40.7, ARCHONS_RISE },
									["description"] = "Requires Renown 4.",
									["isBreadcrumb"] = true,
								--	TODO: is altQuests necessary or do they complete each other?
								--	quest is unavailable until you build your command table
								}),
							}),
							n(REWARDS, {
								currency(1828),	-- Soul Ash
								currency(MEDALLION_OF_SERVICE),
							}),
						},
					}),
				}),
			},
		}),
	}),
})));