-- App locals
local _, app = ...;
local L = app.L

local type
	= type

-- Some common UI functions (TBD)
app.UI = {
	OnClick = {
		IgnoreRightClick = function(row, button)
			return button == "RightButton"
		end,
		OnlySortingRightClick = function(row, button)
			if button == "LeftButton" then return end

			return button == "RightButton" and not IsShiftKeyDown()
		end,
	}
}

-- TODO: this doesnt really belong in this file imo... but can move around later for both Classic/Retail
do
	local FilterBind = app.Modules.Filter.Filters.Bind
	local function SearchForMissingItemsRecursively(group, listing)
		-- app.PrintDebug("SearchForMissingItemsRecursively",app:SearchLink(group))
		if group.visible then
			if group.itemID and (group.collectible or (group.total and group.total > 0)) and not FilterBind(group) then
				listing[#listing + 1] = group
			end
			local g = group.g
			if g and group.expanded then
				-- Go through the sub groups and determine if any of them have a response.
				for i=1,#g do
					SearchForMissingItemsRecursively(g[i], listing)
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
	local u = group.u;
	if u then
		local phase = L.PHASES[u];
		if phase then
			if not phase.buildVersion and group.itemID then
				local b = group.b or 0;
				if b == 2 or b == 0 then	-- BoE or Unbound
					return L.UNOBTAINABLE_ITEM_TEXTURES[2];
				end
			end
			if not phase.buildVersion or app.GameBuildVersion < phase.buildVersion then
				return L.UNOBTAINABLE_ITEM_TEXTURES[phase.state];
			end
		end
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

-- Returns an applicable Indicator Icon Texture for the specific group if one can be determined
local function GetIndicatorIcon(group)
	-- Use the group's own indicator if defined
	local groupIndicator = group.indicatorIcon
	if groupIndicator then return groupIndicator end

	-- Otherwise use some common logic
	if group.saved then
		if group.parent and group.parent.locks or group.repeatable then
			return app.asset("known");
		else
			return app.asset("known_green");
		end
	end
	return GetUnobtainableTexture(group);
end
app.GetIndicatorIcon = GetIndicatorIcon

-- Window Creation
app.Windows = {};