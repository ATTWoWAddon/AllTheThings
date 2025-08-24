-- In case Items get randomly slapped with bad data from Blizz or get messed up with bubbleDowns
-- it can be cleaner to just _wipe the data here in one place than to finagle the random DATA files
-- in 50 different places trying to make the data work correctly and making the files even more
-- horrendous to look at

local Items = ItemDBConditional;
local i = function(itemID, drop)
	local item = { ["_wipe"] = type(drop) == "table" and drop or {drop} };
	Items[itemID] = item;
	return item;
end

for _,itemID in ipairs({
	 ARTISANS_METTLE,
	 ARTISANS_ACUITY,
}) do
	i(itemID, "requireSkill")
end
