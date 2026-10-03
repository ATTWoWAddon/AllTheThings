-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(238, {	-- The Stockade
		["lore"] = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
		["icon"] = 136358,
		["zone-text-areaID"] = 717,	-- The Stockade
		["zone-text-names"] = {
			"Stormwind Stockade",	-- enUS
		},
		["mapID"] = MAP.THE_STOCKADE,
		["coord"] = { 51.6, 69.4, MAP.STORMWIND_CITY },
		["lvl"] = 15,
		["groups"] = {
			n(QUESTS, {
				q(389, {	-- Bazil Thredd
					["sourceQuest"] = 373,	-- The Unsent Letter
					["qg"] = 1646,	-- Baros Alexston
					["coords"] = { 57.7, 47.9, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(377, {	-- Crime and Punishment
					["qg"] = 270,	-- Councilman Millstipe
					["coord"] = { 72.0, 46.8, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Hand of Dextren Ward
							["provider"] = { "i", 3628 },	-- Hand of Dextren Ward
						}),
						i(2906),	-- Darkshire Mail Leggings
						i(2033),	-- Ambassador's Boots
					},
				}),
				q(387, {	-- Quell The Uprising
					["qg"] = 1719,	-- Warden Thelwater
					["coord"] = { 51.6, 69.4, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(388, {	-- The Color of Blood
					["qg"] = 1721,	-- Nikova Raskol
					["coord"] = { 76.6, 60.4, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/10 Red Wool Bandana
							["provider"] = { "i", 2909 },	-- Red Wool Bandana
							["crs"] = {
								1716,	-- Bazil Thredd
								1720,	-- Bruegal Ironknuckle
								1707,	-- Defias Captive
								1711,	-- Defias Convict
								1708,	-- Defias Inmate
								1715,	-- Defias Insurgent
								1706,	-- Defias Prisoner
								1663,	-- Dextren Ward
							},
						}),
					},
				}),
				q(378, {	-- The Fury Runs Deep
					["sourceQuest"] = 303,	-- The Dark Iron War
					["qg"] = 1074,	-- Motley Garmason
					["coord"] = { 49.8, 18.2, MAP.WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Deepfury
							["provider"] = { "i", 3640 },	-- Head of Deepfury
						}),
						i(1264),	-- Headbasher
						i(3562),	-- Belt of Vindication
					},
				}),
				q(391, {	-- The Stockade Riots
					["sourceQuest"] = 389,	-- Bazil Thredd
					["qg"] = 1719,	-- Warden Thelwater
					["coord"] = { 51.6, 69.4, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Bazil Thredd
							["provider"] = { "i", 2926 },	-- Head of Bazil Thredd
						}),
					},
				}),
				q(386, {	-- What Comes Around...
					["qg"] = 859,	-- Guard Berton
					["coord"] = { 21.2, 46.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Targorr
							["provider"] = { "i", 3630 },	-- Head of Targorr
						}),
						i(1317),	-- Hardened Root Staff
						i(3400),	-- Lucine Longsword
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1076),	-- Defias Renegade Ring
				i(274092, {	-- Sharpened Cutlery
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(1720, {	-- Bruegal Ironknuckle
				["description"] = "This is a rare that was not always present.",
				["groups"] = {
					i(2942),	-- Iron Knuckles
					i(3228),	-- Jimmied Handcuffs
					i(2941),	-- Prison Shank
				},
			}),
			n(1666, {	-- Kam Deepfury
				i(3640),	-- Head of Deepfury
				i(273808, {	-- Bridgebreaker Bindings
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(2280),	-- Kam's Walking Stick
			}),
			n(1663, {	-- Dextren Ward
				i(3628),	-- Hand of Dextren Ward
			}),
			n(1717, {	-- Hamhock
				i(273809, {	-- Hamhock's Cleaver
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273810, {	-- Ogre Grips
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(1696, {	-- Targorr the Dread
				i(3630),	-- Head of Targorr
				i(273805, {	-- Blackrock Harness
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273806, {	-- Dark Horde Band
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273804, {	-- Executioner Mantle
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273820, {	-- Nightskulker Ring
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(1716, {	-- Bazil Thredd
				i(2926),	-- Head of Bazil Thredd
				i(273827, {	-- Debt Collector
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273829, {	-- Concealed Hand Crossbow
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273824, {	-- Defias Jailbreakers
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273825, {	-- Red Wool Cloak
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
		},
	}),
});
