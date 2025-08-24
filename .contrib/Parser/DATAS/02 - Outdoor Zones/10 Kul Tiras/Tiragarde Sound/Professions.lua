---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55578, {	-- Tol Dagor: Jewel of the Tides (H)
					["sourceQuest"] = 49599,	-- The Missing Chapter (H)
					["provider"] = { "n", 150893 },	-- Shrine of the Sea
					["coord"] = { 46.4, 23.5, TIRAGARDE_SOUND },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["modelScale"] = 2,
					["lvl"] = 50,
					["groups"] = {
						i(155648),	-- Jewel of the Tides
					},
				}),
			}),
		}),
	}),
})));
