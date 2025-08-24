-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.DF, {
	n(COMMON_BOSS_DROPS, {
		d(DIFFICULTY.RAID.MULTI.ALL, {
			i(213089, {	-- Antique Bronze Bullion
				["description"] = "Drops from Awakened Dragonflight Raid bosses.",
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
			}),
			i(211515, {	-- Splintered Spark of Awakening
				["description"] = "Drops from Dragonflight Dungeon/Raid & certain Outdoor content.\n\nEnable 'Debug Mode' to see the drop limitations for this Item for your character.",
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
				["groups"] = {
					-- TODO: maybe a more interesting way to link 'drop amounts' via currency/HQT into Items in the future
					currency(2800),	-- 10.2.6 Professions - Personal Tracker - S4 Spark Drops (Hidden)
				},
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, {
	q(80540, {
		["name"] = "Bullion Capped",	-- Triggered when Bullion Cap is met for the week
		["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
	}),
}));
