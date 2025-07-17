---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(THE_RINGING_DEEPS, {
		n(ZONE_DROPS, {
			i(212493),	-- Odd Glob of Wax // objectID 419696 (Waxy Lump)
			n(215233, {	-- Urthgrafr Riftcaller
				["coord"] = { 56.9, 16.3, THE_RINGING_DEEPS },
				["g"] = {
					i(212595),	-- Glittering Shard (QS!)/(QI!)
				},
			}),
			i(228228),	-- Strange Lump of Wax (QS!/QI!)// World drop or from objectID 419696 (Waxy Lump)
			i(224772, {	-- Bounty from Gallywix (QS!/QI!)
				-- TODO: from 225681 or 225680
				["timeline"] = { ADDED_11_1_0 },
			}),
		}),
	}),
})));
