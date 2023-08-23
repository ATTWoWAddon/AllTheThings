-- App locals
local appName, app = ...;
local L, CloneReference = app.L, app.CloneReference;

-- Global locals
local tinsert = tinsert;

-- Implementation
app:GetWindow("Unsorted", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTUNSORTED1 = "/attunsorted";
		SlashCmdList["ATTUNSORTED"] = function(cmd)
			self:Toggle();
		end
		
		-- Add an achievement header
		local achievementHeader = app.CreateNPC(app.HeaderConstants.ACHIEVEMENTS, { g = {} });
		self.achievementHeader = achievementHeader;
		
		-- Make a function to add a new unsorted achievement.
		self.AddUnsortedAchievement = function(self, achievement)
			achievement = CloneReference(achievement);
			achievement.parent = achievementHeader;
			tinsert(achievementHeader.g, achievement);
			self:Update();
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local unsorted = app.Categories.Unsorted;
			if unsorted then
				self.data = {
					text = L["TITLE"],
					title = "Unsorted`" .. app.Version,
					icon = app.asset("logo_32x32"),
					preview = app.asset("Discord_2_128"),
					description = "This data hasn't been implemented yet.",
					font = "GameFontNormalLarge",
					expanded = true,
					visible = true,
					g = unsorted,
				};
				tinsert(unsorted, self.achievementHeader);
				app.Categories.Unsorted = nil;
				return true;
			end
		end
	end,
});