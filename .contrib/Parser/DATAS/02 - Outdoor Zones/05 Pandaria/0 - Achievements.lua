---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(PANDARIA, applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	-- TODO: lots of these are lacking lots of information! (crs/coords/etc.)
	n(ACHIEVEMENTS, {
		ach(6541),	-- Loremaster of Pandaria (automated)
		ach(6974),	-- Pandaria Explorer [7.0.3] / Explore Pandaria (automated)
		ach(6828, {	-- Pandaren Ambassador (Alliance) (automated)
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(89785, {	-- Pandaren Kite (A) (MOUNT!)
					["races"] = ALLIANCE_ONLY,
				}),
			},
		}),
		ach(6827, {	-- Pandaren Ambassador (Horde) (automated)
			["races"] = HORDE_ONLY,
			["g"] = {
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
		ach(6858),	-- What Is Worth Fighting For
		
		ach(6350, {	-- To All the Squirrels I Once Caressed?
			crit(20817, {	-- Amethyst Spiderling
				["provider"] = { "n", 64798 },	-- Amethyst Spiderling
				["maps"] = { KRASARANG_WILDS },
			}),
			crit(20812, {	-- Bandicoon
				["provider"] = { "n", 64782 },	-- Bandicoon
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20821, {	-- Clouded Hedgehog
				["provider"] = { "n", 64803 },	-- Clouded Hedgehog
				["maps"] = { DREAD_WASTES },
			}),
			crit(20811, {	-- Coral Adder
				["provider"] = { "n", 59356 },	-- Coral Adder
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(20827, {	-- Dancing Water Skimmer
				["provider"] = { "n", 65209 },	-- Dancing Water Skimmer
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20822, {	-- Emperor Crab
				["provider"] = { "n", 63329 },	-- Emperor Crab
				["maps"] = { DREAD_WASTES },
			}),
			crit(20826, {	-- Gilded Moth
				["provider"] = { "n", 65205 },	-- Gilded Moth
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20828, {	-- Golden Civet
				["provider"] = { "n", 65206 },	-- Golden Civet
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20824, {	-- Leopard Tree Frog
				["provider"] = { "n", 64774 },	-- Leopard Tree Frog
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(20813, {	-- Luyu Moth
				["provider"] = { "n", 63289 },	-- Luyu Moth
				["maps"] = { KRASARANG_WILDS },
			}),
			crit(20825, {	-- Malayan Quillrat
				["provider"] = { "n", 64784 },	-- Malayan Quillrat
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(18979, {	-- Marsh Fiddler
				["provider"] = { "n", 64786 },	-- Marsh Fiddler
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20819, {	-- Mongoose
				["provider"] = { "n", 65191 },	-- Mongoose
				["maps"] = { TOWNLONG_STEPPES },
			}),
			crit(20823, {	-- Resilient Roach
				["provider"] = { "n", 64807 },	-- Resilient Roach
				["maps"] = { DREAD_WASTES },
			}),
			crit(18980, {	-- Shrine Fly
				["provider"] = { "n", 59770 },	-- Shrine Fly
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(18978, {	-- Sifang Otter
				["provider"] = { "n", 64787 },	-- Sifang Otter
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20820, {	-- Yakrat
				["provider"] = { "n", 64802 },	-- Yakrat
				["maps"] = { TOWNLONG_STEPPES },
			}),
		}),
		
		ach(8078, {	-- Zul'Again
			crit(22733, {	-- Zandalari Scouts Slain slain (10) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, Krasarang Wilds, The Jade Forest)
				["provider"] = { "n", 69768 },
			}),
			crit(22942, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69842 },
			}),
			crit(22941, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69841 },
			}),
			crit(22732, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69769 },
			}),
		}),
	}),
}))))