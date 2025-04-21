
-- Title Class
local _, app = ...
local L = app.L;

-- Blizzard
local GetTitleName, UnitName, CALENDAR_PLAYER_NAME, IsTitleKnown, GetNumTitles =
	  GetTitleName, UnitName, CALENDAR_PLAYER_NAME, IsTitleKnown, GetNumTitles

-- Module

-- App
local Colorize = app.Modules.Color.Colorize

-- Title Lib!
local KEY, CACHE = "titleID", "Titles"
local CLASSNAME = "Title"

local function CalculateTitleStyle(name)
	if name then
		local first = name:sub(1, 1);
		if first == " " then
			-- Suffix
			first = name:sub(2, 2);
			if first == first:upper() then
				-- Comma Separated
				return 3;
			end

			-- Player Name First
			return 1;
		else
			local last = name:sub(-1);
			if last == " " then
				-- Prefix
				return 0;
			end

			-- Suffix
			if first == first:lower() then
				-- Player Name First with a space
				return 2;
			end

			-- Comma Separated
			return 3;
		end
	end

	return 1;	-- Player Name First
end
local function StylizePlayerTitle(title, style, me)
	if title then
		if style == 0 then
			-- Prefix
			return title .. me;
		elseif style == 1 then
			-- Player Name First
			return me .. title;
		elseif style == 2 then
			-- Player Name First (with space)
			return me .. " " .. title;
		elseif style == 3 then
			-- Comma Separated
			return me .. ", " .. title;
		end
	end
	return title or RETRIEVING_DATA;
end
local OnUpdateForSpecificGender = function(t, parent, defaultUpdate)
	if app.MODE_DEBUG_OR_ACCOUNT or t.gender == app.Gender then
		if defaultUpdate and parent then
			t.visible = defaultUpdate(t, parent);
		else
			t.visible = true;
		end
	else
		if defaultUpdate and parent then
			t.visible = false;
		else
			t.visible = true;
		end
	end
	return true;
end
app.CreateTitle = app.CreateClass("Title", "titleID", {
	CACHE = function() return CACHE end,
	icon = function(t)
		return app.asset("Category_Titles");
	end,
	description = function(t)
		return L.TITLES_DESC;
	end,
	text = function(t)
		return Colorize(t.name, app.Colors.Account)
	end,
	name = function(t)
		local name = StylizePlayerTitle(t.titleName, t.style, UnitName("player"))
		t.name = name
		return name
	end,
	titleName = function(t)
		return GetTitleName(t[KEY]);
	end,
	title = function(t)
		return StylizePlayerTitle(t.titleName, t.style, "("..CALENDAR_PLAYER_NAME..")");
	end,
	style = function(t)
		local style = CalculateTitleStyle(t.titleName);
		if style then
			t.style = style;
			return style;
		end
	end,
	collectible = function(t)
		return app.Settings.Collectibles.Titles;
	end,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY])
	end,
	saved = function(t)
		return IsTitleKnown(t[KEY]);
	end,
	OnUpdate = function(t)
		return t.gender and OnUpdateForSpecificGender;
	end
});
app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)

-- Title Refresh
app.AddEventHandler("OnRefreshCollections", function()
	local saved, none = {}, {}
	for i=1,GetNumTitles(),1 do
		if IsTitleKnown(i) then
			saved[i] = true
		else
			none[i] = true
		end
	end
	-- Character Cache
	app.SetBatchCached(CACHE, saved, 1)
	app.SetBatchCached(CACHE, none)
	-- Account Cache (removals handled by Sync)
	app.SetBatchAccountCached(CACHE, saved, 1)
end);