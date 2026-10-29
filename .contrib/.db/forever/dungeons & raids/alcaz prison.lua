-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(78793, {	-- Alcaz Prison
	-- TODO: Placeholder instance ID. The dungeon isn't in the client's Map/AreaTable/DungeonEncounter data yet (checked through build 1.60.1.70450).
	-- Blizzard lists it for levels 48-53.
	--lore = "",
	icon = 409547,
	lvl = 48,
	--zoneTextAreaID = ,	-- Alcaz Prison
	--coord = { 75.6, 17.6, MAP.DUSTWALLOW_MARSH },	-- Alcaz Island; verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(QUESTS, {
			
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   255702 (name unknown), the final boss credited for "Alcaz Prison" in Master Spelunker (62033 / 64018).
		e(, {	-- 
			creatureID = ,	-- 
			groups = {
				--i(),	-- 
			},
		}),
		]]--
	},
});