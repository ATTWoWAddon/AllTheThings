-- App locals
local appName, app = ...;

-- Global locals
local ipairs, tinsert, pairs
	= ipairs, tinsert, pairs;
local C_Map_GetMapInfo = C_Map.GetMapInfo;

-- Module locals
local checkIcons, checkModels = true, true;
local invalidTextures, invalidModels, validTextures, validModels = {}, {}, {}, {};
local iconTexture = app.frame:CreateTexture(nil, "ARTWORK");
iconTexture.TrySetTexture = function(self, texture)
	-- If we already validated this texture, return the status.
	local valid = validTextures[texture];
	if valid ~= nil then return valid; end
	
	-- Attempt to set the texture.
	self:SetTexture(nil);
	self:SetTexture(texture);
	if self:GetTextureFileID() then
		valid = true;
	else
		valid = false;
		invalidTextures[texture] = texture;
	end
	validTextures[texture] = valid;
	return valid;
end
iconTexture:Hide();
local modelFrame = CreateFrame("Model", nil, app.frame);
modelFrame.TrySetModel = function(self, model)
	-- If we already validated this model, return the status.
	local valid = validModels[model];
	if valid ~= nil then return valid; end
	
	-- Attempt to set the model.
	self:ClearModel();
	self:SetModel(model);
	local fileID = self:GetModelFileID();
	valid = fileID == model;
	validModels[model] = valid;
	if not valid then invalidModels[model] = fileID; end
	return valid;
end
modelFrame:Hide();
local function OnUpdateForObject(t)
	-- Calculate the completion for each object.
	local progress, total = 0, 1;
	if app.ObjectNames[t.objectID] then progress = progress + 1; end
	
	if checkIcons then
		local icon = app.ObjectIcons[t.objectID];
		if icon and iconTexture:TrySetTexture(icon) then progress = progress + 1; end
		total = total + 1;
	end
	
	if checkModels then
		local model = t.model;
		if model and modelFrame:TrySetModel(model) then progress = progress + 1; end
		total = total + 1;
	end
	
	-- Set out object's progress.
	t.progress = progress;
	t.total = total;
	
	-- Increment parent progress
	t.parent.progress = t.parent.progress + t.progress;
	t.parent.total = t.parent.total + t.total;
	t.visible = app.GroupVisibilityFilter(t);
	return true;
end
local function OnTooltipForObject(t)
	-- Calculate the completion for each object.
	local name = app.ObjectNames[t.objectID];
	if name then
		GameTooltip:AddDoubleLine("Name", name, 1, 1, 1, 1, 1, 1);
	else
		GameTooltip:AddDoubleLine("Name", "Missing", 1,1,1, 1, 0.4, 0.4);
	end
	
	if checkIcons then
		local icon = app.ObjectIcons[t.objectID];
		if icon then
			if invalidTextures[icon] then
				GameTooltip:AddDoubleLine("Icon", "Invalid", 1,1,1, 1, 0.4, 0.4);
				GameTooltip:AddDoubleLine(" ", invalidTextures[icon], 1,1,1, 1, 0.4, 0.4);
			else
				GameTooltip:AddDoubleLine("Icon", icon, 1, 1, 1, 1, 1, 1);
			end
		else
			GameTooltip:AddDoubleLine("Icon", "Missing", 1,1,1, 1, 0.4, 0.4);
		end
	end
	
	if checkModels then
		local model = t.model;
		if model then
			if invalidModels[model] then
				GameTooltip:AddDoubleLine("Model", "Invalid", 1,1,1, 1, 0.4, 0.4);
				GameTooltip:AddDoubleLine(" ", invalidModels[model], 1,1,1, 1, 0.4, 0.4);
			else
				GameTooltip:AddDoubleLine("Model", model, 1, 1, 1, 1, 1, 1);
			end
		else
			GameTooltip:AddDoubleLine("Model", "Missing", 1,1,1, 1, 0.4, 0.4);
		end
	end
end

-- Implementation
app:GetWindow("Objects", {
	parent = UIParent,
	Silent = true,
	IgnoreQuestUpdates = true,
	OnInit = function(self, handlers)
		SLASH_ATTOBJECTS1 = "/attobjects";
		SlashCmdList["ATTOBJECTS"] = function(cmd)
			self:Toggle();
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local g = {
				{	-- Check Icons
					text = "Check Icons",
					icon = "Interface\\Icons\\INV_Wand_06",
					description = "Click this row to toggle icon checking",
					collectible = true,
					visible = true,
					priority = 6,
					OnClick = function(row, button)
						checkIcons = not checkIcons;
						self:Update(true);
						return true;
					end,
					OnUpdate = function(data)
						data.parent = self.data;
						data.collected = checkIcons;
						data.visible = true;
						return true;
					end,
				},
				{	-- Check Models
					text = "Check Models",
					icon = "Interface\\Icons\\INV_Wand_06",
					description = "Click this row to toggle model checking",
					collectible = true,
					visible = true,
					priority = 6,
					OnClick = function(row, button)
						checkModels = not checkModels;
						self:Update(true);
						return true;
					end,
					OnUpdate = function(data)
						data.parent = self.data;
						data.collected = checkModels;
						data.visible = true;
						return true;
					end,
				},
			};
			self.data = {
				text = "Object Debugger",
				icon = app.asset("WindowIcon_RaidAssistant"), 
				description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.",
				back = 1,
				indent = 0,
				visible = true, 
				expanded = true,
				g = g,
			};
			
			-- Cache and sort all of the objectIDs we reference in our DB.
			local objectIDs = {};
			for objectID,o in pairs(app.SearchForFieldContainer("objectID")) do
				tinsert(objectIDs, tonumber(objectID));
			end
			app.Sort(objectIDs, app.SortDefaults.Number);
			
			-- Now iterate through those ids and create objects for them.
			for _,objectID in ipairs(objectIDs) do
				tinsert(g, app.CreateObject(objectID, {
					OnTooltip = OnTooltipForObject,
					OnUpdate = OnUpdateForObject,
					parent = self.data
				}));
			end
		end
	end
});