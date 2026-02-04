-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert
	= ipairs, tinsert;

-- Implementation
app:CreateWindow("Locked", {
	AllowCompleteSound = true,
	Commands = { "attlocked" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText("Locked Out", {
			icon = 134236,
			description = "This window shows you all of the quests and other things that you missed while leveling up. (Such as breadcrumbs or quests that have the choice between one or another)\n\nNOTE: With Party Sync you could go back and do some of these later. (Introduced in patch 8.2.5 during BFA)",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDataCache().g, "locked");
				if g and #g > 0 then
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end,
		}));
	end,
	OnRebuild = function(self)
		self.data.g = {};
		return true;
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local oldQuestsLocked = app.Settings:Get("Thing:QuestsLocked");
		local oldCollectedThings = app.Settings:Get("Show:CollectedThings");
		local oldCompletedGroups = app.Settings:Get("Show:CompletedGroups");
		app.Settings:SetCollectedThings(true);
		app.Settings:SetCompletedGroups(true);
		app.Settings:Set("Thing:QuestsLocked", true);
		self:DefaultUpdate(...);
		app.Settings:Set("Thing:QuestsLocked", oldQuestsLocked);
		app.Settings:SetCollectedThings(oldCollectedThings);
		app.Settings:SetCompletedGroups(oldCompletedGroups);
		return true
	end
});
