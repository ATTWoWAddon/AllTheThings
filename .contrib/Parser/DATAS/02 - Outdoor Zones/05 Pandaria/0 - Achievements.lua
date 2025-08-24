---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(PANDARIA, applyclassicphase(MOP_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	-- TODO: lots of these are lacking lots of information! (crs/coords/etc.)
	n(ACHIEVEMENTS, {
		ach(6541),	-- Loremaster of Pandaria (automated)
		ach(6974),	-- Pandaria Explorer [7.0.3] / Explore Pandaria (automated)
		ach(6828, {	-- Pandaren Ambassador (Alliance) (automated)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(89785, {	-- Pandaren Kite (A) (MOUNT!)
					["races"] = ALLIANCE_ONLY,
				}),
			},
		}),
		ach(6827, {	-- Pandaren Ambassador (Horde) (automated)
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(81559, {	-- Pandaren Kite (H) (MOUNT!)
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		ach(6589),	-- Pandaria Safari (automated)
		petbattle(ach(6616)),	-- Pandaria Tamer (automated)
		petbattle(ach(6606)),	-- Taming Pandaria (automated)
		ach(6926, {	-- Tranquil Master
			title(203),	-- the Tranquil Master
			crit(19136, {	-- Sha of Anger slain
				["sourceQuests"] = { 32099 },	-- Sha of Anger
			}),
			crit(19668, {	-- Sha of Doubt
				["_encounter"] = { 335, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(18829, {	-- Sha of Despair
				["sourceQuests"] = { 30273 },	-- In the House of the Red Crane
			}),
			crit(22274, {	-- Sha of Violence
				["_encounter"] = { 685, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19374, {	-- Sha of Hatred
				["sourceQuests"] = { 30968 },	-- The Sha of Hatred
			}),
			crit(19136, {	-- Sha of Anger
				["_encounter"] = { 691, WORLD_BOSSES },
			}),
			crit(19913, {	-- Sha of Fear
				["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
			}),
		}),
		
		-- Rare Hunting
		ach(7437, {	-- A Worthy Opponent
			["_noautomation"] = true,	-- Glorious! shows them all anyways
			["sym"] = {{"partial_achievement",7439}},	-- Glorious!
			["rank"] = 1,
		}),
		ach(7438, {	-- Could We Find More Like That?
			["_noautomation"] = true,	-- Glorious! shows them all anyways
			["sym"] = {{"partial_achievement",7439}},	-- Glorious!
			["rank"] = 8,
		}),
		ach(7439, {	-- Glorious!
			["rank"] = 56,
		}),
		
		-- Daily Doing
		ach(7285),	-- Every Day I'm Pand-a-ren
		
		-- Treasure Hunting
		ach(7281, {	-- Lost and Found
			["_noautomation"] = true,	-- Is Another Man's Treasure shows them all anyways
			["sym"] = {{"partial_achievement",7284}},	-- Is Another Man's Treasure
			["rank"] = 1,
		}),
		ach(7282, {	-- Finders Keepers
			["_noautomation"] = true,	-- Is Another Man's Treasure shows them all anyways
			["sym"] = {{"partial_achievement",7284}},	-- Is Another Man's Treasure
			["rank"] = 5,
		}),
		ach(7283, {	-- One Man's Trash...
			["_noautomation"] = true,	-- Is Another Man's Treasure shows them all anyways
			["sym"] = {{"partial_achievement",7284}},	-- Is Another Man's Treasure
			["rank"] = 10,
		}),
		ach(7284, {	-- Is Another Man's Treasure
			["rank"] = 20,
			["groups"] = {
				title(200),	-- the Relic Hunter
			},
		}),
		ach(7994, {	-- Treasure of Pandaria
			["_noautomation"] = true,	-- Riches of Pandaria shows them all anyways
			["sym"] = {{"partial_achievement",7997}},	-- Riches of Pandaria
			["rank"] = 1,
		}),
		ach(7995, {	-- Fortune of Pandaria
			["_noautomation"] = true,	-- Riches of Pandaria shows them all anyways
			["sym"] = {{"partial_achievement",7997}},	-- Riches of Pandaria
			["rank"] = 5,
		}),
		ach(7996, {	-- Bounty of Pandaria
			["_noautomation"] = true,	-- Riches of Pandaria shows them all anyways
			["sym"] = {{"partial_achievement",7997}},	-- Riches of Pandaria
			["rank"] = 10,
		}),
		ach(7997),	-- Riches of Pandaria
		ach(6350),	-- To All the Squirrels I Once Caressed? (automated)
	}),
}))))
