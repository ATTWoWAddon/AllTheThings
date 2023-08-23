-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("HiddentQuestTriggers", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTHQTS1 = "/atthqt";
		SLASH_ATTHQTS2 = "/atthqts";
		SlashCmdList["ATTHQTS"] = function(cmd)
			self:Toggle();
		end
	end,
	OnLoad = function(self, settings)
		local hqt = app.Categories.HiddenQuestTriggers;
		if hqt then
			app.Categories.HiddenQuestTriggers = nil;
			self.hqtData = app.CacheFields({
				text = "Hidden Quest Triggers",
				icon = app.asset("Interface_Quest"),
				description = "These quests are triggered by completing things in the game",
				visible = true,
				g = hqt,
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