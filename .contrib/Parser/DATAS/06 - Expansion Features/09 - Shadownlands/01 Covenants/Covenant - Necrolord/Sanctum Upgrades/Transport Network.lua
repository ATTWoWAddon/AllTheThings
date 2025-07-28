-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641396,
			["groups"] = {
				n(TRANSPORT_NETWORK, {
					["icon"] = 3854019,
					["groups"] = sharedData({ ["icon"] = 3854019 }, {
						n(TIER_ONE, {
							n(QUESTS, {
								q(63059, {	-- Blink of an Eye
									["provider"] = { "n", 175963 },	-- Serafina Von
									["sourceQuests"] = { 63055 },	-- Powering the Portals
									["coord"] = { 59.8, 31.8, SEAT_OF_THE_PRIMUS },
								}),
								q(63055, {	-- Powering the Portals
									["provider"] = { "n", 161909 },	-- Arkadia Moa
									["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
									["description"] = "Becomes available after you build Transport Network tier 1 in your sanctum.",
								}),
							}),
						}),
						n(TIER_TWO, {
							n(QUESTS, {
								q(60184, {	-- Dude, Where's My Necropolis?
									["provider"] = { "n", 173306 },	-- Khaliiq
									["sourceQuests"] = {
										58820,	-- Bindings of Fleshcrafting
									},
									["coord"] = { 29.6, 44.0, MALDRAXXUS },
									["description"] = "Becomes available during the campaign.",
								}),
							}),
						}),
					}),
				}),
			},
		}),
	}),
})));