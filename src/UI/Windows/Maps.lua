-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert, pairs, tostring
	= ipairs, tinsert, pairs, tostring;
local C_Map_GetMapInfo
	= C_Map.GetMapInfo;

-- Implementation
app:CreateWindow("Maps", {
	IgnoreQuestUpdates = true,
	Commands = { "attmaps" },
	OnInit = function(self, handlers)
		local function SortBySizeAndName(a, b)
			local aSize, bSize = #a.g, #b.g;
			if aSize > bSize then
				return true;
			elseif bSize == aSize then
				return b.name > a.name;
			else
				return false;
			end
		end
		self:SetData(app.CreateRawText("Maps", {
			icon = app.asset("Category_Zones"),
			description = "This window helps debug when we're missing map IDs in the addon.",
			back = 1,
			indent = 0,
			visible = true,
			expanded = true,
			g = {},
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					-- Cache all maps by their ID number, starting with maps we reference in our DB.
					local mapsByID = {};
					for mapID,cachedMaps in pairs(app.SearchForFieldContainer("mapID")) do
						if not mapsByID[mapID] then
							local mapObject = app.CreateMap(mapID, {
								mapInfo = C_Map_GetMapInfo(mapID),
								collectible = true,
								collected = true,
								statistic = tostring(#cachedMaps),
							});
							mapObject.sym = {{ "select", "mapID", mapID }};
							mapsByID[mapID] = mapObject;
							mapObject.g = {};	-- Doing this prevents the CreateMap function from creating an exploration header.
						end
					end

					-- Go through all of the possible maps, including only maps that have C_Map data.
					for mapID=1,20000,1 do
						if not mapsByID[mapID] then
							local mapInfo = C_Map_GetMapInfo(mapID);
							if mapInfo then
								local mapObject = app.CreateMap(mapID, {
									mapInfo = mapInfo,
									collectible = true,
									collected = false
								});
								mapsByID[mapID] = mapObject;
								mapObject.g = {};	-- Doing this prevents the CreateMap function from creating an exploration header.
							end
						end
					end

					-- Iterate through the maps we have cached, determine their parents and link them together.
					-- Also push them on to the stack.
					for mapID,mapObject in pairs(mapsByID) do
						local parent = self.data;
						if mapObject.mapInfo then
							local parentMapID = mapObject.mapInfo.parentMapID;
							if parentMapID and parentMapID > 0 then
								local parentMapObject = mapsByID[parentMapID];
								if parentMapObject then
									parent = parentMapObject;
								else
									print("Failed to find parent map in the mapsByID table!", parentMapID);
								end
							end
						end
						mapObject.parent = parent;
						tinsert(parent.g, mapObject);
					end

					-- Sort the maps by number of relative maps, then by name if matching.
					app.Sort(g, SortBySizeAndName, true);

					-- Now finally, clear out unused gs.
					for i,mapObject in ipairs(g) do
						if #mapObject.g < 1 then
							mapObject.g = nil;
						end
					end
					t.OnUpdate = nil;
				end
			end
		}));
	end,
});
