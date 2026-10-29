-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(3109, {	-- Manor Mistmantle
	-- TODO: Map 3109 is in the client data, but the dungeon isn't on Blizzard's launch list and Wowhead has no bosses or quests for it yet; marked CREATED until confirmed.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 17191,	-- Manor Mistmantle
	--coord = { 74.4, 33.7, MAP.DUSKWOOD },	-- Manor Mistmantle (area 1098); verify the entrance.
	timeline = { TIMELINE.CREATED_1_60_1 },
	groups = {
		n(QUESTS, {
			
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   None found yet.
		e(, {	--
			creatureID = ,	--
			groups = {
				--i(),	--
			},
		}),
		]]--
	},
});