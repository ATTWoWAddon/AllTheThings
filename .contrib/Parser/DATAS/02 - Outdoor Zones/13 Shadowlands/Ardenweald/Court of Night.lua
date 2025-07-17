---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_COURT_OF_NIGHT, {
				faction(FACTION_COURT_OF_NIGHT),
				n(VENDORS, {
					n(162447, {	-- Spindlenose <Court of Night Quartermaster>
						["coord"] = { 59.6, 52.9, ARDENWEALD },
						["g"] = bubbleDownRep(FACTION_COURT_OF_NIGHT, {
							{		-- Neutral
								ChronicleOfLostMemories({	-- Chronicle of Lost Memories
									["cost"] = { { "c", GRATEFUL, 35 } },
								}),
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(187871, {	-- Cricket Soul
										["cost"] = {
											{ "c", ANIMA, 15000 },
											{ "c", GRATEFUL, 25 },
										},
										["timeline"] = { ADDED_9_1_5 },
									}),
									i(187881, {	-- Ram Soul
										["cost"] = {
											{ "c", ANIMA, 25000 },
											{ "c", GRATEFUL, 50 },
										},
										["timeline"] = { ADDED_9_1_5 },
									}),
								})),
							}, {	-- Friendly
								i(180636, {	-- Willowbreeze (PET)
									["cost"] = {
										{ "i", 163036, 250 },
										{ "c", GRATEFUL, 5 },
									},
								}),
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(182174, {	-- Leonine Soul
										["cost"] = {
											{ "c", ANIMA, 1500 },
											{ "c", GRATEFUL, 5 },
										},
									}),
									i(182182, {	-- Lupine Soul
										["cost"] = {
											{ "c", ANIMA, 1500 },
											{ "c", GRATEFUL, 5 },
										},
									}),
									i(182664, {	-- Stemmins (PET!)
										["cost"] = {
											{ "i", 163036, 250 },
											{ "c", GRATEFUL, 5 },
										},
									}),
								})),
							}, {	-- Honored
								i(187937, {	-- Technique: Mark of the Sable Ardenmoth (RECIPE!)
									["cost"] = {
										{ "c", ANIMA, 1000 },
										{ "c", GRATEFUL, 5 },
									},
									["timeline"] = { ADDED_9_1_5 },
								}),
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(181308, {	-- Winterwoven Bulb
										["cost"] = {
											{ "c", ANIMA, 3500 },
											{ "c", GRATEFUL, 5 },
										},
									}),
									i(181312, {	-- Winterwoven Pack
										["cost"] = {
											{ "c", ANIMA, 3500 },
											{ "c", GRATEFUL, 5 },
										},
									}),
								})),
							}, {	-- Revered
								i(183053, {	-- Umbral Scythehorn (MOUNT!)
									["cost"] = {
										{ "c", ANIMA, 5000 },
										{ "c", GRATEFUL, 5 },
									},
								}),
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(180415, {	-- Winterborn Runestag (MOUNT!)
										["cost"] = {
											{ "c", ANIMA, 5000 },
											{ "c", GRATEFUL, 5 },
										},
									}),
								})),
							}, {	-- Exalted
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									iensemble(184116, {	-- Ensemble: Winterborn Guise
										["cost"] = {
											{ "c", ANIMA, 25000 },
											{ "c", GRATEFUL, 5 },
										},
										["classes"] = MAIL_CLASSES,
									}),
									iensemble(184115, {	-- Ensemble: Winterborn Raiment
										["cost"] = {
											{ "c", ANIMA, 25000 },
											{ "c", GRATEFUL, 5 },
										},
										["classes"] = LEATHER_CLASSES,
									}),
									iensemble(184114, {	-- Ensemble: Winterborn Regalia
										["cost"] = {
											{ "c", ANIMA, 25000 },
											{ "c", GRATEFUL, 5 },
										},
										["classes"] = CLOTH_CLASSES,
									}),
									iensemble(184117, {	-- Ensemble: Winterborn Warbark
										["cost"] = {
											{ "c", ANIMA, 25000 },
											{ "c", GRATEFUL, 5 },
										},
										["classes"] = PLATE_CLASSES,
									}),
								})),
							},
						}),
					}),
				}),
			}),
		}),
	}),
})));