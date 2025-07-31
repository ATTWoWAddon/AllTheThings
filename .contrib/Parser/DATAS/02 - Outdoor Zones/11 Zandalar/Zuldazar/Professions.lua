---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55582, {	-- Atal'Dazar: Not All That Glitters... (A)
					["sourceQuest"] = 49584,	-- The Missing Chapter (A)
					["provider"] = { "n", 150894 },	-- Shrine of Nature
					["coord"] = { 43.2, 64.3, ZULDAZAR },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["modelScale"] = 2,
					["lvl"] = 120,
					["groups"] = {
						i(155666),	-- Eye of Dazar (QI!)
					},
				}),
			}),
		}),
	}),
})));
