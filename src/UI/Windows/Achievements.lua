-- App locals
local appName, app = ...;
local contains, MergeClone = app.contains, app.MergeClone;

-- Global locals
local ipairs, pairs, select, tinsert =
	  ipairs, pairs, select, tinsert;
local GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList, GetCategoryNumAchievements =
	  GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList, GetCategoryNumAchievements;

-- App locals
local GetRelativeValue = app.GetRelativeValue;

-- Module locals
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
			return a.achievementCategoryID < b.achievementCategoryID;
		end
		return true;
	elseif b.achievementCategoryID then
		return false;
	end
	if a.rank then
		if b.rank then
			if a.f then
				if b.f then
					if a.f == b.f then
						return a.rank < b.rank;
					else
						return a.f < b.f;
					end
				end
				return true;
			elseif b.f then
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
			visible = true,
			expanded = true,
			back = 1,
			g = app.Categories.Achievements or {},
			achievements = {},
			OnUpdate = function(data)
				local categories = {};
				categories[-1] = data;
				cacheAchievementData(data, categories, data.g);
				for i,matches in pairs(app.SearchForFieldContainer("achievementID")) do
					if not data.achievements[i] and matches[1] and not matches[1].isStatistic then
						local achievement = (matches[1].isGuild and app.CreateGuildAchievement or app.CreateAchievement)(tonumber(i));
						local sources = {};
						for j,o in ipairs(matches) do
							if not GetRelativeValue(o, "_hqt") and o.key == "achievementID" then
								MergeClone(sources, o);
								if o.parent then
									achievement.sourceParent = o.parent;
									if not o.sourceQuests then
										local questID = GetRelativeValue(o, "questID");
										if questID then
											if not achievement.sourceQuests then
												achievement.sourceQuests = {};
											end
											if not contains(achievement.sourceQuests, questID) then
												tinsert(achievement.sourceQuests, questID);
											end
										else
											local sourceQuests = GetRelativeValue(o, "sourceQuests");
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
							end
						end
						local count = #sources;
						if count > 0 then
							if count == 1 then
								for key,value in pairs(sources[1]) do
									achievement[key] = value;
								end
							elseif count > 1 then
								-- Find the most accessible version of the thing.
								app.Sort(sources, app.SortDefaults.Accessibility);
								for key,value in pairs(sources[1]) do
									achievement[key] = value;
								end
							end
							data.achievements[i] = achievement;
							achievement.progress = nil;
							achievement.total = nil;
							achievement.g = nil;
							achievement.parent = getAchievementCategory(categories, achievement.parentCategoryID);
							if not achievement.u or achievement.u ~= 1 then
								tinsert(achievement.parent.g, achievement);
							end
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
		app.CacheFields(self.data);
		if not (GetCategoryInfo and GetCategoryInfo(92) ~= "") then
			self.data.description = "This section isn't a thing until Wrath, but by popular demand and my own insanity, I've added this section so you can track your progress for at least one of the big ticket achievements if you have the stomach for it.";
		end
	end,
	OnLoad = function(self, settings)
		if settings.Progress then
			self.data.progress = settings.Progress;
			self.data.total = settings.Total;
		end
	end,
	OnSave = function(self, settings)
		settings.Progress = self.data.progress;
		settings.Total = self.data.total;
	end,
});