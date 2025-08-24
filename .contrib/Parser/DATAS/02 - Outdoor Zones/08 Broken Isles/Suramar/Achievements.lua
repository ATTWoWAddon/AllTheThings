---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(ACHIEVEMENTS, {
				ach(11265, {	-- Adventurer of Suramar
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10669),	-- Explore Suramar
				ach(11124, {	-- Good Suramaritan
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(11340, {	-- Insurrection
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10756, {	-- Leyline Bling
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(10617, {	-- Nightfallen But Not Forgotten
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(11125),		-- Now You're Thinking With Portals
				ach(11260),		-- Treasures of Suramar
				ach(11133, {	-- Why Can't I Hold All This Mana
					-- TODO: Put sourceQuests on the actual objects in Treasure Chests file
					["sourceQuests"] = {
						41138,	-- Feeding Shal'aran
						42230,	-- The Valewalker's Burden
						42488,	-- Thalyssra's Abode
						42833,	-- How It's Made: Arcwine
						42792,	-- Make Your Mark
					},
					--["providers"] = {
					--	{ "i", 136269 }, -- Kel'danath's Manaflask (CI!)
					--	{ "i", 140327 }, -- Krytos's Research Notes (CI!)
					--	{ "i", 140326 }, -- Enchanted Burial Urn (CI!)
					--	{ "i", 140329 }, -- Infinite Stone (CI!)
					--	{ "i", 140328 }, -- Volatile Leyline Crystal (CI!)
					--},
				}),
			}),
		}),
	}),
});
