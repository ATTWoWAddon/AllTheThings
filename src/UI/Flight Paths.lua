-- App locals
local appName, app = ...;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:GetWindow("Flight Paths", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTFLIGHTPATHS1 = "/attflightpaths";
		SLASH_ATTFLIGHTPATHS1 = "/attfps";
		SlashCmdList["ATTFLIGHTPATHS"] = function(cmd)
			self:Toggle();
		end
		self.data = {
			text = "Flight Paths",
			icon = app.asset("Category_FlightPaths"),
			description = "This list shows you all of the flight paths that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local fps = {};
					for i,_ in pairs(app.SearchForFieldContainer("flightPathID")) do
						if not fps[i] then
							local fp = app.CreateFlightPath(tonumber(i));
							for j,o in ipairs(_) do
								for key,value in pairs(o) do fp[key] = value; end
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
					for i,name in pairs(ATTClassicAD.LocalizedFlightPathNames) do
						if not fps[i] then
							local fp = app.CreateFlightPath(tonumber(i));
							fps[i] = fp;
							fp.parent = data;
							tinsert(g, fp);
						end
					end
					app.Sort(g, app.SortDefaults.Name, true);
				end
			end
		};
	end,
	OnLoad = function(self, settings)
		if settings.Progress then
			self.data.progress = settings.Progress;
			self.data.total = settings.Total;
		end
	end,
	OnSave = function(self, settings)
		settings.Progress = self.data.progress;
		settings.Total = self.data.total;
	end,
});