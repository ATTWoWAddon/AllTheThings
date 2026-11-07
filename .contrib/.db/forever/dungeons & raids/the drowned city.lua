-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2970, {	-- The Drowned City
	-- Blizzard lists it for levels 35-40.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16550,	-- The Drowned City
	--coord = { , MAP.STRANGLETHORN_VALE },	-- Entrance in a cavern in the Vile Reef (see Locating the Lost City).
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 35,
	groups = {
		n(QUESTS, {
			q(96774, {	-- Ancient Gurubashi Idol
				qg = 264074,	-- Mazu'kon <Earthen Ring>
				coord = { 32.4, 20.6, MAP.MULGORE },
				races = HORDE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Ancient Gurubashi Idol
						provider = { "i", 276894 },	-- Ancient Gurubashi Idol
					}),
				},
			}),
			q(95788, {	-- Magics of the Drowned City
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/5 I'lalai Fetish
						provider = { "i", 270343 },	-- I'lalai Fetish
					}),
				},
			}),
			q(95787, {	-- Take Two With Water
				-- TODO: Wowhead doesn't list the quest giver yet. Use the hide and charcoal to make rubbings of the four tablets of I'lalai.
				timeline = { TIMELINE.CREATED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 The First Tablet of I'lalai
						provider = { "i", 270308 },	-- The First Tablet of I'lalai
					}),
					objective(2, {	-- 0/1 The Second Tablet of I'lalai
						provider = { "i", 270309 },	-- The Second Tablet of I'lalai
					}),
					objective(3, {	-- 0/1 The Third Tablet of I'lalai
						provider = { "i", 270310 },	-- The Third Tablet of I'lalai
					}),
					objective(4, {	-- 0/1 The Fourth Tablet of I'lalai
						provider = { "i", 270311 },	-- The Fourth Tablet of I'lalai
					}),
				},
			}),
			q(95775, {	-- The Drowned City
				-- TODO: Wowhead doesn't list the quest giver yet. Use the hide and charcoal to make rubbings of the four tablets of I'lalai.
				timeline = { TIMELINE.CREATED_1_60_1 },
				races = HORDE_ONLY,
				groups = {
					objective(1, {	-- 0/1 The First Tablet of I'lalai
						provider = { "i", 270308 },	-- The First Tablet of I'lalai
					}),
					objective(2, {	-- 0/1 The Second Tablet of I'lalai
						provider = { "i", 270309 },	-- The Second Tablet of I'lalai
					}),
					objective(3, {	-- 0/1 The Third Tablet of I'lalai
						provider = { "i", 270310 },	-- The Third Tablet of I'lalai
					}),
					objective(4, {	-- 0/1 The Fourth Tablet of I'lalai
						provider = { "i", 270311 },	-- The Fourth Tablet of I'lalai
					}),
				},
			}),
			q(95776, {	-- The Only Good Brinescale...
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				races = HORDE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Var'Taka slain
						provider = { "n", 258924 },	-- Var'Taka
					}),
					i(279889),	-- Naga Priestess's Mantle
					i(279888),	-- Tidesoaked Leggings
				},
			}),
		}),
		e(3474, {	-- Zul'Alai
			creatureID = 258905,	-- Zul'Alai
		}),
		e(3475, {	-- Var'Taka
			creatureID = 258924,	-- Var'Taka
		}),
		e(3476, {	-- Captain Dreadrise
			creatureID = 260042,	-- Captain Dreadrise
		}),
		e(3478, {	-- Deathless Guardians
			crs = {
				260213,	-- Deathless Guardian
				268478,	-- Deathless Guardian
			},
		}),
		e(3511, {	-- Primeval Elemental
			creatureID = 273738,	-- Primeval Elemental
		}),
		e(3479, {	-- Min'loth the Serpent
			crs = {
				260243,	-- Min'loth the Serpent
				260274,	-- Min'loth the Serpent
			},
		}),
	},
});