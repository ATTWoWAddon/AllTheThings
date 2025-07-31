---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = sharedData({ ["isWorldQuest"] = true, }, {
				--[[
				q(QUEST, {	-- NAME
					["coord"] = { XX, YY, THALDRASZUS },
				}),
				]]--
				q(70160, {	-- Alchemical Thesis Defense
					["coord"] = { 62.3, 36.9, THALDRASZUS },
				}),
				q(70442, {	-- Banquet Battle
					["coord"] = { 50.9, 68.2, THALDRASZUS },
				}),
				q(70369, {	-- Blasting the Past
					["coord"] = { 57.3, 83.4, THALDRASZUS },
				}),
				pvp(q(71225, {	-- Blown Through Wind: Rhuzast
					["coord"] = { 53, 40.2, THALDRASZUS },
				})),
				q(70073, {	-- Bluefeather Banners
					["coord"] = { 50.9, 68.2, THALDRASZUS },
				}),
				q(71160, {	-- Depth Charge
					["coord"] = { 49.9, 59.4, THALDRASZUS },
					["groups"] = {
						i(200561),	-- Deepwater Lure (QI!)
					},
				}),
				q(72090, {	-- Disrupting the Primalist Plan
					["coord"] = { 61.5, 50.0, THE_PRIMALIST_FUTURE },
				}),
				q(69949, {	-- Extermination
					["coord"] = { 61.5, 27.5, THALDRASZUS },
				}),
				q(70224, {	-- Fetid Threat
					["coord"] = { 56.1, 30.8, THALDRASZUS },
				}),
				q(72029, {	-- Fishing Frenzy!
					["coord"] = { 57.3, 66.7, THALDRASZUS },
				}),
				q(71181, {	-- Forgotten Grotto Relics
					["coord"] = { 58.7, 36.8, THALDRASZUS },
				}),
				q(70602, {	-- History Lesson: War of the Shifting Sands
					["coord"] = { 58.2, 36.2, THALDRASZUS },
				}),
				q(71205, {	-- Hydro Tuskarr
					["coord"] = { 53.6, 41.5, THALDRASZUS },
				}),
				petbattle(q(74794, {	-- Right Twice a Day
					["coord"] = { 60.63, 59.74, THALDRASZUS },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(71156, {	-- Rebel Concerns
					["coord"] = { 46.2, 52.2, THALDRASZUS },
					["groups"] = {
						i(201379),	-- Scalewatch Cage Key (QI!)
					},
				}),
				q(70066, {	-- Reclaiming the Hold
					["coord"] = { 58.8, 57.1, THALDRASZUS },
				}),
				q(70934, {	-- Salamanther's Embrace
					["coord"] = { 54.7, 39.7, THALDRASZUS },
				}),
				q(71164, {	-- Stolen Bandages
					["coord"] = { 45.4, 58.9, THALDRASZUS },
				}),
				q(70111, {	-- Temple Treasures
					["coord"] = { 51.0, 58.5, THALDRASZUS },
					["groups"] = {
						i(198443),	-- Titan Temple Relic (QI!)
					},
				}),
				q(70072, {	-- Time-Lost and Found
					["coord"] = { 58.2, 80.0, THALDRASZUS },
					["groups"] = {
						i(198597),	-- Time-Lost Possession (QI!)
						i(198649),	-- Time-Lost Possession (QI!)
						i(198564),	-- Time-Lost Relic (QI!)
						i(198601),	-- Time-Lost Relic (QI!)
						i(198602),	-- Time-Lost Relic (QI!)
					},
				}),
				petbattle(q(71166, {	-- The Oldest Dragonfly
					["coord"] = { 39.6, 73.4, THALDRASZUS },
				})),
				petbattle(q(74792, {	-- They're Full of Stars!
					["coord"] = { 55.97, 40.54, THALDRASZUS },
					["timeline"] = { ADDED_10_0_7 },
				})),
				q(70057, {	-- Thieving Tarasek
					["coord"] = { 56.2, 68.7, THALDRASZUS },
					["groups"] = {
						i(197928),	-- Captivating Cap (QI!)
						i(198349),	-- Stolen Dragonscale Supplies (QI!)
					},
				}),
				petbattle(q(71180, {	-- You Have to Start Somewhere
					["coord"] = { 56.3, 49.2, THALDRASZUS },
				})),
				--[[
				q(70934, {	-- Salamanther's Embrace
					["coord"] = { 54.9, 35.7, THALDRASZUS },
				}),
				]]--
			}),
		}),
	}),
})));
