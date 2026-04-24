-- The goal of this DB is to link various NPCID to World Drops which they are considered the 'best' or a 'viable' Source to obtain the World Drop
-- based on Wowhead drop chances or general community feedback

-- The only purpose for hooking in NPCIDs onto the drops is to allow those World Drops to 'fill' (in Retail) under any Source of those respective NPCs
-- when seen in a tooltip or minilist/popout
-- i.e. Nefarian in BWL being a viable NPC Source for many of the World Drop Recipes from Classic

local WorldDropItemDB = ItemDBConditional
local function AssignNPC(npcIDs, itemIDs)
	if type(npcIDs) ~= "table" then npcIDs = { npcIDs } end
	if type(itemIDs) ~= "table" then itemIDs = { itemIDs } end

	local item
	for _,itemID in ipairs(itemIDs) do
		item = WorldDropItemDB[itemID]
		if not item.crs then item.crs = {} end
		for _,npcID in ipairs(npcIDs) do
			item.crs[#item.crs + 1] = npcID
		end
	end
end
-- Allows for item records to easily be copied into this file without needing to remove the function shortcut
local function i(itemID) return itemID end

AssignNPC({
	-- NPCs
	11583,	-- Nefarian
	10162,	-- Lord Victor Nefarius
},{
	-- Items
	i(11226),	-- Formula: Enchant Gloves - Riding Skill (RECIPE!)
	i(14510),	-- Pattern: Bottomless Bag (RECIPE!)
	-- TODO: Ref. https://github.com/ATTWoWAddon/AllTheThings/issues/2213
})

-- Further World Drops with best drop sources...
