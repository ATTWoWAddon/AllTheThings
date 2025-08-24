
-- Faction Data Module
local _, app = ...;

-- Dependencies

-- Concepts:
-- Encapsulates the functionality for defining Faction-related data used in the addon

-- Global locals
local ipairs, pairs, math_ceil
	= ipairs, pairs, math.ceil;

-- App locals

-- Module locals

-- Faction Data API Implementation
-- Access via AllTheThings.Modules.FactionData
local api = {};
app.Modules.FactionData = api;
local FACTION_RACES = {}
local races
for id,raceInfo in pairs(app.RaceDB.ID) do
	if raceInfo.faction then
		races = FACTION_RACES[raceInfo.faction]
		if not races then FACTION_RACES[raceInfo.faction] = {id}
		else races[#races + 1] = id end
	end
end

api.FACTION_RACES = FACTION_RACES

local isHuman, remainingTurnIns, totalTurnIns = app.RaceIndex == 1, nil, nil;
api.CalculateRemainingTurnIns = function(reputation, repPerTurnIn, maxReputation)
	if isHuman then repPerTurnIn = repPerTurnIn + (repPerTurnIn * 0.1); end
	return repPerTurnIn,	-- Adjusted Reputation Per Turn In
		math_ceil((maxReputation - reputation) / repPerTurnIn),	-- Remaining Turn Ins
		math_ceil(maxReputation / repPerTurnIn);				-- Total Turn Ins
end
api.AddReputationTooltipInfo = function(tooltipInfo, reputation, text, repPerTurnIn, maxReputation)
	repPerTurnIn, remainingTurnIns, totalTurnIns = api.CalculateRemainingTurnIns(reputation, repPerTurnIn, maxReputation);
	local minimum = totalTurnIns - remainingTurnIns;
	if minimum < 0 then
		totalTurnIns = totalTurnIns - minimum;
		minimum = 0;
	end
	tooltipInfo[#tooltipInfo + 1] = {
		left = text, right = minimum .. " / " .. totalTurnIns .. " (" .. remainingTurnIns .. ")",
		r = 1, g = 1, b = 1
	};
	return repPerTurnIn, remainingTurnIns;
end
api.AddReputationTooltipInfoWithMultiplier = function(tooltipInfo, reputation, text, repPerTurnIn, maxReputation, multiplier)
	repPerTurnIn, remainingTurnIns, totalTurnIns = api.CalculateRemainingTurnIns(reputation, repPerTurnIn, maxReputation);
	remainingTurnIns = remainingTurnIns * multiplier;
	totalTurnIns = remainingTurnIns * multiplier;
	local minimum = totalTurnIns - remainingTurnIns;
	if minimum < 0 then
		totalTurnIns = totalTurnIns - minimum;
		minimum = 0;
	end
	tooltipInfo[#tooltipInfo + 1] = {
		left = text, right = minimum .. " / " .. totalTurnIns .. " (" .. remainingTurnIns .. ")",
		r = 1, g = 1, b = 1
	};
	return repPerTurnIn, remainingTurnIns;
end
api.AddQuestTooltip = function(tooltipInfo, formatter, quest)
	local questText = quest.text or RETRIEVING_DATA;
	tooltipInfo[#tooltipInfo + 1] = {
		left = formatter and (formatter):format(questText) or questText,
		right = app.GetCollectionIcon(quest.saved),
		r = 1, g = 1, b = 1
	};
end
api.AddQuestTooltipWithReputation = function(tooltipInfo, formatter, quest, repPerTurnIn)
	if isHuman then repPerTurnIn = repPerTurnIn + (repPerTurnIn * 0.1); end
	local questText = quest.text or RETRIEVING_DATA;
	tooltipInfo[#tooltipInfo + 1] = {
		left = formatter and (formatter):format(questText) or questText,
		right = "+" .. repPerTurnIn .. " Rep " .. app.GetCollectionIcon(quest.saved),
	};
	return repPerTurnIn;
end
api.AddQuestsTooltipWithReputation = function(tooltipInfo, text, quests, repPerTurnIn)
	if isHuman then repPerTurnIn = repPerTurnIn + (repPerTurnIn * 0.1); end
	local completedAny = false;
	for i,quest in ipairs(quests) do if quest.saved then completedAny = true; break; end end
	local count = #tooltipInfo + 1;
	tooltipInfo[count] = {
		left = text,
		right = "+" .. repPerTurnIn .. " Rep " .. app.GetCollectionIcon(completedAny)
	};
	for i,quest in ipairs(quests) do
		count = count + 1;
		tooltipInfo[count] = {
			left = "  " .. (quest.text or RETRIEVING_DATA)
		};
	end
	return repPerTurnIn;
end

