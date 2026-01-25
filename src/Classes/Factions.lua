
-- Faction Lib
-- Defines handling, APIs, and creation of 'Faction' Type objects
-- TODO: revise for performance improvements/structure... this is basically copy-paste from Retail ATT

local _, app = ...;
local L = app.L;

-- Global locals
local pairs, type, ipairs, select, math_min
	= pairs, type, ipairs, select, math.min

-- App locals
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Module locals
local GetProgressColor = app.Modules.Color.GetProgressColor;
local Colorize = app.Modules.Color.Colorize;

-- WoW API Cache
local GetFactionName = app.WOWAPI.GetFactionName;
local GetFactionLore = app.WOWAPI.GetFactionLore;
local GetFactionReaction = app.WOWAPI.GetFactionReaction;
local GetFactionCurrentReputation = app.WOWAPI.GetFactionCurrentReputation;
local GetFactionReputationCeiling = app.WOWAPI.GetFactionReputationCeiling;
local GetFactionBonusReputation = app.WOWAPI.GetFactionBonusReputation;

-- Faction API Implementation

-- 10.0 Blizz does some weird stuff with Friendship functions now, so let's try to wrap the functionality to work with what we expected before... at least for now
local C_GossipInfo_GetFriendshipReputation;
local C_GossipInfo_GetFriendshipReputationRanks;
if C_GossipInfo then
	C_GossipInfo_GetFriendshipReputation = C_GossipInfo.GetFriendshipReputation;
	C_GossipInfo_GetFriendshipReputationRanks = C_GossipInfo.GetFriendshipReputationRanks;
end

local C_MajorFactions_GetRenownLevels;
local C_MajorFactions_GetMajorFactionData;
if C_MajorFactions then
	C_MajorFactions_GetRenownLevels = C_MajorFactions.GetRenownLevels;
	C_MajorFactions_GetMajorFactionData = C_MajorFactions.GetMajorFactionData;
end

-- Faction Name
local FactionIDByName, FactionNameByID = {}, {};
setmetatable(FactionNameByID, { __index = function(t, id)
	local name = app.CreateFaction(id).name;
	if name then
		t[id] = name;
		FactionIDByName[name] = id;
		return name;
	end
end });
setmetatable(FactionIDByName, { __index = function(t, name)
	for i=1,3000,1 do
		if FactionNameByID[i] == name then
			t[name] = i;
			return i;
		end
	end
end });

-- Faction Standing
local StandingByID = {
	[0] = {	-- 0: No Standing (Not in a Guild)
		color = "00404040",
		threshold = -99999,
	},
	{	-- 1: HATED
		color = GetProgressColor(0),
		threshold = -42000,
	},
	{	-- 2: HOSTILE
		color = "00FF0000",
		threshold = -6000,
	},
	{	-- 3: UNFRIENDLY
		color = "00EE6622",
		threshold = -3000,
	},
	{	-- 4: NEUTRAL
		color = "00FFFF00",
		threshold = 0,
	},
	{	-- 5: FRIENDLY
		color = "0000FF00",
		threshold = 3000,
	},
	{	-- 6: HONORED
		color = "0000FF88",
		threshold = 9000,
	},
	{	-- 7: REVERED
		color = "0000FFCC",
		threshold = 21000,
	},
	{	-- 8: EXALTED
		color = GetProgressColor(1),
		threshold = 42000,
	},
};
local StandingByName = {};
for id=1,8,1 do
	local standingName = _G["FACTION_STANDING_LABEL" .. id] or UNKNOWN;
	local standing = StandingByID[id];
	StandingByName[standingName] = standing;
	standing.name = standingName;
end
local Exalted = StandingByID[8];
local function GetFactionStanding(reputationPoints)
	-- Total earned rep is a value AWAY FROM ZERO, not a value within the standing bracket.
	if reputationPoints then
		for i=8,1,-1 do
			local threshold = StandingByID[i].threshold;
			if reputationPoints >= threshold then
				return i, threshold < 0 and (threshold - reputationPoints) or (reputationPoints - threshold);
			end
		end
	end
	return 1, 0
end
local function CompareReputation(t, reputation)
	return t.reputation >= reputation;
end
local function CompareStanding(t, standing)
	return t.standing >= standing;
end

-- This is used for the Grand Commendations unlocking Bonus Reputation
app.GlobalVariants.AndFactionBonus = {
	__name = "AndFactionBonus",
	collected = function(t)
		return app.IsAccountCached("FactionBonus", t.factionID)
	end,
	__condition = function(t)
		return not t.repeatable;
	end,
}

