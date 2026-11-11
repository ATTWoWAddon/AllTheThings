---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(KALIMDOR, {
	lore = "Kalimdor is home to the night elves, orcs, tauren, trolls, and draenei. Other races present include the ogres, centaur, naga, demons, and other, more minor races.",
	icon = 236807,
	isContinent = true,
	maps = { 1464 },
	timeline = { EXPANSION_DEFAULT_TIMELINES[EXPANSION.CLASSIC] },
	groups = {
		n(ACHIEVEMENTS, {
			ach(43),	-- Kalimdor Explorer [7.0.3] / Explore Kalimdor (automated)
			ach(1678, {	-- Loremaster of Kalimdor (A) (automated)
				races = ALLIANCE_ONLY,
			}),
			ach(1680, {	-- Loremaster of Kalimdor (H) (automated)
				races = HORDE_ONLY,
			}),
		}),
	},
});
