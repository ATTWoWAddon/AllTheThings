-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local STRUNRAAN = 2515
local BASRIKRON = 2506
local BAZUAL = 2517
local LISKANOTH = 2518
local ELDERS = 2531
local AUROSTAR = 2562

------ EncounterToCRS ------
local EncounterToCRS = {
	[STRUNRAAN] = {
		193534,	-- Strunraan, The Sky's Misery
	},
	[BASRIKRON] = {
		193535,	-- Basrikron, The Shale Wing
	},
	[BAZUAL] = {
		193532,	-- Bazual, The Dreaded Flame
	 },
	[LISKANOTH] = {
		193533,	-- Liskanoth, The Futurebane
	},
	[ELDERS] = {
		199853,	-- Gholna
		199855,	-- Vakan
	},
	[AUROSTAR] = {
		209574,	-- Aurostor, The Hibernator
	},
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[STRUNRAAN] = {
		i(200687),	-- Stormshale Cuffs
		i(200733),	-- Storm Chaser's Waistguard
		i(200688),	-- Tights of Twisting Winds
		i(200734),	-- Striders of the Sky's Misery
		i(200676),	-- Static-Charged Scale
	},
	[BASRIKRON] = {
		i(200762),	-- Earthspeaker's Brooch
		i(200742),	-- Hardened Shale Breastplate
		i(200740),	-- Petrified Bracelets
		i(200736),	-- Belt of Living Earth
		i(200739),	-- Stony Cragwalkers
	},
	[BAZUAL] = {
		i(200654),	-- Magmatic Vestments
		i(200663),	-- Shackles of the Dreaded Flame
		i(200660),	-- Cinderfang Wrap
		i(200661),	-- Basalt Brood Stompers
		i(200761),	-- Smoldering Sulfuron Signet
	 },
	[LISKANOTH] = {
		i(200745),	-- Horns of the Futurebane
		i(200763),	-- Frosted Scale Drape
		i(200744),	-- Glacial Bindings
		i(200746),	-- Icebound Girdle
		i(200743),	-- Frozen Footwraps
	},
	[ELDERS] = {
		i(204418),	-- Ashen Zaralek Cuirass
		i(204426),	-- Blazestalker's Smelted Cleats
		i(204419),	-- Cavernous Foliage Wristbands
		i(204425),	-- Crown of the Twin Elders
		i(204431),	-- Epaulets of Draconic Conquest
		i(204408),	-- Gholna's Lavaborne Legwraps
		i(204409),	-- Heatbinder's Burning Slippers
		i(204432),	-- Vakan's Shale Greatbelt
	},
	[AUROSTAR] = {
		ig(210751),	-- Mark of the Hibernating Runebear (CI!)
		ig(210433),	-- Visage of Aurostor (COSMETIC!)
		ig(210480),	-- Flourishing Whimsydrake: Sunrise Scales (MM!)
		i(208440),	-- Aurostor's Sleeping Knickers
		i(208437),	-- Crown of Freya's Chosen
		i(208436),	-- Flame-Etched Breastplate
		i(208435),	-- Forgotten Jalgar's Girdle
		i(208438),	-- Grasps of Awakened Fury
		i(208429),	-- Mossen Rage Waistguard
		i(208441),	-- Restful Dozer's Shoes
		i(208439),	-- Rousing Earth Striders
		i(208443),	-- Slumbering Ursine Talisman
	},
}

------ EncounterCoords ------
local EncounterCoords = {
	[STRUNRAAN] = { 82.0, 76.0, OHNAHRAN_PLAINS },
	[BASRIKRON] = { 55.0, 77.7, THE_WAKING_SHORES },
	[BAZUAL] = { 77.7, 35.8, THE_AZURE_SPAN },
	[LISKANOTH] = { 53.7, 64.5, 2085 },
	[ELDERS] = { 27.5, 44.4, ZARALEK_CAVERN },
	[AUROSTAR] = { 39.6, 54.1, EMERALD_DREAM },
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossWorldQuest =
InstanceHelper.Boss, InstanceHelper.BossWorldQuest

InstanceHelper.Coords = EncounterCoords

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["g"] = bubbleDownFiltered({
			["isRaid"] = true,
			["isWeekly"] = true,
		},FILTERFUNC_questIDORencounterID,{
			Boss(STRUNRAAN, {	-- Strunraan, The Sky's Misery
				["questID"] = 72055,
			}),
			BossWorldQuest(STRUNRAAN, 69929),	-- Strunraan (WQ)
			Boss(BASRIKRON, {	-- Basrikron, The Shale Wing
				["questID"] = 72056,
			}),
			BossWorldQuest(BASRIKRON, 69930),	-- Basrikron (WQ)
			Boss(BAZUAL, {	-- Bazual, The Dreaded Flame
				["questID"] = 72054,
			}),
			BossWorldQuest(BAZUAL, 69927),	-- Bazual (WQ)
			Boss(LISKANOTH, {	-- Liskanoth, The Futurebane
				["questID"] = 72057,
			}),
			BossWorldQuest(LISKANOTH, 69928),	-- Liskanoth (WQ)
			Boss(ELDERS, {	-- The Zaqali Elders
				["timeline"] = { ADDED_10_1_0 },
			}),
			BossWorldQuest(ELDERS, 74892, {	-- Zaqali Elders (WQ)
				["timeline"] = { ADDED_10_1_0 },
			}),
			Boss(AUROSTAR, {	-- Aurostor, The Hibernator
				["timeline"] = { ADDED_10_2_0 },
			}),
			BossWorldQuest(AUROSTAR, 76367, {	-- Hibernation Heroes
				["timeline"] = { ADDED_10_2_0 },
			}),
		}),
	}),
})));