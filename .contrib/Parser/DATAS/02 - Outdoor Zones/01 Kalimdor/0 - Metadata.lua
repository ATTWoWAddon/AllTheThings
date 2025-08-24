---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(KALIMDOR, {
		["lore"] = "Kalimdor is home to the night elves, orcs, tauren, trolls, and draenei. Other races present include the ogres, centaur, naga, demons, and other, more minor races.",
		["icon"] = 236807,
		["zone-text-continent"] = true,
		-- #if ANYCLASSIC
		["maps"] = { 1464 },
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(43),	-- Kalimdor Explorer [7.0.3] / Explore Kalimdor (automated)
				petbattle(ach(6585, {["timeline"] = { ADDED_5_0_4 } })),	-- Kalimdor Safari (automated)
				petbattle(ach(6612, {["timeline"] = { ADDED_5_0_4 } })),	-- Kalimdor Tamer (automated)
				ach(1678, {	-- Loremaster of Kalimdor (A) (automated)
					-- #if BEFORE 5.0.4
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				-- #if BEFORE 5.0.4
				ach(1680, {	-- Loremaster of Kalimdor (H) (automated)
					["timeline"] = { DELETED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				-- #endif
				petbattle(ach(6602, {	-- Taming Kalimdor (automated)
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				})),
			}),
		},
	}),
});
