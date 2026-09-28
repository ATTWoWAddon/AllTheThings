---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(RARES, {
			n(120899, {	-- Kul'krazahn
				["questID"] = 48333,
				["coord"] = { 55.01, 83.61, DAZARALOR },
				["groups"] = {
					crit(41875, {	-- Kul'krazahn (Adventurer of Zuldazar)
						["achievementID"] = 12944,	-- Adventurer of Zuldazar
					}),
					i(160947),	-- Amani Berserker's Chopper
				},
			}),
			n(122639, {	-- Old R'gal
				["questID"] = 50856,
				["coord"] = { 50.6, 59.6, DAZARALOR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(161049),	-- Ferocious Devilsaur Legwraps
				},
			}),
		}),
	}),
})));
