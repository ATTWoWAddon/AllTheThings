-- App locals
local appName, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:GetWindow("Illusions", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTILLUSIONS1 = "/attillusions";
		SlashCmdList["ATTILLUSIONS"] = function(cmd)
			self:Toggle();
		end
		self.data = {
			text = L["FILTER_ID_TYPES"][103],
			icon = 132853,
			description = "This list shows you all of the illusions that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local illusions = {};
					for i,_ in pairs(app.SearchForFieldContainer("illusionID")) do
						if not illusions[i] then
							local illusion = {};
							for j,o in ipairs(_) do
								for key,value in pairs(o) do illusion[key] = value; end
							end
							illusion = app.CreateIllusion(tonumber(i), illusion);
							illusions[i] = illusion;
							illusion.g = nil;
							illusion.parent = data;
							tinsert(g, illusion);
						end
					end
					if #g > 0 then
						app.Sort(g, app.SortDefaults.Name, true);
					else
						tinsert(g, { OnUpdate = app.AlwaysShowUpdate, parent = data, text = "No illusions found." });
					end
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