-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, tinsert, tonumber, tostring
	= ipairs, pairs, tinsert, tonumber, tostring;

-- Implementation
local __SearchSetup = {
	field = nil,
	value = nil,
	drop = {g=true},
	criteria = nil
}
local SearchSetup
local function ParseCommand(self, cmd)
	if cmd and cmd ~= "" then

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
		-- do a search for a direct filterID
		if f and f >= 0 and (SearchSetup.value ~= f or SearchSetup.field ~= "f") then
			SearchSetup.field = "f"
			SearchSetup.value = f
			SearchSetup.criteria = nil
			wipe(self.data.g);
			self:Rebuild();
			return
		end
		-- direct field=value search
		if cmd then
			local field, value = ("="):split(cmd)
			value = tonumber(value) or value
			if value and value ~= "" then
				-- allows performing a value search when looking for 'nil'
				if value == "nil" then
					value = app.Modules.Search.SearchNil
				-- use proper bool values if specified
				elseif value == "true" then
					value = true
				elseif value == "false" then
					value = false
				end
			else
				value = true
			end
			if SearchSetup.field ~= field or SearchSetup.value ~= value then
				SearchSetup.field = field
				SearchSetup.value = value
				SearchSetup.criteria = nil
				wipe(self.data.g);
				self:Rebuild();
				return
			end
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
		SearchSetup = settings.SearchSetup or __SearchSetup
		-- convert old settings values
		if settings.FilterID then
			SearchSetup.field = "f"
			SearchSetup.value = settings.FilterID
			settings.FilterID = nil
		end
	end,
	OnSave = function(self, settings)
		settings.SearchSetup = SearchSetup
	end,
	OnInit = function(self, handlers)
		local options = {
			app.CreateRawText(L.ITEM_FILTER_BUTTON_TEXT, {	-- Filter
				icon = 134941,
				description = L.ITEM_FILTER_BUTTON_DESCRIPTION,
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					app:ShowPopupDialogWithEditBox(L.ITEM_FILTER_POPUP_TEXT, (SearchSetup.field and SearchSetup.field ~= "f" and SearchSetup.field.."=" or "")..tostring(SearchSetup.value), function(cmd)
						ParseCommand(self, cmd);
					end);
					return true;
				end,
				OnUpdate = function(data)
					if SearchSetup.field == "f" and SearchSetup.value then
						data.text = "Filter: " .. (L.FILTER_ID_TYPES[SearchSetup.value] or "???") .. " (" .. SearchSetup.value .. ")";
					elseif SearchSetup.field and SearchSetup.value then
						data.text = "Filter: "..SearchSetup.field.."="..tostring(SearchSetup.value)
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
						option.parent = t.data;
						tinsert(g, option);
					end
					if SearchSetup.value then
						local results = app:BuildSearchResponseRetailStyle(SearchSetup.field, SearchSetup.value, SearchSetup.drop, SearchSetup.criteria)
						if results and #results > 0 then
							for i=1,#results do
								g[#g + 1] = results[i]
							end
							self:AssignChildren();
						end
					end
				end
			end,
		}));
	end,
	-- This seems really strange to include here, and it's preventing various results from being visible when they otherwise should be
	-- OnUpdate = function(self, ...)
	-- 	-- Prevent Quests and Achievements from being collectible within this context.
	-- 	local oldAchievementsCollection = app.Settings.Collectibles.Achievements;
	-- 	local oldQuestCollection = app.Settings.Collectibles.Quests;
	-- 	local oldFilder = app.Modules.Filter.Get.FilterID()
	-- 	app.Modules.Filter.Set.FilterID(false);
	-- 	app.Settings.Collectibles.Achievements = false;
	-- 	app.Settings.Collectibles.Quests = false;
	-- 	self:DefaultUpdate(...);
	-- 	app.Modules.Filter.Set.FilterID(oldFilder);
	-- 	app.Settings.Collectibles.Quests = oldQuestCollection;
	-- 	app.Settings.Collectibles.Achievements = oldAchievementsCollection;
	-- 	return true;
	-- end
});
