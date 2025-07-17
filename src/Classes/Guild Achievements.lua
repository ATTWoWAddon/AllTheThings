
local app = select(2, ...);

-- Guild Achievement Lib
-- CRIEVE NOTE: At some point it might be cool to do something with this, until then, not collectible.
app.CreateGuildAchievement = app.ExtendClass("Achievement", "GuildAchievement", "achievementID", {
	IsClassIsolated = true,
	collectible = app.ReturnFalse,
	-- achievementID = function(t) return t.guildAchievementID; end,
	isGuild = app.ReturnTrue,
});
app.CreateGuildAchievementCriteria = app.ExtendClass("AchievementCriteria", "GuildAchievementCriteria", "criteriaID", {
	IsClassIsolated = true,
	collectible = app.ReturnFalse,
	-- criteriaID = function(t) return t.guildCriteriaID; end,
	isGuild = app.ReturnTrue,
});