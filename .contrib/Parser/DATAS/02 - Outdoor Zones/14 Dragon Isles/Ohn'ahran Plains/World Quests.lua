---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = sharedData({ ["isWorldQuest"] = true, }, {
				q(70067, {	-- A Massage to the Nokhud
					["coord"] = { 35.7, 39.2, OHNAHRAN_PLAINS },
				}),
				q(70623, {	-- Clearing the Skies
					["coord"] = { 70.0, 38.2, OHNAHRAN_PLAINS },
				}),
				q(72028, {	-- Fishing Frenzy!
					["coord"] = { 76.9, 73.5, OHNAHRAN_PLAINS },
				}),
				q(69988, {	-- Flashy Rocks
					["coord"] = { 53.2, 50.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198138),	-- Lightning-Infused Rock
					},
				}),
				q(70146, {	-- Highlands Rebuttal
					["coord"] = { 81.6, 51.3, OHNAHRAN_PLAINS },
				}),
				q(70149, {	-- Hope for the Highlands
					["coord"] = { 85.3, 51.9, OHNAHRAN_PLAINS },
				}),
				q(70634, {	-- Lashed Out
					["coord"] = { 30.9, 52.7, OHNAHRAN_PLAINS },
				}),
				q(70549, {	-- Low Hanging Fruit
					["coord"] = { 62.4, 57.8, OHNAHRAN_PLAINS },
				}),
				petbattle(q(74838, {	-- Lyver
					["coord"] = { 73.38, 68, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70780, {	-- Ohn'ahran Banners
					["coord"] = { 85.3, 45.3, OHNAHRAN_PLAINS },
				}),
				petbattle(q(74837, {	-- Paws of Thunder
					["coord"] = { 36.15, 52.57, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70074, {	-- Plunder the Sundered
					["coord"] = { 46.2, 65.2, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198448),	-- Dragonscale Expedition Supplies (QI!)
					},
				}),
				q(70646, {	-- Pressure Valve
					["coord"] = { 79.2, 76.1, OHNAHRAN_PLAINS },
				}),
				q(70649, {	-- Swab Swog
					["coord"] = { 81.4, 71.1, OHNAHRAN_PLAINS },
				}),
				q(71154, {	-- Talon Toss: Shooting 101,
					["coord"] = { 60.5, 25.7, OHNAHRAN_PLAINS }
				}),
				q(69994, {	-- The Field of Ferocity Redux: Elemental Revenge Round!
					["coord"] = { 53.1, 37.2, OHNAHRAN_PLAINS },
				}),
				q(69991, {	-- The Field of Ferocity Redux: Foe from the Volcano!
					["coord"] = { 53.8, 37.2, OHNAHRAN_PLAINS },
				}),
				q(69990, {	-- The Field of Ferocity Redux: Lord of Decay!
					["coord"] = { 53.1, 37.2, OHNAHRAN_PLAINS },
				}),
				q(69993, {	-- The Field of Ferocity Redux: Lost in the Dream!
					["coord"] = { 53.1, 37.2, OHNAHRAN_PLAINS },
				}),
				q(69995, {	-- The Field of Ferocity Redux: Master of the Hunt!
					["coord"] = { 53.1, 37.2, OHNAHRAN_PLAINS },
				}),
				q(69987, {	-- The Field of Ferocity Redux: Terror of the Swamp!
					["coord"] = { 53.8, 37.2, OHNAHRAN_PLAINS },
				}),
				q(70176, {	-- Web Victims
					["coord"] = { 44.6, 47.4, OHNAHRAN_PLAINS },
				}),
				q(70638, {	-- Wind Breaker
					["coord"] = { 75.1, 70.2, OHNAHRAN_PLAINS },
				}),
				petbattle(q(71140, {	-- Two and Two Together
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				})),
				petbattle(q(71206, {	-- Eye of the Stormling
					["coord"] = { 24.8, 42.7, OHNAHRAN_PLAINS },
				})),
				pvp(q(70209, {	-- Quacks and Attacks
					["coord"] = { 43.1, 34.8, OHNAHRAN_PLAINS },
				})),
				pvp(q(72058, {	-- What Hoof We Here: Tarolekk
					["coord"] = { 34.9, 39.1, OHNAHRAN_PLAINS },
				})),
			}),
		}),
	}),
})));
