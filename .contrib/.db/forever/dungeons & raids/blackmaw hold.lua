-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(78794, {	-- Blackmaw Hold
	-- TODO: Placeholder instance ID. The dungeon isn't in the client's Map/AreaTable/DungeonEncounter data yet (checked through build 1.60.1.70450).
	-- Blizzard lists it for levels 55-60.
	--lore = "",
	icon = 409547,
	lvl = 55,
	--zoneTextAreaID = ,	-- Blackmaw Hold
	--coord = { 37.2, 33.3, MAP.AZSHARA },	-- Blackmaw Hold (area 1216); verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(QUESTS, {
			
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   247234 (name unknown), the final boss credited for "Blackmaw Hold" in Master Spelunker (62033 / 64018).
		e(, {	-- 
			creatureID = ,	-- 
			groups = {
				--i(),	-- 
			},
		}),
		]]--
	},
});