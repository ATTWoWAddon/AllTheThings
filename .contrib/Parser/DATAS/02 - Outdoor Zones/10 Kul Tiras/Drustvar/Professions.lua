---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55580, {	-- High Prospects (H)
					["sourceQuest"] = 49599,	-- The Missing Chapter (H)
					["provider"] = { "n", 150896 },	-- Shrine of the Eventide
					["coord"] = { 34.1, 35.5, DRUSTVAR },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["modelScale"] = 2,
					["lvl"] = 120,
					["groups"] = {
						i(155661),	-- Pristine Kubiline Shards (QI!)
						i(155830),	-- Runic Core (QI!)
					},
				}),
			}),
		}),
	}),
})));
