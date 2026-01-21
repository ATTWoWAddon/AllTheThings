-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, n(ACHIEVEMENTS, {
	expansion(EXPANSION.CLASSIC, {
		ach(18720, {	-- Classic Master of All				-- ALL Primary Professions at Max
			["timeline"] = { ADDED_10_1_7 },
		}),
		ach(18728, {	-- Working from the Start				-- Some Primary Professions at Max
			["timeline"] = { ADDED_10_1_7 },
		}),
		ach(732, {	-- Professional Artisan / Professional Classic Master
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(731, {	-- Professional Expert					-- 1 Primary Profession at Max
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(116, {	-- Professional Journeyman				-- 1 Primary Profession at Max
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(17412, {	-- Craftsman of the Argent Dawn
			["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
		}),
		ach(17410, {	-- Craftsman of the Zandalar Tribe
			["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
		}),
		ach(18778, {	-- Massive Toolshed					-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18775,	-- Iwen's Enchanting Rod
				18773,	-- Jewelhammer's Focus
				18771,	-- Khaz'gorian Smithing Hammer
				18777,	-- Mallet of Thunderous Skins
				18772,	-- Sanguine Feather Quill of Lana'thel
				18770,	-- Silas' Sphere of Transmutation
				18774,	-- Synchronous Thread
				18776,	-- The Ub3r-Spanner
			}},
			["timeline"] = { ADDED_10_1_7 },
		}),
		ach(18898, sharedDataSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- That's Just Cruel
			crit(61656, {	-- Nefarian Defeated
				["providers"] = {
					{ "i", 15138 },	-- Onyxia Scale Cloak
					{ "n", 11583 },	-- Nefarian
				},
				["maps"] = { BLACKWING_LAIR },
			}),
			crit(61657, {	-- Nefarian Defeated (Again)
				["providers"] = {
					{ "i", 15138 },	-- Onyxia Scale Cloak
					{ "n", 41376 },	-- Nefarian
				},
				["maps"] = { 286 },	-- Blackwing Descent
			}),
		})),
	}),
	expansion(EXPANSION.TBC, {
		applyclassicphase(TBC_PHASE_ONE, ach(733, {	-- Professional Master / Professional Outland Master [BFA]
			["timeline"] = {
				-- #if ANYCLASSIC
				ADDED_2_0_1,
				-- #else
				ADDED_3_0_2,
				-- #endif
			},
		})),
		ach(18721, { ["timeline"] = { ADDED_10_1_7 } }),		-- Outland Master of All
		ach(18729, {	-- Working in Hellfire
			["timeline"] = { ADDED_10_1_7 },
		}),
	}),
	expansion(EXPANSION.WRATH, {
		ach(18722, { ["timeline"] = { ADDED_10_1_7 } }),		-- Northrend Master of All
		ach(734, {	-- Professional Grand Master / Professional Northrend Master [BFA] -- 1 Primary Profession at Max
			["timeline"] = { ADDED_3_0_3 },
		}),
		ach(732, {	-- Professional Artisan / Professional Classic Master [BFA]
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(731, {	-- Professional Expert
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(116, {	-- Professional Journeyman
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_3 },
			-- #endif
		}),
		ach(730, {	-- Skills to Pay the Bills			-- Meta Achievement (Secondary Professions)
			["sym"] = {{"meta_achievement",
				125,	-- Northrend Cook / Grand Master Cook
				130,	-- Northrend Fisherman / Grand Master Fisherman
				135,	-- Grand Master Medic
			}},
			["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1 },
		}),
		ach(735, {	-- Working Day and Night / Working In the Cold [BFA] -- Some Primary Professions at Max
			["timeline"] = { ADDED_3_0_3 },
		}),
	}),
	expansion(EXPANSION.CATA, {
		ach(18719, { ["timeline"] = { ADDED_10_1_7 } }),		-- Cataclysmic Master of All
		ach(4924, {	-- Professional Illustrious Grand Master / Professional Cataclysmic Master
			["timeline"] = { ADDED_4_0_3_LAUNCH },
		}),
		ach(4914, {	-- Working In the Heat					-- Some Primary Professions at Max
			["timeline"] = { ADDED_4_0_3_LAUNCH },
		}),
		ach(4915, {	-- More Skills to Pay the Bills			-- Meta Achievement (Secondary Professions)
			["sym"] = {{"meta_achievement",
				4923,	-- Illustrious Grand Master Archaeologist
				4916,	-- Cataclysmic Cook / Illustrious Grand Master Cook
				4917,	-- Cataclysmic Fisherman / Illustrious Grand Master Fisherman
				4918,	-- Illustrious Grand Master Medic
			}},
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1 },
		}),
	}),
	expansion(EXPANSION.MOP, {
		ach(7379, {	-- Pandaren Master of All				-- ALL Primary Professions at Max
			["timeline"] = { ADDED_5_0_4 },
		}),
		achpart(7378, 7379, {	-- Jack of All Trades					-- Some Primary Professions at Max
			["timeline"] = { ADDED_5_0_4 },
		}),
		achpart(6830, 7379, {	-- Professional Zen Master				-- 1 Primary Profession at Max
			["timeline"] = { ADDED_5_0_4 },
		}),
		achpart(6835, 7379, {	-- Working For a Living					-- Some Primary Professions at Max
			["timeline"] = { ADDED_5_0_4 },
		}),
		ach(6836, {	-- Serious Skills to Pay the Bills		-- Meta Achievement (Secondary Professions)
			["sym"] = {{"meta_achievement",
				6837,	-- Zen Master Archaeologist
				6365,	-- Zen Master Cook
				6839,	-- Zen Master Fisherman
				6838,	-- Zen Master Medic
			}},
			["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },
		}),
	}),
	expansion(EXPANSION.WOD, {
		applyclassicphase(WOD_PHASE_ONE, ach(9464, sharedDataSelf({["timeline"] = { ADDED_6_0_3_LAUNCH }},{		-- Professional Draenor Master
			title(305),	-- Artisan <Name>
		}))),
		ach(9507, {	-- Working in Draenor				-- Some Primary Professions at Max
			["timeline"] = { ADDED_6_0_3_LAUNCH },
		}),
		ach(9087, {	-- Draenor Master of All			-- ALL Primary Professions at Max
			["timeline"] = { ADDED_6_0_3_LAUNCH },
		}),
		applyclassicphase(WOD_PHASE_ONE, ach(9506, {	-- Savage Skills to Pay the Bills
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				9409,	-- Draenor Archaeologist
				9500,	-- Draenor Cook
				9503,	-- Draenor Fisherman
				9505,	-- Draenor Medic
			}},
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1 },
		})),
	}),
	expansion(EXPANSION.LEGION, {
		applyclassicphase(LEGION_PHASE_ONE, ach(10582, {	-- Professional Legion Master
			["timeline"] = { ADDED_7_0_3_LAUNCH },
		})),
		ach(10581, {	-- Working the Isles				-- Some Primary Professions at Max
			["timeline"] = { ADDED_7_0_3_LAUNCH },
		}),
		ach(10583, {	-- Legion Master of All				-- ALL Primary Professions at Max
			["timeline"] = { ADDED_7_0_3_LAUNCH },
		}),
		applyclassicphase(LEGION_PHASE_ONE, ach(10580, {	-- Heroic Skills to Pay the Bills
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				10600,	-- Legion Archaeologist
				10589,	-- Legion Cook
				10594,	-- Legion Fisherman
				10599,	-- Legion Medic
			}},
			["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
		})),
		ach(10588, {	-- The Shortest Distance
			["provider"] = { "i", 132518 },	-- Blingtron's Circuit Design Tutorial
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(10587, {	-- Hot Swapper
			["provider"] = { "i", 130251 },	-- Jewelcraft
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(10761, {	-- Resourceful
			["timeline"] = { ADDED_7_0_3 },
		}),
	}),
	expansion(EXPANSION.BFA, {
		applyclassicphase(BFA_PHASE_ONE, ach(12731, {	-- Professional Kul Tiran Master (A)
			["races"] = ALLIANCE_ONLY,
			["timeline"] = { ADDED_8_0_1_LAUNCH },
		})),
		applyclassicphase(BFA_PHASE_ONE, ach(12733, {	-- Professional Zandalari Master (H)
			["races"] = HORDE_ONLY,
			["timeline"] = { ADDED_8_0_1_LAUNCH },
			["groups"] = {
				i(245490, {	-- Dazar'alor Forge (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		})),
		ach(12734, {	-- Working in Kul Tiras (A)			-- Some Primary Professions at Max
			["timeline"] = { ADDED_8_0_1_LAUNCH },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(12735, {	-- Working in Zandalar (H)			-- Some Primary Professions at Max
			["timeline"] = { ADDED_8_0_1_LAUNCH },
			["races"] = HORDE_ONLY,
		}),
		ach(12736, {	-- Kul Tiran Master of All (A)		-- ALL Primary Professions at Max
			["timeline"] = { ADDED_8_0_1_LAUNCH },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(12737, {	-- Zandalari Master of All (H)		-- ALL Primary Professions at Max
			["timeline"] = { ADDED_8_0_1_LAUNCH },
			["races"] = HORDE_ONLY,
		}),
		achpart(13516, 18778, {	-- Massive Tool
			["timeline"] = { ADDED_8_1_5 },
		}),
		ach(18778, {	-- Massive Toolshed
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18775,	-- Iwen's Enchanting Rod
				18773,	-- Jewelhammer's Focus
				18771,	-- Khaz'gorian Smithing Hammer
				18777,	-- Mallet of Thunderous Skins
				18772,	-- Sanguine Feather Quill of Lana'thel
				18770,	-- Silas' Sphere of Transmutation
				18774,	-- Synchronous Thread
				18776,	-- The Ub3r-Spanner
			}},
			["timeline"] = { ADDED_10_1_7 },
		}),
	}),
	expansion(EXPANSION.SL, {
		ach(14328, {	-- Professional Shadowlands Master	-- 1 Primary Profession at Max
			["timeline"] = { ADDED_9_0_2_LAUNCH },
		}),
		ach(14329, {	-- Working the Afterlife			-- 2 Primary Professions at Max
			["timeline"] = { ADDED_9_0_2_LAUNCH },
		}),
		ach(14330, {	-- Shadowlands Master of All		-- ALL Primary Professions at Max
			["timeline"] = { ADDED_9_0_2_LAUNCH },
		}),
	}),
	expansion(EXPANSION.DF, {
		ach(16627, {	-- Professional Draconic Master		-- 1 Primary Professions at Max
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		ach(16626, {	-- Working with Wyrms				-- 2 Primary Professions at Max
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		ach(16630, {	-- Draconic Master of All			-- ALL Primary Professions at Max
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
	}),
	expansion(EXPANSION.TWW, {
		ach(19408, {	-- Professional Algari Master		-- 1 Primary Profession at Max
			["timeline"] = { ADDED_11_0_2 },
			["groups"] = {
				i(253163, {	-- Fallside Storage Tent (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		}),
		achpart(19409, 19410, {	-- Working Underground				-- 2 Primary Professions at Max
			["timeline"] = { ADDED_11_0_2 },
		}),
		achpart(19515, 19410, sharedDataSelf({	-- Algari Master of Many
			["timeline"] = { ADDED_11_0_2 } }, {			-- 5 Primary Professions at Max
			["groups"] = {
				iensemble(219125),	-- Formed Artisan's Talent
			},
		})),
		ach(19410, {	-- Algari Master of All				-- ALL Primary Professions at Max
			["timeline"] = { ADDED_11_0_2 },
		}),
	}),
	expansion(EXPANSION.MID, {
		ach(61438, {	-- Thalassian Profession Master		-- 1 Primary Professions at Max
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}),
		ach(61439, {	-- Thalassian Artisan				-- 2 Primary Professions at Max
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}),
		ach(61440, {	-- Thalassian Polymath				-- 5 Primary Professions at Max
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}),
		ach(61441, {	-- Working WAY Past Midnight		-- ALL Primary Professions at Max
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		q(44351),	-- FLAG: Upgrade First Crafted Item - triggers when you craft the first legion armor item
	}),
})));
