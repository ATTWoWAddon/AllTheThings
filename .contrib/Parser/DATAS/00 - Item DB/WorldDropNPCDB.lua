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
local function AssignItemCrs(itemID, ...)
	local item = WorldDropItemDB[itemID]
	if not item.crs then item.crs = {} end
	for _,npcID in ipairs({...}) do
		item.crs[#item.crs + 1] = npcID
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
	11226,	-- Formula: Enchant Gloves - Riding Skill
	14510,	-- Pattern: Bottomless Bag
	14511, -- Pattern: Gloves of Spell Mastery
	14509, -- Pattern: Mooncloth Circlet
	14497, -- Pattern: Mooncloth Leggings
	14507, -- Pattern: Mooncloth Shoulders
	14501, -- Pattern: Mooncloth Vest
	20253, -- Pattern: Warbear Harness
	12698, -- Plans: Dawnbringer Shoulders
	12716, -- Plans: Helm of the Great Chief
	12728, -- Plans: Invulnerable Mail
	12717, -- Plans: Lionheart Helm
	7991, -- Plans: Mithril Scale Shoulders
	22390, -- Plans: Persuader
	12685, -- Plans: Radiant Belt
	12702, -- Plans: Radiant Circlet
	8028, -- Plans: Runed Mithril Hammer
	22389, -- Plans: Sageblade
	12703, -- Plans: Storm Gauntlets
	12720, -- Plans: Stronghold Gauntlets
	12692, -- Plans: Thorium Shield Spike
	22388, -- Plans: Titanic Leggings
	12711, -- Plans: Whitesoul Helm
	9297, -- Recipe: Elixir of Dream Vision
	13518, -- Recipe: Potion of Petrification
	13489, -- Recipe: Transmute Earth to Life
	13488, -- Recipe: Transmute Life to Earth
	13486, -- Recipe: Transmute Undeath to Water
	13487, -- Recipe: Transmute Water to Undeath
	16055, -- Schematic: Arcane Bomb
	16044, -- Schematic: Lifelike Mechanical Toad
	10608, -- Schematic: Sniper Scope
})
-- #IF BEFORE 4.0.3
AssignItemCrs(17963, 14889, 14888, 11583)	-- Green Sack of Gems
AssignItemCrs(17965, 14890, 6109, 11583)	-- Yellow Sack of Gems
-- #ENDIF

-- Further World Drops with best drop sources...
