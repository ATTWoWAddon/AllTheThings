---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(138704, bubbleDownSelf({	-- Mission Command Table
			["races"] = ALLIANCE_ONLY,
		},{
			["modelScale"] = 2,
			["g"] = {
				ach(12898, {	-- Azeroth at War: After Lordaron
					["_doautomation"] = true,
				}),
				ach(12899, {	-- Azeroth at War: Kalimdor on Fire
					["_doautomation"] = true,
				}),
				ach(12896, {	-- Azeroth at War: The Barrens
					["_doautomation"] = true,
				}),
				i(163036, {["races"]=IGNORED_VALUE}),	-- Polished Pet Charm
				mission(2078),	--  Azeroth Bleed
				mission(2087),	-- Explore the Roost
				mission(1877, {	-- The Shadow War
					i(160982),	-- Recruitment Orders
				}),
				mission(2121, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- A Shady Character
					["provider"] = { "i", 165944 },	-- A Shady Message [A]
					["g"] = {
						q(54424, {	-- A Shady Character
							["pvp"] = true,
							["pb"] = true,
							["g"] = {
								i(165946),	-- Token of Shadiness (QI!)
							},
						}),
					},
				})),
				mi(1918),	-- Barren Supplies
				mi(1917),	-- Investigate Wailing Caverns
				mi(1913),	-- Echo Isles Navy
				mi(1906),	-- Steamwheedle Alliance
				mi(1905),	-- Azerite Weaponry
				mi(1899),	-- Great Gate of Mulgore
				mi(1898),	-- Barrens at War
				mi(1897),	-- The Defense of Northwatch Hold
				mi(1896),	-- Salvaging Tiragarge
				mi(1891),	-- Lingering in Theramore
				mi(1890),	-- Razor Hill Supplies
				mi(1886),	-- At a Crossroads
				mi(1885),	-- Our Fort Was a Triumph
				mi(1916),	-- Return to Auberdine
				mi(1910),	-- Recapture Silverwind Refuge
				mi(1908),	-- Posting Reinforcements
				mi(1907),	-- Ancient Defenses
				mi(1902),	-- Stardust Spire Counterattack
				mi(1901),	-- Darkshore Drilling
				mi(1900),	-- Deeps Scouting
				mi(1893),	-- Out of Our Depth
				mi(1892),	-- Shreds of Warsong
				mi(1887),	-- Ashenvale Pass
				mi(1882),	-- Teldrassil Evacuation
				mi(1866),	-- Siege of Astranaar
				mi(1858),	-- Bilgewater Sabotage
				mi(1915),	-- Southshore Sabotage
				mi(1914),	-- Deep Elem Mine
				mi(1912),	-- Silverpine Reinforcements
				mi(1911),	-- Hillsbrad Mine
				mi(1909),	-- Exorcising Dun Garok
				mi(1904),	-- Dancing with the Dark Rangers
				mi(1903),	-- Dalaran Ritual
				mi(1895),	-- Destroying the Keep
				mi(1894),	-- Damming Them All
				mi(1889),	-- Alterac Scouting
				mi(1888),	-- Shadowfang Plague
				mi(1884),	-- Undead Rising
				mi(1883),	-- Lordamere Lake
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(BORALUS, {
			n(138704, {
				q(54423),	-- Completing A Shady Character (Mission), accepting A Shady Character (Quest) [A]
			}),
		}),
	}),
})));