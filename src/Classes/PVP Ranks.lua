do
-- CRIEVE NOTE: This file is currently identical in both Retail and Classic.
-- DO NOT TOUCH IT.
local app = select(2, ...);
local L = app.L;

-- Global Variables
local GetPVPLifetimeStats =
	  GetPVPLifetimeStats;

-- Protected Variables
local Collectible = true;
local ALLIANCE_FACTION_ID = Enum.FlightPathFaction.Alliance;
local HORDE_FACTION_ID = Enum.FlightPathFaction.Horde;

-- PVP Rank Class
local Create, Class = app.CreateClass("PVPRank", "pvpRankID", {
	["name"] = function(t)
		return _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. (t.inverseR or 0)];
	end,
	["icon"] = function(t)
		return format("%s%02d","Interface\\PvPRankBadges\\PvPRank", t.pvpRankID);
	end,
	["title"] = function(t)
		return RANK .. " " .. t.pvpRankID .. "`" ..  _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. ((t.inverseR == 1 and 0 or 1))] .. " (" .. (t.r == ALLIANCE_FACTION_ID and FACTION_HORDE or FACTION_ALLIANCE) .. ")";
	end,
	["description"] = function(t)
		return L.PVP_RANK_DESCRIPTION;
	end,
	["r"] = function(t)
		return t.parent.r or app.FactionID;
	end,
	["inverseR"] = function(t)
		return t.r == ALLIANCE_FACTION_ID and 1 or 0;
	end,
	["lifetimeRank"] = function(t)
		return select(3, GetPVPLifetimeStats()) or 0;
	end,
	["collectible"] = function(t)
		return Collectible;
	end,
	["collected"] = function(t)
		return t.lifetimeRank >= (t.pvpRankID + 4);
	end,
	["OnTooltip"] = function(t)
		GameTooltip:AddDoubleLine("Your lifetime highest rank: ", _G["PVP_RANK_" .. (t.lifetimeRank) .. "_" .. (app.FactionID == 2 and 1 or 0)], 1, 1, 1, 1, 1, 1);
	end
});

-- PVP Rank API Implementation
-- Access via AllTheThings.Modules.PVPRanks
local lib = {};
lib.GetCollectible = function()
	return Collectible;
end
lib.SetCollectible = function(collectible)
	Collectible = collectible;
end
app.Modules.PVPRanks = lib;
app.CreatePVPRank = Create;
end