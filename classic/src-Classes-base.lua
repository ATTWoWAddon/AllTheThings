-- Base Class Helpers
-- Contains necessary logic for defining, creating and working with all Class structures in a consistent manner
local appName, app = ...;

-- Global locals
local type, pairs, tonumber, setmetatable, rawget, tinsert
	= type, pairs, tonumber, setmetatable, rawget, tinsert;

-- App locals
local GetRelativeValue = app.GetRelativeValue;

-- Lib Helpers
local constructor = function(id, t, typeID)
	if t then
		if not t.g and t[1] then
			return { g=t, [typeID]=id };
		else
			t[typeID] = id;
			return t;
		end
	else
		return {[typeID] = id};
	end
end

-- Provides a Unique Counter value for the Key referenced on each reference
local uniques = setmetatable({}, { __index = function(t, key) return 0; end });
local UniqueCounter = setmetatable({}, {
	__index = function(t, key)
		local count = uniques[key] + 1;
		-- app.PrintDebug("UniqueCounter",key,count)
		uniques[key] = count;
		return count;
	end
});

-- Proper unique hash for a Class Object is not as simple as ID..Value, there are many situations where that does not provide adequate uniqueness
local function CreateHash(t)
	local key = t.key or t.text;
	if key then
		local hash = key .. (t[key] or "NOKEY");
		if key == "criteriaID" and t.achievementID then
			hash = hash .. ":" .. t.achievementID;
		elseif key == "itemID" and t.modItemID and t.modItemID ~= t.itemID then
			hash = key .. t.modItemID;
		elseif key == "creatureID" then
			if t.encounterID then hash = hash .. ":" .. t.encounterID; end
			local difficultyID = GetRelativeValue(t, "difficultyID");
			if difficultyID then hash = hash .. "-" .. difficultyID; end
		elseif key == "encounterID" then
			if t.creatureID then hash = hash .. ":" .. t.creatureID; end
			local difficultyID = GetRelativeValue(t, "difficultyID");
			if difficultyID then hash = hash .. "-" .. difficultyID; end
			if t.crs then
				local numCrs = #t.crs;
				if numCrs == 1 then
					hash = hash .. t.crs[1];
				elseif numCrs == 2 then
					hash = hash .. t.crs[1] .. t.crs[2];
				elseif numCrs > 2 then
					hash = hash .. t.crs[1] .. t.crs[2] .. t.crs[3];
				end
			end
		elseif key == "difficultyID" then
			local instanceID = GetRelativeValue(t, "instanceID") or GetRelativeValue(t, "headerID");
			if instanceID then hash = hash .. "-" .. instanceID; end
		elseif key == "headerID" then
			-- for custom headers, they may be used in conjunction with other bits of data that we don't want to merge together (because it makes no sense)
			-- Separate if using Class requirements
			if t.c then
				for _,class in pairs(t.c) do
					hash = hash .. "C" .. class;
				end
			end
			-- Separate if using Faction/Race requirements
			if t.r then
				hash = "F" .. t.r .. hash;
			elseif t.races then
				for _,race in pairs(t.races) do
					hash = hash .. "R" .. race;
				end
			end
		elseif key == "spellID" and t.itemID then
			-- Some recipes teach the same spell, so need to differentiate by their itemID as well
			hash = hash .. ":" .. t.itemID;
		end
		if t.rank then
			hash = hash .. "." .. t.rank;
			-- app.PrintDebug("hash.rank",hash)
		end
		if t.nomerge then
			hash = hash.."__"..UniqueCounter["Hash"];
		end
		t.hash = hash;
		return hash;
	end
end

-- Represents non-nil default values which are valid for all Classes regardless of Object content
local DefaultFields = {
	-- Cloned groups will not directly have a parent, but they will instead have a sourceParent, so fill in with that instead
	["parent"] = function(t)
		return t.sourceParent;
	end,
	-- A semi-unique string value that identifies this object based on its key, or text if it doesn't have one.
	["hash"] = function(t)
		return CreateHash(t);
	end,
	-- Default text should be a valid link or name
	["text"] = function(t)
		return t.link or t.name;
	end,
	-- Whether or not something is repeatable.
	["repeatable"] = function(t)
		return t.isDaily or t.isWeekly or t.isMonthly or t.isYearly or t.isWorldQuest;
	end,
	["progress"] = function(t) return 0; end,
	["total"] = function(t) return 0; end,
};

