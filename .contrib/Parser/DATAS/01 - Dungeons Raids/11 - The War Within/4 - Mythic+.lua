-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(MYTHIC_PLUS, {
		header(HEADERS.Achievement, SEASON_TEMPERED, bubbleDownSelf({
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART }
		},{
			ach(20523),		-- The War Within Keystone Explorer: Season One
			ach(20524, {	-- The War Within Keystone Conqueror: Season One
				title(579),	-- <Name> the Tempered
			}),
			ach(20525, {	-- The War Within Keystone Master: Season One
				i(226357),	-- Diamond Mechsuit (MOUNT!)
			}),
			ach(20526),		-- The War Within Keystone Hero: Season One
			ach(20589, {	-- Tempered Hero: The War Within Season 1
				["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
				["groups"] = {
					title(548, {	-- <Name> the Tempered Hero
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
				},
			}),
			ach(20586, {	-- Keystone Hero: Ara-Kara, City of Echoes
				spell(445417),	-- Path of the Ruined City
			}),
			ach(20582, {	-- Keystone Hero: City of Threads
				spell(445416),	-- Path of Nerubian Ascension
			}),
			ach(20588, {	-- Keystone Hero: Grim Batol
				spell(445424),	-- Path of the Twilight Fortress
			}),
			ach(15047, {	-- Keystone Hero: Mists of Tirna Scithe
				spell(354464),	-- Path of the Misty Forest
			}),
			ach(20587, {	-- Keystone Hero: Siege of Boralus
				spell(445418, {	-- Path of the Besieged Harbor [A]
					["races"] = ALLIANCE_ONLY,
				}),
				spell(464256, {	-- Path of the Besieged Harbor [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(20585, {	-- Keystone Hero: The Dawnbreaker
				spell(445414),	-- Path of the Arathi Flagship
			}),
			ach(15045, {	-- Keystone Hero: The Necrotic Wake
				spell(354462),	-- Path of the Courageous
			}),
			ach(20580, {	-- Keystone Hero: The Stonevault
				spell(445269),	-- Path of the Corrupted Foundry
			}),
		})),
		header(HEADERS.Achievement, SEASON_ENTERPRISING, bubbleDownSelf({
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART }
		},{
			ach(40949),		-- The War Within Keystone Explorer: Season Two
			ach(40950, {	-- The War Within Keystone Conqueror: Season Two
				title(592),	-- <Name> the Enterprising
			}),
			ach(41533, {	-- The War Within Keystone Master: Season Two
				i(235549),	-- Crimson Shreddertank (MOUNT!)
			}),
			ach(40952),		-- The War Within Keystone Hero: Season Two
			ach(40951, {	-- The War Within Keystone Legend: Season Two
				i(237141),	-- Enterprising Shreddertank (MOUNT!)
			}),
			ach(40954, {	-- Enterprising Hero: The War Within Season Two
				["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
				["groups"] = {
					title(593, {	-- <Name> the Enterprising Hero
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				},
			}),
			ach(20583, {	-- Keystone Hero: Cinderbrew Meadery
				spell(445440),	-- Path of the Flaming Brewery
			}),
			ach(20584, {	-- Keystone Hero: Darkflame Cleft
				spell(445441),	-- Path of the Warding Candles
			}),
			ach(41348, {	-- Keystone Hero: Operation: Floodgate
				spell(1216786),	-- Path of the Circuit Breaker
			}),
			ach(40966, {	-- Keystone Hero: Operation: Mechagon - Workshop
				spell(373274),	-- Path of the Scrappy Prince
			}),
			ach(20581, {	-- Keystone Hero: Priory of the Sacred Flame
				spell(445444),	-- Path of the Light's Reverence
			}),
			ach(40965, {	-- Keystone Hero: The MOTHERLODE!!
				spell(467553, {	-- Path of the Azerite Refinery [A]
					["races"] = ALLIANCE_ONLY,
				}),
				spell(467555, {	-- Path of the Azerite Refinery [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(20579, {	-- Keystone Hero: The Rookery
				spell(445443),	-- Path of the Fallen Stormriders
			}),
			ach(15050, {	-- Keystone Hero: Theater of Pain
				spell(354467),	-- Path of the Undefeated
			}),
			ach(41724, {	-- The War Within Season 2: Resilient Keystone 12 (automated)
				["collectible"] = false,
			}),
			ach(41726, {	-- The War Within Season 2: Resilient Keystone 13 (automated)
				["collectible"] = false,
			}),
			ach(41727, {	-- The War Within Season 2: Resilient Keystone 14 (automated)
				["collectible"] = false,
			}),
			ach(41728, {	-- The War Within Season 2: Resilient Keystone 15 (automated)
				["collectible"] = false,
			}),
			ach(41729, {	-- The War Within Season 2: Resilient Keystone 16 (automated)
				["collectible"] = false,
			}),
			ach(41730, {	-- The War Within Season 2: Resilient Keystone 17 (automated)
				["collectible"] = false,
			}),
			ach(41731, {	-- The War Within Season 2: Resilient Keystone 18 (automated)
				["collectible"] = false,
			}),
			ach(41732, {	-- The War Within Season 2: Resilient Keystone 19 (automated)
				["collectible"] = false,
			}),
			ach(41733, {	-- The War Within Season 2: Resilient Keystone 20 (automated)
				["collectible"] = false,
			}),
			ach(41734, {	-- The War Within Season 2: Resilient Keystone 21 (automated)
				["collectible"] = false,
			}),
			ach(41735, {	-- The War Within Season 2: Resilient Keystone 22 (automated)
				["collectible"] = false,
			}),
			ach(41736, {	-- The War Within Season 2: Resilient Keystone 23 (automated)
				["collectible"] = false,
			}),
			ach(41737, {	-- The War Within Season 2: Resilient Keystone 24 (automated)
				["collectible"] = false,
			}),
			ach(41738, {	-- The War Within Season 2: Resilient Keystone 25 (automated)
				["collectible"] = false,
			}),
		})),
		n(COMMON_BOSS_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			i(234425, {	-- Forgotten Folio
				["description"] = "Drops from the last boss of Mythic+ Dungeons. It contains various dungeon dropped profession recipes.",
				["sym"] = {{"select","itemID",
					223141,	-- Formula: Enchant Ring - Cursed Critical Strike (RECIPE!)
					223142,	-- Formula: Enchant Ring - Cursed Mastery (RECIPE!)
					223143,	-- Formula: Enchant Ring - Cursed Versatility (RECIPE!)
					223115,	-- Formula: Enchant Ring - Radiant Critical Strike (RECIPE!)
					223116,	-- Formula: Enchant Ring - Radiant Haste (RECIPE!)
					223117,	-- Formula: Enchant Ring - Radiant Mastery (RECIPE!)
					223118,	-- Formula: Enchant Ring - Radiant Versatility (RECIPE!)
					223119,	-- Formula: Enchant Weapon - Authority of Air (RECIPE!)
					223120,	-- Formula: Enchant Weapon - Authority of Radiant Power (RECIPE!)
					224424,	-- Pattern: Artisan Chef's Hat (RECIPE!)
					223102,	-- Pattern: Busy Bee's Buckle (RECIPE!)
					223096,	-- Pattern: Roiling Thunderstrike Talons (RECIPE!)
					223098,	-- Pattern: Waders of the Unifying Flame (RECIPE!)
					226643,	-- Plans: Beledar's Bulwark (RECIPE!)
					--223061,	-- Technique: Inscribed Rolling Pin (RECIPE!) [Wax-Encrusted Chest?] unsure if contained here due to strange acquisition
				}},
			}),
		})),
		n(QUESTS, {
			q(87327, {	-- A Challenger's Resilience
				["description"] = "Granted automatically once you have completed each seasonal dungeon in time on at least +12 difficulty.",
				["qg"] = 197915,	-- Lindormi
				["maps"] = { DORNOGAL },
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(MYTHIC_PLUS, {
		q(85469),	-- First weekly completion of an 8+ Mythic Dungeon
	}),
})));