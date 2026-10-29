-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(78791, {	-- The Drowned City
	-- TODO: Placeholder instance ID. The Drowned City isn't in the client's Map/AreaTable/DungeonEncounter data yet (checked through build 1.60.1.70450).
	-- Blizzard lists it for levels 35-40.
	--lore = "",
	icon = 409547,
	lvl = 35,
	--zoneTextAreaID = ,	-- The Drowned City
	--coord = { , MAP.STRANGLETHORN_VALE },	-- Entrance in a cavern in the Vile Reef (see Locating the Lost City).
	timeline = { TIMELINE.ADDED_1_60_1 },
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
				races = ALLIANCE_ONLY,
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/5 I'lalai Fetish
						provider = { "i", 270343 },	-- I'lalai Fetish
					}),
				},
			}),
			q(95787, {	-- Take Two With Water
				races = ALLIANCE_ONLY,
				-- TODO: Wowhead doesn't list the quest giver yet. Use the hide and charcoal to make rubbings of the four tablets of I'lalai.
				timeline = { TIMELINE.CREATED_1_60_1 },
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
				races = HORDE_ONLY,
				-- TODO: Wowhead doesn't list the quest giver yet. Use the hide and charcoal to make rubbings of the four tablets of I'lalai.
				timeline = { TIMELINE.CREATED_1_60_1 },
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
				races = HORDE_ONLY,
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Var'Taka slain
						provider = { "n", 258924 },	-- Var'Taka
					}),
					i(279889),	-- Naga Priestess's Mantle
					i(279888),	-- Tidesoaked Leggings
				},
			}),
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   Var'Taka (258924), the kill target for The Only Good Brinescale...
		--   260274 (name unknown), the final boss credited for "The Drowned City" in Experienced Spelunker (62032 / 64017).
		e(, {	-- Var'Taka
			creatureID = 258924,	-- Var'Taka
			groups = {
				--i(),	-- 
			},
		}),
		e(, {	-- 
			creatureID = 260274,	-- 
			groups = {
				--i(),	-- 
			},
		}),
		]]--
	},
});