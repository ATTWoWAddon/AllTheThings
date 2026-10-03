---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------

root(ROOTS.HiddenCurrencyTriggers, {
	expansion(EXPANSION.DF, {
		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			currency(3010),	-- 10.2.6 Rewards - Personal Tracker - S4 Dinar Drops (Hidden)
			currency(3011),	-- Plunder
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7 } }, {
			currency(2853),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Primary
			currency(2854),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Stamina
			currency(2855),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Critical Strike
			currency(2856),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Haste
			currency(2857),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Leech
			currency(2858),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Mastery
			currency(2859),	-- 10.2.7 Timewalking Season - Artifact - Cloak- Speed
			currency(2860),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Versatility
			currency(2861),	-- 10.2.7 Timewalking Season - Artifact - Head - Aberration
			currency(2862),	-- 10.2.7 Timewalking Season - Artifact - Head - Beast
			currency(2863),	-- 10.2.7 Timewalking Season - Artifact - Head - Demon
			currency(2864),	-- 10.2.7 Timewalking Season - Artifact - Head - Dragonkin
			currency(2865),	-- 10.2.7 Timewalking Season - Artifact - Head - Elemental
			currency(2866),	-- 10.2.7 Timewalking Season - Artifact - Head - Giant
			currency(2867),	-- 10.2.7 Timewalking Season - Artifact - Head - Humanoid
			currency(2868),	-- 10.2.7 Timewalking Season - Artifact - Head - Mechanical
			currency(2869),	-- 10.2.7 Timewalking Season - Artifact - Head - Undead
			currency(2870),	-- 10.2.7 Timewalking Season - Artifact - Waist - Physical
			currency(2871),	-- 10.2.7 Timewalking Season - Artifact - Waist - Arcane
			currency(2872),	-- 10.2.7 Timewalking Season - Artifact - Waist - Fire
			currency(2873),	-- 10.2.7 Timewalking Season - Artifact - Waist - Frost
			currency(2874),	-- 10.2.7 Timewalking Season - Artifact - Waist - Holy
			currency(2875),	-- 10.2.7 Timewalking Season - Artifact - Waist - Shadow
			currency(2876),	-- 10.2.7 Timewalking Season - Artifact - Waist - Nature
			currency(3000),	-- 10.2.7 Timewalking Season - Random Gem Counter
			currency(3001),	-- 10.2.7 Timewalking Season - Artifact - Cloak - Experience Gain
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
			currency(3002),	-- The Weaver's Commendation
			currency(3003),	-- The General's Commendation
			currency(3004),	-- The Vizier's Commendation
			currency(3005),	-- The General (Notoriety)
			currency(3006),	-- The Vizier (Notoriety)
			currency(3007),	-- The Weaver (Notoriety)
			currency(3009),	-- Bonus Valorstones
			currency(3013),	-- Jewelcrafting Concentration
			currency(3022),	-- Renown - Season 1 Delves
			currency(3023),	-- 11.0 Professions - Personal Tracker - SI Spark Drops (Hidden)
			currency(3024),	-- Cosmetic
			currency(3025),	-- Cosmetic
			currency(3026),	-- Cosmetic
			currency(3027),	-- Cosmetic
			currency(3040),	-- Blacksmithing Concentration
			currency(3041),	-- Tailoring Concentration
			currency(3042),	-- Leatherworking Concentration
			currency(3043),	-- Inscription Concentration
			currency(3044),	-- Engineering Concentration
			currency(3045),	-- Alchemy Concentration
			currency(3046),	-- Enchanting Concentration
			currency(3047),	-- Jewelcrafting Concentration
			currency(3048),	-- Tailoring Concentration
			currency(3049),	-- Leatherworking Concentration
			currency(3050),	-- Blacksmithing Concentration
			currency(3051),	-- Enchanting Concentration
			currency(3052),	-- Engineering Concentration
			currency(3053),	-- Inscription Concentration
			currency(3054),	-- Alchemy Concentration
			currency(3057),	-- 11.0 Professions - Tracker - Weekly Alchemy Knowledge
			currency(3058),	-- 11.0 Professions - Tracker - Weekly Blacksmithing Knowledge
			currency(3059),	-- 11.0 Professions - Tracker - Weekly Enchanting Knowledge
			currency(3060),	-- 11.0 Professions - Tracker - Weekly Engineering Knowledge
			currency(3061),	-- 11.0 Professions - Tracker - Weekly Herbalism Knowledge
			currency(3062),	-- 11.0 Professions - Tracker - Weekly Inscription Knowledge
			currency(3063),	-- 11.0 Professions - Tracker - Weekly Jewelcrafting Knowledge
			currency(3064),	-- 11.0 Professions - Tracker - Weekly Leatherworking Knowledge
			currency(3065),	-- 11.0 Professions - Tracker - Weekly Mining Knowledge
			currency(3066),	-- 11.0 Professions - Tracker - Weekly Skinning Knowledge
			currency(3067),	-- 11.0 Professions - Tracker - Weekly Tailoring Knowledge
			currency(3068),	-- Delver's Journey
			currency(3069),	-- 11.0 Professions - Tailoring - Fishing - Khaz Algar - Skill
			currency(3070),	-- 11.0 Professions - Fishing - Algari Weaverthread - Perception
			currency(3071),	-- 11.0 Professions - Fishing - Algari Weaverthread - Skill
			currency(3072),	-- Everburning Ignition Refund
			currency(3073),	-- 11.0 Professions - Tracker - Insc Book - Tailoring Knowledge
			currency(3074),	-- 11.0 Professions - Tracker - Insc Book- Skinning Knowledge
			currency(3075),	-- 11.0 Professions - Tracker - Insc Book - Mining Knowledge
			currency(3076),	-- 11.0 Professions - Tracker - Insc Book - Leatherworking Know.
			currency(3077),	-- 11.0 Professions - Tracker - Insc Book - Jewelcrafting Knowledge
			currency(3078),	-- 11.0 Professions - Tracker - Insc Book - Inscription Knowledge
			currency(3079),	-- 11.0 Professions - Tracker - Insc Book - Herbalism Knowledge
			currency(3080),	-- 11.0 Professions - Tracker - Insc Book - Engineering Knowledge
			currency(3081),	-- 11.0 Professions - Tracker - Insc Book - Enchanting Knowledge
			currency(3082),	-- 11.0 Professions - Tracker - Insc Book - Blacksmithing Knowledge
			currency(3083),	-- 11.0 Professions - Tracker - Insc Book - Alchemy Knowledge
			currency(3084),	-- 11.0 Professions - Tracker - Insc Book - Inscription Knowledge
			currency(3085),	-- 11.0 Delves - Personal Tracker - S1 Weekly Elise Turn-In(Hidden)
			currency(3086),	-- DPS
			currency(3087),	-- Tank
			currency(3088),	-- Healer
			currency(3099),	-- 11.0 Raid - Nerubian - Nerubar Finery Tracking Currency (Hidden)
			currency(3102),	-- Bronze Celebration Token
			currency(3103),	-- 11.0 Delves - System - Seasonal Affix - Events Active
			currency(3104),	-- 11.0 Delves - System - Seasonal Affix - Events Maximum
			currency(3115),	-- [DNT] Worldsoul Memory Score
			currency(3142),	-- 11.0 Delves - Bountiful Tracker - Brann EXP Cap
			currency(3143),	-- 11.0 Delves - Bountiful Tracker - Delver's Journey Cap
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			currency(3144),	-- 11.0.5 20th Anniversary - Tracker
			currency(3145),	-- 11.0.5 20th Anniversary - Tracker
			currency(3146),	-- 11.0.5 20th Anniversary - Tracker
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
			currency(3139),	-- Plunder
			currency(3180),	-- Weekly Limit Test Currency
		})),
	}),
});
