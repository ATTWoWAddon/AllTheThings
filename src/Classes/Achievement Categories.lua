do
local app = select(2, ...);

-- Globals
local select = select;

-- WoW API Cache
local GetCategoryInfo = GetCategoryInfo;

-- Achievement Category Lib
local AchievementCategoryData = rawget(app.L, "ACHIEVEMENT_CATEGORY_DATA");
if AchievementCategoryData then
	-- If we have a hardcoded database for achievement category information, prioritize that first.
	local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
	app.CreateAchievementCategory = app.CreateClass("AchievementCategory", "achievementCategoryID", {
		defaultIcon = function(t)
			return app.asset("Category_Achievements");
		end,
		defaultName = function(t)
			return GetCategoryInfo(t.achievementCategoryID);
		end,
		defaultParentCategoryID = function(t)
			return select(2, GetCategoryInfo(t.achievementCategoryID)) or -1;
		end,
		name = function(t)
			return t.defaultName or ("Category " .. t.achievementCategoryID);
		end,
		icon = function(t)
			return t.defaultIcon;
		end,
		parentCategoryID = function(t)
			return t.defaultParentCategoryID;
		end,
		ignoreSourceLookup = function(t)
			return true;
		end,
	},
	"WithData", {	-- When there is data related to the category available in the database module.
		name = function(t)
			local name = t.data.name;
			if not IsRetrieving(name) then return name; end
			return t.defaultName;
		end,
		parentCategoryID = function(t)
			return t.data.parent or t.defaultParentCategoryID;
		end,
		icon = function(t)
			return t.data.icon or t.defaultIcon;
		end,
	}, function(t)
		local data = AchievementCategoryData[t.achievementCategoryID];
		if data then
			t.data = data;
			return data;
		end
	end);
else
	-- No database, just use the WoW API directly
	app.CreateAchievementCategory = app.CreateClass("AchievementCategory", "achievementCategoryID", {
		icon = function(t)
			return app.asset("Category_Achievements");
		end,
		name = function(t)
			return GetCategoryInfo(t.achievementCategoryID) or ("Category " .. t.achievementCategoryID);
		end,
		parentCategoryID = function(t)
			return select(2, GetCategoryInfo(t.achievementCategoryID)) or -1;
		end,
		ignoreSourceLookup = function(t)
			return true;
		end,
	});
end
end