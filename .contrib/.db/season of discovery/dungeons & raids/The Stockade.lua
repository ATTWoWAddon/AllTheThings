-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

instanceroot(238, {	-- The Stockade
	lore = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
	zoneTextAreaID = 717,	-- The Stockade
	zoneTextNames = {
		"Stormwind Stockade",	-- enUS
	},
	mapID = THE_STOCKADE,
	coords = {
		{ 41.2, 58.0, STORMWIND_CITY },
	},
	lvl = 15,
	groups = {
		n(QUESTS, {
			q(389, {	-- Bazil Thredd
				sourceQuest = 373,	-- The Unsent Letter
				qg = 1646,	-- Baros Alexston
				coords = {
					{ 49.0, 30.2, STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(377, {	-- Crime and Punishment
				qg = 270,	-- Councilman Millstipe
				coord = { 72.0, 46.8, DUSKWOOD },
				races = ALLIANCE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Hand of Dextren Ward
						provider = { "i", 3628 },	-- Hand of Dextren Ward
					}),
					i(2906),	-- Darkshire Mail Leggings
					i(2033),	-- Ambassador's Boots
				},
			}),
			q(387, {	-- Quell The Uprising
				qg = 1719,	-- Warden Thelwater
				coords = {
					{ 41.2, 58.0, STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				lvl = 22,
			}),
			q(388, {	-- The Color of Blood
				qg = 1721,	-- Nikova Raskol
				coords = {
					{ 73.6, 47.7, STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				lvl = 22,
				groups = {
					objective(1, {	-- 0/10 Red Wool Bandana
						provider = { "i", 2909 },	-- Red Wool Bandana
						crs = {
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
				sourceQuest = 303,	-- The Dark Iron War
				qg = 1074,	-- Motley Garmason
				coord = { 49.8, 18.2, WETLANDS },
				races = ALLIANCE_ONLY,
				lvl = 25,
				groups = {
					objective(1, {	-- 0/1 Head of Deepfury
						provider = { "i", 3640 },	-- Head of Deepfury
					}),
					i(1264),	-- Headbasher
					i(3562),	-- Belt of Vindication
				},
			}),
			q(391, {	-- The Stockade Riots
				sourceQuest = 389,	-- Bazil Thredd
				qg = 1719,	-- Warden Thelwater
				coords = {
					{ 41.2, 58.0, STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				lvl = 16,
				groups = {
					objective(1, {	-- 0/1 Head of Bazil Thredd
						provider = { "i", 2926 },	-- Head of Bazil Thredd
					}),
				},
			}),
			q(386, {	-- What Comes Around...
				qg = 859,	-- Guard Berton
				coord = { 26.0, 43.0, REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 22,
				groups = {
					objective(1, {	-- 0/1 Head of Targorr
						provider = { "i", 3630 },	-- Head of Targorr
					}),
					i(1317),	-- Hardened Root Staff
					i(3400),	-- Lucine Longsword
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(1076),	-- Defias Renegade Ring
		}),
		n(1720, {	-- Bruegal Ironknuckle
			description = "This is a rare that was not always present.",
			groups = {
				i(2942),	-- Iron Knuckles
				i(3228),	-- Jimmied Handcuffs
				i(2941),	-- Prison Shank
			},
		}),
		n(1666, {	-- Kam Deepfury
			groups = {
				i(3640),	-- Head of Deepfury
				i(2280),	-- Kam's Walking Stick
			},
		}),
		n(1663, {	-- Dextren Ward
			groups = {
				i(3628),	-- Hand of Dextren Ward
			},
		}),
		n(1717),	-- Hamhock
		n(1696, {	-- Targorr the Dread
			groups = {
				i(3630),	-- Head of Targorr
			},
		}),
		n(1716, {	-- Bazil Thredd
			groups = {
				ach(633, {	-- Stormwind Stockade
					races = ALLIANCE_ONLY,
				}),
				i(2926),	-- Head of Bazil Thredd
			},
		}),
	},
});

