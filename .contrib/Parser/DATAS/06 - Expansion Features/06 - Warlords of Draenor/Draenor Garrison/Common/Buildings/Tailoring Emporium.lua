-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(128, {	-- Enchanter's Study (rank 1: 94, rank 2: 127, rank 3: 128)
					n(QUESTS, {
						q(36262, {	-- Ameeka, Master Tailor
							["sourceQuests"] = { 36236 },	-- The Cryptic Tome of Tailoring
							["provider"] = { "n", 84776 },	-- Aerun
							["requireSkill"] = TAILORING,
							["races"] = ALLIANCE_ONLY,
						}),
						q(36643, {	-- Your First Tailoring Work Order
							["provider"] = { "n", 77382 },	-- Christopher Macdonald
							["races"] = ALLIANCE_ONLY,
						}),
						q(37575, {	-- Your First Tailoring Work Order
							["provider"] = { "n", 79864 },	-- Warra the Weaver
							["races"] = HORDE_ONLY,
						}),
					}),
					n(VENDORS, {
						n(77382, {	-- Christopher Macdonald <Tailor>
							["races"] = ALLIANCE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87049}},	-- Steven Cochrane <Tailoring Patterns>
						}),
						n(88283, {	-- Tailoring Follower (Alliance)
							["description"] = "You have to build Level 3 Tailoring Emporium and hire a tailor there in order to use these spells.",
							["races"] = ALLIANCE_ONLY,
							["groups"] = sharedData({["u"] = UNLEARNABLE},{
								r(176314),	-- Fearsome Battle Standard [Alliance]
								r(176313),	-- Inspiring Battle Standard [Alliance]
							}),
						}),
						n(88285, {	-- Tailoring Follower (Horde)
							["description"] = "You have to build Level 3 Tailoring Emporium and hire a tailor there in order to use these spells.",
							["races"] = HORDE_ONLY,
							["groups"] = sharedData({["u"] = UNLEARNABLE},{
								r(176316),	-- Fearsome Battle Standard [Horde]
								r(176315),	-- Inspiring Battle Standard [Horde]
							}),
						}),
						n(79864, {	-- Warra the Weaver <Tailor>
							["races"] = HORDE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87543}},	-- Petir Starocean <Tailoring Patterns>
						}),
					}),
				}),
			}),
		})),
	})
);