-- Faction lib
local KEY, CACHE, SETTING = "factionID", "Factions", "Reputations"
app.CreateFaction = app.CreateClass("Faction", KEY, {
	CACHE = function() return CACHE end,
	text = function(t)
		local name = t.name;
		if name then
			local standing = StandingByID[t.standing];
			if standing then
				return Colorize(name, standing.color);
			else
				return name;
			end
		end
	end,
	name = function(t)
		return GetFactionName(t[KEY]) or (t.npcID and app.NPCNameFromID[t.npcID]) or (FACTION .. " #" .. t[KEY]);
	end,
	description = function(t)
		if not t.lore then return L.FACTION_SPECIFIC_REP; end
	end,
	lore = function(t)
		return GetFactionLore(t[KEY]);
	end,
	icon = function(t)
		return app.GetIconFromProviders(t)
			or app.asset("Category_Factions");
	end,
	trackable = app.ReturnTrue,
	isHeader = app.ReturnTrue,
	isMinilistHeader = app.ReturnTrue,
	collectible = function(t)
		if app.Settings.Collectibles[SETTING] then
			-- If your reputation is higher than the maximum for a different faction, return partial completion.
			if not app.Settings.AccountWide[SETTING] then
				local maxReputation = t.maxReputation;
				if maxReputation and maxReputation[1] ~= t[KEY] and (GetFactionReaction(maxReputation[1]) or 4) >= GetFactionStanding(maxReputation[2]) then
					return false;
				end
			end
			return true;
		end
		return false;
	end,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY], SETTING)
	end,
	saved = function(t)
		-- character saved
		if app.IsCached(CACHE, t[KEY]) then return 1 end
	end,
	title = function(t)
		local title = t.standingText;
		local ceiling = t.ceiling;
		if ceiling and ceiling > 0 then
			local reputation = t.reputation;
			local amount = select(2, GetFactionStanding(reputation));
			title = title .. DESCRIPTION_SEPARATOR .. amount .. " / " .. ceiling;
			if reputation < 42000 then
				return title .. " (" .. (42000 - reputation) .. " to " .. Exalted.name .. ")";
			end
		end
		return title;
	end,
	reputation = function(t)
		return GetFactionCurrentReputation(t[KEY]);
	end,
	reputationThreshold = function(t)
		return { GetFactionStanding(t.reputation) };
	end,
	ceiling = function(t)
		return GetFactionReputationCeiling(t[KEY]);
	end,
	standing = function(t)
		return GetFactionReaction(t[KEY]) or 1;
	end,
	maxstanding = function(t)
		local minReputation = t.minReputation;
		if minReputation and minReputation[1] == t[KEY] then
			return GetFactionStanding(minReputation[2]);
		end
		return 8;
	end,
	standingName = function(t)
		local standing = StandingByID[t.standing];
		return standing and standing.name or UNKNOWN;
	end,
	standingText = function(t)
		local standing = StandingByID[t.standing];
		if standing then
			return Colorize(standing.name or UNKNOWN, standing.color);
		else
			return UNKNOWN;
		end
	end,
	rank = function(t)
		return t.standing;
	end,
	rankText = function(t)
		local standing = StandingByID[t.rank];
		if standing then
			return Colorize(standing.name or UNKNOWN, standing.color);
		else
			return UNKNOWN;
		end
	end,
	sortProgress = function(t)
		return ((t.reputation or -42000) + 42000) / 84000;
	end,
	CompareReputation = function()
		return CompareReputation;
	end,
},
C_GossipInfo_GetFriendshipReputation and "AsFriend" or false, {
	isFriend = app.ReturnTrue,
	friendInfo = function(t)
		return C_GossipInfo_GetFriendshipReputation(t[KEY]);
	end,
	text = function(t)
		local ranks = C_GossipInfo_GetFriendshipReputationRanks(t[KEY]);
		return Colorize(t.name, GetProgressColor(math_min(ranks.currentLevel, ranks.maxLevel) / ranks.maxLevel));
	end,
	name = function(t)
		return t.friendInfo.name;
	end,
	description = function(t)
		return t.friendInfo.text;
	end,
	icon = function(t)
		return t.friendInfo.texture;
	end,
	title = function(t)
		local title = t.standingText;
		local info = t.friendInfo;
		if info.reactionThreshold then
			if info.nextThreshold then
				title = title .. DESCRIPTION_SEPARATOR .. (info.standing - info.reactionThreshold) .. " / " .. (info.nextThreshold - info.reactionThreshold);
				local remaining = info.maxRep - info.standing;
				if remaining > 0 then return title .. " (" .. remaining .. ")"; end
			end
		end
		return title;
	end,
	reputationThreshold = function(t)
		return { t.reputation, 0 };
	end,
	standing = function(t)
		return C_GossipInfo_GetFriendshipReputationRanks(t[KEY]).currentLevel;
	end,
	maxstanding = function(t)
		local minReputation = t.minReputation;
		if minReputation and minReputation[1] == t[KEY] then return minReputation[2]; end
		return C_GossipInfo_GetFriendshipReputationRanks(t[KEY]).maxLevel;
	end,
	standingName = function(t)
		return t.friendInfo.reaction;
	end,
	standingText = function(t)
		local ranks = C_GossipInfo_GetFriendshipReputationRanks(t[KEY]);
		return Colorize(t.standingName, GetProgressColor(math_min(ranks.currentLevel, ranks.maxLevel) / ranks.maxLevel));
	end,
	rankText = function(t)
		local standing, maxstanding = t.rank, t.maxstanding;
		return Colorize(TRADESKILL_RANK_HEADER:format(standing), GetProgressColor(math_min(standing, maxstanding) / maxstanding));
	end,
	CompareReputation = function()
		return CompareStanding;
	end,
},
function(t) return C_GossipInfo_GetFriendshipReputation(t[KEY]).friendshipFactionID ~= 0; end,
C_MajorFactions_GetMajorFactionData and "WithRenown" or false, {
	renownInfo = function(t)
		return C_MajorFactions_GetMajorFactionData(t[KEY]);
	end,
	text = function(t)
		local standing, maxstanding = t.standing, t.maxstanding;
		return Colorize(t.name, GetProgressColor(math_min(standing, maxstanding) / maxstanding));
	end,
	name = function(t)
		return t.renownInfo.name;
	end,
	description = function(t)
		local info = t.renownInfo;
		if info and not info.isUnlocked then
			return info.unlockDescription;
		end
	end,
	title = function(t)
		local info = t.renownInfo;
		local standing, maxstanding = info.renownLevel, t.maxstanding;
		local title = Colorize(COVENANT_RENOWN_LEVEL_TOAST:format(standing),
			GetProgressColor(math_min(standing, maxstanding) / maxstanding));
		if standing < maxstanding then
			title = title .. DESCRIPTION_SEPARATOR .. info.renownReputationEarned .. " / " .. info.renownLevelThreshold;

			local remaining = (maxstanding * 2500) - ((standing * 2500) + info.renownReputationEarned);	-- 2500 per renown level
			if remaining > 0 then
				title = title .. " (" .. remaining .. " to " .. COVENANT_RENOWN_LEVEL_TOAST:format(maxstanding)  .. ")";
			end
		end
		return title;
	end,
	reputationThreshold = function(t)
		return { t.reputation, 0 };
	end,
	standing = function(t)
		return t.renownInfo.renownLevel;
	end,
	maxstanding = function(t)
		local maxstanding = #C_MajorFactions_GetRenownLevels(t[KEY]);
		if maxstanding then
			t.maxstanding = maxstanding;
			return maxstanding;
		end
		return 25;
	end,
	standingName = function(t)
		return COVENANT_RENOWN_LEVEL_TOAST:format(t.standing);
	end,
	standingText = function(t)
		local standing, maxstanding = t.standing, t.maxstanding;
		return Colorize(COVENANT_RENOWN_LEVEL_TOAST:format(standing),
			GetProgressColor(math_min(standing, maxstanding) / maxstanding));
	end,
	rankText = function(t)
		local standing, maxstanding = t.rank, t.maxstanding;
		return Colorize(COVENANT_RENOWN_LEVEL_TOAST:format(standing),
			GetProgressColor(math_min(standing, maxstanding) / maxstanding));
	end,
},
function(t) return C_MajorFactions_GetMajorFactionData(t[KEY]) end);

