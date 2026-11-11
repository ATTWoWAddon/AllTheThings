-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(TAILORING, bubbleDownSelf({ requireSkill = TAILORING }, applyclassicphase(SOD_PHASE_EIGHT, {
	q(90116, {	-- Holy Threads
		provider = { "n", 240631 },	-- Taylor Stitchings <Tailoring Supplies>
		coord = { 94.6, 83.6, EASTERN_PLAGUELANDS },
		timeline = { ADDED_1_15_7 },
		groups = {
			i(239149),	-- Pattern: Crusader's Knapsack (RECIPE!)
		},
	}),
	q(90120, {	-- Red is Not Dead
		provider = { "n", 240631 },	-- Taylor Stitchings <Tailoring Supplies>
		coord = { 94.6, 83.6, EASTERN_PLAGUELANDS },
		timeline = { ADDED_1_15_7 },
		groups = {
			i(239150),	-- Pattern: Crimson Dawnwoven Bag (RECIPE!)
		},
	}),
}))));

