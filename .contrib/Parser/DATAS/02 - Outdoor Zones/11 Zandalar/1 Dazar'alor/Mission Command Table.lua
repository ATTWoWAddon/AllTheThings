---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(138706, bubbleDownSelf({	-- Mission Command Table
			["races"] = HORDE_ONLY,
		},{
			["modelScale"] = 3,
			["crs"] = { 147244 },	-- Dazar'alor: The Great Seal Location
			["coords"] = {
				{ 51.59, 99.58, DAZARALOR },	-- The Banshee's Wail Location [Original]
				{ 58.42, 70.63, HALL_OF_CHRONICLERS },
			},
			["g"] = {
				ach(12869, {	-- Azeroth at War: After Lordaron
					["_doautomation"] = true,
				}),
				ach(12870, {	-- Azeroth at War: Kalimdor on Fire
					["_doautomation"] = true,
				}),
				ach(12867, {	-- Azeroth at War: The Barrens
					["_doautomation"] = true,
				}),
				i(163036, {["races"]=IGNORED_VALUE}),	-- Polished Pet Charm
				mission(2078),	-- Azeroth Bleeds
				mission(2087),	-- Explore the Roost
				mission(1878, {	-- The Shadow War
					i(160983),	-- Recruitment Orders
				}),
				mission(2122, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- A Shady Character
					["provider"] = { "i", 166242 },	-- A Shady Message [H]
					["g"] = {
						q(54447, {	-- A Shady Character
							["pvp"] = true,
							["pb"] = true,
							["g"] = {
								i(166244),	-- Token of Shadiness (QI!)
							},
						}),
					},
				})),
				mi(1956),	-- Barren Supplies
				mi(1955),	-- Investigate Wailing Caverns
				mi(1944),	-- Steamwheedle Alliance
				mi(1951),	-- Echo Isles Navy
				mi(1943),	-- Orgrimmar Armory
				mi(1936),	-- Barrens at War
				mi(1937),	-- Great Gate of Mulgore
				mi(1959),	-- Lingering in Theramore
				mi(1879),	-- At a Crossroads
				mi(1935),	-- Salvaging the Battlescar
				mi(1934),	-- Blockade of the Northwatch
				mi(1923),	-- Tiragarde Ruins
				mi(1929),	-- Defending Durotar
				mi(1954),	-- Ancient Defenses
				mi(1948),	-- Recapture Silverwind Refuge
				mi(1947),	-- Posting Reinforcements
				mi(1945),	-- Darkshore Drilling
				mi(1940),	-- Deeps Scouting
				mi(1939),	-- Return to Auberdine
				mi(1938),	-- Investigate Stardust Spire
				mi(1931),	-- Out of your Depth
				mi(1930),	-- Bilgewater Sabotage
				mi(1926),	-- Teldrassil Evacuation
				mi(1925),	-- Siege of Astranaar
				mi(1920),	-- Ashenvale Pass
				mi(1919),	-- Shreds of Warsong
				mi(1932),	-- Shadowfang Plague
				mi(1946),	-- Exorcising Dun Garok
				mi(1952),	-- Deep Elem Mine
				mi(1922),	-- Wall Them Off
				mi(1933),	-- Rebuilding Alterac
				mi(1942),	-- Dalaran Ritual
				mi(1953),	-- Southshore Sabotage
				mi(1928),	-- Mounted Resistance
				mi(1941),	-- Dancing with Dark Rangers
				mi(1949),	-- Azurelode Mine
				mi(1927),	-- Lordamere Lake
				mi(1921),	-- Gilnean Assault
				mi(1950),	-- Silverpine Reinforcements
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(DAZARALOR, {
			n(138706, {
				q(54446),	-- Completing A Shady Character (Mission), accepting A Shady Character (Quest) [H]
			}),
		}),
	}),
})));