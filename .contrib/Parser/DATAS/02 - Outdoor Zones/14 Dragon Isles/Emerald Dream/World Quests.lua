---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(WORLD_QUESTS, {
			--[[
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
				75145,	-- In the Wake of the Ashes

				77283 A Multi-Front Battle had to be completed before world quests showed up.
					77572/77887 were additional triggers, so one of them may be an account-wide unlock
			},
			]]--
			["groups"] = {
				n(QUESTS, sharedData({ ["isWorldQuest"] = true, ["maxReputation"] = { FACTION_DREAM_WARDENS, 20 }, }, {
					q(76520, {	-- A Shared Dream
						["coord"] = { 63.7, 73.4, EMERALD_DREAM },
						["groups"] = {
							i(208983),	-- Yvelyn''s Assistance (QI!)
						},
					}),
					q(76519, {	-- All The Children
						["coord"] = { 58.2, 51.3, EMERALD_DREAM },
						["groups"] = {
							i(208738),	-- Ephemeral Pear (QI!)
						},
					}),
					q(76558, {	-- Base Control
						["coord"] = { 46.2, 28.1, EMERALD_DREAM },
					}),
					q(77156, {	-- Botanical Redistribution
						["coord"] = { 25.0, 22.2, EMERALD_DREAM },
					}),
					q(77755, {	-- Breaking Down the Camp
						["coord"] = { 28.9, 26.1, EMERALD_DREAM },
					}),
					q(77715, {	-- Bubble Rescue
						["coord"] = { 41.7, 39.7, EMERALD_DREAM },
					}),
					q(76991, {	-- Carpe Diem
						["coord"] = { 39.3, 59.8, EMERALD_DREAM },
					}),
					q(78370, {	-- Claws for Concern
						["coord"] = { 37.7, 67.5, EMERALD_DREAM },
						["groups"] = {
							ach(19293, {	-- Friends In Feathers
								--require q(78370) / Claws for Concern
								i(210522),	-- Blueloo (PET!)
								crit(62785, {	-- Beaks
									["coord"] = { 36.9, 65.8, EMERALD_DREAM },
									["crs"] = { 212053 },
								}),
								crit(62776, {	-- Bumbletweet
									["coord"] = { 39.1, 66.0, EMERALD_DREAM },
									["crs"] = { 212042 },
								}),
								crit(62788, {	-- Chickle
									["coord"] = { 36.4, 71.2, EMERALD_DREAM },
									["crs"] = { 212056 },
								}),
								crit(62790, {	-- Eugene
									["coord"] = { 36.4, 62.7, EMERALD_DREAM },
									["crs"] = { 212058 },
								}),
								crit(62775, {	-- Feets
									["coord"] = { 38.4, 69.5, EMERALD_DREAM },
									["crs"] = { 212039 },
								}),
								crit(62779, {	-- Fruffles
									["coord"] = { 39.3, 71.7, EMERALD_DREAM },
									["crs"] = { 212046 },
								}),
								crit(62789, {	-- Fuzz
									["coord"] = { 38.7, 63.5, EMERALD_DREAM },
									["crs"] = { 212057 },
								}),
								crit(62773, {	-- Giblet
									["coord"] = { 35.6, 67.1, EMERALD_DREAM },
									["crs"] = { 212033 },
								}),
								crit(62784, {	-- Hops
									["coord"] = { 37.7, 73.3, EMERALD_DREAM },
									["crs"] = { 212052 },
								}),
								crit(62783, {	-- Meep
									["coord"] = { 35.5, 69.7, EMERALD_DREAM },
									["crs"] = { 212051 },
								}),
								crit(62787, {	-- Moonbeam
									["coord"] = { 36.1, 69.7, EMERALD_DREAM },
									["crs"] = { 212055 },
								}),
								crit(62782, {	-- Owlington
									["coord"] = { 37.4, 72.2, EMERALD_DREAM },
									["crs"] = { 212050 },
								}),
								crit(62777, {	-- Peanut
									["coord"] = { 38.0, 69.0, EMERALD_DREAM },
									["crs"] = { 212044 },
								}),
								crit(62778, {	-- Snoozle
									["coord"] = { 40.4, 71.5, EMERALD_DREAM },
									["crs"] = { 212045 },
								}),
								crit(62780, {	-- Squawkle
									["coord"] = { 36.3, 71.6, EMERALD_DREAM },
									["crs"] = { 212047 },
								}),
								crit(62786, {	-- Squeaky
									["coord"] = { 38.4, 69.3, EMERALD_DREAM },
									["crs"] = { 212054 },
								}),
								crit(62791, {	-- Tickles
									["coord"] = { 38.7, 70.4, EMERALD_DREAM },
									["crs"] = { 212060 },
								}),
								crit(62781, {	-- Wingnut
									["coord"] = { 37.8, 70.2, EMERALD_DREAM },
									["crs"] = { 212049 },
								}),
							}),
						},
					}),
					q(77761, {	-- Documenting a Dream
						["coord"] = { 58.1, 49.6, EMERALD_DREAM },
					}),
					q(77765, {	-- Documenting a Dream
						["coord"] = { 38.2, 64.2, EMERALD_DREAM },
					}),
					q(76549, {	-- Dreaming in the Dream
						["coord"] = { 54.8, 25.4, EMERALD_DREAM },
					}),
					q(76506, {	-- Dryad Fire Drill
						["coord"] = { 63.1, 72.4, EMERALD_DREAM },
					}),
					q(76992, {	-- Fickle Judgment
						["coord"] = { 38.8, 68.6, EMERALD_DREAM },
						["groups"] = {
							i(210227),	-- Q'onzu's Faerie Feather (QI!)
						},
					}),
					q(77756, {	-- Flight of the Dragons
						["coord"] = { 36.1, 30.1, EMERALD_DREAM },
					}),
					q(76526, {	-- In the Trees
						["coord"] = { 64.4, 51.4, EMERALD_DREAM },
					}),
					q(76562, {	-- Moat Maintenance
						["coord"] = { 51.1, 18.5, EMERALD_DREAM },
					}),
					q(77714, {	-- Nature Sealed
						["coord"] = { 31.1, 26.7, EMERALD_DREAM },
					}),
					q(77159, {	-- No Mushroom for Error
						["coord"] = { 52.6, 29.9, EMERALD_DREAM },
					}),
					q(76559, {	-- Our Owllies
						["coord"] = { 54.5, 21.7, EMERALD_DREAM },
					}),
					q(76990, {	-- Portal Panic
						["coord"] = { 36.0, 55.2, EMERALD_DREAM },
					}),
					q(77754, {	-- Pyromania Problems
						["coord"] = { 42.8, 26.2, EMERALD_DREAM },
					}),
					q(76522, {	-- Reverie Of Battle
						["coord"] = { 64.1, 65.8, EMERALD_DREAM },
					}),
					q(76518, {	-- Root Security
						["coord"] = { 58.9, 49.5, EMERALD_DREAM },
						["groups"] = {
							i(208447),	-- Purifying Tangle (QI!)
						},
					}),
					pvp(q(78215, {	-- Rooted in Danger
						["coord"] = { 44.8, 41.9, EMERALD_DREAM },
					})),
					q(76988, {	-- Sylvan Slalom
						["coord"] = { 34.1, 57.6, EMERALD_DREAM },
					}),
					q(77757, {	-- Terror in Haven
						["coord"] = { 48.7, 38.2, EMERALD_DREAM },
					}),
					q(76989, {	-- Trashing the Camp
						["coord"] = { 38.8, 48.9, EMERALD_DREAM },
					}),
					q(76551, {	-- Treasure Diving
						["coord"] = { 51.4, 34.6, EMERALD_DREAM },
						["groups"] = {
							i(208801),	-- Handful of Rubble (QI!)
						},
					}),
					q(76550, {	-- True Sight
						["coord"] = { 58.1, 49.6, EMERALD_DREAM },
						["groups"] = {
							i(208841),	-- True Sight (QI!)
						},
					}),
					q(76993, {	-- Turtle Power
						["coord"] = { 42.6, 81.6, EMERALD_DREAM },
						["groups"] = {
							i(211302),	-- Slumberfruit (QI!)
						},
					}),
				})),
			},
		}),
	}),
})));
