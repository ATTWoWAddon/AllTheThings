-- App locals
local _, app = ...;
local L = app.L;

-- Global locals


-- Implementation
app.AddCustomWindowOnUpdate("Prime", function(self, ...)
	self:DefaultUpdate(...);

	-- Write the current character's progress if a top-level update has been completed
	local rootData = self.data;
	if rootData and rootData.TLUG and rootData.total and rootData.total > 0 then
		app.CurrentCharacter.PrimeData = {
			progress = rootData.progress,
			total = rootData.total,
			modeString = rootData.modeString,
		};
	end
end)

app.ToggleMainList = function()
	app:GetWindow("Prime"):Toggle();
end