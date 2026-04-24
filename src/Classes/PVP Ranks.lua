local app = select(2, ...);
local L = app.L;

-- Locals
local HighestLifetimeRank = 0;
local IsAlliance = app.FactionID == Enum.FlightPathFaction.Alliance;
local RankIcons = setmetatable({}, {
	__index = function(t, rank)
		local icon = ("%s%02d"):format("interface/PvPRankBadges\\PvPRank", rank);
		t[rank] = icon;
		return icon;
	end
});
local ActiveFactionRankNames = setmetatable({}, {
	__index = function(t, rank)
		local name = _G["PVP_RANK_" .. (rank + 4) .. "_" .. (IsAlliance and 1 or 0)];
		t[rank] = name;
		return name;
	end
});
local OppositeFactionRankNames = setmetatable({}, {
	__index = function(t, rank)
		local name = _G["PVP_RANK_" .. (rank + 4) .. "_" .. (IsAlliance and 0 or 1)] .. " (" .. (IsAlliance and FACTION_HORDE or FACTION_ALLIANCE) .. ")";
		t[rank] = name;
		return name;
	end
});
local function OnTooltipForPVPRankClass(t, tooltipInfo)
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Your lifetime highest rank: ",
		right = ActiveFactionRankNames[HighestLifetimeRank],
		r = 1, g = 1, b = 1,
	};
end

-- PVP Rank Class
local CLASSNAME, CACHE, KEY = "PVPRank", "PVPRanks", "pvprankID";
app.CreatePVPRank = app.CreateClass(CLASSNAME, KEY, {
	CACHE = function() return CACHE end,
	name = function(t)
		return ActiveFactionRankNames[t[KEY]];
	end,
	icon = function(t)
		return RankIcons[t[KEY]];
	end,
	title = function(t)
		return RANK .. " " .. t[KEY] .. "`" .. OppositeFactionRankNames[t[KEY]];
	end,
	description = function(t)
		return L.PVP_RANK_DESCRIPTION;
	end,
	r = function(t)
		return app.FactionID;
	end,
	collectible = app.ReturnTrue,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY], "Titles")
	end,
	saved = function(t)
		return app.IsCached(CACHE, t[KEY]);
	end,
	titleID = function(t)
		return -t[KEY];
	end,
	OnTooltip = function(t)
		return OnTooltipForPVPRankClass;
	end
});
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end)
app.AddEventHandler("OnLoad", function()
	HighestLifetimeRank = (select(3, GetPVPLifetimeStats()) or 0) - 4;
end)
local function AssignCollectibleFunction()
	-- app.PrintDebug("Swapping",CLASSNAME,".collectible","via",setting,app.Settings.Collectibles.Titles)
	if app.Settings.Collectibles.Titles then
		app.SwapClassDefinitionMethod(CLASSNAME,"collectible",app.ReturnTrue)
	else
		app.SwapClassDefinitionMethod(CLASSNAME,"collectible",app.ReturnFalse)
	end
end
app.AddEventHandler("OnSettingsNeedsRefresh", AssignCollectibleFunction);
app.AddEventHandler("OnStartup", AssignCollectibleFunction);
app.AddEventHandler("OnRefreshCollections", function()
	-- Record the highest PVP Rank for the character in order to play the jingle on login.
	-- NOTE: Only for characters that have already been cached in the character specific saved variables!
	-- To test, run this script and reload UI:
	--   /script wipe(ATTC.CurrentCharacter.PVPRanks)wipe(ATTAccountWideData.PVPRanks) AllTheThingsSettingsPerCharacter.HighestLifetimeRank=1
	local PerCharacter = app.LocalizeGlobal("AllTheThingsSettingsPerCharacter", true)
	if not PerCharacter.HighestLifetimeRank then
		PerCharacter.HighestLifetimeRank = HighestLifetimeRank;
	elseif PerCharacter.HighestLifetimeRank ~= HighestLifetimeRank then
		PerCharacter.HighestLifetimeRank = HighestLifetimeRank;
		app.SetThingCollected(KEY, HighestLifetimeRank, true, true);
	end
	
	local saved, none = {}, {}
	for i=1,HighestLifetimeRank,1 do
		saved[i] = true
	end
	for i=HighestLifetimeRank + 1,14,1 do
		none[i] = true
	end
	-- Character Cache
	app.SetBatchCached(CACHE, saved, 1)
	app.SetBatchCached(CACHE, none)
	-- Account Cache (removals handled by Sync)
	app.SetBatchAccountCached(CACHE, saved, 1)
end);