-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(78795, {	-- The Shaper's Terrace
	-- TODO: Placeholder instance ID. The dungeon isn't in the client's Map/AreaTable/DungeonEncounter data yet (checked through build 1.60.1.70450).
	-- Blizzard lists it for levels 58-60.
	--lore = "",
	icon = 409547,
	lvl = 58,
	--zoneTextAreaID = ,	-- The Shaper's Terrace
	--coord = { , MAP.UNGORO_CRATER },	-- The Shaper's Terrace (area 16985); entrance location unknown.
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(QUESTS, {
			
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   261809 (name unknown), the final boss credited for "The Shaper's Terrace" in Master Spelunker (62033 / 64018).
		e(, {	-- 
			creatureID = ,	-- 
			groups = {
				--i(),	-- 
			},
		}),
		]]--
	},
});