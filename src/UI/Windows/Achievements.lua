-- App locals
local _, app = ...;
local contains = app.contains

-- Global locals
local ipairs, pairs, select, tinsert =
	  ipairs, pairs, select, tinsert;
local GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList, GetGuildCategoryList, GetCategoryNumAchievements =
	  GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList, GetGuildCategoryList, GetCategoryNumAchievements;

-- App locals
local GetRelativeValue = app.GetRelativeValue;

-- Module locals
local AchievementPriority = setmetatable({
	[92] = -100,		-- General / Character [Retail]
	[96] = -99,			-- Quests
	[97] = -98,			-- Exploration
	[15522] = -97,		-- Delves
	[95] = -96,			-- Player vs. Player
	[168] = -95,		-- Dungeons & Raids
	[169] = -94,		-- Professions
	[201] = -93,		-- Reputations
	[15165] = -92,		-- Scenarios
	[155] = -91,		-- World Events
	[15117] = -90,		-- Pet Battles
	[15246] = -89,		-- Collections
	[15301] = -88,		-- Expansion Features
	[81] = 100000,		-- Feats of Strength
	[15234] = 100001,	-- Legacy
	[15076] = 100002,	-- Guild
}, { __index = function(t, id) return id; end });
local function cacheAchievementData(self, categories, g)
	if g then
		for i,o in ipairs(g) do
			if o.achievementCategoryID then
				categories[o.achievementCategoryID] = o;
				if not o.g then
					o.g = {};
				else
					cacheAchievementData(self, categories, o.g);
				end
			elseif o.achievementID then
				self.achievements[o.achievementID] = o;
			end
		end
	end
end
local function getAchievementCategory(categories, achievementCategoryID)
	local c = categories[achievementCategoryID];
	if not c then
		c = app.CreateAchievementCategory(achievementCategoryID);
		categories[achievementCategoryID] = c;
		c.g = {};

		local p = getAchievementCategory(categories, c.parentCategoryID);
		if not p.g then p.g = {}; end
		tinsert(p.g, c);
		c.parent = p;
	end
	return c;
end
local function achievementSort(a, b)
	if a.achievementCategoryID then
		if b.achievementCategoryID then
			return AchievementPriority[a.achievementCategoryID] < AchievementPriority[b.achievementCategoryID];
		end
		return true;
	elseif b.achievementCategoryID then
		return false;
	end
	if a.rank then
		if b.rank then
			if a.type then
				if b.type then
					if a.type == b.type then
						return a.rank < b.rank;
					else
						return a.type < b.type;
					end
				end
				return true;
			elseif b.type then
				return false;
			end
			return a.rank < b.rank;
		end
		return true;
	elseif b.rank then
		return false;
	end
	return app.SortDefaults.name(a, b);
end;

-- Implementation
app:CreateWindow("Achievements", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attach", "attachievements" },
	RootCommandIndex = 2,
	OnInit = function(self, handlers)
		self.data = app.CreateCustomHeader(app.HeaderConstants.ACHIEVEMENTS, {
			description = "This list shows you all of the achievements that you can collect.",
			IgnoreBuildRequests = true,
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			achievements = {},
			OnUpdate = function(data)
				local categories = {};
				categories[-1] = data;
				if GetCategoryList then
					for _,categoryID in ipairs(GetCategoryList()) do
						getAchievementCategory(categories, categoryID);
					end
				end
				if GetGuildCategoryList then
					for _,categoryID in ipairs(GetGuildCategoryList()) do
						getAchievementCategory(categories, categoryID);
					end
				end
				cacheAchievementData(data, categories, data.g);
				for i,matches in pairs(app.SearchForFieldContainer("achievementID")) do
					if not data.achievements[i] then
						local mostAccessibleSource;
						for j,o in ipairs(matches) do
							if o.key == "achievementID" or o.key == "guildAchievementID" then
								if GetRelativeValue(o, "_hqt") or GetRelativeValue(o, "u") == 1 or o.isStatistic then
									data.achievements[i] = true;
								else
									mostAccessibleSource = o;
								end
								break;
							end
						end
						if mostAccessibleSource then
							local achievement = (mostAccessibleSource.isGuild and app.CreateGuildAchievement or app.CreateAchievement)(tonumber(i));
							for key,value in pairs(mostAccessibleSource) do
								achievement[key] = value;
							end
							if mostAccessibleSource.parent then
								achievement.sourceParent = mostAccessibleSource.parent;
								if not mostAccessibleSource.sourceQuests then
									local questID = GetRelativeValue(mostAccessibleSource, "questID");
									if questID then
										if not achievement.sourceQuests then
											achievement.sourceQuests = {};
										end
										if not contains(achievement.sourceQuests, questID) then
											tinsert(achievement.sourceQuests, questID);
										end
									else
										local sourceQuests = GetRelativeValue(mostAccessibleSource, "sourceQuests");
										if sourceQuests then
											if not achievement.sourceQuests then
												achievement.sourceQuests = {};
												for k,questID in ipairs(sourceQuests) do
													tinsert(achievement.sourceQuests, questID);
												end
											else
												for k,questID in ipairs(sourceQuests) do
													if not contains(achievement.sourceQuests, questID) then
														tinsert(achievement.sourceQuests, questID);
													end
												end
											end
										end
									end
								end
							end
							achievement.progress = nil;
							achievement.total = nil;
							achievement.g = nil;
							achievement.parent = getAchievementCategory(categories, achievement.parentCategoryID);
							tinsert(achievement.parent.g, achievement);
							data.achievements[i] = achievement;
						end
					end
				end
				if GetCategoryList and GetCategoryNumAchievements then
					local unsorted = app:GetWindow("Unsorted");
					for _,categoryID in ipairs(GetCategoryList()) do
						local numAchievements = GetCategoryNumAchievements(categoryID, true);
						if numAchievements and numAchievements > 0 then
							for i=1,numAchievements,1 do
								local achievementID, _, _, _, _, _, _, _, _, _, _, isGuildAch, _, _, isStatistic = GetAchievementInfo(categoryID, i);
								if achievementID and not isStatistic and not data.achievements[achievementID] then
									local achievement = (isGuildAch and app.CreateGuildAchievement or app.CreateAchievement)(achievementID);
									data.achievements[i] = achievement;
									achievement.parent = getAchievementCategory(categories, achievement.parentCategoryID);
									achievement.description = "@CRIEVE: This achievement has not been sourced yet.";
									if not achievement.u or achievement.u ~= 1 then
										tinsert(achievement.parent.g, achievement);
									end
									local numCriteria = GetAchievementNumCriteria(achievementID);
									if numCriteria > 0 then
										local g = {};
										for j=1,numCriteria,1 do
											local criteriaUID = select(10, GetAchievementCriteriaInfo(achievementID, j));
											local criteriaObject = app.CreateAchievementCriteria(criteriaUID);
											criteriaObject.parent = achievement;
											tinsert(g, criteriaObject);
										end
										achievement.g = g;
									end
									app.CacheFields(achievement);

									-- Put a copy in Unsorted.
									if unsorted then unsorted:AddUnsortedAchievement(achievement); end
								end
							end
						end
					end
				end
				app.Sort(data.g, achievementSort, true);
				data.OnUpdate = nil;
			end
		});
		if not (GetCategoryInfo and GetCategoryInfo(92) ~= "") then
			self.data.description = "This section isn't a thing until Wrath, but by popular demand and my own insanity, I've added this section so you can track your progress for at least one of the big ticket achievements if you have the stomach for it.";
		end
	end,
});
