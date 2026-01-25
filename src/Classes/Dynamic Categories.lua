do
local ipairs, app = ipairs, select(2, ...);
local onClickForDynamicCategory = function(row, button)
	local window = row.ref.dynamicWindow;
	if window then
		if button == "RightButton" then
			window:Toggle();
			return true;
		elseif not row.ref.g or #row.ref.g < 1 then
			print("LEFT CLICK", row.ref.text);
			if #window.data.g < 1 then window:ForceRebuild(); end
			if #window.data > 0 then
				local progress, total = window.data.progress or 0, window.data.total or 0;
				local g = app.CloneClassInstance(window.data).g;
				for i,o in ipairs(g) do
					o.parent = row.ref;
				end
				row.ref.g = g;
				row.ref.progress = progress;
				row.ref.total = total;
				prime:Refresh();
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