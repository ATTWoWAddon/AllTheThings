
-- Spell Class
local _, app = ...
local L = app.L

-- Global locals
local pairs, select, rawget
	= pairs, select, rawget

-- App locals
local IsQuestFlaggedCompleted, SearchForField
	= app.IsQuestFlaggedCompleted, app.SearchForField

-- WoW API Cache
local GetSpellLink = app.WOWAPI.GetSpellLink;

-- TODO: some of these deprecated in 11.2, move to WOWAPI
local IsSpellKnown, GetNumSpellTabs, GetSpellTabInfo, IsSpellKnownOrOverridesKnown
---@diagnostic disable-next-line: deprecated
	= app.WOWAPI.IsSpellKnown, GetNumSpellTabs, GetSpellTabInfo, app.WOWAPI.IsSpellKnownOrOverridesKnown

local SpellQuestLinks = {
	-- double check added Mount spells in Mount.lua [PerCharacterMountSpells/AccountWideMountSpells]
	[390631] = 66444,	-- Ottuk Taming
	[241857] = 46319,	-- Lunarwing
	[231437] = 46319,	-- Lunarwing
	[148972] = 32325,	-- Green Dreadsteed
	[148970] = 32325,	-- Green Felsteed
	[1255451] = 92638,	-- Feldruid's Scornwing Idol
}
local SpellQuestOverrides = setmetatable({}, { __index = function(t,key)
	local questID = SpellQuestLinks[key]
	if not questID then
		t[key] = false
		return
	end

	local saved = IsQuestFlaggedCompleted(questID)
	if not saved then return end

	t[key] = saved
	return saved
end})
-- Consolidates some spell checking
---@param spellID number
---@param rank? number
---@param ignoreHigherRanks? boolean
---@return boolean isKnown
local IsSpellKnownHelper
-- In 11.2 some spell checking was consolidated
if app.GameBuildVersion >= 110200 then
	IsSpellKnownHelper = function(spellID, rank, ignoreHigherRanks)
		if IsSpellKnown(spellID)
			or IsSpellKnown(spellID, 1)
			or IsSpellKnownOrOverridesKnown(spellID, 0, true)
			or IsSpellKnownOrOverridesKnown(spellID, 1, true)
			or SpellQuestOverrides[spellID] then
			return true
		end
	end
else
	local IsPlayerSpell = app.WOWAPI.IsPlayerSpell
	IsSpellKnownHelper = function(spellID, rank, ignoreHigherRanks)
		if IsPlayerSpell(spellID)
			or IsSpellKnown(spellID)
			or IsSpellKnown(spellID, 1)
			or IsSpellKnownOrOverridesKnown(spellID, 0, true)
			or IsSpellKnownOrOverridesKnown(spellID, 1, true)
			or SpellQuestOverrides[spellID] then
			return true
		end
	end
end
app.IsSpellKnownHelper = IsSpellKnownHelper;
app.IsSpellKnown = IsSpellKnownHelper;

local SpellIDToSpellName = {};
local SpellNameToSpellID;

-- WoW API Cache
local _GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetSpellName = function(spellID)
	local spellName = SpellIDToSpellName[spellID];
	if spellName then return spellName; end
	spellName = _GetSpellName(spellID);
	if spellName and spellName ~= "" then
		SpellIDToSpellName[spellID] = spellName;
		SpellNameToSpellID[spellName] = spellID;
		return spellName;
	end
