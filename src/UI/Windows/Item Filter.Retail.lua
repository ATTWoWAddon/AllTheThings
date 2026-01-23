-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local pairs, wipe, tinsert, tonumber, tostring
	= pairs, wipe, tinsert, tonumber, tostring
local ArrayAppend
	= app.ArrayAppend

-- Implementation
app.AddCustomWindowOnUpdate("ItemFilter", function(self, force)
	if self:IsVisible() then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		if not self.initialized then
			self.initialized = true;

			function self:Clear()
				local temp = self.data.g[1];
				wipe(self.data.g);
				tinsert(self.data.g, temp);
			end

			function self:Search(field, value)
				value = value or true
				-- app.PrintDebug("Search",field,value)
				local results = app:BuildSearchResponse(field, value, {g=true});
				-- app.PrintDebug("Results",#results)
				ArrayAppend(self.data.g, results);
				self.data.text = L.ITEM_FILTER_TEXT..("  [%s=%s]"):format(field,tostring(value == app.Modules.Search.SearchNil and "nil" or value));
			end

			-- Item Filter
			local data = app.CreateRawText(L.ITEM_FILTER_TEXT, {
				['icon'] = app.asset("Category_ItemSets"),
				["description"] = L.ITEM_FILTER_DESCRIPTION,
				['visible'] = true,
				['back'] = 1,
				['g'] = {
					app.CreateRawText(L.ITEM_FILTER_BUTTON_TEXT, {
						['icon'] = 134246,
						['description'] = L.ITEM_FILTER_BUTTON_DESCRIPTION,
						['visible'] = true,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							app:ShowPopupDialogWithEditBox(L.ITEM_FILTER_POPUP_TEXT, "", function(input)
								local text = input:lower();
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

								self:Clear();

								if f then
									self:Search("f", f);
								else
									-- direct field search
									local field, value = ("="):split(input);
									value = tonumber(value) or value;
									if value and value ~= "" then
										-- allows performing a value search when looking for 'nil'
										if value == "nil" then
											value = app.Modules.Search.SearchNil;
										-- use proper bool values if specified
										elseif value == "true" then
											value = true;
										elseif value == "false" then
											value = false;
										end
										self:Search(field, value);
									else
										self:Search(field);
									end
								end
								-- maybe local table of common fields from lowercase -> match

								self:AssignChildren();
								self:Update(true);
							end);
							return true;
						end,
					}),
				},
			});

			self:SetData(data);
			self:AssignChildren();
		end

		self:DefaultUpdate(force);
	end
end)