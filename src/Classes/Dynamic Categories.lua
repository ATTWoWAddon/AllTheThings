do
local ipairs, app = ipairs, select(2, ...);
local onClickForDynamicCategory = function(row, button)
	local dynamicWindow = row.ref.dynamicWindow;
	if dynamicWindow then
		if button == "RightButton" then
			dynamicWindow:Toggle();
			return true;
		elseif not row.ref.g or #row.ref.g < 1 then
			dynamicWindow:ForceRebuild();
		end
	end
end
local onUpdateForDynamicCategory = function(data)
	local window = data.dynamicWindow;
	data.progress = nil; data.total = nil;
	if window then
		data.visible = app.GroupVisibilityFilter(window.data);
	else
		data.visible = false;
	end
	return true;
end
app.CreateDynamicCategory = app.CreateClass("DynamicCategory", "suffix", {
	["dynamicWindow"] = function(t)
		local window = app:GetWindow(t.suffix);
		if window then t.dynamicWindow = window; return window; end
		return app.EmptyTable;
	end,
	["dynamicWindowData"] = function(t)
		return t.dynamicWindow.data or app.EmptyTable;
	end,
	["IgnoreBuildRequests"] = function(t)
		return true;
	end,
	["name"] = function(t)
		return t.dynamicWindowData.text or ("Dynamic Category: " .. t.suffix);
	end,
	["icon"] = function(t)
		return t.dynamicWindowData.icon or 134064;
	end,
	["description"] = function(t)
		return t.dynamicWindowData.description;
	end,
	["progress"] = function(t)
		return t.dynamicWindowData.progress;
	end,
	["total"] = function(t)
		return t.dynamicWindowData.total;
	end,
	["g"] = function(t)
		if t.expanded then
			local lastG = t.__lastG;
			local g = t.dynamicWindowData.g;
			if g and lastG ~= g then
				t.__lastG = g;
				local newG = app.CloneClassInstance(g);
				if newG and #newG > 0 then
					for i,o in ipairs(newG) do
						o.parent = t;
					end
					t.__clonedG = newG;
				end
				return newG;
			end
			return t.__clonedG;
		end
	end,
	["OnClick"] = function(t)
		return onClickForDynamicCategory;
	end,
	["OnUpdate"] = function(t)
		return onUpdateForDynamicCategory;
	end,
});
end