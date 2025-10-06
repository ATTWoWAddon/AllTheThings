-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local GRATEFUL_CURRENCY = currency(GRATEFUL);
local SHRIEKERS_VOICEBOX = i(180713);
local DREDBATSKIN_JERKIN = i(183720);
local FORGEMASTERS_MANYFOLD_RAPIER = i(180489);
local HARIKA_THE_HORRID = n(165290, {	-- Harika the Horrid
	["description"] = "Can be killed and looted by any Covenant, but a member of the |cFFfe040fVenthyr Covenant|r must channel anima to Wanecrypt Hill to summon it. Find a Dredhollow Bolt and give it to Wingsmash.",
	["questID"] = 59612,
	["isDaily"] = true,
	["coord"] = { 45.8, 79.0, REVENDRETH },
	["groups"] = {
		q(59607, {	-- Takin' Down the Beast
			["description"] = "This quest is offered in order to make Harika attackable.\n\nSeek out a Dredhollow Bolt in Dredhollow north-east from here.\nAfter completing the quest, talk to Wingsmash and tell him to Smash.",
			["provider"] = { "n", 165327 },	-- Wingsmash
			["coord"] = { 46.30, 77.7, REVENDRETH },
			["cost"] = { { "i", 176397, 1 } },	-- 1x Dredhollow Bolt
			["repeatable"] = true,
		}),
		o(348676, {	-- Ballista Bolt
			["coords"] = {
				{ 41.0, 73.7, REVENDRETH },
				{ 42.6, 73.3, REVENDRETH },
				{ 42.2, 73.6, REVENDRETH },
				{ 41.5, 74.8, REVENDRETH },
				{ 40.9, 73.8, REVENDRETH },
				{ 42.0, 77.4, REVENDRETH },
				{ 43.5, 76.0, REVENDRETH },
				{ 43.2, 77.7, REVENDRETH },
				{ 43.3, 78.4, REVENDRETH },
				{ 42.2, 80.6, REVENDRETH },
			},
			["groups"] = { i(176397) },	-- Dredhollow Bolt (QI!)
		}),
		SHRIEKERS_VOICEBOX,
		i(180461),	-- Horrid Dredwing (MOUNT!)
		DREDBATSKIN_JERKIN,
	},
});
local FORGEMASTER_MADALAV = n(159496, {	-- Forgemaster Madalav
	["description"] = "Can be killed and looted by any Covenant, but a member of the |cFFfe040fVenthyr Covenant|r must channel anima to Dominance Keep and click on |cFFFFFFFFMadalav's Hammer|r to summon the rare.",
	["questID"] = 61618,
	["isDaily"] = true,
	["coord"] = { 32.6, 14.7, REVENDRETH },	-- Madalav's Hammer
	["groups"] = {
		FORGEMASTERS_MANYFOLD_RAPIER,
		i(180939),	-- Mantle of the Forgemaster's Dark Blades
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641397,
			["groups"] = {
				n(ANIMA_CONDUCTOR, {
					["icon"] = 3854016,
					["groups"] = sharedData({ ["icon"] = 3854016 }, {
						n(REWARDS, {
							["groups"] = {
								currency(GRATEFUL, {
									["description"] = "Grateful Offerings can be collected once you have unlocked the Anima Conductor in for your covenant.\n Once unlocked, you can loot them from Covenant Callings (higher Conductor => more Offerings), Patterns Within Patterns Weekly Quest in Zereth Morthis and from special rares & treasures, based on the channeling of your Anima Conductor.",
								}),
							},
						}),
						n(TIER_ONE, {
							n(QUESTS, {
								q(63066, {	-- Sanctum Upgrade: Anima Conductor
									["provider"] = { "n", 172605 },	-- Foreman Flatfinger
									["coord"] = { 55.4, 27.0, SINFALL_REACHES },
								}),
								q(60721, {	-- The Anima Must Flow
									["sourceQuests"] = { 63066 },	-- Sanctum Upgrade: Anima Conductor
									["provider"] = { "n", 164739 },	-- Devahia
									["coord"] = { 48.3, 56.3, SINFALL_DEPTHS },
								}),
							}),
							n(RARES, {
								HARIKA_THE_HORRID,
							}),
							n(TREASURES, {
								o(356757, {	-- Greed's Desire
									["description"] = "Part of the Greater Greedstone treasure. Requires focusing the Anima Conductor at Crypt of the Forgotten.",
									["questID"] = 61646,
									["isDaily"] = true,
									["coord"] = { 71.9, 34.5, REVENDRETH },
								}),
								o(354211, {	-- Greed's Reward
									["description"] = "Part of the Greater Greedstone treasure. Requires focusing the Anima Conductor at Crypt of the Forgotten.",
									["questID"] = 61045,
									["isDaily"] = true,
									["coord"] = { 46.0, 29.1, REVENDRETH },
									["groups"] = {
										i(182768, {	-- The Enchanted Dragon
											i(182766),	-- Golden Egg
										}),
									},
								}),
							}),
						}),
						n(TIER_TWO, {
							n(QUESTS, sharedData({ ["isDaily"] = true }, {
								q(61735, {	-- Awaken Our Allies
									["provider"] = { "n", 173038 },	-- John the Reanimator
									["coord"] = { 71.5, 76.3, REVENDRETH },
									-- ["sourceQuests"] = { ? },	--
									["groups"] = {
										i(182291),	-- Anima Cage (QI!)
									},
								}),
								q(61733, {	-- Big Bag of Creepers
									["provider"] = { "n", 173127 },	-- Thinman
									["coord"] = { 71.4, 74.4, REVENDRETH },
									-- ["sourceQuests"] = { ? },	--
									["groups"] = {
										i(182583),	-- Mire Creeper (QI!)
									},
								}),
								q(61734, {	-- Census of Sins
									["provider"] = { "n", 173532 },	-- Lady Sinrender
									["coord"] = { 72.2, 75.8, REVENDRETH },
								}),
								q(61707, {	-- Crumbled Reality
									["provider"] = { "n", 173036 },	-- Thickman
									["coord"] = { 71.3, 74.5, REVENDRETH },
									["groups"] = {
										i(182158),	-- Infused Rubble (QI!)
									},
								}),
								q(61846, {	-- Edict of Doom: Dredbats
									["provider"] = { "n", 173251 },	-- Edict of Doom: Dredbats
									["coord"] = { 71.6, 76.9, REVENDRETH },
									-- ["sourceQuests"] = { ? },	--
								}),
								q(61848, {	-- Edict of Doom: Sinstone Golems
									["provider"] = { "n", 173629 },	-- Edict of Doom: Sinstone Golems
									["coord"] = { 71.6, 76.8, REVENDRETH },
									-- ["sourceQuests"] = { ? },	--
								}),
								q(61845, {	-- Edict of Doom: Devourers
									["provider"] = { "n", 173247 },	-- Edict of Doom: Devourers
									["coord"] = { 71.6, 76.8, REVENDRETH },
									-- ["sourceQuests"] = { ? },	--
								}),
								q(61732, {	-- Old Habits Never Die
									["provider"] = { "n", 173042 },	-- Second Talon Shenraa
									["coord"] = { 72.3, 76.0, REVENDRETH },
								}),
								q(61847, {	-- Overdue Purging
									["provider"] = { "n", 173087 },	-- Ironwing Fraado
									["coord"] = { 71.4, 76.3, REVENDRETH },
								}),
								q(61849, {	-- Take the Bite Out of 'Em
									["provider"] = { "n", 173630 },	-- Partially-eaten Iger
									["coord"] = { 71.2, 74.4, REVENDRETH },
									["groups"] = {
										i(182692),	-- Venthyr Fang (QI!)
									},
								}),
							})),
							n(WORLD_QUESTS, {
								q(60601, {	-- Darkwing Drills
									["isWorldQuest"] = true,
								}),
							}),
						}),
						n(TIER_THREE, {
							n(RARES, {
								FORGEMASTER_MADALAV,
							})
						}),
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(VENTHYR, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
		n(SANCTUM_UPGRADES, {
			n(ANIMA_CONDUCTOR, {
				n(WORLD_QUESTS, {
					q(60607),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as assassin)	— incremental power/ability boosts each time you complete the WQ
					q(60610),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as assassin)
					q(60612),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor rank 2 WQ (as assassin)
					q(60636),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor rank 2 WQ (as assassin)
					q(60608),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
					q(60611),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
					q(60613),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
					q(62460),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
				}),
				q(61587),	-- Channeling Anima Conduit to Wanecrypt Hill - 1st time
				q(60304),	-- Channeling Anima Conduit to Crypt of the Forgotten
				q(60299),	-- Channeling Anima Conduit to Pridefall Hamlet
				q(60305),	-- Channeling Anima Conduit to Court of the Harvesters
				q(60301),	-- channeling anima to The Shrouded Asylum for the first time
				q(60302),	-- channeling anima to Dominance Keep for the first time
				q(61224),	-- "Ashen Urn" buff from Anima Conductor
				q(61197),	-- "Mobile Mirror Set" buff from Anima Conductor
				q(61210),	-- "Thirst for Anima" buff from Anima Conductor
			}),
		}),
	})),
})));

for _,t in ipairs({HARIKA_THE_HORRID,FORGEMASTER_MADALAV,GRATEFUL_CURRENCY,SHRIEKERS_VOICEBOX,DREDBATSKIN_JERKIN,FORGEMASTERS_MANYFOLD_RAPIER}) do
	t.customCollect = nil;
end
