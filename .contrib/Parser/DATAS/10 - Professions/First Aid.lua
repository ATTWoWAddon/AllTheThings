root(ROOTS.Professions, prof(FIRST_AID, bubbleDownSelf({ ["requireSkill"] = FIRST_AID, ["timeline"] = { REMOVED_8_0_1 } }, {
	expansion(EXPANSION.CLASSIC, bubbleDownSelf({
		["timeline"] = {
			-- #if NOT ANYCLASSIC
			ADDED_3_0_2,
			-- #endif
			REMOVED_8_0_1,
	}}, {
		ach(131),	-- Journeyman in First Aid
		ach(132),	-- Expert in First Aid
		ach(133),	-- Artisan in First Aid
	})),
	expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({
		["timeline"] = {
			-- #if NOT ANYCLASSIC
			ADDED_3_0_2,
			-- #else
			ADDED_2_0_5,
			-- #endif
			REMOVED_8_0_1,
	}}, {
		ach(134),	-- Master in First Aid
	}))),
	expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1 } }, {
		ach(135),	-- Grand Master in First Aid
		-- #if BEFORE BFA
		ach(137, {	-- Stocking Up
			["provider"] = { "i", 34722 },	-- Heavy Frostweave Bandage
		}),
		ach(141, {	-- Ultimate Triage
			["providers"] = {
				{ "i", 34722 },	-- Heavy Frostweave Bandage
				-- #if AFTER CATA
				{ "i", 53049 },	-- Embersilk Bandage
				{ "i", 53051 },	-- Dense Embersilk Bandage
				-- #endif
				-- #if AFTER MOP
				{ "i", 72985 },	-- Windwool Bandage
				{ "i", 72986 },	-- Heavy Windwool Bandage
				-- #endif
			},
		}),
		-- #endif
	}))),
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1 } }, {
		ach(4918),	-- Illustrious Grand Master Medic
		-- #if BEFORE BFA
		ach(5480, {	-- Preparing for Disaster
			["provider"] = { "i", 53051 },	-- Dense Embersilk Bandage
		}),
		-- #endif
	})),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 } }, {
		ach(6838),	-- Zen Master Medic
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1 } }, {
		ach(9505),	-- Draenor Medic
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 } }, {
		ach(10599),	-- Legion Medic
		ach(11139, {	-- Field Medic!
			["description"] = "WARNING: You must drop or turn in duplicate quests otherwise you will be unable to loot anymore.",
			["groups"] = {
				title(340),	-- Field Medic <Name>
				i(139534, {	-- Bloody Letter
					["criteriaID"] = 34872,		-- Bloody Letter
					["maps"] = { SURAMAR },
					["crs"] = {101783},
					["description"] = "Northwest Suramar."
				}),
				i(139522, {	-- Bloody Note
					["criteriaID"] = 34873,		-- Bloody Note
					["maps"] = { AZSHARA },
					["crs"] = {108133, 108139, 108153, 108146},
					["description"] = "Pirates in southern-east Azsuna."
				}),
				i(139527, {	-- Bloody Plea
					["criteriaID"] = 34874,		-- Bloody Plea
					["maps"] = { VALSHARAH },
					["crs"] = {93577, 91288},
					["description"] = "Furbolgs in southern Val'sharah"
				}),
				i(139535, {	-- Bloody Prayer
					["criteriaID"] = 34875,		-- Bloody Prayer
					["maps"] = { SURAMAR },
					["crs"] = {114470},
					["description"] = "Southwest Suramar City."
				}),
				i(139528, {	-- Bloody Request
					["criteriaID"] = 34876,		-- Bloody Request
					["maps"] = { VALSHARAH },
					["crs"] = { 109045 },
					["description"] = "Grizzleweald (68, 73) in Val'sharah"
				}),
				i(139524, {	-- Crumpled Letter
					["criteriaID"] = 34877,		-- Crumpled Letter
					["maps"] = { HIGHMOUNTAIN },
					["crs"] = {96774},
					["description"] = "Western Highmountain next to Skyhorn.",
				}),
				i(139525, {	-- Crumpled Note
					["criteriaID"] = 34878,		-- Crumpled Note
					["maps"] = { HIGHMOUNTAIN },
					["crs"] = {104323},
					["description"] = "Northern Highmountain."
				}),
				i(139531, {	-- Crumpled Request
					["criteriaID"] = 34879,		-- Crumpled Request
					["maps"] = { STORMHEIM },
					["crs"] = {108030},
					["description"] = "Vampirates. (Stormheim)"
				}),
				i(139523, {	-- Fevered Letter
					["criteriaID"] = 34880,		-- Fevered Letter
					["maps"] = { HIGHMOUNTAIN },
					["crs"] = {103177},
					["description"] = "Southern Highmountain."
				}),
				i(139526, {	-- Fevered Note
					["criteriaID"] = 34881,		-- Fevered Note
					["maps"] = { VALSHARAH },
					["crs"] = { 108675 },
					["description"] = "Southern Val'sharah"
				}),
				i(139520, {	-- Fevered Plea
					["criteriaID"] = 34882,		-- Fevered Plea
					["maps"] = { AZSHARA },
					["crs"] = {111598, 111630, 111586 },
					["description"] = "Murlocs at the southern tip in Azsuna."
				}),
				i(139532, {	-- Fevered Prayer
					["criteriaID"] = 34883,		-- Fevered Prayer
					["maps"] = { SURAMAR },
					["crs"] = {101784},
					["description"] = "Northwest Suramar."
				}),
				i(139529, {	-- Fevered Request
					["criteriaID"] = 34884,		-- Fevered Request
					["maps"] = { STORMHEIM },
					["crs"] = {98498, 98500, 98501, 98502, 110258},
					["description"] = "Murlocs at Morheim (eastern Stormheim)."
				}),
				i(139530, {	-- Singed Letter
					["criteriaID"] = 34885,		-- Singed Letter
					["maps"] = { STORMHEIM },
					["crs"] = {116600},
					["description"] = "Southern Stormheim."
				}),
				i(139521, {	-- Singed Note
					["criteriaID"] = 34886,		-- Singed Note
					["maps"] = { AZSHARA },
					["crs"] = {88101, 88099, 108146},
					["description"] = "Murlocs on the left coast of the lake surrounding Nar'thalos Academy."
				}),
				i(139533, {	-- Singed Plea
					["criteriaID"] = 34887,		-- Singed Plea
					["maps"] = { SURAMAR },
					["crs"] = {105753, 105625, 113162},
					["description"] = "Fal'dorei Tunnels."
				}),
			},
		}),
		achpart(11138, 11139),	-- Is There a Medic in the Zone?
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(FIRST_AID, {
			-- First Aid (these used to be actual quests... when Legion Classic rolls around someone will have to make them real quests...)
			q(42350, { ["name"] = "DEPRECATED: Bloody Letter", }),	-- DEPRECATED: Bloody Letter
			q(42255, { ["name"] = "DEPRECATED: Bloody Note", }),	-- DEPRECATED: Bloody Note
			q(42308, { ["name"] = "DEPRECATED: Bloody Plea", }),	-- DEPRECATED: Bloody Plea
			q(42351, { ["name"] = "DEPRECATED: Bloody Prayer", }),	-- DEPRECATED: Bloody Prayer
			q(42309, { ["name"] = "DEPRECATED: Bloody Request", }),	-- DEPRECATED: Bloody Request
			q(42333, { ["name"] = "DEPRECATED: Crumpled Letter", }),	-- DEPRECATED: Crumpled Letter
			q(42334, { ["name"] = "DEPRECATED: Crumpled Note", }),	-- DEPRECATED: Crumpled Note
			q(42058, { ["name"] = "DEPRECATED: Crumpled Request", }),	-- DEPRECATED: Crumpled Request
			q(42323, { ["name"] = "DEPRECATED: Fevered Letter", }),	-- DEPRECATED: Fevered Letter
			q(42303, { ["name"] = "DEPRECATED: Fevered Note", }),	-- DEPRECATED: Fevered Note
			q(42250, { ["name"] = "DEPRECATED: Fevered Plea", }),	-- DEPRECATED: Fevered Plea
			q(42345, { ["name"] = "DEPRECATED: Fevered Prayer", }),	-- DEPRECATED: Fevered Prayer
			q(41985, { ["name"] = "DEPRECATED: Fevered Request", }),	-- DEPRECATED: Fevered Request
			q(42215, { ["name"] = "DEPRECATED: Singed Letter", }),	-- DEPRECATED: Singed Letter
			q(42245, { ["name"] = "DEPRECATED: Singed Note", }),	-- DEPRECATED: Singed Note
			q(42340, { ["name"] = "DEPRECATED: Singed Plea", }),	-- DEPRECATED: Singed Plea
		}),
	}),
})));
