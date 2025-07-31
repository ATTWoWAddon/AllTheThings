---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(ACHIEVEMENTS, {
				ach(11263, {	-- Adventurer of Stormheim
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10668),	-- Explore Stormheim
				ach(10627),	-- Going Up (Stormheim)
				ach(11232, {	-- Lock, Stock and Two Smoking Goblins
					title(343),		-- the Gullible
					crit(33089, {	-- Time to Collect
						["_quests"] = { 43331 },
					}),
				}),
				ach(11259),	-- Treasures of Stormheim
				ach(10790, {	-- Vrykul Story, Bro
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(11178),	-- Wake the Dragon
				ach(10793, {	-- What a Ripoff!
					["sourceQuests"] = { 42483 },	-- Put it All on Red
				}),
			}),
		}),
	}),
});
