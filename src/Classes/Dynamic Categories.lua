do
local ipairs, app = ipairs, select(2, ...);
local onClickForDynamicCategory = function(row, button)
	local window = row.ref.dynamicWindow;
	if window then
		if button == "RightButton" then
			window:Toggle();
			return true;
		elseif not row.ref.g or #row.ref.g < 1 then
			if not window:IsShown() then
				window:ForceRebuild();
				row.ref.progress = window.data.progress;
				row.ref.total = window.data.total;
				row.ref.visible = app.GroupVisibilityFilter(window.data);
			end
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
		if window then
			window:RegisterRefreshCallback(function(TLUG)
				if t.__lastTLUG ~= TLUG then
					local w = app.GetRelativeValue(t, "window");
					t.progress = window.data.progress; t.total = window.data.total;
					t.visible = app.GroupVisibilityFilter(window.data);
					app.CallbackHandlers.DelayedCallback(t.expanded and w.Update or w.Redraw, 0.1, w, true);
				end
			end);
			t.dynamicWindow = window;
			return window;
		end
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
			local g = t.dynamicWindowData.g;
			if g and t.__lastTLUG ~= t.dynamicWindowData.TLUG then
				t.__lastTLUG = t.dynamicWindowData.TLUG
				local newG = app.CloneClassInstance(g);
				if newG and #newG > 0 then
					for i,o in ipairs(newG) do
						o.parent = t;
					end
					t.__clonedG = newG;
				end
				return newG;
			end
		end
		return t.__clonedG;
	end,
	OnClick = function(t)
		return onClickForDynamicCategory;
	end,
	OnUpdate = function(t)
		return onUpdateForDynamicCategory;
	end,
});
end