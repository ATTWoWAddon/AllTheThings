-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_LANDFALL, n(ACHIEVEMENTS, {
		ach(6924, {	-- 100,000 Valor Points
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
		}),
		ach(6927, {		-- Glory of the Pandaria Hero
			["sym"] = {{"meta_achievement",
				6925,	-- Pandaria Dungeon Hero
				6460,	-- Hydrophobia
				6475,	-- Cleaning Up
				6671,	-- Seeds of Doubt
				6420,	-- Hopocalypse Now!
				6089,	-- Keep Rollin' Rollin' Rollin'
				6400,	-- How Did He Get Up There?
				6402,	-- Ling-Ting's Herbal Journey
				6478,	-- Glintrok N' Roll
				6736,	-- What Does This Button Do?
				6713,	-- Quarrelsome Quilen Quintet
				6477,	-- Respect
				6472,	-- The Obvious Solution
				6471,	-- Hate Leads to Suffering
				6479,	-- Bomberman
				6476,	-- Conscriptinator
				6684,	-- Humane Society
				6427,	-- Mosh Pit
				6928,	-- Burning Man
				6929,	-- And Stay Dead!
				6531,	-- Attention to Detail
				6394,	-- Rattle No More
				6396,	-- Sanguinarian
				6821,	-- School's Out Forever
				6688,	-- Where's My Air Support?
				6485,	-- Return to Sender
				6822,	-- Run with the Wind
				6715,	-- Polyformic Acid Science
			}},
			["groups"] = {
				i(87769),	-- Crimson Cloud Serpent (MOUNT!)
			},
		}),
		ach(6932, {	-- Glory of the Pandaria Raider
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6823,	-- Must Love Dogs
				6674,	-- Anything You Can Do, I Can Do Better...
				7056,	-- Sorry, Were You Looking for This?
				6686,	-- Straight Six
				6937,	-- Overzealous
				6936,	-- Candle in the Wind
				6553,	-- Like an Arrow to the Face
				6683,	-- Less Than Three
				6518,	-- I Heard You Like Amber...
				6922,	-- Timing is Everything
				6717,	-- Power Overwhelming
				6824,	-- Face Clutchers
				6933,	-- Who's Got Two Green Thumbs?
				6825,	-- The Mind-Killer
				6719,	-- Heroic: Stone Guard
				6720,	-- Heroic: Feng the Accursed
				6721,	-- Heroic: Gara'jal the Spiritbinder
				6722,	-- Heroic: Four Kings
				6723,	-- Heroic: Elegon
				6724,	-- Heroic: Will of the Emperor
				6725,	-- Heroic: Imperial Vizier Zor'lok
				6726,	-- Heroic: Blade Lord Ta'yak
				6727,	-- Heroic: Garalon
				6728,	-- Heroic: Wind Lord Mel'jarak
				6729,	-- Heroic: Amber-Shaper Un'sok
				6730,	-- Heroic: Grand Empress Shek'zeer
				6731,	-- Heroic: Protectors of the Endless
				6732,	-- Heroic: Tsulong
				6733,	-- Heroic: Lei Shi
			}},
			["g"] = {
				i(87773),	-- Heavenly Crimson Cloud Serpent (MOUNT!)
			},
		}),
		ach(6925, {	-- Pandaria Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6758,	-- Heroic: Temple of the Jade Serpent
				6456,	-- Heroic: Stormstout Brewery
				6756,	-- Heroic: Mogu'shan Palace
				6470,	-- Heroic: Shado-Pan Monastery
				6759,	-- Heroic: Gate of the Setting Sun
				6760,	-- Heroic: Scarlet Halls
				6761,	-- Heroic: Scarlet Monastery
				6762,	-- Heroic: Scholomance
				6763,	-- Heroic: Siege of Niuzao Temple
			}},
		}),
		ach(6715, sharedData({	-- Polyformic Acid Science
			["cost"] = {
				{ "i", 85589, 1 },	-- Nearly Full Vial of Polyformic Acid
				{ "i", 85592, 1 },	-- Half Full Vial of Polyformic Acid
				{ "i", 85593, 1 },	-- Nearly Empty Vial of Polyformic Acid
			},
		},{
			crit(19603, {	-- Commander Ri'mok
				["_encounter"] = { 676, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19605, {	-- Liu Flameheart
				["_encounter"] = { 658, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19606, {	-- Gu Cloudstrike
				["_encounter"] = { 673, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19609, {	-- Trial of the King
				["_encounter"] = { 708, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19604, {	-- Vizier Jin'bak
				["_encounter"] = { 693, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19608, {	-- Yan-Zhu the Uncasked
				["_encounter"] = { 670, DIFFICULTY.DUNGEON.HEROIC },
			}),
		})),
		ach(13469, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Raiding with Leashes VI: Pets of Pandaria
			i(167057),	-- Happiness (PET!)
			crit(44269, {	-- Stoneclaw
				["provider"] = { "i", 167047 },
			}),
			crit(44270, {	-- Wayward Spirit
				["provider"] = { "i", 167048 },
			}),
			crit(44271, {	-- Comet
				["provider"] = { "i", 167049 },
			}),
			crit(44272, {	-- Baoh-Xi
				["provider"] = { "i", 167050 },
			}),
			crit(44273, {	-- Azure Windseeker
				["provider"] = { "i", 167051 },
			}),
			crit(44274, {	-- Spirit of the Spring
				["provider"] = { "i", 167052 },
			}),
			crit(44275, {	-- Kor'thik Swarmling
				["provider"] = { "i", 167058 },
			}),
			crit(44276, {	-- Amberglow Stinger
				["provider"] = { "i", 167053 },
			}),
			crit(44277, {	-- Spawn of Garalon
				["provider"] = { "i", 167054 },
			}),
			crit(44278, {	-- Living Amber
				["provider"] = { "i", 167055 },
			}),
			crit(44279, {	-- Ravenous Prideling
				["provider"] = { "i", 167056 },
			}),
		})),
		ach(11757, {["timeline"] = {ADDED_7_2_0}}),	-- Sha of Fabulous (Heart of Fear and Terrace of Endless Spring)
	})),
})));