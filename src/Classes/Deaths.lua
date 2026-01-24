local app = select(2, ...);
local tostring = tostring;

-- App locals
local ATTAccountWideData, ATTCharacterData

-- Death Tracker Lib
local function OnTooltipForDeathTracker(t, tooltipInfo)
	local c = {};
	for guid,character in pairs(ATTCharacterData) do
		if character and character.Deaths and character.Deaths > 0 then
			if not character.ignored then
				tinsert(c, character);
			end
		end
	end
	if #c > 0 then
		tooltipInfo[#tooltipInfo + 1] = { left = " " };
		tooltipInfo[#tooltipInfo + 1] = { left = "Deaths Per Character:" };
		app.Sort(c, function(a, b)
			return a.Deaths > b.Deaths;
		end);
		for i,character in ipairs(c) do
			tooltipInfo[#tooltipInfo + 1] = {
				left = "  " .. character.text:gsub("-" .. GetRealmName(), ""),
				right = character.Deaths,
				r = 1, g = 1, b = 1,
			};
		end
	end
end
local fields = {
	["name"] = function(t)
		return "Total Deaths";
	end,
	["icon"] = function(t)
		return app.asset("Category_Deaths");
	end,
	["hash"] = function(t)
		return "deathtracker";
	end,
	["sourceIgnored"] = app.ReturnTrue,
	["summaryText"] = function(t)
		return tostring(t.deathCount) .. " |T" .. app.asset("Category_CommonBossDrop") .. ":0|t";
	end,
	["deathCount"] = function(t)
		return ATTAccountWideData.Deaths or app.CurrentCharacter.Deaths or 0;
	end,
	["OnTooltip"] = function()
		return OnTooltipForDeathTracker;
	end,
};
if app.GameBuildVersion <= 40000 and C_GameRules and C_GameRules.IsHardcoreActive() then
	fields.description = function(t)
		return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Try Again!'\n";
	end;
else
	fields.description = function(t)
		return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Live Again!'\n";
	end;
end
local GetStatistic = GetStatistic;
---@diagnostic disable-next-line: missing-parameter
if GetStatistic and GetStatistic(60) then
	-- Statistics are available, this means we can get the actual statistic from the server's database.
	local OnUpdateForDeathTrackerLib = function(t)
		if app.MODE_DEBUG or app.IsClassic then
			---@diagnostic disable-next-line: missing-parameter
			local stat = GetStatistic(60) or "0";
			if stat == "--" then stat = "0"; end
			local deaths = tonumber(stat);
			if deaths > 0 and deaths > app.CurrentCharacter.Deaths then
				ATTAccountWideData.Deaths = ATTAccountWideData.Deaths + (deaths - app.CurrentCharacter.Deaths);
				app.CurrentCharacter.Deaths = deaths;
			end
			t.visible = true;
		else
			t.visible = false;
		end
		return true;
	end
	fields.OnUpdate = function(t)
		return OnUpdateForDeathTrackerLib;
	end
	app.AddEventRegistration("PLAYER_DEAD", function()
		app.Audio:PlayDeathSound();
	end)
else
	-- Oh boy, we have to track it ourselves!
	local OnUpdateForDeathTrackerLib = function(t)
		if app.MODE_DEBUG or app.IsClassic then
			t.visible = true;
		else
			t.visible = false;
		end
		return true;
	end
	fields.OnUpdate = function(t)
		return OnUpdateForDeathTrackerLib;
	end
	app.AddEventRegistration("PLAYER_DEAD", function()
		ATTAccountWideData.Deaths = ATTAccountWideData.Deaths + 1;
		app.CurrentCharacter.Deaths = app.CurrentCharacter.Deaths + 1;
		app.Audio:PlayDeathSound();
		app.HandleEvent("OnRefreshWindows")
	end)
end
app.CreateDeathClass = app.CreateClass("DeathTracker", "deaths", fields);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData, characterData)
	if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
	
	-- Update the total account wide death counter.
	local deaths = 0;
	for guid,character in pairs(characterData) do
		if character and character.Deaths and character.Deaths > 0 then
			deaths = deaths + character.Deaths;
		end
	end
	accountWideData.Deaths = deaths;
	ATTAccountWideData = accountWideData
	ATTCharacterData = characterData;
end)