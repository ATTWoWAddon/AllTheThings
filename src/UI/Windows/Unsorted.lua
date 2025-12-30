-- App locals
local _, app = ...;
local L, CloneReference = app.L, app.CloneReference;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Global locals
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Unsorted", {
	Commands = { "attunsorted" },
	OnInit = function(self)
		-- Add an achievement header
		local achievementHeader = app.CreateCustomHeader(app.HeaderConstants.ACHIEVEMENTS, { g = {} });
		self.achievementHeader = achievementHeader;

		-- Make a function to add a new unsorted achievement.
		self.AddUnsortedAchievement = function(self, achievement)
			achievement = CloneReference(achievement);
			achievement.parent = achievementHeader;
			tinsert(achievementHeader.g, achievement);
			self:Update();
		end
		self.data = {
			text = L.UNSORTED,
			title = L.UNSORTED .. DESCRIPTION_SEPARATOR .. app.Version,
			icon = app.asset("WindowIcon_Unsorted"),
			description = L.UNSORTED_DESC_2,
			font = "GameFontNormalLarge",
			expanded = true,
			visible = true,
		};
	end,
	OnUpdate = function(self, ...)
		if not self.data.g or #self.data.g < 1 then
			local unsorted = app.Categories.Unsorted;
			if unsorted then
				self.data.g = unsorted;
				app.CacheFields(self.data);
				tinsert(unsorted, self.achievementHeader);
				self:DefaultRebuild();
			end
		end
		self:DefaultUpdate(...);
		return false;
	end,
});
