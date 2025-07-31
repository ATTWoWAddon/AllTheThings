---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = sharedData({ ["isWorldQuest"] = true, }, {
				--[[
				q(QUEST, {	-- NAME
					["coord"] = { XX, YY, THE_WAKING_SHORES }
				}),
				]]--
				q(70150, {	-- 'Many Whelps, Handle It'
					["coord"] = { 57.8, 68, THE_WAKING_SHORES },
				}),
				petbattle(q(74841, {	-- Adinakon
					["coord"] = { 51.90, 72.39, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70636, {	-- Ancient Protodragons
					["coord"] = { 35.1, 81.6, THE_WAKING_SHORES },
				}),
				q(66902, {	-- Bee-Gone
					["coord"] = { 56.8, 68.0, THE_WAKING_SHORES },
				}),
				q(67010, {	-- Boiling Over
					["coord"] = { 48.9, 45.9, THE_WAKING_SHORES },
				}),
				q(66934, {	-- Break the Breaker
					["coord"] = { 66.3, 26.2, THE_WAKING_SHORES },
				}),
				q(70782, {	-- Canopy Banners
					["coord"] = { 25.7, 78.9, THE_WAKING_SHORES },
				}),
				q(67062, {	-- Cascading Conflict
					["coord"] = { 48.0, 52.2, THE_WAKING_SHORES },
				}),
				q(70502, {	-- Clearing the Skies
					["coord"] = { 56.6, 56.5, THE_WAKING_SHORES },
				}),
				q(67113, {	-- Excavation Emergency
					["coord"] = { 66.2, 57.8, THE_WAKING_SHORES },
				}),
				q(69916, {	-- Famous Frogs
					["coord"] = { 38.1, 93.4, THE_WAKING_SHORES },
				}),
				q(69938, {	-- Fishing Frenzy!
					["coord"] = { 68.8, 71.4, THE_WAKING_SHORES },
					["groups"] = {
						i(198350),	-- Fresh Fish Steak (QI!)
					},
				}),
				q(72030, {	-- Fishing Frenzy!
					["coord"] = { 33.6, 63.2, THE_WAKING_SHORES },
					["groups"] = {
						i(200854),	-- Cooked Caviar (QI!)
					},
				}),
				q(67014, {	-- Gorlocs No More-locs
					["coord"] = { 80, 39.6, THE_WAKING_SHORES },
				}),
				q(66989, {	-- Helpful Harvest
					["coord"] = { 58.2, 64.7, THE_WAKING_SHORES },
					["groups"] = {
						i(204343),	-- Trusty Dragonkin Rake
					}
				}),
				q(67026, {	-- Hold the Shrine
					["coord"] = { 58.4, 78.5, THE_WAKING_SHORES },
				}),
				q(67009, {	-- Hornswog Hogwash
					["coord"] = { 67.5, 64.2, THE_WAKING_SHORES },
				}),
				pvp(q(67005, {	-- How to Train a Proto-Drake
					["coord"] = { 40, 89, THE_WAKING_SHORES },
					["groups"] = {
						i(194818),	-- Proto-Drake Wrangler Rope (QI!)
					},
				})),
				q(66833, {	-- Marmoni in Distress
					["coord"] = { 78.1, 31.6, THE_WAKING_SHORES },
					["groups"] = {
						i(193212),	-- Marmoni Rescue Pack (QI!)
					},
				}),
				q(70172, {	-- Mountain Mysteries
					["coord"] = { 49.3, 53.4, THE_WAKING_SHORES },
				}),
				q(66896, {	-- Net Income
					["coord"] = { 51.6, 35.1, THE_WAKING_SHORES },
					["groups"] = {
						i(191857),	-- Warmwater Riverfish (QI!)
					},
				}),
				pvp(q(72008, {	-- Overcoming a Mountain: Krolkoth
					["coord"] = { 43.2, 58, THE_WAKING_SHORES },
				})),
				q(70012, {	-- Protect the Nets!
					["coord"] = { 55.6, 58.3, THE_WAKING_SHORES },
				}),
				q(67006, {	-- Quenching the Flame
					["coord"] = { 67.5, 31.8, THE_WAKING_SHORES },
				}),
				petbattle(q(74840, {	-- Sharp as Flint
					["coord"] = { 68.96, 46.78, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(67024, {	-- Smoldering Reinforcement
					["coord"] = { 53.9, 27.0, THE_WAKING_SHORES },
				}),
				petbattle(q(66588, {	-- Swog the Elder
					["coord"] = { 25.6, 92.1, THE_WAKING_SHORES },
				})),
				q(69931, {	-- Swoop And Grab
					["coord"] = { 53.4, 21.0, THE_WAKING_SHORES },
				}),
				q(70021, {	-- Tale of Tapionnuq
					["coord"] = { 15.1, 91.3, THE_WAKING_SHORES },
				}),
				petbattle(q(66551, {	-- The Terrible Three
					["coord"] = { 39.0, 83.5, THE_WAKING_SHORES },
				})),
				q(69913, {	-- Towers of Earthen Power
					["coord"] = { 65.7, 58.4, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(69924, {	-- Towers of Flaming Power
					["coord"] = { 55.2, 24.5, THE_WAKING_SHORES },
				}),
				q(66203, {	-- Wash Over Them
					["coord"] = { 39.5, 75.1, THE_WAKING_SHORES },
				}),
				q(67012, {	-- When Riverbeasts Fly
					["coord"] = { 77.4, 48.4, THE_WAKING_SHORES },
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THE_WAKING_SHORES, {
			n(WORLD_QUESTS, {
				q(74069),	-- Triggered after killing Zhurtan the Riverboiler during 'Boiling Over'
			}),
		}),
	}),
})));
