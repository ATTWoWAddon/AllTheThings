-- In case the BNet API harvest does not properly indicate that an Item is BoP, it can be defined here for clarity so as to not clutter DATA files
local Items = ItemDBConditional;
local i = function(itemID)
	local item = { ["b"] = 1 };
	Items[itemID] = item;
	return item;
end

-- DF
i(204255);	-- Cracked Titan Gem
