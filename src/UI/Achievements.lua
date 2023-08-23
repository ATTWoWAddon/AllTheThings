-- App locals
local appName, app = ...;
local contains, MergeClone = app.contains, app.MergeClone;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;
local GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList =
	  GetAchievementCriteriaInfo, GetAchievementNumCriteria, GetAchievementInfo, GetCategoryInfo, GetCategoryList;

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
		table.insert(p.g, c);
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
	return app.SortDefaults.Name(a, b);
end;

-- Implementation
app:GetWindow("Achievements", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTACHIEVEMENTS1 = "/attachievements";
		SlashCmdList["ATTACHIEVEMENTS"] = function(cmd)
			self:Toggle();
		end
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
				for i,_ in pairs(app.SearchForFieldContainer("achievementID")) do
					if not data.achievements[i] then
						local achievement = app.CreateAchievement(tonumber(i));
						if not achievement.isStatistic then
							local sources = {};
							for j,o in ipairs(_) do
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
							local count = #sources;
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
						local numAchievements = GetCategoryNumAchievements(categoryID);
						if numAchievements and numAchievements > 0 then
							for i=1,numAchievements,1 do
								local achievementID, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy, isStatistic = GetAchievementInfo(categoryID, i);
								if achievementID and not isStatistic and not data.achievements[achievementID] then
									local achievement = app.CreateAchievement(achievementID);
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
											local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID = GetAchievementCriteriaInfo(achievementID, j);
											local criteriaObject = app.CreateAchievementCriteria(criteriaID);
											criteriaObject.parent = achievement;
											table.insert(g, criteriaObject);
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
		app.Categories.Achievements = nil;
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