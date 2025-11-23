-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 } }, {
	n(CHALLENGE_MODE, {
		ach(8895, {	-- Challenge Warlord
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8879,	-- Auchindoun Challenger
				8875,	-- Bloodmaul Slag Mines Challenger
				8887,	-- Grimrail Depot Challenger
				8997,	-- Iron Docks Challenger
				8883,	-- Shadowmoon Burial Grounds Challenger
				8871,	-- Skyreach Challenger
				9001,	-- The Everbloom Challenger
				8891,	-- Upper Blackrock Spire Challenger
			}},
		}),
		ach(8897, {	-- Challenge Warlord: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8880,	-- Auchindoun: Bronze
				8876,	-- Bloodmaul Slag Mines: Bronze
				8888,	-- Grimrail Depot: Bronze
				8998,	-- Iron Docks: Bronze
				8884,	-- Shadowmoon Burial Grounds: Bronze
				8872,	-- Skyreach: Bronze
				9002,	-- The Everbloom: Bronze
				8892,	-- Upper Blackrock Spire: Bronze
			}},
			["groups"] = {
				title(290),	-- <Name> the Indomitable
			},
		}),
		ach(8898, {	-- Challenge Warlord: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8881,	-- Auchindoun: Silver
				8877,	-- Bloodmaul Slag Mines: Silver
				8889,	-- Grimrail Depot: Silver
				8999,	-- Iron Docks: Silver
				8885,	-- Shadowmoon Burial Grounds: Silver
				8873,	-- Skyreach: Silver
				9003,	-- The Everbloom: Silver
				8893,	-- Upper Blackrock Spire: Silver
			}},
			["groups"] = {
				i(116791),	-- Challenger's War Yeti (MOUNT!)
			},
		}),
		ach(8899, {	-- Challenge Warlord: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8882,	-- Auchindoun: Gold
				8878,	-- Bloodmaul Slag Mines: Gold
				8880,	-- Grimrail Depot: Gold
				9000,	-- Iron Docks: Gold
				8886,	-- Shadowmoon Burial Grounds: Gold
				8874,	-- Skyreach: Gold
				9004,	-- The Everbloom: Gold
				8894,	-- Upper Blackrock Spire: Gold
			}},
			["groups"] = {
				i(118401),	-- Arcana Shard Spire
				i(118396),	-- Bloodmaw Gargoyle
				i(118395),	-- Claws of Creation
				i(118409),	-- Cloudsong Glaive
				i(118411),	-- Crystal-Shot Longrifle
				i(118403),	-- Dimension-Ripper's Staff
				i(118408),	-- Elemental Crescent
				i(118397),	-- Equus
				i(118413),	-- Flamegrinder
				i(118402),	-- Greatstaff of Infinite Knowledge
				i(118412),	-- Greatsword of the Inferno
				i(118404),	-- Living Longbow
				i(118405),	-- Shifting Felblade
				i(118398),	-- Soul Eater
				i(118399),	-- Sunblade
			},
		}),
		ach(8879),	-- Auchindoun Challenger
		ach(8880),	-- Auchindoun: Bronze
		ach(8881),	-- Auchindoun: Silver
		ach(8882, {	-- Auchindoun: Gold
			spell(159897),	-- Path of the Vigilant
		}),
		challengemaster(ach(9622, {		-- Challenge Master: Auchindoun
			title(293),	-- <Name> the Soul Preserver
		})),
		ach(8875),	-- Bloodmaul Slag Mines Challenger
		ach(8876),	-- Bloodmaul Slag Mines: Bronze
		ach(8877),	-- Bloodmaul Slag Mines: Silver
		ach(8878, {	-- Bloodmaul Slag Mines: Gold
			spell(159895),	-- Path of the Bloodmaul
		}),
		challengemaster(ach(9620, {		-- Challenge Master: Bloodmaul Slag Mines
			title(291),	-- <Name> the Mine Master
		})),
		ach(8887),	-- Grimrail Depot Challenger
		ach(8888),	-- Grimrail Depot: Bronze
		ach(8889),	-- Grimrail Depot: Silver
		ach(8890, {	-- Grimrail Depot: Gold
			spell(159900),	-- Path of the Dark Rail
		}),
		challengemaster(ach(9625, {		-- Challenge Master: Grimrail Depot
			title(299),	-- <Name> the Grimrail Suplexer
		})),
		ach(8997),	-- Iron Docks Challenger
		ach(8998),	-- Iron Docks: Bronze
		ach(8999),	-- Iron Docks: Silver
		ach(9000, {	-- Iron Docks: Gold
			spell(159896),	-- Path of the Iron Prow
		}),
		challengemaster(ach(9621, {		-- Challenge Master: Iron Docks
			title(292),	-- Dockmaster <Name>
		})),
		ach(8883),	-- Shadowmoon Burial Grounds Challenger
		ach(8884),	-- Shadowmoon Burial Grounds: Bronze
		ach(8885),	-- Shadowmoon Burial Grounds: Silver
		ach(8886, {	-- Shadowmoon Burial Grounds: Gold
			spell(159899),	-- Path of the Crescent Moon
		}),
		challengemaster(ach(9626, {		-- Challenge Master: Shadowmoon Burial Grounds
			title(295),	-- Spiritwalker <Name>
		})),
		ach(8871),	-- Skyreach Challenger
		ach(8872),	-- Skyreach: Bronze
		ach(8873),	-- Skyreach: Silver
		ach(8874, {	-- Skyreach: Gold
			spell(159898),	-- Path of the Skies
		}),
		challengemaster(ach(9623, {		-- Challenge Master: Skyreach
			title(294),	-- <Name>, Scion of Rukhmar
		})),
		ach(9001),	-- The Everbloom Challenger
		ach(9002),	-- The Everbloom: Bronze
		ach(9003),	-- The Everbloom: Silver
		ach(9004, {	-- The Everbloom: Gold
			spell(159901),	-- Path of the Verdant
		}),
		challengemaster(ach(9624, {		-- Challenge Master: The Everbloom
			title(298),	-- <Name> the Violet Guardian
		})),
		ach(8891),	-- Upper Blackrock Spire Challenger
		ach(8892),	-- Upper Blackrock Spire: Bronze
		ach(8893),	-- Upper Blackrock Spire: Silver
		ach(8894, {	-- Upper Blackrock Spire: Gold
			spell(159902),	-- Path of the Burning Mountain
		}),
		challengemaster(ach(9627, {		-- Challenge Master: Upper Blackrock Spire
			-- title_gendered(296, 297),	-- <Name>, Lord of Blackrock / <Name>, Lady of Blackrock
			title_male(296),	-- <Name>, Lord of Blackrock
			title_female(297),	-- <Name>, Lady of Blackrock
		})),
	}),
})));
