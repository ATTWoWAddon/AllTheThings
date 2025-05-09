-- App locals
local appName, app = ...;
local L = app.L

local tinsert,ipairs,type
	= tinsert,ipairs,type

-- Some common UI functions (TBD)
app.UI = {
	OnClick = {
		IgnoreRightClick = function(row, button)
			return button == "RightButton";
		end
	}
}

-- TODO: this doesnt really belong in this file imo... but can move around later for both Classic/Retail
do
	local FilterBind = app.Modules.Filter.Filters.Bind
	local function SearchForMissingItemsRecursively(group, listing)
		-- app.PrintDebug("SearchForMissingItemsRecursively",app:SearchLink(group))
		if group.visible then
			if group.itemID and (group.collectible or (group.total and group.total > 0)) and not FilterBind(group) then
				tinsert(listing, group);
			end
			if group.g and group.expanded then
				-- Go through the sub groups and determine if any of them have a response.
				for i, subgroup in ipairs(group.g) do
					SearchForMissingItemsRecursively(subgroup, listing)
				end
			end
		end
	end
app.Search = {
	SearchForMissingItemsRecursively = SearchForMissingItemsRecursively
}
end

local function GetUnobtainableTexture(group)
	if not group then return; end
	if type(group) ~= "table" then
		-- This function shouldn't be used with only u anymore!
		app.print("Invalid use of GetUnobtainableTexture", group);
		return;
	end

	-- Determine the texture color, default is green for events.
	-- TODO: Use 4 for inactive events, use 5 for active events
	local filter, u = 4, group.u;
	if u then
		-- only b = 0 (BoE), not BoA/BoP
		-- removed, elite, bmah, tcg, summon
		if u > 1 and u < 12 and group.itemID and (group.b or 0) == 0 then
			filter = 2;
		else
			local phase = L.PHASES[u];
			if phase then
				if not phase.buildVersion or app.GameBuildVersion < phase.buildVersion then
					filter = phase.state or 0;
				else
					-- This is a phase that's available. No icon.
					return;
				end
			else
				-- otherwise it's an invalid unobtainable filter
				app.print("Invalid Unobtainable Filter:",u);
				return;
			end
		end
		return L.UNOBTAINABLE_ITEM_TEXTURES[filter];
	end
	if group.e then
		return L.UNOBTAINABLE_ITEM_TEXTURES[app.Modules.Events.FilterIsEventActive(group) and 5 or 4];
	end
	-- any item which is 'missing' will show as unobtainable to differentiate itself (maybe new icon sometime?)
	if group.itemID and group._missing then
		return L.UNOBTAINABLE_ITEM_TEXTURES[6]
	end
end
app.GetUnobtainableTexture = GetUnobtainableTexture