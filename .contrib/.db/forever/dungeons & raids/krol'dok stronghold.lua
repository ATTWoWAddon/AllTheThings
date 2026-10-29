-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(78792, {	-- Krol'dok Stronghold
	-- TODO: Placeholder instance ID. The dungeon isn't in the client's Map/AreaTable/DungeonEncounter data yet (checked through build 1.60.1.70450).
	-- Blizzard lists it for levels 40-45.
	--lore = "",
	icon = 409547,
	lvl = 40,
	--zoneTextAreaID = ,	-- Krol'dok Stronghold
	--coord = { 42.0, 21.5, MAP.BADLANDS },	-- Estimated from the Krol'dok Stronghold exploration area (17780, Riverglades); verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(QUESTS, {
			
		}),
		--[[
		-- TODO: Encounter IDs aren't in DungeonEncounter yet. Known bosses:
		--   258968 (name unknown), the final boss credited for "Krol'dok Stronghold" in Experienced Spelunker (62032 / 64017).
		e(, {	-- 
			creatureID = ,	-- 
			groups = {
				--i(),	-- 
			},
		}),
		]]--
	},
});