local function PrintMissingFaction(id)
	app.PrintDebug(Colorize("MISSING FACTION", app.Colors.ChatLinkError),app:Linkify("Faction "..id,app.Colors.ChatLinkError,"search:factionID:"..id))
end
app.AddEventHandler("OnRefreshCollections", function()
	local faction
	local saved, none, bonus, nobonus = {}, {}, {}, {}
	for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
		faction = app.SearchForObject(KEY, id, "key")
		if faction then
			if faction.standing >= faction.maxstanding then
				saved[id] = true
			else
				none[id] = true
			end
			-- This is currently always 'false' in Retail, even for Factions with the bonus because Blizzard broke it
			-- years ago and hasn't bothered fixing it
			if not app.IsClassic and GetFactionBonusReputation(id) then	-- (sidenote: it does work in Classic at the moment)
				-- leaving this debug print here in case it ever gets fixed I'll see it spam chat and we can rejoice
				-- and make the Grand Commendations collectible again :)
				app.PrintDebug("FactionBonus",id,app:SearchLink(faction))
				bonus[id] = true
			else
				nobonus[id] = true
			end
		else PrintMissingFaction(id)
		end
	end
	-- Character Cache
	app.SetBatchCached(CACHE, saved, 1)
	app.SetBatchCached(CACHE, none)
	-- Account Cache (removals handled by Sync)
	app.SetBatchAccountCached(CACHE, saved, 1)
	-- Account Cache of FactionBonus
	app.SetBatchAccountCached("FactionBonus", bonus, 1)
	app.SetBatchAccountCached("FactionBonus", nobonus)
