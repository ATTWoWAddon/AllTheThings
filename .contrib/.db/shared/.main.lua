local AllowedNilGlobals = {
	CurrentSubFileName = 1,
}
--- Rejects undeclared global reads except the allowed current-subfile name.
_G = setmetatable(_G, { __index = function(t,key) if not AllowedNilGlobals[key] then error("NON-EXISTENT-GLOBAL:",key) end end})
AllTheThings = {};
_ = AllTheThings;

-- A unique value which indicates the actual field within a group should not actually be Parsed (useful to bypass groups within sharedData/bubbleDown)
IGNORED_VALUE = 'E9B4EEAE-88EA-44F8-B7DF-0831B5F99A44'
POST_PROCESSING_FUNCTIONS = {};
SYMLINKS = {}

-- Auto-Metatable handling
do
--- Metatable index function which automatically creates nested tables for string keys.
---@param t table # Table receiving the automatically created nested table.
---@param key any # Missing key being looked up; string keys create nested tables.
---@return table|nil # Created nested table for a string key, otherwise nil.
local function AutoTableMetaFunc(t, key)
	-- only auto-key string keys
	if type(key) == "string" then
		local value = SelfAutoTable()
		t[key] = value
		return value
	end
end
--- Wraps a table so missing string keys automatically create nested tables.
---@generic T: table
---@overload fun(): table
---@param t? T # Table to wrap, or nil to create one.
---@param metafunc? fun(t: table, key: any): any # Optional custom missing-key handler.
---@return T # Supplied table, or a new table when omitted.
function SelfAutoTable(t, metafunc)
	return setmetatable(t or {}, { __index = metafunc or AutoTableMetaFunc })
end
end

do	-- Database Containers! Super neat things that store persistent data so they don't get wiped out!
do
-- The structure of the data is like so:
-- 	readable = "human readable string",
-- 	text = {
-- 		en = "english text",
-- 		es = "spanish text",
-- 		de = "german text",
-- 		fr = "french text",
-- 		[[it, pt, ru, ko, cn]]
-- 	},
-- Some containers have constant, export, description, lore, model.
-- Refer to the individual containers for more info.
-- Database Container injections contain a bunch of small modifications / additions, but since we're using it everywhere, it is losing the data due to what is known as "data chomping" with how we are using it. To combat this, the tables are designed to persist their structures despite the root being freed every time a new file is loaded and processed.
--- Options controlling database merge warnings.
---@class ATTDatabaseContainerOptions
---@field IgnoreValueConflicts? boolean # Suppress warnings for differing scalar values.

--- Recursively merges source entries into the destination without replacing existing values.
---@param t table # Source table.
---@param c table # Destination table.
---@param path? string # Current path for conflict messages.
---@param options? ATTDatabaseContainerOptions # Optional merge settings.
local function RecursivelyMergeData(t, c, path, options)
    path = path or ""  -- used for error reporting

    for key, tval in pairs(t) do
		local ttype = type(tval)
		local cval
		-- if a table is merging in, then pull the key directly, otherwise use rawget so that auto-table metatables
		-- don't create a table when a number is merging onto that key or we will get an erroneous type mismatch
		if ttype == "table" then
			cval = c[key]
		else
			cval = rawget(c, key)
		end
		-- if cval then
		-- 	print("Merge DB table - ",path,"@",key,"exists",cval,"assign",tval)
		-- end
        local currentPath = path .. tostring(key)

        if cval == nil then
            -- Key does not exist in c → copy it
            c[key] = tval
        else
            -- Key exists → check types
            local ctype = type(cval)

            if ttype ~= ctype then
                error("Type mismatch at " .. currentPath ..
                      " (exists=" .. ttype .. ", assign=" .. ctype .. ")")
            elseif ttype == "table" then
                -- Both are tables → recurse
                RecursivelyMergeData(tval, cval, currentPath .. ".", options)
            else
                -- Both exist and are non-table values → check conflict
                if tval ~= cval then
					if not options or not options.IgnoreValueConflicts then
						print("WARN: Value conflict at " .. currentPath ..
							" (exists=" .. tostring(cval) ..
							", assign=" .. tostring(tval) .. ")")
					end
                end
            end
        end
    end
end
local dataEntryMeta = {
	--- Lazily creates a localization table for the text key.
	---@param t table # Entry receiving the text table.
	---@param key any # Requested field.
	---@return table|nil # New text table, or nil for other keys.
	__index = function(t, key)
		if key == "text" then
			local text = {};
			rawset(t, key, text);
			return text;
		end
	end,
};
local backingTableMeta = {
	--- Creates a numeric-keyed entry with lazy text initialization.
	---@param t table # Backing table.
	---@param key any # Numeric key or numeric string.
	---@return table # Created database entry.
	__index = function(t, key)
		local o = setmetatable({}, dataEntryMeta);
		rawset(t, tonumber(key), o);
		return o;
	end,
};
local backingTableMetaNoSubMeta = {
	--- Creates a plain entry for a missing numeric key.
	---@param t table # Backing table.
	---@param key any # Numeric key or numeric string.
	---@return table # Created database entry.
	__index = function(t, key)
		local o = {};
		rawset(t, tonumber(key), o);
		return o;
	end,
};
GlobalDBs = {}
--- Creates a proxy that merges table assignments into persistent backing entries.
---@param name string # Database name used for registration and diagnostics.
---@param noSubMeta? boolean|table # A table supplies the backing metatable; other values use plain entries.
---@param options? ATTDatabaseContainerOptions # Optional merge settings.
---@return table # Database proxy.
CreateDatabaseContainer = function(name, noSubMeta, options)
	local backingTable = setmetatable({}, (noSubMeta and type(noSubMeta) == "table" and noSubMeta or backingTableMetaNoSubMeta) or backingTableMeta);
	local db = setmetatable({
		__Options = options or {}
	},{
		--- Reads an entry from the backing database.
		---@param t table # Database proxy.
		---@param key any # Entry key.
		---@return any # Backing entry.
		__index = function(t, key)
			return backingTable[key];
		end,
		--- Merges assigned tables into existing entries; other values are ignored.
		---@param t table # Database proxy.
		---@param key any # Entry key.
		---@param value any # Value to merge when it is a table.
		__newindex = function(t, key, value)
			if value and type(value) == "table" then
				local o = backingTable[key];
				RecursivelyMergeData(value, o, name.."."..key..".", t.__Options)
			else print("WARN: Ignoring DB value! Can only assign Table values",key,"=>",value)
			end
		end,
	});
	-- Parsed separately as a batch to prevent duplicate parsed content
	GlobalDBs[name] = backingTable
	return db;
