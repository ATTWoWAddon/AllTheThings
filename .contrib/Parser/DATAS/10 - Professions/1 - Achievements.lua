-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, n(ACHIEVEMENTS, {
	ach(19410, { ["timeline"] = { ADDED_11_0_2 } }),	-- Algari Master of All
	ach(19515, sharedDataSelf({ ["timeline"] = { ADDED_11_0_2 } }, {	-- Algari Master of Many
		["sym"] = {{"partial_achievement",19410}},	-- Algari Master of All
		["groups"] = {
			iensemble(219125),	-- Formed Artisan's Talent
		},
	})),
	ach(16630, { ["timeline"] = { ADDED_10_0_2_LAUNCH } }),	-- Draconic Master of All
	ach(14330, { ["timeline"] = { ADDED_9_0_2_LAUNCH } }),	-- Shadowlands Master of All
	ach(12736, {	-- Kul Tiran Master of All (A)
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = ALLIANCE_ONLY,
	}),
	ach(12737, {	-- Zandalari Master of All (H)
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["races"] = HORDE_ONLY,
	}),
	ach(10583, { ["timeline"] = { ADDED_7_0_3_LAUNCH } }),	-- Legion Master of All
	ach(9087, { ["timeline"] = { ADDED_6_0_3_LAUNCH } }),	-- Draenor Master of All
	applyclassicphase(MOP_PHASE_ONE, ach(7379, {			-- Pandaren Master of All
		["timeline"] = { ADDED_5_0_4 }
	})),
	applyclassicphase(MOP_PHASE_ONE, ach(7378, {			-- Jack of All Trades
		["timeline"] = { ADDED_5_0_4 },
		["sym"] = {{"partial_achievement",7379}},	-- Pandaren Master of All
	})),
	ach(18719, { ["timeline"] = { ADDED_10_1_7 } }),		-- Cataclysmic Master of All
	ach(18722, { ["timeline"] = { ADDED_10_1_7 } }),		-- Northrend Master of All
	ach(18721, { ["timeline"] = { ADDED_10_1_7 } }),		-- Outland Master of All
	ach(18720, { ["timeline"] = { ADDED_10_1_7 } }),		-- Classic Master of All
	ach(19409, {	-- Working Underground
		["timeline"] = { ADDED_11_0_2 },
		["sym"] = {{"partial_achievement",19410}},	-- Algari Master of All
	}),
	ach(16626, {	-- Working with Wyrms
		["timeline"] = { ADDED_10_0_2_LAUNCH },
	}),
	ach(14329, {	-- Working the Afterlife
		["timeline"] = { ADDED_9_0_2_LAUNCH },
	}),
	applyclassicphase(BFA_PHASE_ONE, ach(12734, {	-- Working in Kul Tiras (A)
		["races"] = ALLIANCE_ONLY,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	applyclassicphase(BFA_PHASE_ONE, ach(12735, {	-- Working in Zandalar (H)
		["races"] = HORDE_ONLY,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	applyclassicphase(LEGION_PHASE_ONE, ach(10581, {	-- Working the Isles
		["timeline"] = { ADDED_7_0_3_LAUNCH },
	})),
	applyclassicphase(WOD_PHASE_ONE, ach(9507, {		-- Working in Draenor
		["timeline"] = { ADDED_6_0_3_LAUNCH },
	})),
	applyclassicphase(MOP_PHASE_ONE, ach(6835, {		-- Working For a Living
		["timeline"] = { ADDED_5_0_4 },
	})),
	applyclassicphase(CATA_PHASE_ONE, ach(4914, {		-- Working In the Heat
		["timeline"] = { ADDED_4_0_3_LAUNCH },
	})),
	applyclassicphase(WRATH_PHASE_ONE, ach(735, {		-- Working Day and Night / Working In the Cold [BFA]
		["timeline"] = { ADDED_3_0_3 },
	})),
	ach(18729, {	-- Working in Hellfire
		["timeline"] = { ADDED_10_1_7 },
	}),
	ach(18728, {	-- Working from the Start
		["timeline"] = { ADDED_10_1_7 },
	}),
	ach(19408, {	-- Professional Algari Master
		["timeline"] = { ADDED_11_0_2 },
	}),
	ach(16627, {	-- Professional Draconic Master
		["timeline"] = { ADDED_10_0_2_LAUNCH },
	}),
	ach(14328, {	-- Professional Shadowlands Master
		["timeline"] = { ADDED_9_0_2_LAUNCH },
	}),
	applyclassicphase(BFA_PHASE_ONE, ach(12731, {	-- Professional Kul Tiran Master (A)
		["races"] = ALLIANCE_ONLY,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	applyclassicphase(BFA_PHASE_ONE, ach(12733, {	-- Professional Zandalari Master (H)
		["races"] = HORDE_ONLY,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	applyclassicphase(LEGION_PHASE_ONE, ach(10582, {	-- Professional Legion Master
		["timeline"] = { ADDED_7_0_3_LAUNCH },
	})),
	applyclassicphase(WOD_PHASE_ONE, ach(9464, sharedDataSelf({["timeline"] = { ADDED_6_0_3_LAUNCH }},{		-- Professional Draenor Master
		title(305),	-- Artisan <Name>
	}))),
	applyclassicphase(MOP_PHASE_ONE, ach(6830, {		-- Professional Zen Master
		["timeline"] = { ADDED_5_0_4 },
	})),
	applyclassicphase(CATA_PHASE_ONE, ach(4924, {		-- Professional Illustrious Grand Master / Professional Cataclysmic Master [BFA]
		["timeline"] = { ADDED_4_0_3_LAUNCH },
	})),
	applyclassicphase(WRATH_PHASE_ONE, ach(734, {	-- Professional Grand Master / Professional Northrend Master [BFA]
		["timeline"] = { ADDED_3_0_3 },
	})),
	applyclassicphase(TBC_PHASE_ONE, ach(733, {	-- Professional Master / Professional Outland Master [BFA]
		["timeline"] = {
			-- #if ANYCLASSIC
			ADDED_2_0_1,
			-- #else
			ADDED_3_0_2,
			-- #endif
		},
	})),
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
	applyclassicphase(WOD_PHASE_ONE, ach(10580, {	-- Heroic Skills to Pay the Bills
		-- Meta Achievement
		["sym"] = {{"meta_achievement",
			10600,	-- Legion Archaeologist
			10589,	-- Legion Cook
			10594,	-- Legion Fisherman
			10599,	-- Legion Medic
		}},
		["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
	})),
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
	applyclassicphase(MOP_PHASE_ONE, ach(6836, {	-- Serious Skills to Pay the Bills
		-- Meta Achievement
		["sym"] = {{"meta_achievement",
			6837,	-- Zen Master Archaeologist
			6365,	-- Zen Master Cook
			6839,	-- Zen Master Fisherman
			6838,	-- Zen Master Medic
		}},
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },
	})),
	applyclassicphase(CATA_PHASE_ONE, ach(4915, {	-- More Skills to Pay the Bills
		-- Meta Achievement
		["sym"] = {{"meta_achievement",
			4923,	-- Illustrious Grand Master Archaeologist
			4916,	-- Cataclysmic Cook / Illustrious Grand Master Cook
			4917,	-- Cataclysmic Fisherman / Illustrious Grand Master Fisherman
			4918,	-- Illustrious Grand Master Medic
		}},
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1 },
	})),
	applyclassicphase(WRATH_PHASE_ONE, ach(730, {	-- Skills to Pay the Bills
		-- Meta Achievement
		["sym"] = {{"meta_achievement",
			125,	-- Northrend Cook / Grand Master Cook
			130,	-- Northrend Fisherman / Grand Master Fisherman
			135,	-- Grand Master Medic
		}},
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1 },
	})),
	ach(17412, {	-- Craftsman of the Argent Dawn
		["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
	}),
	ach(17410, {	-- Craftsman of the Zandalar Tribe
		["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
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
	ach(13516, {	-- Massive Tool
		["timeline"] = { ADDED_8_1_5 },
		["sym"] = {{"partial_achievement",18778}},	-- Massive Toolshed
	}),
	ach(10587, {	-- Hot Swapper
		["provider"] = { "i", 130251 },	-- Jewelcraft
		["timeline"] = { ADDED_7_0_3 },
	}),
	ach(10761, {	-- Resourceful
		["timeline"] = { ADDED_7_0_3 },
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
	ach(10588, {	-- The Shortest Distance
		["provider"] = { "i", 132518 },	-- Blingtron's Circuit Design Tutorial
		["timeline"] = { ADDED_7_0_3 },
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		q(44351),	-- FLAG: Upgrade First Crafted Item - triggers when you craft the first legion armor item
	}),
})));
