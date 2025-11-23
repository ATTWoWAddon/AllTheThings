-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local ORTA = 2625
local AOH = 2635
local KORDAC = 2637
local SHURRAI = 2636
local GOBFATHER = 2683
local RESHANOR = 2762;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ORTA] = {
		221067,	-- Orta <The Broken Mountain>
	},
	[AOH] = {
		220999,	-- Aggregation of Horrors
	},
	[KORDAC] = {
		221084,	-- Kordac <Dormant Protector>
	},
	[SHURRAI] = {
		221224,	-- Shurrai <Atrocity of the Undersea>
	},
	[GOBFATHER] = {
		231821,	-- The Gobfather <Demodome Champion>
	},
	[RESHANOR] = {
		238319,	-- Reshanor <The Untethered>
	},
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[ORTA] = {
		i(225751),	-- Seal of the Broken Mountain
	},
	[AOH] = {
		i(225749),	-- Seal of the Void-Touched
	},
	[KORDAC] = {
		i(225748),	-- Seal of the Silent Vigil
	},
	[SHURRAI] = {
		i(225750),	-- Seal of the Abyssal Terror
	},
	[GOBFATHER] = {
		i(232730),	-- Cauldron Master Cleats
		i(232727),	-- Cavern Stalker's Trophy Girdle
		i(232732),	-- Champion's Gilded Stompers
		i(232728),	-- Darkfuse Dinner Jacket
		i(232733),	-- Gobfather's Gold Medal
		i(232729),	-- Horn-Adorned Chausses
		i(232725),	-- Pilot's Oiled Trousers
		i(232731),	-- Steadfast Contender's Breastplate
		i(232726),	-- Well-Trodden Mechanic's Shoes
	},
	[RESHANOR] = {
		i(243046),	-- Band of Boundless Hunger
		i(243045),	-- Bygone Wastelander's Girdle
		i(243040),	-- Crystalblight Legguards
		i(243039),	-- Devoured Magi's Cinch
		i(243044),	-- Feasting Fiend's Barbute
		i(243038),	-- Gaze of the Untethered Doom
		i(243043),	-- Shadowguard's Rift Wrap
		i(243041),	-- Umbral Stalker's Footpads
		i(243042),	-- Void-Bound Hauberk
	},
}

------ EncounterCoords ------
local EncounterCoords = {
	[ORTA] = { 18.3, 33.1, NERUBAR },
	[AOH] = { 64.8, 87.0, THE_RINGING_DEEPS },
	[KORDAC] = { 48.8, 61.9, ISLE_OF_DORN },
	[SHURRAI] = { 45.6, 18.4, HALLOWFALL },
	[GOBFATHER] = { 58.9, 11.2, UNDERMINE },
	[RESHANOR] = { 71.8, 48.7, KARESH },
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossWorldQuest =
InstanceHelper.Boss, InstanceHelper.BossWorldQuest

InstanceHelper.Coords = EncounterCoords

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["groups"] = bubbleDownFiltered({
			["isRaid"] = true,
			["isWeekly"] = true,
		},FILTERFUNC_questIDORencounterID,{
			n(COMMON_BOSS_DROPS, {
				["crs"] = appendAllGroups(
					nil,
					EncounterToCRS[AOH],
					EncounterToCRS[KORDAC],
					EncounterToCRS[ORTA],
					EncounterToCRS[SHURRAI]
				),
				["groups"] = {
					i(225733),	-- Abyssal Tendril Tights
					i(225745),	-- Crystal Star Cuisses
					i(225732),	-- Deep Dweller's Tabi
					i(225735),	-- Dornish Warden's Coat
					i(225746),	-- Girdle of the Gleaming Dawn
					i(225731),	-- Lightseeker's Robes
					i(225730),	-- Stone Gaze Ceinture
					i(225734),	-- Sturdy Chitinous Striders
				},
			}),
			Boss(ORTA, {	-- Orta <The Broken Mountain>
				["questID"] = 83468,
			}),
			BossWorldQuest(ORTA, 81624),	-- Orta, the Broken Mountain (WQ)
			Boss(AOH, {	-- Aggregation of Horrors
				["questID"] = 83466,
			}),
			BossWorldQuest(AOH, 82653),	-- Aggregation of Horrors (WQ)
			Boss(KORDAC, {	-- Kordac <Dormant Protector>
				-- ["questID"] = xx,
			}),
			BossWorldQuest(KORDAC, 81630),	-- Activation Protocol (WQ)
			Boss(SHURRAI, {	-- Shurrai <Atrocity of the Undersea>
				["questID"] = 83467,
			}),
			BossWorldQuest(SHURRAI, 81653),	-- Shurrai, Atrocity of the Undersea (WQ)
			Boss(GOBFATHER, {	-- The Gobfather <Demodome Champion>
				["questID"] = 85089,
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
			BossWorldQuest(GOBFATHER, 85088, {	-- The Main Event (WQ)
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
			Boss(RESHANOR, {	-- Reshanor <The Untethered>
				["questID"] = 87352,
				["timeline"] = { ADDED_11_2_0 },
			}),
			BossWorldQuest(RESHANOR, 87354, {	-- Reshanor, the Untethered (WQ)
				["timeline"] = { ADDED_11_2_0 },
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
	n(WORLD_BOSSES, {
		q(89401),	-- First weekly Gobfather account kill for warbound loot
		q(90783),	-- First weekly Reshanor account kill for warbound loot
	}),
})));
