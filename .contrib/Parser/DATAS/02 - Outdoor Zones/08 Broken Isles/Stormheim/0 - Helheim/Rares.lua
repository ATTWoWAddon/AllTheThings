---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			m(HELHEIM, {
				n(RARES, {
					n(92040, {	-- Fenri
						["questID"] = 38461,
						["coord"] = { 84.6, 49.2, HELHEIM },
						["groups"] = {
							crit(33298, {	-- Fenri
								["achievementID"] = 11263,	-- Adventurer of Stormheim
							}),
							i(129044),	-- Frothing Helhound's Fury
						},
					}),
					n(115732, {	-- Jorvild the Trusted
						["description"] = "The coordinates provided will take you to a small, door-sized cave entrance. It's hidden in some mist and, depending on your camera angle, can be difficult to see.",
						["questID"] = 46949,
						["coord"] = { 32.9, 43.2, HELHEIM },
						["sym"] = {{"select","itemID",144437}},	-- Lost Legend of the Valarjar (highest drop chance NPC)
					}),
					n(97630, {	-- Soulthirster
						["questID"] = 39870,
						["coord"] = { 29.0, 61.6, HELHEIM },
						["groups"] = {
							crit(33310, {	-- Soulthirster
								["achievementID"] = 11263,	-- Adventurer of Stormheim
							}),
							i(129188),	-- Bleakwater Jelly (PET!)
						},
					}),
				}),
			}),
		}),
	}),
});