end
end

-- Create the Database Containers.
AchievementData = CreateDatabaseContainer("AchievementData");
AchievementCategoryData = CreateDatabaseContainer("AchievementCategoryData");
CategoryDB = CreateDatabaseContainer("CategoryDB");
FilterDB = CreateDatabaseContainer("FilterDB");
-- ItemDBConditional contains a bunch of micro object modifications, but since we're using it everywhere, it is losing the item data due to what is known as "data chomping" with how we are using it.
ItemDBConditional = CreateDatabaseContainer("ItemDBConditional", {
	--- Creates a conditional item entry from its numeric key.
	---@param t table # Backing table.
	---@param key any # Item ID or numeric string.
	---@return table # Created entry with its item ID.
	__index = function(t, key)
		key = tonumber(key);
		local item = { itemID = key };
		rawset(t, key, item);
		return item;
	end,
});
-- Currently, multiple ItemIDs get assigned to one MountID leading to a conflict/overwrite
MountDB = CreateDatabaseContainer("MountDB", nil, {IgnoreValueConflicts=true});
ObjectDB = CreateDatabaseContainer("ObjectDB", nil, {IgnoreValueConflicts=true});
QuestDB = CreateDatabaseContainer("QuestDB");
RecipeDB = CreateDatabaseContainer("RecipeDB");
-- Currently, multiple ItemIDs get assigned to one SpeciesID leading to a conflict/overwrite
SpeciesDB = CreateDatabaseContainer("SpeciesDB", nil, {IgnoreValueConflicts=true});
SpellDB = CreateDatabaseContainer("SpellDB");
RecipeDBConditional = RecipeDB;
--[[
-- Proof of Concept:
-- If you assign new partial data to the object, it'll retain its previous data instead of discarding it.
local oldLionStatue = ObjectDB[31];
oldLionStatue.readable = "Old Lion Statue";
oldLionStatue.model = 189908;

ObjectDB[31] = { description = "What a shame it would be to lose this data..." };

local o = ObjectDB[31]
o.otherData = "also not lost data"

print("Old Lion Statue contains:");
for key,value in pairs(ObjectDB[31]) do
	print(" " .. key .. ": " .. value);
end
--]]--
end

do	-- Database Exports
local SetAutoTable
--- Creates a nested export table for a non-nil missing key.
---@param t table # Export table receiving the child.
---@param key any # Missing export key.
---@return table|nil # New child table, or nil for a nil key.
local autotable__index = function(t, key)
	if key == nil then return end
	local val = SetAutoTable()
	rawset(t, key, val)
	return val
 end
--- Creates an export table that lazily creates nested tables.
---@return table # New export table.
SetAutoTable = function()
	return setmetatable({}, {__index = autotable__index})
end

ExportDB = CreateDatabaseContainer("Exports", {__index = autotable__index})
end

do	-- WoW API Function Templates
--- A Lua expression emitted into generated parser output.
---@alias ATTLuaExpression string # Source expression evaluated by the addon.

--- Generates an item-count expression including banked items.
---@param itemID ItemID|ATTLuaExpression # Item ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetItemCount = function(itemID) return "_.WOWAPI.GetItemCount(" .. itemID .. ", true)"; end
--- Generates an expression for a spell cooldown.
---@param spellID SpellID|ATTLuaExpression # Spell ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetSpellCooldown = function(spellID) return "_.WOWAPI.GetSpellCooldown(" .. spellID .. ")"; end
--- Generates an expression for a localized spell name.
---@param spellID SpellID|ATTLuaExpression # Spell ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetSpellName = function(spellID) return "_.WOWAPI.GetSpellName(" .. spellID .. ")"; end
--- Generates an expression for an item class name.
---@param a number|ATTLuaExpression # Class ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetItemClassInfo = function(a) return "_.WOWAPI.GetItemClassInfo(" .. a .. ")"; end
--- Generates an item subclass expression when both IDs are supplied.
---@param a number|ATTLuaExpression # Class ID or expression resolving to one.
---@param b? number|ATTLuaExpression # Optional subclass ID or expression.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetItemSubClassInfo = function(a,b)
	if a and b then
		return "_.WOWAPI.GetItemSubClassInfo(" .. a .. "," .. b .. ")";
	else
		return "_.WOWAPI.GetItemSubClassInfo(" .. a .. ")";
	end
end
--- Generates an expression for an achievement name.
---@param achievementID AchievementID|ATTLuaExpression # Achievement ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetAchievementName = function(achievementID)
	return "select(2,GetAchievementInfo(" .. achievementID .. "))";
end
--- Generates an expression for an achievement category name.
---@param categoryID AchievementCategoryID|ATTLuaExpression # Category ID or expression resolving to one.
---@return ATTLuaExpression # Generated API expression.
WOWAPI_GetCategoryName = function(categoryID)
	return "select(1,GetCategoryInfo(" .. categoryID .. "))";
end
end
