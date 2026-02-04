-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, tinsert, tonumber, tostring
	= ipairs, pairs, tinsert, tonumber, tostring;

-- Implementation
local FilterID = 0;
local function ParseCommand(self, cmd)
	if cmd and cmd ~= "" then
		cmd = cmd:lower();
		
		local text = cmd:lower();
		local f = tonumber(text);
		if text ~= "" and tostring(f) ~= text then
			text = text:gsub("-", "%%-");
			-- app.PrintDebug("search match",text)
			-- The string form did not match, the filter must have been by name.
			for id,filter in pairs(L.FILTER_ID_TYPES) do
				if filter:lower():match(text) then
					f = tonumber(id);
					break;
				end
			end
		end
		if f and f >= 0 and FilterID ~= f then
			FilterID = f;
			wipe(self.data.g);
			collectgarbage();
			self:Rebuild();
		end
	end
end
app:CreateWindow("Item Filter", {
	Commands = { "attfilter" },
	OnCommand = function(self, args, params)
		local cmd = args[1];
		if cmd and cmd:len() > 0 then
			ParseCommand(self, cmd);
			if self:IsShown() then
				return true;
			end
		end
	end,
	OnLoad = function(self, settings)
		FilterID = settings.FilterID;
	end,
	OnSave = function(self, settings)
		settings.FilterID = FilterID;
	end,
	OnInit = function(self, handlers)
		local options = {
			app.CreateRawText(RETRIEVING_DATA, {	-- Filter
				icon = 134941,
				description = "Press this button to change the filter.\n\nChanging this value will only show items that match the given filter ID.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					app:ShowPopupDialogWithEditBox("Please enter a new filter ID", tostring(FilterID), function(cmd)
						ParseCommand(self, cmd);
					end);
					return true;
				end,
				OnUpdate = function(data)
					if FilterID then
						data.text = "Filter: " .. (L.FILTER_ID_TYPES[FilterID] or "???") .. " (" .. FilterID .. ")";
					else
						data.text = "Click to change the filter";
					end
					return true;
				end,
			}),
		};
		self:SetData(app.CreateRawText(L.ITEM_FILTER_TEXT, {
			icon = app.asset("Category_ItemSets"),
			description = L.ITEM_FILTER_DESCRIPTION,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = data;
						tinsert(g, option);
					end
					if FilterID then
						local results = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(t)
							return t.f == FilterID;
						end);
						if results and #results > 0 then
							for i,result in ipairs(results) do
								tinsert(g, result);
							end
							self:AssignChildren();
						end
					end
				end
			end,
		}));
	end,
	OnUpdate = function(self, ...)
		-- Prevent Quests and Achievements from being collectible within this context.
		local oldAchievementsCollection = app.Settings.Collectibles.Achievements;
		local oldQuestCollection = app.Settings.Collectibles.Quests;
		local oldFilder = app.Modules.Filter.Get.FilterID()
		app.Modules.Filter.Set.FilterID(false);
		app.Settings.Collectibles.Achievements = false;
		app.Settings.Collectibles.Quests = false;
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.FilterID(oldFilder);
		app.Settings.Collectibles.Quests = oldQuestCollection;
		app.Settings.Collectibles.Achievements = oldAchievementsCollection;
		return true;
	end
});
