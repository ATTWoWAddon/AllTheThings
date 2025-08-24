---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55579, {	-- Cracking the Surface (H)
					["sourceQuest"] = 49599,	-- The Missing Chapter (H)
					["provider"] = { "n", 150898 },	-- Shrine of Storms
					["coord"] = { 60.7, 58.5, STORMSONG_VALLEY },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["modelScale"] = 2,
					["lvl"] = 50,
					["groups"] = {
						i(155590),	-- Shard of Golden Beryl (QI!)
					},
				}),
			}),
		}),
	}),
})));
