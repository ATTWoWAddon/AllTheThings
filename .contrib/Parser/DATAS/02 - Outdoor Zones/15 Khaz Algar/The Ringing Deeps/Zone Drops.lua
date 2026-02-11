---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(ZONE_DROPS, {
			i(212595, {	-- Glittering Shard (QS!)/(QI!)
				["coord"] = { 56.9, 16.3, THE_RINGING_DEEPS },
				["cr"] = 215233,	-- Urthgrafr Riftcaller
			}),
			i(224772, {	-- Bounty from Gallywix (QS!/QI!)
				["coord"] = { 72.0, 77.2, THE_RINGING_DEEPS },
				["crs"] = {
					225680,	-- Darkfuse Manager
					225681,	-- Darkfuse Muscle
				},
				["timeline"] = { ADDED_11_1_0 },
			}),
		}),
	}),
}));
