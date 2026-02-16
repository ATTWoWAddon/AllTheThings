-- App locals
local _, app = ...;
local contains = app.contains;

-- Global locals
local ipairs, setmetatable =
	  ipairs, setmetatable;
local C_Map_GetMapInfo = C_Map.GetMapInfo;

-- Local variables
local __currentMapID;
function LocalMapFilter(group)
	if group.mapID then
		if group.mapID == __currentMapID then
			return true;
		end
	elseif group.coord and group.coord[3] == __currentMapID then
		return true;
	elseif group.coords then
		for i,coord in ipairs(group.coords) do
			if coord[3] == __currentMapID then
				return true;
			end
		end
	end
	if group.maps and contains(group.maps, __currentMapID) then
		return true;
	end
end
local CachedLocalMapData = setmetatable({}, {
	__index = function(cachedLocalMapData, mapID)
		if mapID then
			__currentMapID = mapID;
			local results = app:BuildSearchFilteredResponse(app:GetDatabaseRoot().g, LocalMapFilter);
			if results and #results > 0 then
				cachedLocalMapData[mapID] = results;
				return results;
			else
				-- If we don't have any map data on this area, report it to the chat window.
				print("No map found for this location ", app.GetMapName(mapID), " [", mapID, "]");

				local mapInfo = C_Map_GetMapInfo(mapID);
				if mapInfo then
					local mapPath = mapInfo.name or ("Map ID #" .. mapID);
					mapID = mapInfo.parentMapID;
					while mapID do
						mapInfo = C_Map_GetMapInfo(mapID);
						if mapInfo then
							mapPath = (mapInfo.name or ("Map ID #" .. mapID)) .. " > " .. mapPath;
							mapID = mapInfo.parentMapID;
						else
							break;
						end
					end
					print("Path: ", mapPath);
				end
				print("Please report this to the ATT Discord! Thanks! ", app.Version);
				cachedLocalMapData[mapID] = false;
				return false;
			end
		end
	end
});

-- Implementation
app:CreateWindow("Local List", {
	AllowCompleteSound = true,
	Defaults = {
		["y"] = 0,
		["x"] = 0,
		["scale"] = 0.7,
		["width"] = 360,
		["height"] = 176,
		["point"] = "BOTTOMRIGHT",
		["relativePoint"] = "BOTTOMRIGHT",
	},
	Commands = {
		"attlocal",
	},
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText("Local List", {
			icon = app.asset("Category_Zones"),
			description = "This window shows you all of the content for the local map.\n\nThis is more a debugging tool than anything else.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			OnUpdate = function(t)
				local data = CachedLocalMapData[self.mapID];
				if data and data ~= t.g then
					t.g = data;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end,
		}));
		self.SetMapID = function(self, mapID, show)
			if mapID and mapID ~= self.mapID then
				self.mapID = mapID;
				self:Rebuild();
			end
			if show then
				self:Show();
			end
		end
	end,
	OnLoad = function(self, settings)
		self:SetMapID(app.CurrentMapID or settings.mapID);
		app.AddEventHandler("OnCurrentMapIDChanged", function()
			self:SetMapID(app.CurrentMapID);
		end);
	end,
	OnSave = function(self, settings)
		settings.mapID = self.mapID;
	end,
});
