--------------------------------------------------------------------------------------------------------------------------------------
--	READ ME:																														--
--	This file contains the following seactions:	Loading Dock, Not Sorted, and Sorted.												--
--	New entries should be added to the Loading Dock, unless you know which patch it came with. Then it can go directly to Sorted.	--
--------------------------------------------------------------------------------------------------------------------------------------
local Items = root(ROOTS.Uncollectible);
local NonCollectibleItems = ItemDBConditional
local i = function(itemID, t)
	-- need the ID within the group even though it's saved via ID
	local item = t or {}
	item.itemID = itemID
	if t then
		-- if we're applying additional data for non-collectible items, they need to go into ItemDBConditional for proper merging
		NonCollectibleItems[itemID] = item
	else
		Items[itemID] = item
	end
	return item
end
-------------------------------------------------------------------- LOADING DOCK --------------------------------------------------------------------
-- Put items between these two bars if you dont want to sort them /Braghe
i(6457);	-- Rusted Engineering Parts
i(4491,{collectible=false})	-- Goggles of Gem Hunting
i(6653,{collectible=false})	-- Torch of the Dormant Flame
i(9978,{collectible=false})	-- Gahz'ridian Detector
i(16967,{collectible=false})	-- Feralas Ahi
-------------------------------------------------------------------- LOADING DOCK --------------------------------------------------------------------

-- Sorted by QuestDB API
i(18595);	-- Blood Opal ("Retrieving Data" in-game)
i(20834);	-- Ornate Spyglass XT ("Retrieving Data" in-game)
i(23794);	-- Permanent Sheen of Zanza ("Retrieving Data" in-game)
i(23795);	-- Permanent Spirit of Zanza ("Retrieving Data" in-game)
i(23796);	-- Permanent Swiftness of Zanza ("Retrieving Data" in-game)
-- Quest Items
i(17224);	-- Scrying Scope
i(17364);	-- Scrying Scope
-- "Toy"
i(2460);	-- Elixir of Tongues
