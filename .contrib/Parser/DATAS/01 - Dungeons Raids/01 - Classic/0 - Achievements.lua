-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- #if AFTER 3.0.2
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	n(ACHIEVEMENTS, {
		ach(1283, {		-- Classic Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				628,	-- Deadmines
				629,	-- Ragefire Chasm
				630,	-- Wailing Caverns
				631,	-- Shadowfang Keep
				632,	-- Blackfathom Deeps
				633,	-- Stormwind Stockade
				634,	-- Gnomeregan
				635,	-- Razorfen Kraul
				636,	-- Razorfen Downs
				637,	-- Scarlet Monastery
				638,	-- Uldaman
				639,	-- Zul'Farrak
				640,	-- Maraudon
				641,	-- Sunken Temple
				642,	-- Blackrock Depths
				643,	-- Blackrock Spire
				644,	-- King of Dire Maul
				645,	-- Scholomance
				646,	-- Stratholme
			}},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1285, {		-- Classic Raider
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				685,	-- Blackwing Lair
				686,	-- Molten Core
				687,	-- Temple of Ahn'Qiraj
				689,	-- Ruins of Ahn'Qiraj
			}},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(7934, {	-- Raiding with Leashes
			["timeline"] = { ADDED_5_1_0 },
			["groups"] = {
				i(93031),	-- Mr. Bigglesworth (PET!)
			},
		}),
	}),
}));
-- #endif
