---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, {
	lore = "The Eastern Kingdoms are the eastern continents on the world of Azeroth. The Eastern Kingdoms is made up from a group of smaller continents (Azeroth, Khaz Modan and Lordaeron) formed from the original continent of Kalimdor following the Great Sundering. The Eastern Kingdoms lie to the east of the Great Sea and to the west of the Forbidding Sea. The central part of the Eastern Kingdoms is dominated by the Khaz Mountains and the Redridge Mountains. Both cover several zones.",
	icon = 236759,
	isContinent = true,
	maps = { 1463 },
	timeline = { EXPANSION_DEFAULT_TIMELINES[EXPANSION.CLASSIC] },
	groups = {
		n(ACHIEVEMENTS, {
			ach(42),	-- Eastern Kingdoms Explorer [7.0.3] / Explore Eastern Kingdoms (automated)
			ach(1676, {	-- Loremaster of Eastern Kingdoms (A) (automated)
				races = ALLIANCE_ONLY,
			}),
			ach(1677, {	-- Loremaster of Eastern Kingdoms (H) (automated)
				races = HORDE_ONLY,
			}),
		}),
	},
});
