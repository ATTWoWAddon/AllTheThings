-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(ALCHEMY, bubbleDownSelf({ requireSkill = ALCHEMY }, {
	applyclassicphase(SOD_PHASE_EIGHT, n(QUESTS, {
		q(90560, {	-- Familiar Foulness
			timeline = { ADDED_1_15_7 },
			races = HORDE_ONLY,
			groups = {
				i(241651),	-- Recipe: Major Discolored Healing Potion (RECIPE!)
			},
		}),
		q(90567, {	-- Unfamiliar Foulness
			timeline = { ADDED_1_15_7 },
			races = ALLIANCE_ONLY,
			groups = {
				i(241651),	-- Recipe: Major Discolored Healing Potion (RECIPE!)
			},
		}),
	})),
})));