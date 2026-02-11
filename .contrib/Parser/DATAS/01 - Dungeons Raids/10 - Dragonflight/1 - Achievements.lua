-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(19574, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Awakening the Dragonflight Raids
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19570,	-- Awakened Flames
				19567,	-- Awakened Shadows
				19564,	-- Awakened Storms
			}},
			["groups"] = {
				i(217340),	-- Voyaging Wilderling (MOUNT!)
			},
		})),
		ach(19575, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Heroic: Awakening the Dragonflight Raids
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19571,	-- Heroic: Awakened Flames
				19568,	-- Heroic: Awakened Shadows
				19565,	-- Heroic: Awakened Storms
			}},
			["groups"] = {
				title(557),	-- <Name>, Awakened Hero
			},
		})),
		ach(19576, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mythic: Awakening the Dragonflight Raids
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19572,	-- Mythic: Awakened Flames
				19569,	-- Mythic: Awakened Shadows
				19566,	-- Mythic: Awakened Storms
			}},
			["groups"] = {
				spell(432254),	-- Path of the Primal Prison
				spell(432257),	-- Path of the Bitter Legacy
				spell(432258),	-- Path of the Scorching Dream
			},
		})),
		ach(16294, {	-- Dragonflight Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16270,	-- Heroic: Algeth'ar Academy
				16256,	-- Heroic: Brackenhide Hollow
				16261,	-- Heroic: Halls of Infusion
				16264,	-- Heroic: Neltharus
				16267,	-- Heroic: Ruby Life Pools
				16273,	-- Heroic: The Azure Vault
				16276,	-- Heroic: The Nokhud Offensive
				16279,	-- Heroic: Uldaman: Legacy of Tyr
			}},
		}),
		ach(16295, {	-- Glory of the Dragonflight Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16434,	-- See Me After Class
				16329,	-- Duck, Duck, Spruce!
				16441,	-- Squad Goals
				16296,	-- Growlbossify
				16430,	-- All Bark, All Bite
				16404,	-- So You Can Kill This in a Way That Matters...
				16517,	-- Toxicity Strike Team
				16426,	-- Hungry Hungry Hornswog
				16427,	-- Go With the Flow
				16438,	-- Knowledge is... Preserved?
				16432,	-- Ready for Raiding VIII
				16453,	-- Liquid Hot Magma
				16440,	-- Are You My Broodmother?
				16402,	-- Dragon Kill Points
				16320,	-- Does Steam Do Fire Damage?
				16330,	-- You Must Be Made of Hide
				16445,	-- Icy What You Did There
				16331,	-- The Cracked Crystal
				16447,	-- What Are The Chances...
				16456,	-- Weapons of the Maruukai
				16620,	-- Ohuna Incubation
				16602,	-- Nokhud Deed Goes Unnoticed
				16337,	-- It's a Trogg Eat Trogg World
				16282,	-- No, You're Stunning!
				16281,	-- Like Sands Through the Hourglass
			}},
			["groups"] = {
				i(192784),	-- Shellack (MOUNT!)
			},
		}),
		ach(16339, {	-- Myths of the Dragonflight Dungeons
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16271,	-- Mythic: Algeth'ar Academy
				16257,	-- Mythic: Brackenhide Hollow
				16262,	-- Mythic: Halls of Infusion
				16265,	-- Mythic: Neltharus
				16268,	-- Mythic: Ruby Life Pools
				16274,	-- Mythic: The Azure Vault
				16277,	-- Mythic: The Nokhud Offensive
				16280,	-- Mythic: Uldaman: Legacy of Tyr
			}},
		}),
		-- #IF AFTER DF
		ach(11162),	-- Keystone Master
		ach(11185),	-- Keystone Conqueror
		ach(11184),	-- Keystone Challenger
		ach(11183),	-- Keystone Initiate
		-- #ENDIF
	}),
})));
