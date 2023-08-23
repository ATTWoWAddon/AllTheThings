-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("RWP", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self, handlers)
		SLASH_ATTRWP1 = "/attrwp";
		SlashCmdList["ATTRWP"] = function()
			self:Toggle();
		end
	end,
	OnRebuild = function(self)
		if self.data then return true; end
		self.data = {
			text = "Removed With Patch Loot",
			icon = app.asset("WindowIcon_RWP"), 
			description = "This window shows you all of the things that get removed in a future patch that we know about and have documented in the addon. These items use a 'removed in patch' note on their tooltip to indicate when you can expect an item to be removed from the game.",
			visible = true, 
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local results = app:BuildSearchResponseForField(app:GetDataCache().g, "rwp");
					if #results > 0 then
						for i,result in ipairs(results) do
							table.insert(g, result);
						end
					end
				end
			end,
		};
		return true;
	end,
});