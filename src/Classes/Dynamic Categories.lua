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
local onUpdateForDynamicCategory = function(o)
	local window = o.dynamicWindow;
	o.progress = nil;
	o.total = nil;
	if window then
		local data = window.data;
		if data then
			if o.g then
				o.progress = 0;
				o.total = 0;
			else
				o.progress = data.progress or 0;
				o.total = data.total or 0;
			end
			o.visible = app.GroupVisibilityFilter(data);
			return true;
		end
	end
	o.visible = false;
	return true;
end
app.CreateDynamicCategory = app.CreateClass("DynamicCategory", "suffix", {
	dynamicWindow = function(t)
		local window = app:GetWindow(t.suffix);
		if window then t.dynamicWindow = window; return window; end
		return app.EmptyTable;
	end,
	dynamicWindowData = function(t)
		return t.dynamicWindow.data or app.EmptyTable;
	end,
	IgnoreBuildRequests = app.ReturnTrue,
	name = function(t)
		return t.dynamicWindowData.text or ("Dynamic Category: " .. t.suffix);
	end,
	icon = function(t)
		return t.dynamicWindowData.icon or 134064;
	end,
	description = function(t)
		return t.dynamicWindowData.description;
	end,
	g = function(t)
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
	OnClick = function(t)
		return onClickForDynamicCategory;
	end,
	OnUpdate = function(t)
		return onUpdateForDynamicCategory;
	end,
});
end