-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Global locals
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Unsorted", {
	Commands = { "attunsorted" },
	Preload = true,
	OnInit = function(self)
		-- Add an achievement header
		local achievementHeader = app.CreateCustomHeader(app.HeaderConstants.ACHIEVEMENTS, { g = {} });
		self.achievementHeader = achievementHeader;

		-- Make a function to add a new unsorted achievement.
		self.AddUnsortedAchievement = function(self, achievement)
			achievement = app.CloneClassInstance(achievement);
			achievement.parent = achievementHeader;
			tinsert(achievementHeader.g, achievement);
			self:Update();
		end
		self.data = app.CreateRawText(L.UNSORTED, {
			title = L.UNSORTED .. DESCRIPTION_SEPARATOR .. app.Version,
			icon = app.asset("WindowIcon_Unsorted"),
			description = L.UNSORTED_DESC_2,
			font = "GameFontNormalLarge",
			expanded = true,
			visible = true,
			-- These 3 were from Retail: Check their uses
			_missing = true,
			_unsorted = true,
			_nosearch = true,
			g = app.Categories.Unsorted,
		});
		tinsert(self.data.g, self.achievementHeader);
		app.CacheFields(self.data, true);
		self:AssignChildren();
	end,
});
