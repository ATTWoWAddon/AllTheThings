---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(SPECIAL, {
				n(109028, {	-- Horkus
					["description"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
					["questID"] = 42825,
					["coord"] = { 56.2, 59.6, AZSUNA },
					["crs"] = { 109029 },	-- Horkus
				}),
				o(251168, {	-- Ephemeral Crystal
					["description"] = "Finding 5 Ephemeral Crystals, scattered across Azsuna, will award this mount, but find them quickly - after someone clicks on 5 crystals, the event will end, and you'll have to wait at least 8 hours (possibly up to 24) for the event to reappear. Remember to play cautiously while you're hunting, because if you die you'll have to restart.",
					["groups"] = { i(138258) },	-- Long-Forgotten Hippogryph (MOUNT!)
				}),
			}),
		}),
	}),
});