end);
local function ScanForNewCollectedFactions()
	-- app.PrintDebug("Scan uncollected factions")
	local faction
	local IsCached, SearchForObject = app.IsCached, app.SearchForObject
	for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
		if not IsCached(CACHE, id) then
			-- app.PrintDebug("Check Uncached Faction",id)
			faction = SearchForObject(KEY, id, "key")
			if faction then
				-- factions can dynamically be during the 'UPDATE_FACTION' event (thanks Blizzard not telling us which Faction got rep...)
				if faction.standing >= faction.maxstanding then
					-- Character Cache
					app.SetThingCollected(KEY, id, false, true)
				end
			else PrintMissingFaction(id)
			end
		end
	end
	-- app.PrintDebug("Scan uncollected factions:Done")
end
app.AddEventRegistration("UPDATE_FACTION", function()
	app.CallbackHandlers.AfterCombatOrDelayedCallback(ScanForNewCollectedFactions, 2)
end);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	if not accountWideData.FactionBonus then accountWideData.FactionBonus = {}; end
end);

-- External APIs
app.CreateFactionStandingFromText = function(text)
	-- This is used by the ItemTooltipHarvester class.
	local faction,replevel = ("-"):split(text);
	local factionID = FactionIDByName[faction:trim()];
	if factionID then
		local standing = StandingByName[replevel:trim()];
		if standing then return { factionID, standing.threshold }; end
	end
end

-- Information Type hook for Events
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("Required Reputation", {
		ShouldDisplayInExternalTooltips = false,
		ForceActive = true,
		HideCheckBox = true,
		priority = 2.9,
		text = "Required Reputation",
		Process = function(t, reference, tooltipInfo)
			local mi, ma = reference.minReputation, reference.maxReputation;
			if mi or ma then
				if mi and (not ma or mi[1] ~= ma[1]) then
					local faction = app.CreateFaction(mi[1]);
					faction.reputation = mi[2];
					local threshold = faction.reputationThreshold;
					local standingId, offset = threshold[1], threshold[2];
					faction.rank = standingId;
					local rankText = faction.rankText;
					if offset ~= 0 then rankText = offset .. " " .. rankText; end
					tinsert(tooltipInfo, {
						left = L.MINUMUM_STANDING_WITH_FACTION:format(rankText, faction.name),
					});
				end
				if ma and (not mi or mi[1] ~= ma[1]) then
					local faction = app.CreateFaction(ma[1]);
					faction.reputation = ma[2];
					local threshold = faction.reputationThreshold;
					local standingId, offset = threshold[1], threshold[2];
					faction.rank = standingId;
					local rankText = faction.rankText;
					if offset ~= 0 then rankText = offset .. " " .. rankText; end
					tinsert(tooltipInfo, {
						left = L.MAXIMUM_STANDING_WITH_FACTION:format(rankText, faction.name),
					});
				end
				if mi and ma and mi[1] == ma[1] then
					-- Min Standing
					local faction = app.CreateFaction(mi[1]);
					faction.reputation = mi[2];
					local threshold = faction.reputationThreshold;
					local standingId, offset = threshold[1], threshold[2];
					faction.rank = standingId;
					local minRankText = faction.rankText;
					if offset ~= 0 then minRankText = offset .. " " .. minRankText; end

					-- Max Standing
					local maxFaction = app.CreateFaction(ma[1]);
					maxFaction.reputation = ma[2];
					local threshold = maxFaction.reputationThreshold;
					local standingId, offset = threshold[1], threshold[2];
					maxFaction.rank = standingId;
					local maxRankText = maxFaction.rankText;
					if offset ~= 0 then maxRankText = offset .. " " .. maxRankText; end
					tinsert(tooltipInfo, {
						left = L.MIN_MAX_STANDING_WITH_FACTION:format(minRankText, maxRankText, faction.name);
					});
				end
			end
		end,
	});
end);
