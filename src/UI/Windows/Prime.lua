-- App locals
local _, app = ...;
local ipairs, pairs
	= ipairs, pairs

-- Implementation
app:CreateWindow("Prime", {
	AllowCompleteSound = true,
	SettingsName = "Main List",
	Preload = true,
	IsTopLevel = true,
	Defaults = {
		["y"] = 20,
		["x"] = 0,
		["scale"] = 1.2,
		["width"] = 360,
		["height"] = 600,
		["visible"] = false,
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
	},
	RootCommands = { "main", "mainlist" },
	OnInit = function(self)
		app.ToggleMainList = function()
			self:Toggle();
		end
		self:AddEventHandler("OnDataCached", function(self, categories, rootData)
			self:SetData(rootData);
		end);
	end,
	OnUpdate = function(self, ...)
		self:DefaultUpdate(...);

		-- Write the current character's progress.
		local rootData = self.data;
		if rootData and rootData.total and rootData.total > 0 then
			app.CurrentCharacter.PrimeData = {
				progress = rootData.progress,
				total = rootData.total,
				modeString = rootData.modeString,
			};
		end
		return true
	end,
	EventHandlers = {
		["Settings.OnSet"] = function(self,container,setting,value)
			if container ~= "Tooltips" then return end

			if setting == "MainListScale" then
				self:SetScale(value)
			elseif setting == "InactiveWindowAlpha" then
				self:OnInactiveAlphaChanged(value)
			end
		end,
	}
});
