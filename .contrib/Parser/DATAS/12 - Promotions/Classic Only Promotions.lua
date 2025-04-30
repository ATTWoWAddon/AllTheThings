-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
root(ROOTS.Promotions, bubbleDown({ ["u"] = REAL_MONEY }, {
	-- #if ANYCLASSIC
	expansion(EXPANSION.TBC, {
		["timeline"] = { ADDED_2_5_1 },
		["groups"] = {
			-- 2021 5th May until 5th Nov 2021
			q(63768, {	-- Imp in a Ball
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 63767 },	-- Imp in a Ball (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					16739,	-- Caregiver Breel <Innkeeper>
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6741,	-- Innkeeper Norman <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					16618,	-- Innkeeper Velandra <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					17630,	-- Inkeeper Jovia
					6735,	-- Inkeeper Saelienne
					19046,	-- Minalei (ALDOR)
				},
				["groups"] = {
					i(32542, {	-- Imp in a Ball
						["description"] = "Obtained if you set up a 6 Month WoW Subscription between 5th May 2021 until 5th Nov 2022.",
					}),
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			-- 2022 13th Feb until 13th Aug 2022
			q(65285, {	-- Goblin Gumbo Kettle
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 65284 },	-- Goblin Gumbo Kettle (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					16739,	-- Caregiver Breel <Innkeeper>
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6741,	-- Innkeeper Norman <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					16618,	-- Innkeeper Velandra <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					19046,	-- Minalei (ALDOR)
				},
				["groups"] = {
					i(33219, {	-- Goblin Gumbo Kettle
						["description"] = "Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022.",
					}),
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			-- 2022 14th July until 15th January 2023
			q(65562, {	-- Tabard of Flame
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 65561 },	-- Tabard of Flame (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					16739,	-- Caregiver Breel <Innkeeper>
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6741,	-- Innkeeper Norman <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					16618,	-- Innkeeper Velandra <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					19046,	-- Minalei (ALDOR)
				},
				["groups"] = {
					i(23705, {	-- Tabard of Flame
						["description"] = "Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022 or a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023.",
					}),
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			cnONLY(i(33225, {	-- Reins of the Swift Spectral Tiger
				["description"] = "Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",
				["u"] = REMOVED_FROM_GAME,
			})),
		},
	}),
	expansion(EXPANSION.WRATH, {
		["timeline"] = { ADDED_3_4_0 },
		["groups"] = {
			q(72523, {	-- Festering Emerald Drake [2022 11th November until 15th January 2023]
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 72522 },	-- Festering Emerald Drake (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					28687,	-- Amisi Azuregaze
					29532,	-- Ajay Green
					31557,	-- Uda the Beast
					32413,	-- Isirami Fairwind
				},
				["groups"] = {
					i(201699, {	-- Festering Emerald Drake
						["description"] = "Obtained if you set up a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023.",
					}),
					-- Also part of 12 Month Sub. For Historys Sake
					-- i(23705),	-- Tabard of Flame
					-- i(200060),	-- Hopling

				},
				["u"] = REMOVED_FROM_GAME,
			}),
			q(74941, {	-- Flurky [2023 17th January until 31st July 2023]
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 74940 },	-- Flurky (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					28687,	-- Amisi Azuregaze
					29532,	-- Ajay Green
					31557,	-- Uda the Beast
					32413,	-- Isirami Fairwind
				},
				["groups"] = {
					i(187794),	-- Flurky
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			q(75492, {	-- Glub [2023 17th January until 31st July 2023]
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 75491 },	-- Glub (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					28687,	-- Amisi Azuregaze
					29532,	-- Ajay Green
					31557,	-- Uda the Beast
					32413,	-- Isirami Fairwind
				},
				["groups"] = {
					i(204982, {	-- Glub
						-- Description is under the 6 Months Promo?
					}),
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			q(70863, {	-- Hoplet [2023 17th January until 31st July 2023]
				["qg"] = 17249,	-- Landro Longshot <The Black Flame>
				["altQuests"] = { 70862 },	-- Hoplet (Innkeepers)
				["coords"] = {
					-- #if AFTER CATA
					{ 42.6, 71.6, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 28.2, 75.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["maps"] = {
					THE_EXODAR,
					IRONFORGE,
					STORMWIND_CITY,
					UNDERCITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["crs"] = {
					5111,	-- Innkeeper Firebrew <Innkeeper>
					6740,	-- Innkeeper Allison <Innkeeper>
					6746,	-- Innkeeper Pala <Innkeeper>
					6929,	-- Innkeeper Gryshka <Innkeeper>
					19232,	-- Innkeeper Haelthol <Innkeeper> (SCYRER)
					28687,	-- Amisi Azuregaze
					29532,	-- Ajay Green
					31557,	-- Uda the Beast
					32413,	-- Isirami Fairwind
				},
				["groups"] = {
					i(200060, {	-- Hoplet
					-- Description is under the 12 Months Promo
					-- ["description"] = "Obtained if you set up a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023 or a 6 Month WoW Subscription between 17th January 2023 until 31st July 2023.",
					}),
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			i(207097, {	-- Nightmarish Emerald Drake
				["description"] = "Obtained if you set up a 12 Month WoW Subscription after 27th October 2023.",
				["u"] = REMOVED_FROM_GAME,
			}),
			i(209877, {	-- Cypress
				["description"] = "Obtained if you set up a 6 Month WoW Subscription after 10th January 2024.",
				["u"] = REMOVED_FROM_GAME,
			}),
			mount(49290, {	-- Magic Rooster (TW Only)[2023 10th October until 8th January 2024]
				["description"] = "Obtained if you set up a 3 Month WoW Subscription between 10th October 2022 until 8th January 2024.",
				["u"] = REMOVED_FROM_GAME,
			}),
			i(74269, {	-- Blazing Hippogryph (TW Only)[2024 8th January until 8th April 2024] (Unknown which exact dates)
				["description"] = "Obtained if you set up a 3 Month WoW Subscription between 8th January 2024 until 8th April 2024.",
				["u"] = REMOVED_FROM_GAME,
			}),
			cnONLY(mount(471440, {	-- Skybound Spectral Tiger
				["timeline"] = { ADDED_3_4_0, REMOVED_4_4_0 },
				["description"] = "Can be bought for ¥1888 ($265 USD) or a discounted price of ¥588 ($82 USD) for owners of the original for a limited time in the Ingame Shop.",
			})),
			cnONLY(mount(1217476, {	-- Blazing Royal Fire Hawk (CN Only)
				["description"] = "Rewarded from the Treasure Workshop.",
				["timeline"] = { ADDED_3_4_0, REMOVED_4_4_0 },
			})),
			cnONLY(i(235378, {	-- Landro's Loot Box (CN Only)
				["description"] = "Can be bought for ¥200 RMB (~$27 USD) for a limited time in the Ingame Shop.",
				["timeline"] = { ADDED_3_4_0, REMOVED_4_4_0 },
				["groups"] = {
					cnONLY(i(227362)),	-- Golden Ashes of Al'ar (CN Only)
					cnONLY(i(49284)),	-- Reins of the Swift Spectral Tiger
					cnONLY(i(49283)),	-- Reins of the Spectral Tiger
					cnONLY(i(49286)),	-- X-51 Nether-Rocket X-TREME
					cnONLY(i(49285)),	-- X-51 Nether-Rocket
					cnONLY(i(45047)),	-- Sandbox Tiger
					cnONLY(i(35223)),	-- Papa Hummel's Old-Fashioned Pet Biscuit
					cnONLY(i(46779)),	-- Path of Cenarius
				},
			})),
		},
	}),
	expansion(EXPANSION.CATA, {
		["timeline"] = { ADDED_4_4_0 },
		["groups"] = {
			mount(463045, {	-- Lava Drake
				["description"] = "Obtained if you set up a 12 Month WoW Subscription after 15th October 2024.",
			}),
			i(224002, {	-- Swoopy
				["description"] = "Obtained if you set up a 12 Month WoW Subscription after 15th October 2024.",
			}),
		},
	}),
	-- #endif
}));