end
app.GetSpellName = GetSpellName;
SpellNameToSpellID = setmetatable(L.SPELL_NAME_TO_SPELL_ID, {
	__index = function(t, key)
		local cache = app.GetFieldContainer("spellID");
		for spellID,g in pairs(cache) do
			GetSpellName(spellID);
		end
		for _,spellID in pairs(app.SkillDB.SkillToSpell) do
			GetSpellName(spellID);
		end
		for specID,spellID in pairs(app.SkillDB.SpecializationSpells) do
			GetSpellName(spellID);
		end
		local numSpellTabs, offset, lastSpellName, currentSpellRank = GetNumSpellTabs(), select(4, GetSpellTabInfo(1)), "", 1;
		for spellTabIndex=2,numSpellTabs do
			local numSpells = select(4, GetSpellTabInfo(spellTabIndex));
			for spellIndex=1,numSpells do
				local spellName, _, _, _, _, _, spellID = GetSpellInfo(offset + spellIndex, BOOKTYPE_SPELL);
				if spellName then
					if lastSpellName == spellName then
						currentSpellRank = currentSpellRank + 1;
					else
						lastSpellName = spellName;
						currentSpellRank = 1;
					end
					---@diagnostic disable-next-line: redundant-parameter
					GetSpellName(spellID, currentSpellRank);
					SpellNameToSpellID[spellName] = spellID;
				-- else
				-- 	print("GetSpellName:Failed",offset + spellIndex);
				end
			end
			offset = offset + numSpells;
		end
		return rawget(t, key);
	end
});
app.SpellNameToSpellID = SpellNameToSpellID;
-- Represents a small lookup of a select set of Profession/Skill-related icons
local SkillIcons = setmetatable({
	[2720] = 2915722,	-- Junkyard Tinkering
	[2891] = 3054888,	-- Ascension Crafting
	[2811] = 2578727,	-- Stygia Crafting
	[2819] = 3747898,	-- Protoform Synthesis
	[2847] = 4638460,	-- Tuskarr Fishing Gear
	[2886] = 1394946,	-- Supply Shipments
	[2984] = 7449434,	-- Dye Crafting
}, { __index = function(t, key)
	if not key then return; end
	local skillSpellID = app.SkillDB.SkillToSpell[key];
	if skillSpellID then
		return GetSpellIcon(skillSpellID);
	end
end
});

