-- App locals
local appName, app = ...;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:GetWindow("Factions", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTFACTIONS1 = "/attfactions";
		SlashCmdList["ATTFACTIONS"] = function(cmd)
			self:Toggle();
		end
		self.data = app.CreateNPC(app.HeaderConstants.FACTIONS, {
			description = "This list shows you all of the factions that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					for i,matches in pairs(app.SearchForFieldContainer("factionID")) do
						local faction = app.CreateFaction(tonumber(i));
						for j,o in ipairs(matches) do
							if o.key == "factionID" then
								for key,value in pairs(o) do faction[key] = value; end
							end
						end
						if not faction.u or faction.u ~= 1 then
							faction.progress = nil;
							faction.total = nil;
							faction.g = nil;
							faction.parent = data;
							tinsert(g, faction);
						end
					end
					app.Sort(g, app.SortDefaults.Name, true);
				end
			end
		});
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