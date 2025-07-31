---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		n(ACHIEVEMENTS, {
			ach(15325, {	-- Dracthyr, Awaken [A]
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15638, {	-- Dracthyr, Awaken [H]
				["races"] = HORDE_ONLY,
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16452, {	-- Familiar Skies
				crit(55420),	-- The Old Weyrn Grounds
				crit(55421),	-- Caldera of the Menders
				crit(55422),	-- Stormsunder Crater
				crit(55423),	-- Froststone Vault
			}),
		}),
	}));
})));
