-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			petbattle(filter(BATTLE_PETS, {
				["sym"] = {{"select","speciesID",
					560,	-- Sea Gull (PET!)
				}},
				["groups"] = {
					n(QUESTS, {
						q(36483, {	-- Battle Pet Roundup
							["sourceQuest"] = 36423,	-- Pets Versus Pests
							["qg"] = 85418,	-- Lio the Lioness
							["coords"] = {
								{ 28.4, 39.92, LUNARFALL },
								{ 29.2, 40.4, LUNARFALL },
							},
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["_drop"] = { "g" },	-- Drop Shiny Pet Charm
						}),
						q(40329, {	-- Battle Pet Tamers: Warlords
							["sourceQuests"] = {
								36592,	-- Bigger is Better [A]
								36567,	-- Bigger is Better [H]
							},
							["qgs"] = {
								85418,	-- Lio the Lioness
								79858,	-- Serr'ah
							},
							["coords"] = {
								{ 28.3, 38.8, LUNARFALL },
								{ 32.6, 39.8, FROSTWALL },
							},
							["isWeekly"] = true,
							["_drop"] = { "g" },	-- Drop Flawless Battle-Training Stone
						}),
						q(38299,  bubbleDownSelf({ ["timeline"] = { ADDED_6_1_0 } }, {	-- Critters of Draenor
							["qgs"] = {
								90675,	-- Erris the Collector
								91014,	-- Erris the Collector
								91015,	-- Erris the Collector
								91016,	-- Erris the Collector
								91017,	-- Erris the Collector
							},
							["coord"] = { 28.8, 40.3, LUNARFALL },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["_drop"] = { "g" },	-- Drop Flawless Battle-Training Stone
							["groups"] = {
								i(122535, {	-- Traveler's Pet Supplies
									i(122532),	-- Bone Serpent (PET!)
									i(122534),	-- Slithershock Elver (PET!)
									i(122533),	-- Young Talbuk (PET!)
								}),
							},
						})),
						q(38300, bubbleDownSelf({ ["timeline"] = { ADDED_6_1_0 } }, {	-- Critters of Draenor
							["qgs"] = {
								91026,	-- Kura Thunderhoof (Spores, Dusty and Salad)
								91361,	-- Kura Thunderhoof (Moon, Mouthy and Carl)
								91362,	-- Kura Thunderhoof (Enbi'see, Mal and Bones)
								91363,	-- Kura Thunderhoof (Sprouts, Prince Charming and Runts)
								91364,	-- Kura Thunderhoof (Nicodemus, Brisby and Jenner)
							},
							["coord"] = { 33.3, 42.9, FROSTWALL },	-- level 3
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["_drop"] = { "g" },	-- Drop Flawless Battle-Training Stone
							["groups"] = {
								i(122535, {	-- Traveler's Pet Supplies
									i(122532),	-- Bone Serpent (PET!)
									i(122534),	-- Slithershock Elver (PET!)
									i(122533),	-- Young Talbuk (PET!)
								}),
							},
						})),
						q(37644, {	-- Mastering the Menagerie (A)
							["qg"] = 85418,	-- Lio the Lioness
							["coords"] = {
								{ 28.4, 39.9, LUNARFALL },
								{ 29.2, 40.4, LUNARFALL },
								{ 29.2, 39.0, LUNARFALL },
							},
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["groups"] = {
								i(118697, {	-- Big Bag of Pet Supplies
									i(119434),	-- Albino Chimaeraling (PET!)
									i(118578),	-- Firewing (PET!)
									i(119467),	-- Puddle Terror (PET!)
									i(113623),	-- Ghastly Kid (PET!)
									i(119468),	-- Sunfire Kaliri (PET!)
									i(118598),	-- Sun Sproutling (PET!)
									i(113558),	-- Weebomination (PET!)
								}),
								--
								i(116378),	-- Mark of Pet MAstery (QI!)
							},
						}),
						q(37645, {	-- Mastering the Menagerie (H)
							["qg"] = 79858,	-- Serr'ah
							["coord"] = { 32.6, 39.8, FROSTWALL },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["groups"] = {
								i(118697, {	-- Big Bag of Pet Supplies
									i(118578),	-- Firewing (PET!)
									i(113623),	-- Ghastly Kid (PET!)
									i(118598),	-- Sun Sproutling (PET!)
									i(119468),	-- Sunfire Kaliri (PET!)
									i(119467),	-- Puddle Terror (PET!)
									i(113558),	-- Weebomination (PET!)
									i(119434),	-- Albino Chimaeraling (PET!)
								}),
								--
								i(116378),	-- Mark of Pet MAstery (QI!)
							},
						}),
						q(36423, {	-- Pets Versus Pests
							["sourceQuest"] = 38241,	-- Unearthed Magic
							["qg"] = 85418,	-- Lio the Lioness
							["coords"] = {
								{ 28.4, 39.92, LUNARFALL },
								{ 29.2, 40.4, LUNARFALL },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = { garrisonBuilding(42) },	-- Menagerie
						}),
						q(36469, {	-- Pets Versus Pests
							["sourceQuest"] = 38242,	-- Unearthed Magic
							["qg"] = 79858,	-- Serr'ah
							["coord"] = { 32.6, 39.8, FROSTWALL },
							["races"] = HORDE_ONLY,
							["groups"] = { garrisonBuilding(42) },	-- Menagerie
						}),
						q(36662, {	-- Scrappin'
							["sourceQuest"] = 36469,	-- Pets Versus Pests
							["qg"] = 79858,	-- Serr'ah
							["coord"] = { 32.6, 39.8, FROSTWALL },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["_drop"] = { "g" },	-- Drop Shiny Pet Charm
						}),
						q(38241, {	-- Unearthed Magic
							["sourceQuest"] = 36615,	-- My Very Own Castle
							["qg"] = 85418,	-- Lio the Lioness
							["coords"] = {
								{ 28.4, 39.92, LUNARFALL },
								{ 29.2, 40.4, LUNARFALL },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(122457) },	-- Ultimate Battle-Training Stone
						}),
						q(38242, {	-- Unearthed Magic
							["sourceQuest"] = 36614,	-- My Very Own Fortress
							["qg"] = 79858,	-- Serr'ah
							["coord"] = { 32.6, 39.8, FROSTWALL },
							["races"] = HORDE_ONLY,
							["groups"] = { i(122457) },	-- Ultimate Battle-Training Stone
						}),
					}),
				},
			})),
		})),
	})
);
