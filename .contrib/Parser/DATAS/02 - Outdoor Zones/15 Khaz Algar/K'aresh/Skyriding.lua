---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		skyriding(n(SKYRIDING, {
			n(QUESTS, {
				skyridingrace(86339, {	-- Oasis Overdrive
					["provider"] = { "n", 234643 },	-- Om'torid
					["coord"] = { 75.7, 30.6, KARESH },
				}),
				skyridingrace(86340, {	-- Oasis Overdrive - Advanced
					["provider"] = { "n", 234643 },	-- Om'torid
					["coord"] = { 75.7, 30.6, KARESH },
				}),
				skyridingrace(86341, {	-- Oasis Overdrive - Reverse
					["provider"] = { "n", 234643 },	-- Om'torid
					["coord"] = { 75.7, 30.6, KARESH },
				}),
			}),
		})),
	}),
}));
