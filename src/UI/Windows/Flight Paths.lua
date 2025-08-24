-- App locals
local appName, app = ...;
local GetRelativeValue = app.GetRelativeValue;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:CreateWindow("Flight Paths", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attflightpaths", "attfps" },
	OnInit = function(self, handlers)
		self.data = app.CreateCustomHeader(app.HeaderConstants.FLIGHT_PATHS, {
			description = "This list shows you all of the flight paths that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local fps = {};
					for i,_ in pairs(app.SearchForFieldContainer("flightpathID")) do
						if not fps[i] then
							local fp = app.CreateFlightPath(tonumber(i));
							for j,o in ipairs(_) do
								local u = GetRelativeValue(o, "u");
								if u then fp.u = u; end
								for key,value in pairs(o) do
									fp[key] = value;
								end
							end
							fps[i] = fp;
							if not fp.u or fp.u ~= 1 then
								fp.g = nil;
								fp.maps = nil;
								fp.parent = data;
								tinsert(g, fp);
							end
						end
					end
					for i,name in pairs(AllTheThingsAD.LocalizedFlightPathNames) do
						if not fps[i] then
							local fp = app.CreateFlightPath(tonumber(i));
							fps[i] = fp;
							fp.u = 1;
							fp.parent = data;
							tinsert(g, fp);
						end
					end
					data.SortType = "name";
				end
			end
		});
	end,
});