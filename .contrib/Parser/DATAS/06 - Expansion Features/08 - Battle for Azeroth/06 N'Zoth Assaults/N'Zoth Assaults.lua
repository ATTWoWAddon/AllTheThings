-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

-- Everything in this section should be common to both Vale and Uldum N'Zoth
-- assault and tagged with location information
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(NZOTH_ASSAULTS, {
		["maps"] = {
			NZOTH_ASSAULT_ULDUM,
			NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40959, {	-- Black Empire State of Mind
					["timeline"] = { ADDED_11_0_7 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						14161,	-- All Consuming
						14159,	-- Combating the Corruption
						14154,	-- Defend the Vale
						14158,	-- It's Not A Tumor!
						14155,	-- Uldum Accord
						14153,	-- Uldum Under Assault
						14156,	-- The Rajani
					}},
				}),
				ach(14159, {	-- Combating the Corruption
					crit(47211, {		-- Corrupted Acolyte slain
						["description"] = "Shares a spawn with Acolyte of N'Zoth.",
						["cr"] = 162249,	-- Corrupted Acolyte
						["coords"] = {
							{ 49.5, 39.9, NZOTH_ASSAULT_ULDUM },
							{ 51.2, 73.2, NZOTH_ASSAULT_ULDUM },
							{ 49.0, 80.0, NZOTH_ASSAULT_ULDUM },
							{ 46.2, 79.7, NZOTH_ASSAULT_ULDUM },
							{ 47.7, 84.5, NZOTH_ASSAULT_ULDUM },
							{ 49.1, 83.8, NZOTH_ASSAULT_ULDUM },
							{ 57.1, 43.5, NZOTH_ASSAULT_ULDUM },
							{ 55.8, 41.5, NZOTH_ASSAULT_ULDUM },
							{ 54.9, 80.0, NZOTH_ASSAULT_ULDUM },
							{ 46.2, 42.0, NZOTH_ASSAULT_ULDUM },
							{ 53.8, 43.1, NZOTH_ASSAULT_ULDUM },
							{ 43.8, 71.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 42.4, 68.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 54.4, 63.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 51.8, 60.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47212, {		-- Corrupted Assassin slain
						["description"] = "Shares a spawn with Black Empire Assassin.",
						["cr"] = 162250,	-- Corrupted Assassin
						["coords"] = {
							{ 51.7, 71.1, NZOTH_ASSAULT_ULDUM },
							{ 50.7, 72.3, NZOTH_ASSAULT_ULDUM },
							{ 50.2, 72.6, NZOTH_ASSAULT_ULDUM },
							{ 50.4, 73.6, NZOTH_ASSAULT_ULDUM },
							{ 50.0, 78.7, NZOTH_ASSAULT_ULDUM },
							{ 51.2, 80.0, NZOTH_ASSAULT_ULDUM },
							{ 49.4, 80.9, NZOTH_ASSAULT_ULDUM },
							{ 48.6, 85.6, NZOTH_ASSAULT_ULDUM },
							{ 50.0, 71.8, NZOTH_ASSAULT_ULDUM },
							{ 52.2, 84.5, NZOTH_ASSAULT_ULDUM },
							{ 50.7, 69.4, NZOTH_ASSAULT_ULDUM },
							{ 52.0, 69.4, NZOTH_ASSAULT_ULDUM },
							{ 50.0, 71.7, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47213, {		-- Corrupted Beheader slain
						["description"] = "Shares a spawn with Black Empire Beheader.",
						["cr"] = 162252,	-- Corrupted Beheader
						["coords"] = {
							{ 58.4, 42.8, NZOTH_ASSAULT_ULDUM },
							{ 52.6, 46.4, NZOTH_ASSAULT_ULDUM },
							{ 60.0, 49.5, NZOTH_ASSAULT_ULDUM },
							{ 51.0, 71.2, NZOTH_ASSAULT_ULDUM },
							{ 50.0, 78.7, NZOTH_ASSAULT_ULDUM },
							{ 50.2, 73.1, NZOTH_ASSAULT_ULDUM },
							{ 50.5, 85.8, NZOTH_ASSAULT_ULDUM },
							{ 49.1, 84.7, NZOTH_ASSAULT_ULDUM },
							{ 43.0, 59.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 45.4, 71.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 57.0, 58.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47214,	{		-- Corrupted Bloodseeker slain
						["description"] = "This doesn't appear to share a spawn with any other mob, but it's an elite shark that spawns off the southern coast of Uldum.  It can swim very far out, close to fatigue waters, so if you're searching for Corrupted Bloodseeker it may be helpful to follow the outside edge rather than sticking to the coast.",
						["cr"] = 162290,	-- Corrupted Bloodseeker
						["coords"] = {
							{ 13.8, 63.6, NZOTH_ASSAULT_ULDUM },
							{ 26.8, 76.6, NZOTH_ASSAULT_ULDUM },
							{ 46.6, 91.2, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47215,	{		-- Corrupted Bonestripper slain
						["description"] = "Shares a spawn with N'Zoth Bonestripper.  Found in most water locations.",
						["cr"] = 159087,	-- Corrupted Bonestripper
						["coords"] = {
							{ 55.7, 43.8, NZOTH_ASSAULT_ULDUM },
							{ 57.5, 17.7, NZOTH_ASSAULT_ULDUM },
							{ 56.6, 20.6, NZOTH_ASSAULT_ULDUM },
							{ 56.5, 24.4, NZOTH_ASSAULT_ULDUM },
							{ 57.3, 27.4, NZOTH_ASSAULT_ULDUM },
							{ 59.6, 60.8, NZOTH_ASSAULT_ULDUM },
							{ 63.4, 52.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 74.8, 58.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 90.6, 46.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 72.0, 43.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 72.8, 29.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47216,	{		-- Corrupted Despoiler slain
						["description"] = "Shares a spawn with Faceless Despoiler and Mind Eater.  Can also result in Corrupted Mind Eater spawning.",
						["cr"] = 156709,	-- Corrupted Despoiler
						["coords"] = {
							{ 59.5, 47.4, NZOTH_ASSAULT_ULDUM },
							{ 59.1, 42.7, NZOTH_ASSAULT_ULDUM },
							{ 55.1, 53.4, NZOTH_ASSAULT_ULDUM },
							{ 49.4, 39.6, NZOTH_ASSAULT_ULDUM },
							{ 60.2, 53.6, NZOTH_ASSAULT_ULDUM },
							{ 58.4, 24.8, NZOTH_ASSAULT_ULDUM },
							{ 55.6, 24.4, NZOTH_ASSAULT_ULDUM },
							{ 42.8, 37.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 45.6, 48.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 43.6, 64.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 44.6, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 58.6, 61.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.6, 55.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 64.8, 65.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 56.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 52.2, 42.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 60.4, 42.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 67.0, 37.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 68.8, 49.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 75.4, 52.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 79.8, 50.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 85.8, 40.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 76.4, 37.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.8, 33.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 75.0, 23.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47217,	{		-- Corrupted Dominator slain
						["description"] = "Shares a spawn with Faceless Dominator.",
						["cr"] = 162246,	-- Corrupted Dominator
						["coords"] = {
							{ 63.0, 71.0, NZOTH_ASSAULT_ULDUM },
							{ 63.8, 72.8, NZOTH_ASSAULT_ULDUM },
							{ 64.5, 74.5, NZOTH_ASSAULT_ULDUM },
							{ 60.2, 66.4, NZOTH_ASSAULT_ULDUM },
							{ 61.6, 69.4, NZOTH_ASSAULT_ULDUM },
							{ 56.5, 42.1, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47218, {		-- Corrupted Doomsayer slain
						["description"] = "Shares a spawn with K'thir Doomsayer.",
						["cr"] = 162244,	-- Corrupted Doomsayer
						["coords"] = {
							{ 60.8, 71.5, NZOTH_ASSAULT_ULDUM },
							{ 60.2, 71.3, NZOTH_ASSAULT_ULDUM },
							{ 62.0, 73.7, NZOTH_ASSAULT_ULDUM },
							{ 49.8, 39.9, NZOTH_ASSAULT_ULDUM },
							{ 49.6, 41.4, NZOTH_ASSAULT_ULDUM },
							{ 61.8, 70.6, NZOTH_ASSAULT_ULDUM },
							{ 61.4, 75.2, NZOTH_ASSAULT_ULDUM },
							{ 63.5, 70.0, NZOTH_ASSAULT_ULDUM },
							{ 45.8, 43.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 55.2, 62.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 60.6, 56.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 64.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 56.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 59.0, 40.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 64.8, 46.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 72.8, 53.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 77.6, 48.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 67.8, 36.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 68.6, 24.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 78.6, 31.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 86.2, 42.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47219, {		-- Corrupted Fleshbeast slain
						["description"] = "Shares a spawn with Burbling Fleshbeast.",
						["cr"] = 158632,	-- Corrupted Fleshbeast
						["coords"] = {
							{ 59.5, 48.6, NZOTH_ASSAULT_ULDUM },
							{ 49.0, 35.5, NZOTH_ASSAULT_ULDUM },
							{ 62.2, 68.7, NZOTH_ASSAULT_ULDUM },
							{ 60.9, 69.3, NZOTH_ASSAULT_ULDUM },
							{ 60.4, 67.5, NZOTH_ASSAULT_ULDUM },
							{ 62.0, 66.7, NZOTH_ASSAULT_ULDUM },
							{ 40.0, 39.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 46.0, 47.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 47.6, 36.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 57.0, 41.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 60.4, 59.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 53.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.0, 32.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.4, 26.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 70.2, 31.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 69.4, 46.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 78.0, 50.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 84.8, 46.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47220, {		-- Corrupted Jailer slain
						["description"] = "Shares a spawn with Faceless Jailer.",
						["cr"] = 162247,	-- Corrupted Jailer
						["coords"] = {
							{ 60.8, 71.5, NZOTH_ASSAULT_ULDUM },
							{ 62.1, 74.7, NZOTH_ASSAULT_ULDUM },
							{ 63.4, 72.6, NZOTH_ASSAULT_ULDUM },
							{ 62.2, 67.4, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47221, {		-- Corrupted Mind Eater slain
						["description"] = "Shares a spawn with Mind Eater and Faceless Despoiler.  Can also result in Corrupted Despoiler spawning.",
						["cr"] = 162243,	-- Corrupted Mind Eater
						["coords"] = {
							{ 59.5, 47.4, NZOTH_ASSAULT_ULDUM },
							{ 59.1, 42.7, NZOTH_ASSAULT_ULDUM },
							{ 55.1, 53.4, NZOTH_ASSAULT_ULDUM },
							{ 49.4, 39.6, NZOTH_ASSAULT_ULDUM },
							{ 60.2, 53.6, NZOTH_ASSAULT_ULDUM },
							{ 58.4, 24.8, NZOTH_ASSAULT_ULDUM },
							{ 55.6, 24.4, NZOTH_ASSAULT_ULDUM },
							{ 42.8, 37.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 45.6, 48.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 43.6, 64.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 44.6, 71.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 58.6, 61.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.6, 55.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 64.8, 65.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 56.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 52.2, 42.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 60.4, 42.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 67.0, 37.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 68.8, 49.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 75.4, 52.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 79.8, 50.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 85.8, 40.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 76.4, 37.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.8, 33.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 75.0, 23.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47222, {		-- Corrupted Neferset Guard slain
						["description"] = "Shares a spawn with Voidwarped Neferset and Voidwarped Neferset High Guard.",
						["cr"] = 158531,	-- Corrupted Neferset Guard
						["coords"] = {
							{ 50.9, 82.9, NZOTH_ASSAULT_ULDUM },
							{ 51.6, 81.7, NZOTH_ASSAULT_ULDUM },
							{ 49.8, 82.0, NZOTH_ASSAULT_ULDUM },
							{ 49.8, 82.6, NZOTH_ASSAULT_ULDUM },
							{ 49.0, 82.6, NZOTH_ASSAULT_ULDUM },
							{ 47.3, 80.3, NZOTH_ASSAULT_ULDUM },
							{ 50.7, 85.5, NZOTH_ASSAULT_ULDUM },
							{ 50.3, 85.5, NZOTH_ASSAULT_ULDUM },
							{ 50.5, 77.9, NZOTH_ASSAULT_ULDUM },
							{ 50.8, 77.8, NZOTH_ASSAULT_ULDUM },
							{ 50.9, 75.0, NZOTH_ASSAULT_ULDUM },
							{ 50.5, 75.0, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47223, {		-- Corrupted Observer slain
						["description"] = "Shares a spawn with Foul Observer.",	-- add Vale mob to description (can't remember what it's called, the eye mob ugh)
						["cr"] = 162254,	-- Corrupted Observer
						["coords"] = {
							{ 55.4, 51.0, NZOTH_ASSAULT_ULDUM },
							{ 43.0, 62.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 52.0, 67.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 54.8, 61.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 55.4, 57.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 61.0, 55.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 63.2, 62.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 69.6, 60.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 81.8, 55.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 55.6, 40.2, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 56.8, 43.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 60.6, 37.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 63.0, 41.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.0, 43.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 67.2, 42.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 65.6, 27.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 69.6, 24.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 71.8, 23.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 74.0, 24.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 80.8, 46.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 86.0, 46.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47224, {		-- Corrupted Putrefaction slain
						["description"] = "Shares a spawn with Oozing Putrefaction.",
						["cr"] = 158706,	-- Corrupted Putrefaction
						["coords"] = {
							{ 59.3, 41.4, NZOTH_ASSAULT_ULDUM },
							{ 60.4, 39.9, NZOTH_ASSAULT_ULDUM },
							{ 47.4, 26.3, NZOTH_ASSAULT_ULDUM },
							{ 57.1, 81.6, NZOTH_ASSAULT_ULDUM },
							{ 60.8, 37.1, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47225, {		-- Corrupted Summoner slain
						["description"] = "Shares a spawn with Black Empire Conjurers.",
						["cr"] = 162251,	-- Corrupted Summoner
						["coords"] = {
							{ 58.9, 46.2, NZOTH_ASSAULT_ULDUM },
							{ 60.3, 50.9, NZOTH_ASSAULT_ULDUM },
							{ 59.7, 50.9, NZOTH_ASSAULT_ULDUM },
							{ 57.2, 56.4, NZOTH_ASSAULT_ULDUM },
							{ 58.0, 59.7, NZOTH_ASSAULT_ULDUM },
							{ 58.3, 60.9, NZOTH_ASSAULT_ULDUM },
							{ 56.5, 54.9, NZOTH_ASSAULT_ULDUM },
							{ 60.4, 49.5, NZOTH_ASSAULT_ULDUM },
							{ 56.6, 51.4, NZOTH_ASSAULT_ULDUM },
							{ 56.2, 52.7, NZOTH_ASSAULT_ULDUM },
							{ 56.1, 50.1, NZOTH_ASSAULT_ULDUM },
							{ 54.1, 49.5, NZOTH_ASSAULT_ULDUM },
							{ 53.4, 49.4, NZOTH_ASSAULT_ULDUM },
							{ 51.9, 50.1, NZOTH_ASSAULT_ULDUM },
						},
					}),
					crit(47226, {		-- Corrupted Thaumaturge slain
						["description"] = "Shares a spawn with Black Empire Thaumaturge and Black Empire Conjurer.",
						["cr"] = 162253,	-- Corrupted Thaumaturge
						["coords"] = {
							{ 51.9, 70.3, NZOTH_ASSAULT_ULDUM },
							{ 50.5, 81.8, NZOTH_ASSAULT_ULDUM },
							{ 50.1, 74.6, NZOTH_ASSAULT_ULDUM },
							{ 50.6, 87.5, NZOTH_ASSAULT_ULDUM },
							{ 51.9, 84.4, NZOTH_ASSAULT_ULDUM },
							{ 51.9, 80.6, NZOTH_ASSAULT_ULDUM },
							{ 42.8, 68.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 43.6, 71.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 45.0, 65.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 49.4, 61.4, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 52.6, 61.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 49.0, 66.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							{ 52.6, 66.0, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					crit(47227, {		-- Corrupted Thoughtstealer slain
						["description"] = "Shares a spawn with K'thir Thoughtstealer.",
						["coords"] = {
							{ 62.7, 75.4, NZOTH_ASSAULT_ULDUM },
							{ 61.0, 72.0, NZOTH_ASSAULT_ULDUM },
							{ 60.5, 68.7, NZOTH_ASSAULT_ULDUM },
							{ 60.5, 65.5, NZOTH_ASSAULT_ULDUM },
							{ 61.1, 66.5, NZOTH_ASSAULT_ULDUM },
							{ 62.9, 74.3, NZOTH_ASSAULT_ULDUM },
						},
						["cr"] = 162241,	-- Corrupted Thoughtstealer
					}),
					crit(47228, {		-- Corrupted Tormentor slain -- TODO:: Add coords
						["description"] = "Shares a spawn with Tentacle Tormentors, found off the southern coast of Uldum.",
						["coords"] = {
							{ 13.0, 64.6, NZOTH_ASSAULT_ULDUM },
							{ 32.6, 73.2, NZOTH_ASSAULT_ULDUM },
							{ 49.6, 91.8, NZOTH_ASSAULT_ULDUM },
							{ 75.6, 79.0, NZOTH_ASSAULT_ULDUM },
							{ 87.2, 47.2, NZOTH_ASSAULT_ULDUM },
						},
						["cr"] = 162245,	-- Corrupted Tormentor
					}),
					crit(47229, {		-- Corrupted Watcher slain
						["description"] = "Shares a spawn with Voidwarped Watcher.",
						["coords"] = {
							{ 61.8, 73.0, NZOTH_ASSAULT_ULDUM },
							{ 63.4, 72.9, NZOTH_ASSAULT_ULDUM },
							{ 52.0, 69.8, NZOTH_ASSAULT_ULDUM },
							{ 50.5, 82.5, NZOTH_ASSAULT_ULDUM },
							{ 52.2, 81.6, NZOTH_ASSAULT_ULDUM },
							{ 52.1, 83.0, NZOTH_ASSAULT_ULDUM },
							{ 50.8, 69.8, NZOTH_ASSAULT_ULDUM },
						},
						["cr"] = 150829,	-- Corrupted Watcher
					}),
				}),
				ach(14161),		-- Get In My Belly!	-- TODO:: update with map-specific criteria when they get added
				ach(14158),		-- It's Not A Tumor!
				ach(14160),		-- Rare to Well Done -- TODO:: update criteria when they get added
			}),
			n(AZERITE_ESSENCES, {
				i(168574, {	-- Petrified Living Bark (Rank 2)
					["cost"] = { { "i", 174288, 3 } },	-- 3x Breath of Everlasting Spirit
				}),
				i(168439, {	-- Swirling Star Dust (Rank 2)
					["cost"] = { { "i", 174288, 3 } },	-- 3x Breath of Everlasting Spirit
				}),
				i(173281, {	-- Token of Death's Mark (Rank 2)
					["cost"] = { { "i", 174288, 3 } },	-- 3x Breath of Everlasting Spirit
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					i(174456, {	-- Gloop (PET!)
						["description"] = "Can be caught from schools of fish in a zone currently affected by a N'Zoth Assault.",
					}),
				}),
			}),
			n(QUESTS, sharedData({
				["isDaily"] = true,
			}, {
				-- Lesser Visions dailies
				q(58168, {	-- A Dark, Glaring Reality
					["provider"] = { "n", 160252 },	-- Blacktalon Agent
					["coords"] = {
						{ 56.6, 31.7, NZOTH_ASSAULT_ULDUM },
						{ 84.2, 51.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					},
					["maps"] = {
						1570,	-- Vale of Eternal Blossoms, Vision
						1571,	-- Uldum, Vision
					},
					["g"] = {
						i(173810),	-- Darksight Potion (QI!)
						i(174288, {	-- Breath of Everlasting Spirit (once a week)
							["description"] = "Awarded once a week upon completion of your first Visions of Darkness quest.",
						}),
					},
				}),
				q(58151, {	-- Minions of N'Zoth
					["provider"] = { "n", 160252 },	-- Blacktalon Agent
					["coords"] = {
						{ 56.6, 31.7, NZOTH_ASSAULT_ULDUM },
						{ 84.2, 51.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					},
					["maps"] = {
						1570,	-- Vale of Eternal Blossoms, Vision
						1571,	-- Uldum, Vision
					},
					["g"] = {
						i(174288, {	-- Breath of Everlasting Spirit (once a week)
							["description"] = "Awarded once a week upon completion of your first Visions of Darkness quest.",
						}),
					},
				}),
				q(58167, {	-- Preventative Measures
					["provider"] = { "n", 160252 },	-- Blacktalon Agent
					["coords"] = {
						{ 56.6, 31.7, NZOTH_ASSAULT_ULDUM },
						{ 84.2, 51.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					},
					["maps"] = {
						1570,	-- Vale of Eternal Blossoms, Vision
						1571,	-- Uldum, Vision
					},
					["g"] = {
						i(174288, {	-- Breath of Everlasting Spirit (once a week)
							["description"] = "Awarded once a week upon completion of your first Visions of Darkness quest.",
						}),
					},
				}),
				q(58156, {	-- Vanquishing the Darkness
					["provider"] = { "n", 160252 },	-- Blacktalon Agent
					["sourceQuest"] = 56771,	-- Time-Lost Warriors (is it really a prereq? should it be on all lesser visions quest?)
					["coords"] = {
						{ 56.6, 31.7, NZOTH_ASSAULT_ULDUM },
						{ 84.2, 51.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					},
					["maps"] = {
						1570,	-- Vale of Eternal Blossoms, Vision
						1571,	-- Uldum, Vision
					},
					["g"] = {
						i(174288, {	-- Breath of Everlasting Spirit (once a week)
							["description"] = "Awarded once a week upon completion of your first Visions of Darkness quest.",
						}),
					},
				}),
				q(58155, {	-- A Hand in the Dark
					["provider"] = { "n", 160252 },
					["sourceQuest"] = 56771,	-- Time-Lost Warriors (is it really a prereq? should it be on all lesser visions quest?)
					["coords"] = {
						{ 56.6, 31.7, NZOTH_ASSAULT_ULDUM },
						{ 84.2, 51.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					},
					["maps"] = {
						1570,	-- Vale of Eternal Blossoms, Vision
						1571,	-- Uldum, Vision
					},
					["g"] = {
						i(174288, {	-- Breath of Everlasting Spirit (once a week)
							["description"] = "Awarded once a week upon completion of your first Visions of Darkness quest.",
						}),
					},
				}),
			})),
			n(ZONE_DROPS, {
				i(174365),	-- Design: Unbound Leviathan's Eye Loop (RECIPE!)
				i(174368),	-- Pattern: Unsettling Cragscale Boots (RECIPE!)
				i(174369),	-- Pattern: Unsettling Cragscale Greaves (RECIPE!)
				i(174366),	-- Pattern: Unsettling Dredged Leather Boots (RECIPE!)
				i(174367),	-- Pattern: Unsettling Dredged Leather Leggings (RECIPE!)
				i(174371),	-- Pattern: Unsettling Seaweave Breeches (RECIPE!)
				i(174370),	-- Pattern: Unsettling Seaweave Gloves (RECIPE!)
				i(171317),	-- Plans: Unsettling Osmenite Girdle (RECIPE!)
				i(171316),	-- Plans: Unsettling Osmenite Legguards (RECIPE!)
				i(171318),	-- Recipe: Unbound Alchemist Stone (RECIPE!)
				i(174362),	-- Schematic: A-N0M-A-L0U5 Bionic Bifocals (RECIPE!)
				i(171313),	-- Schematic: A-N0M-A-L0U5 Gearspun Goggles (RECIPE!)
				i(174364),	-- Schematic: A-N0M-A-L0U5 Orthogonal Optics (RECIPE!)
				i(171314),	-- Schematic: A-N0M-A-L0U5 Synthetic Specs (RECIPE!)
				i(173420, {	-- Black Empire Cloth Belt
					i(173511),	-- Vile Manipulator's Belt
					i(173436),	-- Vile Manipulator's Cinch
					i(173812),	-- Vile Manipulator's Cord
					i(173813),	-- Vile Manipulator's Girdle
				}),
				i(173415, {	-- Black Empire Cloth Boots
					i(173431),	-- Vile Manipulator's Footwraps
					i(173515),	-- Vile Manipulator's Slippers
					i(173495),	-- Vile Manipulator's Soles
					i(173478),	-- Vile Manipulator's Treads
				}),
				i(173423, {	-- Black Empire Cloth Bracers
					i(173479),	-- Vile Manipulator's Armwraps
					i(173490),	-- Vile Manipulator's Bracelets
					i(173471),	-- Vile Manipulator's Cuffs
					i(174953),	-- Vile Manipulator's Wristwraps
					i(173437),	-- Vile Manipulator's Wristwraps
				}),
				i(173416, {	-- Black Empire Cloth Gloves
					i(173463),	-- Vile Manipulator's Gloves
					i(173491),	-- Vile Manipulator's Grips
					i(173507),	-- Vile Manipulator's Handguards
					i(173432),	-- Vile Manipulator's Handwraps
				}),
				i(173417, {	-- Black Empire Cloth Helm
					azeriteItem(173433),	-- Vile Manipulator's Cowl
					azewrongItem(184591),	-- Vile Manipulator's Cowl
					azeriteItem(173845),	-- Vile Manipulator's Hood
				}),
				i(173418, {	-- Black Empire Cloth Leggings
					i(173434),	-- Vile Manipulator's Leggings
					i(173467),	-- Vile Manipulator's Legwraps
					i(173483),	-- Vile Manipulator's Pants
					i(173811),	-- Vile Manipulator's Trousers
				}),
				i(173414, {	-- Black Empire Cloth Robes
					azeriteItem(173458),	-- Vile Manipulator's Robe
					azewrongItem(184590),	-- Vile Manipulator's Robe
					azeriteItem(173846),	-- Vile Manipulator's Vestment
				}),
				i(173419, {	-- Black Empire Cloth Spaulders
					azeriteItem(173844),	-- Vile Manipulator's Amice
					azeriteItem(173435),	-- Vile Manipulator's Mantle
					azewrongItem(184592),	-- Vile Manipulator's Mantle
				}),
				i(173413, {	-- Black Empire Leather Belt
					i(173816),	-- Belt of the Insatiable Maw
					i(173815),	-- Girdle of the Insatiable Maw
					i(173512),	-- Grasp of the Insatiable Maw
					i(173444),	-- Waistguard of the Insatiable Maw
				}),
				i(173408, {	-- Black Empire Leather Boots
					i(173477),	-- Boots of the Insatiable Maw
					i(173516),	-- Footguards of the Insatiable Maw
					i(173439),	-- Footpads of the Insatiable Maw
					i(173496),	-- Footwraps of the Insatiable Maw
				}),
				i(173424, {	-- Black Empire Leather Bracers
					i(173472),	-- Armguards of the Insatiable Maw
					i(173480),	-- Bindings of the Insatiable Maw
					i(173489),	-- Coils of the Insatiable Maw
					i(174954),	-- Wristwraps of the Insatiable Maw
					i(173445),	-- Wristwraps of the Insatiable Maw
				}),
				i(173407, {	-- Black Empire Leather Chestpiece
					azeriteItem(173438),	-- Chestguard of the Insatiable Maw
					azeriteItem(173843),	-- Vest of the Insatiable Maw
					azewrongItem(184593),	-- Chestguard of the Insatiable Maw
				}),
				i(173409, {	-- Black Empire Leather Gloves
					i(173464),	-- Gloves of the Insatiable Maw
					i(173440),	-- Grips of the Insatiable Maw
					i(173508),	-- Handguards of the Insatiable Maw
					i(173492),	-- Handwraps of the Insatiable Maw
				}),
				i(173410, {	-- Black Empire Leather Helm
					azeriteItem(173441),	-- Guise of the Insatiable Maw
					azeriteItem(173842),	-- Visage of the Insatiable Maw
					azewrongItem(184594),	-- Chestguard of the Insatiable Maw
				}),
				i(173411, {	-- Black Empire Leather Leggings
					i(173484),	-- Breeches of the Insatiable Maw
					i(173468),	-- Leggings of the Insatiable Maw
					i(173442),	-- Legwraps of the Insatiable Maw
					i(173814),	-- Trousers of the Insatiable Maw
				}),
				i(173412, {	-- Black Empire Leather Spaulders
					azeriteItem(173841),	-- Mantle of the Insatiable Maw
					azeriteItem(173443),	-- Shoulderpads of the Insatiable Maw
					azewrongItem(184595),	-- Shoulderpads of the Insatiable Maw
				}),
				i(173406, {	-- Black Empire Mail Belt
					i(173452),	-- Nefarious Tormentor's Belt
					i(173513),	-- Nefarious Tormentor's Chain
					i(173818),	-- Nefarious Tormentor's Girdle
					i(173819),	-- Nefarious Tormentor's Waistguard
				}),
				i(173401, {	-- Black Empire Mail Boots
					i(173476),	-- Nefarious Tormentor's Boots
					i(173447),	-- Nefarious Tormentor's Footguards
					i(173517),	-- Nefarious Tormentor's Striders
					i(173497),	-- Nefarious Tormentor's Treads
				}),
				i(173425, {	-- Black Empire Mail Bracers
					i(173488),	-- Nefarious Tormentor's Armwraps
					i(173481),	-- Nefarious Tormentor's Bindings
					i(173473),	-- Nefarious Tormentor's Bracers
					i(174955),	-- Nefarious Tormentor's Vambraces
					i(173453),	-- Nefarious Tormentor's Vambraces
				}),
				i(173400, {	-- Black Empire Mail Chestpiece
					azeriteItem(173446),	-- Nefarious Tormentor's Breastplate
					azewrongItem(184596),	-- Nefarious Tormentor's Breastplate
					azeriteItem(173840),	-- Nefarious Tormentor's Chestpiece
				}),
				i(173402, {	-- Black Empire Mail Gloves
					i(173465),	-- Nefarious Tormentor's Gloves
					i(173509),	-- Nefarious Tormentor's Handgrips
					i(173448),	-- Nefarious Tormentor's Handguards
					i(173493),	-- Nefarious Tormentor's Handwraps
				}),
				i(173403, {	-- Black Empire Mail Helm
					azeriteItem(173839),	-- Nefarious Tormentor's Cover
					azeriteItem(173449),	-- Nefarious Tormentor's Mask
					azewrongItem(184597),	-- Nefarious Tormentor's Mask
				}),
				i(173404, {	-- Black Empire Mail Leggings
					i(173469),	-- Nefarious Tormentor's Greaves
					i(173485),	-- Nefarious Tormentor's Leggings
					i(173450),	-- Nefarious Tormentor's Legguards
					i(173817),	-- Nefarious Tormentor's Trousers
				}),
				i(173405, {	-- Black Empire Mail Spaulders
					azeriteItem(173838),	-- Nefarious Tormentor's Epaulets
					azeriteItem(173451),	-- Nefarious Tormentor's Spaulders
					azewrongItem(184598),	-- Nefarious Tormentor's Spaulders
				}),
				i(173399, {	-- Black Empire Plate Belt
					i(173821),	-- Malignant Leviathan's Clasp
					i(173514),	-- Malignant Leviathan's Girdle
					i(173461),	-- Malignant Leviathan's Greatbelt
					i(173822),	-- Malignant Leviathan's Waistguard
				}),
				i(173394, {	-- Black Empire Plate Boots
					i(173498),	-- Malignant Leviathan's Boots
					i(173518),	-- Malignant Leviathan's Sabatons
					i(173455),	-- Malignant Leviathan's Stompers
					i(173475),	-- Malignant Leviathan's Warboots
				}),
				i(173422, {	-- Black Empire Plate Bracers
					i(174956),	-- Malignant Leviathan's Armguards
					i(173462),	-- Malignant Leviathan's Armguards
					i(173487),	-- Malignant Leviathan's Coils
					i(173474),	-- Malignant Leviathan's Vambraces
					i(173482),	-- Malignant Leviathan's Wristguards
				}),
				i(173393, {	-- Black Empire Plate Chestpiece
					azeriteItem(173454),	-- Malignant Leviathan's Chestplate
					azewrongItem(184599),	-- Malignant Leviathan's Chestplate
					azeriteItem(173837),	-- Malignant Leviathan's Hauberk
				}),
				i(173395, {	-- Black Empire Plate Gloves
					i(173456),	-- Malignant Leviathan's Crushers
					i(173494),	-- Malignant Leviathan's Fists
					i(173466),	-- Malignant Leviathan's Gauntlets
					i(173510),	-- Malignant Leviathan's Handguards
				}),
				i(173396, {	-- Black Empire Plate Helm
					azeriteItem(173457),	-- Malignant Leviathan's Headguard
					azeriteItem(173836),	-- Malignant Leviathan's Helm
					azewrongItem(184600),	-- Malignant Leviathan's Headguard
				}),
				i(173397, {	-- Black Empire Plate Leggings
					i(173820),	-- Malignant Leviathan's Greaves
					i(173470),	-- Malignant Leviathan's Legguards
					i(173486),	-- Malignant Leviathan's Legplates
					i(173459),	-- Malignant Leviathan's Wargreaves
				}),
				i(173398, {	-- Black Empire Plate Spaulders
					azeriteItem(173835),	-- Malignant Leviathan's Pauldrons
					azeriteItem(173460),	-- Malignant Leviathan's Spaulders
					azewrongItem(184601),	-- Malignant Leviathan's Spaulders
				}),
				i(173936, {	-- Dookin' Ookin' Quarterstaff
					["coord"] = { 80.4, 63.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					["crs"] = {
						154451,	-- Squidtail Screamer
						154467,	-- Chief Mek-mek
					}
				}),
				i(173935, {	-- Nik-Nik's Slicky Sticker
					["coord"] = { 80.4, 63.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					["crs"] = {
						154451,	-- Squidtail Screamer
						154467,	-- Chief Mek-mek
					}
				}),
			}),
		},
	}),
}));