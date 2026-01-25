if C_TransmogCollection and C_TransmogCollection.GetIllusions then
-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:CreateWindow("Illusions", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attillusions" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateFilter(103, {	-- Illusions
			--icon = 132853,
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
						data.SortType = "name";
					else
						tinsert(g, { OnUpdate = app.AlwaysShowUpdate, parent = data, text = "No illusions found." });
					end
				end
			end
		}));
	end,
});
end
