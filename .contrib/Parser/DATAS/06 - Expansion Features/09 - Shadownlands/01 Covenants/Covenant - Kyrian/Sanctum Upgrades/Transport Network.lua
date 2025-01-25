-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["customCollect"] = "SL_COV_KYR" }, {
	n(KYRIAN, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641395,
			["g"] = {
				n(TRANSPORT_NETWORK, {
					["icon"] = 3854018,
					["g"] = sharedData({ ["icon"] = 3854018 }, {
						n(TIER_ONE, {
							n(FLIGHT_PATHS, {
								fp(2626, {	-- Hero's Rest, Bastion
									["description"] = "Part of the Kyrian Rank 1 Transport Network.",
									["cr"] = 171037,	-- Eternal Gateway
									["coord"] = { 51.8, 46.8, BASTION },
								}),
								fp(2630, {	-- Aspirant's Rest, Bastion
									["description"] = "Part of the Kyrian Rank 1 Transport Network.",
									["cr"] = 171091,	-- Eternal Gateway
									["coord"] = { 48.3, 72.8, BASTION },
								}),
								fp(2625, {	-- Elysian Hold, Bastion
									["description"] = "Part of the Kyrian Rank 1 Transport Network.",
									["cr"] = 171036,	-- Eternal Gateway
									["coord"] = { 48.7, 61.8, ARCHONS_RISE },
								}),
								fp(2631, {	-- Xandaria's Vigil, Bastion
									["description"] = "Part of the Kyrian Rank 1 Transport Network.",
									["cr"] = 171097,	-- Eternal Gateway
									["coord"] = { 40.7, 55.2, BASTION },
								}),
							}),
							n(QUESTS, {
								q(63053, {	-- At a Moment's Notice
									["sourceQuests"] = { 63052 },	-- Step of Faith
									["provider"] = { "n", 175907 },	-- Khamsius
									["coord"] = { 48.9, 62.7, ARCHONS_RISE },
								}),
								q(63052, {	-- Step of Faith
									["provider"] = { "n", 167745 },	-- Haephus
									["coord"] = { 42.6, 53.1, ARCHONS_RISE },
								}),
							}),
						}),
						n(TIER_TWO, {
							n(FLIGHT_PATHS, {
								fp(2634, {	-- Seat of Eternal Hymns, Bastion
									["description"] = "Part of the Kyrian Rank 2 Transport Network.",
									["cr"] = 171103,	-- Eternal Gateway
									["coord"] = { 58.4, 31.0, BASTION },
								}),
								fp(2633, {	-- Temple of Purity, Bastion
									["description"] = "Part of the Kyrian Rank 2 Transport Network.",
									["cr"] = 171102,	-- Eternal Gateway
									["coord"] = { 59.4, 77.1, BASTION },
								}),
								fp(2632, {	-- Sagehaven, Bastion
									["description"] = "Part of the Kyrian Rank 2 Transport Network.",
									["cr"] = 171101,	-- Eternal Gateway
									["coord"] = { 44.2, 33.0, BASTION },
								}),
								fp(2682, {	-- Elysian Beacon, Bastion
									["description"] = "Part of the Kyrian Rank 2 Transport Network.\n\nThis is summoned by your steward",
									["crs"] = {
										171108,	-- Eternal Gateway
										166663,	-- Steward
									},
									["maps"] = { BASTION },
								}),
							}),
						}),
						n(TIER_THREE, {
							n(FLIGHT_PATHS, {
								fp(2636, {	-- Terrace of The Collectors, Bastion
									["description"] = "Part of the Kyrian Rank 3 Transport Network.",
									["cr"] = 171105,	-- Eternal Gateway
									["coord"] = { 35.4, 21.9, BASTION },
								}),
								fp(2635, {	-- Temple of Humility, Bastion
									["description"] = "Part of the Kyrian Rank 3 Transport Network.",
									["cr"] = 171104,	-- Eternal Gateway
									["coord"] = { 66.6, 47.9, BASTION },
								}),
							}),
						}),
					}),
				}),
			},
		}),
	}),
})));