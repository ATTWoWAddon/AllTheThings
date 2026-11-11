-- There is not currently an automatic way to know whether an Item is BoA or BoP since in both
-- situations [b] = 1
-- Items listed in this file will be directly marked as BoE to allow ATT to properly
-- treat them for their BoA status
local Items = ItemDBConditional;
-- Regular BoA/WuE Item
local i = function(itemID)
	local item = { b = 2 };
	Items[itemID] = item;
	return item;
end
-- BoA/WuE Item forcibly ignoring bonuses (i.e. within Difficulties etc.)

-- TODO: move more BoA items here; especially if they are 'cost' items or contain BoP items

i(226500);	-- Chipped Drakefire Amulet
