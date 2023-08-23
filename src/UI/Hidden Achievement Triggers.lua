-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("HiddentAchievementTriggers", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTHATS1 = "/atthat";
		SLASH_ATTHATS2 = "/atthats";
		SlashCmdList["ATTHATS"] = function(cmd)
			self:Toggle();
		end
	end,
	OnLoad = function(self, settings)
		local hat = app.Categories.HiddenAchievementTriggers;
		if hat then
			app.Categories.HiddenAchievementTriggers = nil;
			self.hqtData = app.CacheFields({
				text = "Hidden Achievement Triggers",
				icon = app.asset("Category_Achievements"),
				description = "Hidden Achievement Triggers",
				visible = true,
				g = hat,
				_hqt = true,
			});
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local hqtData = self.hqtData;
			if hqtData then
				self.data = hqtData;
				return true;
			end
		end
	end,
});