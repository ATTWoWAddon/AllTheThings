--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

root(ROOTS.Holidays, applyevent(EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA, n(createHeader({
	readable = "Stranglethorn Fishing Extravaganza",
	icon = [[_.asset("Holiday_STV_Fishing")]],
	eventID = EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA,
	text = {
		en = "Stranglethorn Fishing Extravaganza",
		de = "Anglerwettbewerb im Schlingendorntal",
		es = "Gran espectáculo de pesca de Tuercespina",
		mx = "Gran espectáculo de pesca de Tuercespina",
		fr = "Concours de pêche de Strangleronce",
		it = "Gara di Pesca a Rovotorto",
		ko = "가시덤불 골짜기 낚시왕 선발대회",
		pt = "Festerê de Pesca da Selva do Espinhaço",
		ru = "Рыбомания Тернистой долины",
		cn = "荆棘谷钓鱼大赛",
		tw = "荊棘谷釣魚大賽",
	},
}), {
	description = "The Stranglethorn Fishing Extravaganza is a weekly fishing event held every Sunday in Stranglethorn Vale. There is a highly competitive fishing contest and a more casual rare fish turn-in for this event.",
	maps = { MAP.STRANGLETHORN_VALE },
	groups = {
		n(QUESTS, {
			q(8194, {	-- Apprentice Angler
				qg = 15078,	-- Jang <Fishmaster Apprentice>
				coord = { 27.4, 76.9, MAP.STRANGLETHORN_VALE },
				cost = { { "i", 19807, 5 } },	-- 5x Speckled Tastyfish
				requireSkill = FISHING,
				repeatable = true,
			}),
			q(8229, {	-- Could I get a Fishing Flier?
				qg = 15119,	-- Barrus <Fishing Promoter>
				coord = { 28.2, 74.4, MAP.IRONFORGE },
				requireSkill = FISHING,
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = 35,
				groups = {
					i(19978),	-- Fishing Tournament!
				},
			}),
			q(8228, {	-- Could I get a Fishing Flier?
				qg = 15116,	-- Grinkle <Fishing Promoter>
				coord = { 52.4, 73.0, MAP.ORGRIMMAR },
				requireSkill = FISHING,
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 35,
				groups = {
					i(19978),	-- Fishing Tournament!
				},
			}),
			q(8193, {	-- Master Angler / Grand Prize (after 5.1.0)
				qg = 15077,	-- Riggle Bassbait <Fishmaster>
				coord = { 27.4, 76.9, MAP.STRANGLETHORN_VALE },
				cost = { { "i", 19807, 40 } },	-- 40x Speckled Tastyfish
				_drop = { "g" },	-- API lists all quest rewards despite not being available in classic
				requireSkill = FISHING,
				repeatable = true,
				groups = {
					i(19970),	-- Arcanite Fishing Pole
					i(19979),	-- Hook of the Master Angler
				},
			}),
			q(8225, {	-- Rare Fish - Brownell's Blue Striped Racer
				qg = 15079,	-- Fishbot 5000
				coord = { 27.4, 76.9, MAP.STRANGLETHORN_VALE },
				cost = { { "i", 19803, 1 } },	-- 1x Brownell's Blue Striped Racer
				requireSkill = FISHING,
				repeatable = true,
				groups = {
					i(19969),	-- Nat Pagle's Extreme Anglin' Boots
				},
			}),
			q(8224, {	-- Rare Fish - Dezian Angelfish
				qg = 15079,	-- Fishbot 5000
				coord = { 27.4, 76.9, MAP.STRANGLETHORN_VALE },
				cost = { { "i", 19806, 1 } },	-- 1x Dezian Angelfish
				requireSkill = FISHING,
				repeatable = true,
				groups = {
					i(19971),	-- High Test Eternium Fishing Line
				},
			}),
			q(8221, {	-- Rare Fish - Keefer's Angelfish
				qg = 15079,	-- Fishbot 5000
				coord = { 27.4, 76.9, MAP.STRANGLETHORN_VALE },
				cost = { { "i", 19805, 1 } },	-- 1x Keefer's Angelfish
				requireSkill = FISHING,
				repeatable = true,
				groups = {
					i(19972),	-- Lucky Fishing Hat
				},
			}),
			q(97066, {	-- Tip the Scales - Brownell's Blue Striped Racer
				-- TODO: Wowhead doesn't list the quest giver yet.
				cost = { { "i", 19803, 1 } },	-- Brownell's Blue Striped Racer
				requireSkill = FISHING,
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(19807),	-- Speckled Tastyfish (x3)
				},
			}),
			q(97067, {	-- Tip the Scales - Dezian Queenfish
				-- TODO: Wowhead doesn't list the quest giver yet.
				cost = { { "i", 19806, 1 } },	-- Dezian Queenfish
				requireSkill = FISHING,
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(19807),	-- Speckled Tastyfish (x3)
				},
			}),
			q(97065, {	-- Tip the Scales - Keefer's Angelfish
				-- TODO: Wowhead doesn't list the quest giver yet.
				cost = { { "i", 19805, 1 } },	-- Keefer's Angelfish
				requireSkill = FISHING,
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(19807),	-- Speckled Tastyfish (x3)
				},
			}),
		}),
		prof(FISHING, {
			o(180248, {	-- School of Tastyfish
				i(19803),	-- Brownell's Blue Striped Racer
				i(19806),	-- Dezian Queenfish
				i(19805),	-- Keefer's Angelfish
				i(19808),	-- Rockhide Strongfish
				i(19807),	-- Speckled Tastyfish
			}),
		}),
		n(VENDORS, {
			n(15078, {	-- Jang <Fishing Extravaganza Prizes>
				coord = { 27.4, 76.8, MAP.STRANGLETHORN_VALE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(276275, {	-- Bitter Baitling (PET!)
						cost = { { "i", 274026, 1 } },	-- 1x Extravagant Extravaganza Coin
					}),
					i(276273, {	-- Empty Fish Bucket
						cost = { { "i", 274026, 1 } },	-- 1x Extravagant Extravaganza Coin
					}),
					i(276278, {	-- Handful of Coins
						cost = { { "i", 19807, 1 } },	-- 1x Speckled Tastyfish
					}),
					i(276280, {	-- Hefty Sack of Coins
						cost = { { "i", 19807, 10 } },	-- 10x Speckled Tastyfish
					}),
					i(276272, {	-- Master Angler's Fishing Hat
						cost = { { "i", 274026, 1 } },	-- 1x Extravagant Extravaganza Coin
					}),
					i(274974, {	-- Message in a Bottle
						cost = { { "i", 19807, 20 } },	-- 20x Speckled Tastyfish
					}),
					i(276279, {	-- Small Bag of Coins
						cost = { { "i", 19807, 5 } },	-- 5x Speckled Tastyfish
					}),
					i(276274, {	-- Surfer Shoes
						cost = { { "i", 274026, 1 } },	-- 1x Extravagant Extravaganza Coin
					}),
				},
			}),
		}),
	},
})));
