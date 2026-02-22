
local _, app = ...
local L = app.L

-- Globals
local setmetatable, rawget, select, tostring, ipairs, pairs, tinsert, tonumber
	= setmetatable, rawget, select, tostring, ipairs, pairs, tinsert, tonumber

-- WoW API Cache
local GetAchievementNumCriteria,GetAchievementInfo,GetAchievementLink,GetAchievementCriteriaInfo,GetAchievementCategory,GetAchievementCriteriaInfoByID
	= GetAchievementNumCriteria,GetAchievementInfo,GetAchievementLink,GetAchievementCriteriaInfo,GetAchievementCategory,GetAchievementCriteriaInfoByID
local GetItemInfo = app.WOWAPI.GetItemInfo

-- Module
local DelayedCallback = app.CallbackHandlers.DelayedCallback;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local SearchForObject = app.SearchForObject

-- App

local CollectionCache
local CollectionCacheFunctions = {
	MaxAchievementID = function()
		local maxid, achID = 0, 0;
		for id,_ in pairs(app.GetRawFieldContainer("achievementID")) do
			achID = tonumber(id) or id
			if achID > maxid then maxid = achID; end
		end
		 -- go beyond ATT max known just in case we haven't sourced the highest achievementID
		return maxid + 100
	end,
	RealAchievementIDs = function()
		local achs = {}
		local maxid = CollectionCache.MaxAchievementID
		local exists
		for id=1,maxid do
			exists = GetAchievementInfo(id)
			if exists then
				achs[#achs + 1] = id
			end
		end
		return achs
	end,
	AccountWideAchievements = function()
		local achs = {}
		local FlagsUtil_IsSet = FlagsUtil.IsSet
		if not FlagsUtil_IsSet then return achs end

		local flags, id
		local FLAG_AccountWide = ACHIEVEMENT_FLAGS_ACCOUNT
		local allIds = CollectionCache.RealAchievementIDs
		for i=1,#allIds do
			id = allIds[i]
			flags = select(9,GetAchievementInfo(id))
			if FlagsUtil_IsSet(tonumber(flags) or 0, FLAG_AccountWide) then
				achs[id] = true
			end
		end
		return achs
	end,
}
CollectionCache = setmetatable({}, { __index = function(t, key)
	local func = CollectionCacheFunctions[key]
	if func then
		-- app.PrintDebug("Achievement.CollectionCache",key)
		local val = func()
		-- app.PrintDebugPrior("Achievement.CollectionCache.Done",val,val and type(val) == "table" and #val)
		t[key] = val
		return val
	end
end})
local QuickAchievementCache = setmetatable({}, { __index = function(t,key)
	if not key then return end
	local achObj = SearchForObject("achievementID", key, "key")
	t[key] = achObj
	return achObj
end})

-- Achievement Lib
do
	local KEY, CACHE = "achievementID", "Achievements"
	local CLASSNAME = "Achievement"
	local GetStatistic
		= GetStatistic

	local cache = app.CreateCache(KEY);
	local string_len,string_sub
		= string.len,string.sub
	local Colorize = app.Modules.Color.Colorize
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		--local IDNumber, Name, Points, Completed, Month, Day, Year, Description, Flags, Image, RewardText, isGuildAch = GetAchievementInfo(t[KEY]);
		local _, name, _, _, _, _, _, _, _, icon = GetAchievementInfo(id);
		local silentLink = GetAchievementLink(id)
		if not silentLink then
			app.PrintDebug(Colorize("Achievement with no Link",app.Colors.ChatLinkError),id)
			silentLink = name or "achievementID:"..id
		end
		_t.silentLink = silentLink
		local accountWide = CollectionCache.AccountWideAchievements[id]
		_t.accountWide = accountWide
		if accountWide then
			local len = string_len(silentLink)
			_t.text = Colorize(string_sub(silentLink,11,len - 2),app.Colors.Account)
		else
			_t.text = silentLink
		end
		_t.name = name or ("Achievement #"..id);
		_t.icon = icon or QUESTION_MARK_ICON;
		if field then return _t[field]; end
	end
	local InvalidStatistics = setmetatable({
		["0"] = 1,
		["1"] = 1,
		["2"] = 1,
		["3"] = 1,
		["4"] = 1,
		["5"] = 1,
		["6"] = 1,
		["7"] = 1,
		["8"] = 1,
		["9"] = 1,
		[""] = 1,
	}, { __index=function(t,key)
		if not key or key:match("%W") or not key:match(" %/ ") then return 1 end
	end})
	local onTooltipForAchievement = function(t, tooltipInfo)
		local achievementID = t.achievementID;
		if achievementID and IsShiftKeyDown() then
			local criteriaDatas,criteriaDatasByUID = {}, {};
			for criteriaID=1,99999,1 do
				local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID);
				if criteriaString and criteriaUID then
					criteriaDatasByUID[criteriaUID] = true;
					tinsert(criteriaDatas, {
						" [" .. criteriaUID .. "]: " .. tostring(criteriaString),
						"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
					});
				end
			end
			local totalCriteria = GetAchievementNumCriteria(achievementID) or 0;
			if totalCriteria > 0 then
				for criteriaIndex=1,totalCriteria,1 do
					---@diagnostic disable-next-line: redundant-parameter
					local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfo(achievementID, criteriaIndex, true);
					if criteriaString and (not criteriaDatasByUID[criteriaUID] or criteriaUID == 0) then
						tinsert(criteriaDatas, {
							" [" .. criteriaUID .. " @ Index: " .. criteriaIndex .. "]: " .. tostring(criteriaString),
							"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
						});
					end
				end
			end
			if #criteriaDatas > 0 then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					left = "Total Criteria",
					right = tostring(#criteriaDatas),
					r = 0.8, g = 0.8, b = 1
				});
				for i,criteriaData in ipairs(criteriaDatas) do
					tinsert(tooltipInfo, {
						left = criteriaData[1],
						right = criteriaData[2],
						r = 1, g = 1, b = 1
					});
				end
			end
		end
	end
	app.CreateAchievement = app.CreateClass(CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		silentLink = function(t)
			return cache.GetCachedField(t, "silentLink", CacheInfo);
		end,
		text = function(t)
			return cache.GetCachedField(t, "text", CacheInfo);
		end,
		name = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		icon = function(t)
			return cache.GetCachedField(t, "icon", CacheInfo);
		end,
		accountWide = function(t)
			return cache.GetCachedField(t, "accountWide", CacheInfo);
		end,
		collectible = function(t) return app.Settings.Collectibles[CACHE] end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		saved = function(t)
			local id = t[KEY];
			-- character collected or direct account-wide
			if app.IsCached(CACHE, id) or app.IsAccountCached(CACHE, id) == 1 then return 1; end
		end,
		parentCategoryID = function(t)
			return GetAchievementCategory(t[KEY]) or -1;
		end,
		statistic = function(t)
			if GetAchievementNumCriteria(t[KEY]) == 1 then
				local quantity, reqQuantity = select(4, GetAchievementCriteriaInfo(t[KEY], 1));
				if quantity and reqQuantity and reqQuantity > 1 then
					return tostring(quantity) .. " / " .. tostring(reqQuantity);
				end
			end
			---@diagnostic disable-next-line: missing-parameter
			local statistic = GetStatistic(t[KEY]);
			if InvalidStatistics[statistic] then return end
			return statistic
		end,
		sortProgress = function(t)
			if t.collected then
				return 1;
			end
			-- only calculate achievement progress using achievements where the single criteria is the 'progress bar'
			if GetAchievementNumCriteria(t[KEY]) == 1 then
				local quantity, reqQuantity = select(4, GetAchievementCriteriaInfo(t[KEY], 1));
				if quantity and reqQuantity and reqQuantity > 1 then
					-- print("ach-prog",t.achievementID,quantity,reqQuantity);
					return (quantity / reqQuantity);
				end
			end
			return 0;
		end,
		back = function(t)
			return t.sourceIgnored and 0.5 or 0;
		end,
		OnTooltip = function(t)
			return onTooltipForAchievement;
		end,
	})

	app.AddEventHandler("OnRefreshCollections", function()
		local me, completed
		-- app.PrintDebug("OnRefreshCollections.Achievement")
		local mine, acct, shared, none = {}, {}, {}, {}
		local allIds = CollectionCache.RealAchievementIDs
		local id
		for i=1,#allIds do
			id = allIds[i]
			completed, _, _, _, _, _, _, _, _, me = select(4, GetAchievementInfo(id))
			if completed then
				if CollectionCache.AccountWideAchievements[id] then
					acct[id] = true
				elseif me then
					mine[id] = true
				else
					shared[id] = true
				end
			else
				none[id] = true
			end
		end
		-- Character Cache
		app.SetBatchCached(CACHE, mine, 1)
		app.SetBatchCached(CACHE, acct)	-- remove acct achieves from character cache
		app.SetBatchCached(CACHE, none)
		-- Account Cache
		app.SetBatchAccountCached(CACHE, acct, 1)
		app.SetBatchAccountCached(CACHE, shared, 3)	-- Dual-Faction achievements, completed for Account, but not any specific character
		app.SetBatchAccountCached(CACHE, none)
		-- app.PrintDebugPrior("OnRefreshCollections.Achievement")
	end);
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end);
	app.AddEventRegistration("ACHIEVEMENT_EARNED", function(id)
		id = tonumber(id)
		local completed, _, _, _, _, _, _, _, _, me = select(4, GetAchievementInfo(id))
		if completed then
			if CollectionCache.AccountWideAchievements[id] then
				app.SetAccountCached(CACHE, id, 1)
			elseif me then
				app.SetCached(CACHE, id, 1)
				app.SetAccountCached(CACHE, id, 2)
			else
				app.SetAccountCached(CACHE, id, 3)
			end
		end
		app.UpdateRawID(KEY, id);
	end);
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)

	-- Adds ATT information about the list of Achievements into the provided tooltip
	local function AddAchievementInfoToTooltip(info, achievements, reference)
		if achievements then
			local text
			for _,ach in ipairs(achievements) do
				text = ach.text;
				if not text then
					text = RETRIEVING_DATA;
					reference.working = true;
				end
				text = app.GetCompletionIcon(ach.saved) .. " [" .. ach.achievementID .. "] " .. text;
				if ach.isGuild then text = text .. " (" .. GUILD .. ")"; end
				info[#info + 1] = {
					left = text
				}
			end
		end
	end
	-- Information Types
	app.AddEventHandler("OnLoad", function()
		app.Settings.CreateInformationType("Achievement_CriteriaFor", {
			text = "Achievement_CriteriaFor",
			priority = 1.5, HideCheckBox = true, ForceActive = true,
			Process = function(t, reference, tooltipInfo)
				if reference.criteriaID and reference.achievementID then
					local achievement = QuickAchievementCache[reference.achievementID]
					tinsert(tooltipInfo, {
						left = L.CRITERIA_FOR,
						right = achievement.text or GetAchievementLink(reference.achievementID),
					});
				end
			end
		})
		app.Settings.CreateInformationType("Achievement_Statistic", {
			text = "Achievement_Statistic",
			HideCheckBox = true, ForceActive = true,
			Process = function(t, reference, tooltipInfo)
				-- achievement progress. If it has a measurable statistic, show it under the achievement description
				if reference.achievementID then
					if reference.statistic then
						tinsert(tooltipInfo, {
							left = L.PROGRESS,
							right = reference.statistic,
						});
					end
				end
			end
		})
		app.Settings.CreateInformationType("sourceAchievements", {
			text = "Achievement_Requirements",
			HideCheckBox = true, ForceActive = true, priority = 9500,
			Process = function(t, reference, tooltipInfo)
				if not reference.sourceAchievements then return end
				local isDebugMode = app.MODE_DEBUG
				if not isDebugMode and reference.collected then return end

				local bestMatch, sas
				local prereqs = {}
				for i,sourceAchievementID in ipairs(reference.sourceAchievements) do
					if sourceAchievementID > 0 and (isDebugMode or not app.IsAccountCached("Achievements", sourceAchievementID)) then
						sas = SearchForObject("achievementID", sourceAchievementID, "field", true)
						if #sas > 0 then
							bestMatch = nil;
							for j,sa in ipairs(sas) do
								if sa.achievementID == sourceAchievementID and sa.key == "achievementID" then
									if isDebugMode or (not sa.saved and app.GroupFilter(sa)) then
										bestMatch = sa;
									end
								end
							end
							if bestMatch then
								prereqs[#prereqs + 1] = bestMatch
							end
						else
							prereqs[#prereqs + 1] = app.CreateAchievement(sourceAchievementID)
						end
					end
				end
				if prereqs and #prereqs > 0 then
					tooltipInfo[#tooltipInfo + 1] = {
						left = L.REQUIRED_ACHIEVEMENTS
					}
					AddAchievementInfoToTooltip(tooltipInfo, prereqs, reference);
				end
			end
		})
	end)
end

local function BuildSourceAchievements(group)
	if not group.sourceAchievements then return end

	local sas = {}
	local sourceGroup = app.CreateRawText(L.REQUIRED_ACHIEVEMENTS, {
		description = L.REQUIRED_ACHIEVEMENTS_DESC,
		icon = 135950,
		OnUpdate = app.AlwaysShowUpdate,
		OnClick = app.UI.OnClick.IgnoreRightClick,
		sourceIgnored = true,
		skipFull = true,
		SortPriority = -2.9,
		g = sas,
	})
	for i,achID in ipairs(group.sourceAchievements) do
		app.NestObject(sourceGroup, QuickAchievementCache[achID] or app.CreateAchievement(achID), true)
	end
	app.NestObject(group, sourceGroup, nil, 1)
end
app.AddEventHandler("OnNewPopoutGroup", BuildSourceAchievements)

-- Achievement Criteria Lib
do
	-- Returns expected criteria data for either criteriaIndex or criteriaID
	local function GetCriteriaInfo(t, achievementID, field)
		-- prioritize the correct id
		local critUID = t.uid or t.criteriaID
		local critID = t.id or critUID
		achievementID = achievementID or t.achievementID
		if not achievementID or not critID then return end

		local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible
			= GetAchievementCriteriaInfoByID(achievementID, critUID)
		-- criteriaType will exist even when criteriaString is empty, so don't need to check retrieving and stuff
		if (criteriaString and criteriaString ~= "")
			or (criteriaType and field ~= "name") then
			return criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible
		end
		if critID <= GetAchievementNumCriteria(achievementID) then
			---@diagnostic disable-next-line: redundant-parameter
			return GetAchievementCriteriaInfo(achievementID, critID, true)
		end
	end

	-- Criteria field values which will use the value of the respective Achievement instead
	local UseParentAchievementValueKeys = {
		"c", "classID", "races", "r", "u", "e", "sr", "pb", "pvp", "requireSkill", "icon"
	}
	local function GetParentAchievementInfo(t, key, _t)
		-- if the Achievement data was already cached, but the criteria is still getting here
		-- then the Achievement's data field was nil
		if t._cached then return end
		local id = t.achievementID
		local achievement = QuickAchievementCache[id]
		if achievement then
			-- copy parent Achievement field re-mappings
			for _,key in ipairs(UseParentAchievementValueKeys) do
				_t[key] = achievement[key]
			end
			t._cached = true;
			return rawget(_t, key);
		end
		DelayedCallback(app.report, 1, "Missing Referenced Achievement!",id);
	end
	local function default_name(t)
		if t.link then return t.link; end
		app.DirectGroupRefresh(t, true)
		local name
		local achievementID = t.achievementID
		if achievementID then
			local criteriaID = t.criteriaID;
			if criteriaID then
				-- typical criteria name lookup
				name = GetCriteriaInfo(t, achievementID, "name")
				if not IsRetrieving(name) then return name; end

				-- app.PrintDebug("fallback crit name",achievementID,criteriaID,t.uid,t.id)
				-- criteria nested under a parent of a known Thing
				local parent = t.parent
				if parent then
					local parentKey = parent.key
					if parentKey and app.ThingKeys[parentKey] and (parentKey ~= "achievementID" or parent[parentKey] ~= achievementID) then
						name = parent.name
						if not IsRetrieving(name) and not name:find("Quest #") then return name; end
					end
				end

				-- criteria with provider data
				name = app.GetNameFromProviders(t)
				if not IsRetrieving(name) then return name end

				-- criteria with sourceQuests data
				local sourceQuests = t.sourceQuests;
				if sourceQuests then
					for k,id in ipairs(sourceQuests) do
						name = app.GetQuestName(id);
						t.__questname = name
						if not IsRetrieving(name) and not name:find("Quest #") then return name; end
					end
					-- app.PrintDebug("criteria sq no name",achievementID,t.criteriaID,rawget(t,"name"))
					return
				end

				-- criteria with spellID (TODO)

				-- criteria fallback to base achievement name
				name = "Criteria: "..(select(2, GetAchievementInfo(achievementID)) or "#"..criteriaID)
			end
		end
		app.PrintDebug("failed to retrieve criteria name",achievementID,t.criteriaID,name)
		if not t.CanRetry then
			return name or UNKNOWN
		end
	end
	local cache = app.CreateCache("hash", "Criteria")
	cache.DefaultFunctions.saved = function(t)
		local saved = select(3, GetCriteriaInfo(t))
		-- only cache true values
		if saved then return saved end
	end
	local criteriaFields = {
		achievementID = function(t)
			local achievementID = t.achID or t.parent and t.parent.achievementID
			t.achievementID = achievementID;
			return achievementID;
		end,
		name = function(t)
			return cache.GetCachedField(t, "name", default_name) or t.__questname
		end,
		link = function(t)
			if t.itemID then
				local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(t.itemID);
				if link then
					t.text = link;
					t.link = link;
					t.icon = icon;
					return link;
				end
			end
		end,
		RefreshCollectionOnly = true,
		collectible = function(t) return app.Settings.Collectibles.Achievements end,
		collected = function(t)
			-- completion based on achievement is faster check
			return app.TypicalCharacterCollected("Achievements", t.achievementID)
			-- otherwise lookup character saved criteria
				or (t.saved and 1)
		end,
		trackable = app.ReturnTrue,
		saved = function(t)
			return cache.GetCachedField(t, "saved")
		end,
	};
	-- apply parent Achievement field re-mappings
	for _,key in ipairs(UseParentAchievementValueKeys) do
		criteriaFields[key] = function(t)
			return cache.GetCachedField(t, key, GetParentAchievementInfo)
		end
	end
	app.CreateAchievementCriteria = app.CreateClass("AchievementCriteria", "criteriaID", criteriaFields)
	if app.IsRetail then
		app.AddEventRegistration("CRITERIA_EARNED", function(achievementID,description,achievementAlreadyEarnedOnAccount)
			-- simply pass an update of all data linked to this achievement since we don't know specific criteriaID
			-- app.PrintDebug("Update achievementID",achievementID,"for criteria earned:",description)
			app.UpdateRawID("achievementID", achievementID)
		end);
	end
	app.AddSimpleCollectibleSwap("AchievementCriteria", "Achievements")
end