local cache = app.CreateCache("_cachekey");
local function default_costCollectibles(t)
	local id = t.spellID
	if id then
		local results = SearchForField("spellIDAsCost", id)
		if #results > 0 then
			-- app.PrintDebug("default_costCollectibles",t.hash,#results)
			return results
		end
	end
	return app.EmptyTable
end
local function CacheInfo(t, field)
	local _t, id = cache.GetCached(t);
	local name, icon = GetSpellName(id), GetSpellIcon(id);
	_t.name = name;
	-- typically, the profession's spell icon will be a better representation of the spell if the spell is tied to a skill
	_t.icon = SkillIcons[t.skillID] or icon;
	local link = GetSpellLink(id);
	_t.link = link;
	-- track number of attempts to cache data for fallback to default values
	if not _t.link and not t.CanRetry then
		_t.name = "Spell #"..t.spellID;
		-- fallback to skill icon if possible
		_t.icon = SkillIcons[t.skillID] or 136243;	-- Trade_engineering
		_t.link = _t.name;
	end
	if field then return _t[field]; end
end

-- Spell Lib
do
	local KEY, CACHE = "spellID", "Spells"
	app.CreateSpell = app.CreateClass("Spell", KEY, {
		CACHE = function() return CACHE end,
		_cachekey = function(t)
			return t[KEY];
		end,
		name = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		link = function(t)
			return cache.GetCachedField(t, "link", CacheInfo);
		end,
		icon = function(t)
			return cache.GetCachedField(t, "icon", CacheInfo) or 136243;	-- Trade_engineering
		end,
		saved = function(t)
			local id = t[KEY];
			-- character known
			if app.IsCached(CACHE, id) then return true; end
		end,
		collectible = app.ReturnFalse,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		skillID = function(t)
			return t.requireSkill;
		end,
		costCollectibles = function(t)
			return cache.GetCachedField(t, "costCollectibles", default_costCollectibles);
		end,
	},
	"WithItem", {
		ImportFrom = "Item",
		ImportFields = { "name", "link", "icon", "specs", "tsm", "costCollectibles", "AsyncRefreshFunc" },
	},
	function(t) return t.itemID end)

	local CheckRecipeLearned
	if C_TradeSkillUI then
		-- local C_TradeSkillUI = C_TradeSkillUI
		CheckRecipeLearned = function(recipeID)
			-- TODO: currently this bricks the game instantly. thanks blizz
			-- local spellRecipeInfo = C_TradeSkillUI.GetRecipeInfo(recipeID)
			-- app.PrintTable(spellRecipeInfo)
			-- recipe is learned, so cache that it's learned regardless of being craftable
			-- if app.TEST and spellRecipeInfo and spellRecipeInfo.learned then
			-- 	-- Shadowlands recipes are weird...
			-- 	-- local rank = spellRecipeInfo.unlockedRecipeLevel or 0
			-- 	-- if rank > 0 then
			-- 	-- 	-- when the recipeID specifically is available, it will show as available for ALL possible ranks
			-- 	-- 	-- so we can check if the next known rank is also considered available for this recipeID
			-- 	-- 	spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeID, rank + 1)
			-- 	-- 	app.PrintDebug("NextRankCheck",recipeID,rank + 1, spellRecipeInfo.learned)
			-- 	-- end
			-- 	return spellRecipeInfo.learned
			-- end
		end
	else
		CheckRecipeLearned = app.EmptyFunction
	end

	app.AddEventHandler("OnRefreshCollections", function()
		local state
		local saved, none = {}, {}
		local IsAccountCached = app.IsAccountCached
		for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
			-- Don't cache other cached spells within Spells, they're handled separately
			if not IsAccountCached("Mounts", id) then
				state = IsSpellKnownHelper(id) or CheckRecipeLearned(id)
				if state ~= nil then
					saved[id] = true
				else
					-- for now, don't uncache learned Spells for the character...
					-- Recipes are weird, and can only properly be refreshed via a TradeSkill window (without crashing the game anyway...)
					-- none[id] = true
				end
			else
				-- Remove other Spells
				none[id] = true
			end
		end
		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		app.SetBatchCached(CACHE, none)
		-- Account Cache (removals handled by Sync)
		app.SetBatchAccountCached(CACHE, saved, 1)
	end);
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end);
	-- No known 'on learned' Event
end

-- Recipe Lib
do
	local KEY, CACHE, SETTING = "recipeID", "Spells", "Recipes"
	app.CreateRecipe = app.ExtendClass("Spell", "Recipe", KEY, {
		spellID = function(t)
			return t[KEY]
		end,
		collectible = function(t)
			return app.Settings.Collectibles[SETTING];
			-- TODO: revise? this prevents showing a BoP, wrong-profession Recipe under a BoE used to obtain it, when within a Popout and NOT tracking Account-Wide Recipes
			-- return app.Settings.Collectibles.Recipes and
			-- 	(
			--	-- If tracking Account-Wide, then all Recipes are inherently collectible
			-- 	app.Settings.AccountWide.Recipes or
			--	-- Otherwise must be learnable by the Character specifically
			-- 	app.CurrentCharacter.Professions[t.requireSkill]
			-- 	);
		end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY], SETTING)
		end,
		b = function(t)
			-- If not tracking Recipes Account-Wide, then pretend that every Recipe is BoP
			return 1;
		end,
	},
	"WithItem", {
		ImportFrom = "Item",
		ImportFields = { "name", "link", "icon", "specs", "tsm", "costCollectibles", "AsyncRefreshFunc" },
		b = function(t)
			-- If not tracking Recipes Account-Wide, then pretend that every Recipe is BoP
			return app.Settings.AccountWide[SETTING] and 2 or 1;
		end,
	},
	function(t) return t.itemID end);
	-- onrefresh handled by Spell
	-- saved vars handled by Spell
	app.AddEventRegistration("NEW_RECIPE_LEARNED", function(spellID, rank, previousSpellID)
		if spellID then
			app.SetThingCollected("spellID", spellID, false, true)
		end
	end);
end
