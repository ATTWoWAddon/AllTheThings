local AllowedNilGlobals = {
	CurrentSubFileName = 1,
}
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
---@param t table
---@param key any
---@return table|nil
local function AutoTableMetaFunc(t, key)
	-- only auto-key string keys
	if type(key) == "string" then
		local value = SelfAutoTable()
		t[key] = value
		return value
	end
end
--- Wraps a table so missing string keys automatically create nested tables.
---@param t table
---@return table
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
-- Refer to the invidual containers for more info.
-- Database Container injections contain a bunch of small modifications / additions, but since we're using it everywhere, it is losing the data due to what is known as "data chomping" with how we are using it. To combat this, the tables are designed to persist their structures despite the root being freed every time a new file is loaded and processed.
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
	__index = function(t, key)
		if key == "text" then
			local text = {};
			rawset(t, key, text);
			return text;
		end
	end,
};
local backingTableMeta = {
	__index = function(t, key)
		local o = setmetatable({}, dataEntryMeta);
		rawset(t, tonumber(key), o);
		return o;
	end,
};
local backingTableMetaNoSubMeta = {
	__index = function(t, key)
		local o = {};
		rawset(t, tonumber(key), o);
		return o;
	end,
};
GlobalDBs = {}
CreateDatabaseContainer = function(name, noSubMeta, options)
	local backingTable = setmetatable({}, (noSubMeta and type(noSubMeta) == "table" and noSubMeta or backingTableMetaNoSubMeta) or backingTableMeta);
	local db = setmetatable({
		__Options = options or {}
	},{
		__index = function(t, key)
			return backingTable[key];
		end,
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
local autotable__index = function(t, key)
	if key == nil then return end
	local val = SetAutoTable()
	rawset(t, key, val)
	return val
 end
SetAutoTable = function()
	return setmetatable({}, {__index = autotable__index})
end

ExportDB = CreateDatabaseContainer("Exports", {__index = autotable__index})
end

do	-- WoW API Function Templates
WOWAPI_GetItemCount = function(itemID) return "_.WOWAPI.GetItemCount(" .. itemID .. ", true)"; end
WOWAPI_GetSpellCooldown = function(spellID) return "_.WOWAPI.GetSpellCooldown(" .. spellID .. ")"; end
WOWAPI_GetSpellName = function(spellID) return "_.WOWAPI.GetSpellName(" .. spellID .. ")"; end
WOWAPI_GetItemClassInfo = function(a) return "_.WOWAPI.GetItemClassInfo(" .. a .. ")"; end
WOWAPI_GetItemSubClassInfo = function(a,b)
	if a and b then
		return "_.WOWAPI.GetItemSubClassInfo(" .. a .. "," .. b .. ")";
	else
		return "_.WOWAPI.GetItemSubClassInfo(" .. a .. ")";
	end
end
WOWAPI_GetAchievementName = function(achievementID)
	return "select(2,GetAchievementInfo(" .. achievementID .. "))";
end
WOWAPI_GetCategoryName = function(categoryID)
	return "select(1,GetCategoryInfo(" .. categoryID .. "))";
end
end
