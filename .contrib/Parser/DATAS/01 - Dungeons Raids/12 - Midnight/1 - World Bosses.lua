-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CRAGSPINE = 2782
local LUASHAL = 2827
local PREDAXUS = 2828
local THORMBELAN = 2829

------ EncounterToCRS ------
local EncounterToCRS = {
	[CRAGSPINE] = {
		244424,
	},
	[LUASHAL] = {
		244762,
	},
	[PREDAXUS] = {
		248864
	},
	[THORMBELAN] = {
		249776
	},
	--TODO Nexus-Captain Leth'ir Adjutant Mertei
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[CRAGSPINE] = {
		i(250461),	-- Chain of the Ancient Watcher
		i(250446),	-- Cragtender Bulwark
		i(250450),	-- Forest Sentinel's Savage Longbow
		i(266440),	-- Idol of Growth (QS!)
	},
	[LUASHAL] = {
		i(250451),	-- Dawncrazed Beast Cleaver
		i(250447),	-- Radiant Eversong Scepter
		i(250453),	-- Scepter of the Unbound Light
	},
	[PREDAXUS] = {
		i(250454),	-- Devouring Vanguard's Soulcleaver
		i(250460),	-- Encroaching Shadow Signet
		i(250448),	-- Voidbender's Spire
	},
	[THORMBELAN] = {
		i(250455),	-- Beastly Blossombarb
		i(250452),	-- Blooming Thornblade
		i(250449),	-- Skulking Nettledirk
	},
}

