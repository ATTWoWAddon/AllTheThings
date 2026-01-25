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
			local dynamicData = dynamicWindow.data;
			if dynamicData then
				local g = app.CloneClassInstance(dynamicData).g;
				if g and #g > 0 then
					local progress, total = dynamicData.progress or 0, dynamicData.total or 0;
					row.ref.progress = progress;
					row.ref.total = total;
					row.ref.g = g;
					app.AssignChildren(row.ref);
				end
			end
		end
	end
end
local onUpdateForDynamicCategory = function(data)
	local window = data.dynamicWindow;
	data.progress = nil; data.total = nil;
	if window then
		window:ForceRebuild();
		--print("onUpdateForDynamicCategory", data.text, data.progress, data.total);
		local parent, total = data.parent, data.total;
		if parent and total then
			if not data.sourceIgnored then
				parent.progress = parent.progress + data.progress;
				parent.total = parent.total + total;
			end
			data.visible = app.GroupVisibilityFilter(data);
		else
			data.visible = true;
		end
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
	["OnClick"] = function(t)
		return onClickForDynamicCategory;
	end,
	["OnUpdate"] = function(t)
		return onUpdateForDynamicCategory;
	end,
});
end