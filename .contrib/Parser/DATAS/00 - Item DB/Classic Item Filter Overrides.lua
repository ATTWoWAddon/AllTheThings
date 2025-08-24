-- #IF ANYCLASSIC

local Items = ItemDBConditional

-- This file should be used to manually apply any filters to Classic versions of Items which don't parse correctly
-- due to incorrect or missing Classic ItemDBs

local function i(itemID, filterID)
	local item = {f = filterID}
	Items[itemID] = item
end


i(69638, FIST_WEAPONS); -- Arlokk's Claws
i(69620, DAGGERS);	-- Twinblade of the Hakkari
i(57928, ONE_HANDED_AXES);	-- Windslicer


-- #ENDIF