-- Creates a Base Object Table which will evaluate the provided set of 'fields' (each field value being a keyed function)
local classDefinitions, _cache = {};
local BaseObjectFields = function(fields, className)
	if not className then
		print("A Class Name must be declared when using BaseObjectFields");
	end
	local class = { __type = function() return className; end };
	if not classDefinitions[className] then
		classDefinitions[className] = class;
	else
		print("A Class has already been defined with that name!", className);
	end
	if fields then
		for key,method in pairs(fields) do
			class[key] = method;
		end
	end
	
	-- Inject the default fields into the class
	for key,method in pairs(DefaultFields) do
		if not rawget(class, key) then
			class[key] = method;
		end
	end
	return {
		__index = function(t, key)
			_cache = rawget(class, key);
			if _cache then return _cache(t); end
		end
	};
end
app.BaseClass = BaseObjectFields(nil, "BaseClass");

app.CreateClass = function(className, classKey, fields, ...)
	-- Validate arguments
	if not className then
		print("A Class Name must be declared when using CreateClass");
	end
	if not classKey then
		print("A Class Key must be declared when using CreateClass");
	end
	if not fields then
		print("Fields must be declared when using CreateClass");
	end
	
	-- Ensure that a key field exists!
	if not fields.key then
		fields.key = function() return classKey; end;
	end
	
	-- If this object supports collectibleAsCost, that means it needs a way to fallback to a version of itself without any cost evaluations should it detect that it doesn't use it anywhere.
	if fields.collectibleAsCost then
		local simpleclass = {};
		for key,method in pairs(fields) do
			simpleclass[key] = method;
		end
		simpleclass.collectibleAsCost = function(t) return false; end;
		simpleclass.collectedAsCost = nil;
		local simplemeta = BaseObjectFields(simpleclass, "Simple" .. className);
		fields.simplemeta = function(t) return simplemeta; end;
	end
	
	local args = { ... };
	local total = #args;
	if total > 0 then
		local conditionals = {};
		for i=1,total,3 do
			local class = args[i + 1];
			tinsert(conditionals, args[i + 2]);
			if class then
				for key,method in pairs(fields) do
					if not rawget(class, key) then
						class[key] = method;
					end
				end
				if class.collectibleAsCost then
					local simpleclass = {};
					for key,method in pairs(class) do
						simpleclass[key] = method;
					end
					simpleclass.collectibleAsCost = function(t) return false; end;
					simpleclass.collectedAsCost = nil;
					local simplemeta = BaseObjectFields(simpleclass, "Simple" .. className .. args[i]);
					class.simplemeta = function(t) return simplemeta; end;
				end
				tinsert(conditionals, BaseObjectFields(class, className .. args[i]));
			else
				tinsert(conditionals, {});
			end
		end
		total = #conditionals;
		fields.conditionals = conditionals;
		local Class = BaseObjectFields(fields, className);
		return function(id, t)
			t = constructor(id, t, classKey);
			for i=1,total,2 do
				if conditionals[i](t) then
					return setmetatable(t, conditionals[i + 1]);
				end
			end
			return setmetatable(t, Class);
		end, Class;
	else
		local Class = BaseObjectFields(fields, className);
		return function(id, t)
			return setmetatable(constructor(id, t, classKey), Class);
		end, Class;
	end
end
app.ExtendClass = function(baseClassName, className, classKey, fields, ...)
	local baseClass = classDefinitions[baseClassName];
	if baseClass then
		if not fields then fields = {}; end
		for key,method in pairs(baseClass) do
			if not fields[key] then
				fields[key] = method;
			end
		end
		fields.__type = nil;
		fields.key = nil;
	else
		print("Could not find specified base class:", baseClassName);
	end
	return app.CreateClass(className, classKey, fields, ...);
end

--[[
-- Proof of Concept with Class Conditionals
local fields = {
	["name"] = function(t)
		return "Loki";
	end,
	["OnTest"] = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a god!");
		end
	end,
};
local fieldsWithArgs = {
	OnTest = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a variant!");
		end
	end
};
local fieldsWithFeeling = {
	OnTest = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a variant... with feeling!");
		end
	end
};
app.CreateExample = app.CreateClass("Example", "exampleID", fields,
	"WithArgs", fieldsWithArgs, (function(t) return t.args; end),
	"WithFeeling", fieldsWithFeeling, (function(t) return t.feeling; end));

for i,instance in ipairs({
	app.CreateExample(1),
	app.CreateExample(2, { name = "Alligator Loki", args = "I'm a Crocodile!" }),
	app.CreateExample(3, { name = "Sylvie", feeling = "Pretty Neat" }),
}) do
	instance.OnTest(instance);
end
]]--
app.BaseObjectFields = BaseObjectFields;