------ EncounterCoords ------
local EncounterCoords = {
	[CRAGSPINE] = { { 45.8, 47.4, MAP.MIDNIGHT.ZULAMAN } },
	[LUASHAL] = { { 45.2, 60.0, MAP.MIDNIGHT.EVERSONG_WOODS } },
	[PREDAXUS] = { { 49.0, 86.8, MAP.MIDNIGHT.VOIDSTORM } },
	[THORMBELAN] = { { 38.8, 66.6, MAP.MIDNIGHT.HARANDAR } },
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossWorldQuest =
InstanceHelper.Boss, InstanceHelper.BossWorldQuest
InstanceHelper.Coords = EncounterCoords

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	n(WORLD_BOSSES, {
		["timeline"] = { ADDED_12_0_1_LAUNCH },
		["groups"] = bubbleDownFiltered({
			["isRaid"] = true,
			["isWeekly"] = true,
		},FILTERFUNC_questIDORencounterID,{
			n(COMMON_BOSS_DROPS, {
				["crs"] = appendAllGroups(
					nil,
					EncounterToCRS[CRAGSPINE],
					EncounterToCRS[LUASHAL],
					EncounterToCRS[PREDAXUS],
					EncounterToCRS[THORMBELAN]
				),
				["groups"] = {
					i(250459),	-- Bramblestalker's Feathered Cowl
					i(250458),	-- Host Commander's Casque
					i(250456),	-- Wretched Scholar's Gilded Robe
					i(250457),	-- Devouring Outrider's Chausses
					i(250462),	-- Forgotten Farstrider's Insignia
				},
			}),
			Boss(CRAGSPINE, {	-- Cragspine
				["questID"] = 92128,
			}),
			BossWorldQuest(CRAGSPINE, 92123),	-- Cragspine WQ
			Boss(LUASHAL, {	-- Lu'ashal
				["questID"] = 92127,	-- maybe this is something else since it's account-wide...
			}),
			BossWorldQuest(LUASHAL, 92560),	-- Lu'ashal WQ
			Boss(PREDAXUS, {	-- Predaxus
				["questID"] = 92130,
			}),
			BossWorldQuest(PREDAXUS, 92636),	-- Predaxus WQ
			Boss(THORMBELAN, {	-- Thormbelan
				["questID"] = 92129,
			}),
			BossWorldQuest(THORMBELAN, 92034),	-- Thormbelan WQ
		}),
	}),
	n(WORLD_BOSSES, {
		["groups"] = sharedData({
			["isRaid"] = true,
			["isWeekly"] = true,
		}, {
			n(260875, {	-- Nexus-Captain Leth'ir
				["timeline"] = { ADDED_12_0_7 },
				["coord"] = { 78.4, 69.2, NAIGTAL },
				["groups"] = {
					d(DIFFICULTY.RAID.MULTI.NORMAL_HEROIC, {
						-- Shared appearances
						i(275216),	-- Phaseblade's Edges
						i(275217),	-- Nexus-Captain's Phaseblade
						i(275218),	-- Mertei's Command Baton
						i(275219),	-- Pertinax's Beast Prod
						i(275220),	-- Imperator's Voidedged Cutlass
						i(275221),	-- Beast Collector's Cudgel
						i(275222),	-- Base Commander's Decapitator
						i(275223),	-- Phasebolt Thrower
					}),
					d(DIFFICULTY.RAID.NORMAL, {
						-- Normal appearances
						i(275224),	-- Mertei's Adjutant Leggings
						i(275225),	-- Toxic Voidscythe Spaulders
						i(275226),	-- Shredclaw Handler's Grips
						i(275227),	-- Leth'ir's Dress Sabatons
					}),
					d(DIFFICULTY.RAID.HEROIC, {
						["groups"] = {
							-- Heroic appearances
							i(275224),	-- Mertei's Adjutant Leggings
							i(275225),	-- Toxic Voidscythe Spaulders
							i(275226),	-- Shredclaw Handler's Grips
							i(275227),	-- Leth'ir's Dress Sabatons
							n(UPGRADE, bubbleDownSelf({ ["modID"] = 6, ["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 } }, {
								-- Mythic appearances
								i(275224),	-- Mertei's Adjutant Leggings
								i(275225),	-- Toxic Voidscythe Spaulders
								i(275226),	-- Shredclaw Handler's Grips
								i(275227),	-- Leth'ir's Dress Sabatons
							})),
						},
					}),
				},
			}),
			n(260833, {	-- Adjutant Mertei
				["timeline"] = { ADDED_12_0_7 },
				["coord"] = { 76.2, 68.8, NAIGTAL },
				["sym"] = {{"select", "npcID", 260875},{"pop"}},	-- Nexus-Captain Leth'ir
			}),
			n(261072, {	-- Imperator Pertinax
				["timeline"] = { ADDED_12_0_7 },
				["coord"] = { 40.2, 77.5, 2618 },	-- Void Acropolis (Lower)
				["groups"] = {
					d(DIFFICULTY.RAID.MULTI.NORMAL_HEROIC, {
						-- Shared appearances
						i(275216),	-- Phaseblade's Edges
						i(275217),	-- Nexus-Captain's Phaseblade
						i(275218),	-- Mertei's Command Baton
						i(275219),	-- Pertinax's Beast Prod
						i(275220),	-- Imperator's Voidedged Cutlass
						i(275221),	-- Beast Collector's Cudgel
						i(275222),	-- Base Commander's Decapitator
						i(275223),	-- Phasebolt Thrower
					}),
					d(DIFFICULTY.RAID.NORMAL, {
						-- Normal appearances
						i(275224),	-- Mertei's Adjutant Leggings
						i(275225),	-- Toxic Voidscythe Spaulders
						i(275226),	-- Shredclaw Handler's Grips
						i(275227),	-- Leth'ir's Dress Sabatons
					}),
					d(DIFFICULTY.RAID.HEROIC, {
						["groups"] = {
							-- Heroic appearances
							i(275224),	-- Mertei's Adjutant Leggings
							i(275225),	-- Toxic Voidscythe Spaulders
							i(275226),	-- Shredclaw Handler's Grips
							i(275227),	-- Leth'ir's Dress Sabatons
							n(UPGRADE, bubbleDownSelf({ ["modID"] = 6, ["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 } }, {
								-- Mythic appearances
								i(275224),	-- Mertei's Adjutant Leggings
								i(275225),	-- Toxic Voidscythe Spaulders
								i(275226),	-- Shredclaw Handler's Grips
								i(275227),	-- Leth'ir's Dress Sabatons
							})),
						},
					}),
				},
			}),
		}),
	}),
}))
