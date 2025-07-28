---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55582, {	-- Atal'Dazar: Not All That Glitters... (A)
					["provider"] = { "n", 150894 },	-- Shrine of Nature
					["coord"] = { 43.2, 64.3, ZULDAZAR },
					["modelScale"] = 2,
					["sourceQuest"] = 49584,	-- The Missing Chapter (A)
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 120,
					["groups"] = {
						i(155666),	-- Eye of Dazar (QI!)
					},
				}),
			}),
		}),
	}),
})));