
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
---@diagnostic disable-next-line: deprecated
local GetSpellTabInfo = GetSpellTabInfo

-- WoW API
local GetNumSpellTabs = app.WOWAPI.GetNumSpellTabs;
local IsSpellKnown = app.WOWAPI.IsSpellKnown;
local IsSpellKnownOrOverridesKnown = app.WOWAPI.IsSpellKnownOrOverridesKnown;

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
---@return boolean isKnown
local IsSpellKnownHelper
-- In 11.2 some spell checking was consolidated
if app.GameBuildVersion >= 110200 then
	IsSpellKnownHelper = function(spellID)
		if IsSpellKnown(spellID)
			or IsSpellKnown(spellID, 1)
			or IsSpellKnownOrOverridesKnown(spellID, 0, true)
			or IsSpellKnownOrOverridesKnown(spellID, 1, true)
			or SpellQuestOverrides[spellID] then
			return true
		end
	end
else
	local IsPlayerSpell = IsPlayerSpell;
	IsSpellKnownHelper = function(spellID)
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

local SpellIDToSpellName = {};
local SpellNameToSpellID = L.SPELL_NAME_TO_SPELL_ID;
local RankedSpellNames = setmetatable({}, app.MetaTable.AutoTable);

-- WoW API Cache
local _GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local function GetSpellName(spellID)
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
			-- character known
			if app.IsCached(CACHE, t[KEY]) then return true; end
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
	
	-- Spell Rank Handling
	local GetSpellRank = GetSpellRank;
	local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
	local function CacheRankForSpell(spellID, rank)
		if rank then
			local spellName = SpellIDToSpellName[spellID] or _GetSpellName(spellID);
			if not IsRetrieving(spellName) then
				if not SpellNameToSpellID[spellName] then
					SpellNameToSpellID[spellName] = spellID;
					if not SpellIDToSpellName[spellID] then
						SpellIDToSpellName[spellID] = spellName;
					end
				end
				local rankedSpell = RankedSpellNames[spellName];
				rankedSpell[rank] = spellID;
				if (rankedSpell.max or 0) < rank then
					rankedSpell.max = rank;
				end
			end
		else
			GetSpellName(spellID);
		end
	end
	app.AddEventHandler("OnRefreshCollections", function()
		local state
		local saved, none = {}, {}
		local IsAccountCached = app.IsAccountCached
		for id,g in pairs(app.GetRawFieldContainer(KEY)) do
			-- Cache Spell Names
			for i,spell in ipairs(g) do
				CacheRankForSpell(id, spell.rank);
			end
			
			-- Don't cache other cached spells within Spells, they're handled separately
			if not IsAccountCached("Mounts", id) then
				state = IsSpellKnownHelper(id)
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
		for _,spellID in pairs(app.SkillDB.SkillToSpell) do
			GetSpellName(spellID);
		end
		for specID,spellID in pairs(app.SkillDB.SpecializationSpells) do
			GetSpellName(spellID);
		end
		if GetSpellTabInfo then
			local lastSpellName, currentSpellRank, lastSpellRank = "", 1, 1;
			for spellTabIndex=1,GetNumSpellTabs() do
				local offset, numSlots = select(3, GetSpellTabInfo(spellTabIndex));
				for spellIndex=offset+1,offset+numSlots do
					local spellName, _, _, _, _, _, spellID = GetSpellInfo(spellIndex, BOOKTYPE_SPELL);
					if spellName then
						saved[spellID] = true
						currentSpellRank = GetSpellRank(spellID);
						if not currentSpellRank then
							if lastSpellName == spellName then
								currentSpellRank = lastSpellRank + 1;
							else
								lastSpellName = spellName;
								currentSpellRank = 1;
							end
						end
						SpellNameToSpellID[spellName] = spellID;
						local rankedSpell = RankedSpellNames[spellName];
						rankedSpell[currentSpellRank] = spellID;
						if (rankedSpell.max or 0) < currentSpellRank then
							rankedSpell.max = currentSpellRank;
						end
					end
				end
			end
		end
		
		-- If we know a higher rank of the spell, then flag all lower ranks of the spell as collected.
		for spellName,rankedSpell in pairs(RankedSpellNames) do
			--print("Max Rank", spellName, rankedSpell.max);
			for i=rankedSpell.max,1,-1 do
				local id = rankedSpell[i];
				if id then
					if saved[id] then
						--print(" ", i, id, true);
						for j=i-1,1,-1 do
							id = rankedSpell[j];
							if id then saved[id] = true end
							--print(" ", j, id, true);
						end
						break;
					end
				end
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

-- Glyph Lib
-- Permanent Glyph Collecting was implemented with Cataclysm and removed with Legion in Patch 7.0.3.
do
	-- WoW API Cache
	if app.GameBuildVersion >= 40000 and app.GameBuildVersion <= 70000 then
		local GlyphDB = app.GlyphDB or {};
		local GetGlyphInfo, GetNumGlyphs =
			  GetGlyphInfo, GetNumGlyphs;
		app.AddEventHandler("OnRefreshCollections", function()
			local saved, char, none = {}, {}, {}
			for index=1,GetNumGlyphs(),1 do
				local name, glyphType, isKnown, icon, glyphId, glyphLink = GetGlyphInfo(index)
				if glyphId then
					local spellID = GlyphDB[glyphId];
					if spellID then
						if isKnown then
							char[spellID] = true;
							saved[spellID] = true;
						else
							none[spellID] = true
						end
					else
						print("Missing SpellID for Glyph:", glyphId);
					end
				end
			end

			-- Character Cache
			app.SetBatchCached("Spells", char, 1)
			app.SetBatchCached("Spells", none)
			-- Account Cache (removals handled by Sync)
			app.SetBatchAccountCached("Spells", saved, 1)
		end);
		app.AddEventRegistration("USE_GLYPH", function()
			-- TODO: Refresh Glyphs somehow.
		end);
	end
end