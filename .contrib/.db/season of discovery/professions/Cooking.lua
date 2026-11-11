-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(COOKING, bubbleDownSelf({ requireSkill = COOKING }, {
	ach(123, {	-- Artisan Cook / Classic Cook [8.0.1]
		OnUpdate = [[function(t)
			if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
				t.u = nil; t.phase = ]] .. SOD_PHASE_THREE .. [[;
			end
		end]],
	}),
	ach(122, {	-- Expert Cook
		OnUpdate = [[function(t)
			if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
				t.u = nil; t.phase = ]] .. SOD_PHASE_TWO .. [[;
			end
		end]],
	}),
	ach(121),	-- Journeyman Cook,
})));

