-- Base Class Helpers
-- Contains necessary logic for defining, creating and working with all Class structures in a consistent manner
local appName, app = ...;

-- Global locals
local type,pairs,setmetatable,rawget,unpack,rawset,select
	= type,pairs,setmetatable,rawget,unpack,rawset,select

-- App locals
local GetRelativeValue = app.GetRelativeValue;
local containsValue = app.containsValue;
local DelayedCallback = app.CallbackHandlers.DelayedCallback

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
app.constructor = constructor;	-- Temporary

-- Provides a Unique Counter value for the Key referenced on each reference
local returnZero = function() return 0; end;
local uniques = setmetatable({}, { __index = returnZero });
local UniqueCounter = setmetatable({}, {
	__index = function(t, key)
		local count = uniques[key] + 1;
		-- app.PrintDebug("UniqueCounter",key,count)
		uniques[key] = count;
		return count;
	end
});
app.UniqueCounter = UniqueCounter;

-- Proper unique hash for a Class Object is not as simple as ID..Value, there are many situations where that does not provide adequate uniqueness
local function CreateHash(t)
	local key = t.key or t.text;
	if key then
		local hash = key .. (t[key] or "NOKEY");
		if key == "criteriaID" and t.achievementID then
			hash = hash .. ":" .. t.achievementID;
		elseif key == "itemID" and t.modItemID and t.modItemID ~= t.itemID then
			hash = key .. t.modItemID;
		elseif key == "npcID" or key == "creatureID" then
			local difficultyID = GetRelativeValue(t, "difficultyID");
			if difficultyID then hash = hash .. "-" .. difficultyID; end
		elseif key == "encounterID" then
			if t.npcID then hash = hash .. ":" .. t.npcID; end
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
			local instanceID = GetRelativeValue(t, "instanceID") or GetRelativeValue(t, "headerID") or (t.symParent and t.symParent.instanceID)
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
			hash = hash.."__"..UniqueCounter.Hash;
		end
		t.hash = hash;
		return hash;
	end
end
app.CreateHash = CreateHash;

-- Helper Functions
local ShouldExcludeFromTooltipHelper = function(t)
	-- Whether or not to exclude this data from the source list in the tooltip.
	local parent = t.parent;
	if parent then return parent.ShouldExcludeFromTooltip; end
	return false;
end
-- Classic needs to use Search Module for this
local SourceSearcher = app.SourceSearcher or setmetatable({}, { __index = function(t,key) return app.GetRawField end})

-- Represents how long a given group is allowed to permit a retryable operation
local CAN_RETRY_DURATION_SEC = 3
-- Temp function to allow someone to change the timeout
app.SetCAN_RETRY_DURATION_SEC = function(sec) CAN_RETRY_DURATION_SEC = sec end
-- Represents default field evaluation logic for all Classes unless defined within the Class
local DefaultFields = {
	-- Cloned groups will not directly have a parent, but they will instead have a sourceParent, so fill in with that instead
	["parent"] = function(t)
		return t.sourceParent;
	end,
	-- A semi-unique string value that identifies this object based on its key, or text if it doesn't have one.
	["hash"] = function(t)
		return CreateHash(t);
	end,
	["keyval"] = function(t)
		return t[t.key]
	end,
	-- Default text should be a valid link or name
	["text"] = function(t)
		return t.link or t.name;
	end,
	-- modItemID doesn't exist for Items which NEVER use a modID or bonusID (illusions, music rolls, mounts, etc.)
	["modItemID"] = function(t)
		return t.itemID;
	end,
	-- whether something is considered 'missing' by seeing if it can search for itself
	["_missing"] = function(t)
		local key = t.key;
		-- only process this logic for real 'Things' in the game
		if not app.ThingKeys[key] then return; end
		local searcher = SourceSearcher[key]
		-- quest 76250
		-- item with modID, so key is itemID, t[key] is 13544
		-- SFO uses 'modItemID' to verify 'itemID' search result object accuracy, thus '13544' never matches the expected '13544.01'
		-- so we need to know to search by 'itemID' but using the 'modItemID' here for base itemID lookups of missing
		-- i.e. if searching 13544, we allow 13544.01 to count as a non-missing representation of the search... makes sense?
		-- TODO: would be nice to store _missing in the Thing's cache instead of every reference of that Thing
		local os = searcher(key, t[key]) or app.EmptyTable
		local o
		for i=1,#os do
			o = os[i]
			while o do
				if rawget(o, "_missing") then
					t._missing = true
					return true
				end
				o = o.parent
			end
			t._missing = false
			return false
		end
		t._missing = true
		return true
	end,
	-- Whether or not something is repeatable.
	["repeatable"] = function(t)
		return t.isDaily or t.isWeekly or t.isMonthly or t.isYearly;
	end,
	["costTotal"] = returnZero,
	["upgradeTotal"] = returnZero,
	["progress"] = returnZero,
	["total"] = returnZero,
	["isContainer"] = function(t)
		local total = t.total
		return total and (total > 1 or (total > 0 and not t.collectible))
	end,
	-- some calculated properties can let fall-through to the merge source of a group instead of needing to re-calculate in every copy
	isCost = function(t)
		local merge = t.__merge
		if not merge then return end
		return merge.isCost
	end,
	["nmc"] = function(t)
		local c = t.c;
		local nmc = c and not containsValue(c, app.ClassIndex) or false;
		-- app.PrintDebug("base.nmc",t.__type,nmc)
		t.nmc = nmc;
		return nmc;
	end,
	["nmr"] = function(t)
		local races = t.races;
		local r = t.r;
		local nmr = (r and r ~= app.FactionID) or (races and not containsValue(races, app.RaceIndex)) or false;
		-- app.PrintDebug("base.nmr",t.__type,nmr)
		t.nmr = nmr;
		return nmr;
	end,
	["AccessibilityScore"] = function(t)
		local score = 0;
		if GetRelativeValue(t, "nmr") then
			score = score + 20;
		end
		if GetRelativeValue(t, "nmc") then
			score = score + 10;
		end
		if GetRelativeValue(t, "rwp") then
			score = score + 5;
		end
		if GetRelativeValue(t, "e") then
			score = score + 1;
		end
		local u = GetRelativeValue(t, "u");
		if u then
			if u < 3 then
				score = score + 100000;
			elseif u < 4 then
				score = score + 10;
			else
				score = score + 1;
			end
		end
		t.AccessibilityScore = score;
		return score;
	end,
	["creatureID"] = function(t)	-- TODO: Do something about this, it's silly.
		return t.npcID;
	end,
	["filterID"] = function(t)	-- we like to use different field names in different places
		return t.f
	end,
	["iconPath"] = function(t)
		return rawget(t, "icon")
	end,
	["ShouldExcludeFromTooltipHelper"] = function(t)
		return ShouldExcludeFromTooltipHelper;
	end,
	["ShouldExcludeFromTooltip"] = function(t)
		return t.ShouldExcludeFromTooltipHelper(t);
	end,
	-- Allows automatically handling a global re-try timer for the specific group for operations which need to 're-try' things
	-- concerning this group and are not using Event-driven handling
	-- check 'if [not] o.CanRetry then ...'
	-- Assign this field directly in the group if re-tries on the group should be permanently disabled
	-- i.e. if not t.CanRetry then t.CanRetry = false end
	-- (number) - the retry has been started with this duration in seconds
	-- true - the group is pending an active retry timer
	-- nil - the group has retried and the retry timer has not been re-started
	["CanRetry"] = function(t)
		local canretry = t.__canretry
		if canretry == nil then
			-- first check if we can retry for this group
			canretry = true
			t.__canretry = canretry
			-- app.PrintDebug("retry:start",t,canretry,t.hash)
			-- after some seconds, mark this group to no longer retry
			DelayedCallback(function(t)
				-- app.PrintDebug("__cantry:done",t,false,t.hash)
				t.__canretry = false
				t.HasRetried = true
			end, CAN_RETRY_DURATION_SEC, t)
			return CAN_RETRY_DURATION_SEC
		elseif canretry == false then
			-- group has been marked to stop retrying, but it can be re-tried later
			t.__canretry = nil
			-- app.PrintDebug("retry:nil",t,nil,t.hash)
			return
		-- else app.PrintDebug("retry:wait",t,canretry)	-- cannot ref t fields here or may infinite loop on CanRetry from .text
		end
		return canretry
	end,
};

if app.IsRetail then
	local TryColorizeName = app.TryColorizeName
	-- Crieve doesn't see these fields being included as necessary,
	-- future research project is to look into seeing if this is something we want to keep or put somewhere else. (such as a function)
	-- Default text should be a valid link or name
	-- In Retail, text can be colored and can be based on a variety of possible fields
	-- trying to individually maintain variable coloring in every object class is quite absurd
	DefaultFields.text = function(t)
		return t.link or TryColorizeName(t)
	end
end

local function ClassError(...)
	local params = {...}
	local err = app.TableConcat(params, nil, "", " ")
	error(err)
end
local CloneDictionary = app.CloneDictionary
-- Creates a Base Object Table which will evaluate the provided set of 'fields' (each field value being a keyed function)
local classDefinitions, _cache = {}, nil;
local call = function(class, key, t)
	_cache = rawget(class, key);
	if _cache then return _cache(t) end
end
-- Generates a metatable to use for the given class name based on the provided field functions
local CreateClassMeta = not app.__perf and function(fields, className)
	if not className then
		ClassError("A Class Name must be declared when using CreateClass");
	end
	local class = { __type = function() return className; end };
	if not classDefinitions[className] then
		classDefinitions[className] = class;
	else
		ClassError("A Class has already been defined with that name!", className);
	end

	if fields then CloneDictionary(fields, class) end

	-- Inject the default fields into the class
	CloneDictionary(DefaultFields, class)

	return {
		__class = class,
		__index = function(t, key)
			_cache = class[key];
			---@diagnostic disable-next-line: redundant-parameter
			if _cache then return _cache(t); end
		end
	};
end
-- performance tracking wrapped base fields
or function(fields, className)
	if not className then
		ClassError("A Class Name must be declared when using CreateClassMeta");
	end
	local class = { __type = function() return className; end };
	app.__perf.AutoCaptureTable(class, "Class:"..className)
	-- capture keys which are referenced but not implemented in a sub-table for better perf tracking
	class.__missing = {}

	if not classDefinitions[className] then
		classDefinitions[className] = class;
	else
		ClassError("A Class has already been defined with that name!", className);
	end

	if fields then CloneDictionary(fields, class) end

	-- Inject the default fields into the class
	CloneDictionary(DefaultFields, class)

	return {
		__class = class,
		__index = function(t, key)
			_cache = class[key] or class.__missing[key]
			---@diagnostic disable-next-line: redundant-parameter
			if _cache then return _cache(t); end
			-- capture a new empty function return for missing keys so we can track how much missing keys are called on various classes
			class.__missing[key] = function() end
			return class.__missing[key]()
		end
	}
end
app.BaseClass = CreateClassMeta(nil, "BaseClass");

app.TryGetField = function(t, field, fieldFunc, giveUpFunc)
	local fieldVal = fieldFunc(t, field)
	-- app.PrintDebug("TGF",t.hash,field,fieldVal)
	if fieldVal then return fieldVal end
	if not t.CanRetry then
		return giveUpFunc(t, field)
	end
end

-- Create a dictionary of classes by their classKey, for reference in generic object contructors.
local classesByKey = setmetatable({}, {
	__newindex = function(t, key, value)
		if rawget(t, key) then
			return;
		end
		rawset(t, key, value);
	end,
});
local function CreateClassInstance(key, id, t)
	if key then
		if key == "creatureID" then
			key = "npcID";
			if t then
				t.creatureID = nil;
				t.npcID = id;
			end
		end
		local classConstructor = classesByKey[key];
		if classConstructor then return classConstructor(id, t); end
	elseif not key then
		local classConstructor;
		for key,value in pairs(t) do
			classConstructor = classesByKey[key];
			if classConstructor then return classConstructor(value, t); end
		end
	end
	--[[
	print("CreateClassInstance::Failed to Find Class Constructor for", key, id);
	for key,value in pairs(t) do
		print(" ", key, value);
	end
	]]--
	return t;
end
local function CloneClassInstance(object, ignoreChildren)
	local clone = {}
	if object[1] then
		-- Create an Array of Clones
		for i=1,#object do
			clone[#clone + 1] = CloneClassInstance(object[i], ignoreChildren)
		end
		return clone;
	else
		-- Clone the object.
		for key,value in pairs(object) do
			clone[key] = value;
		end
		local g = object.g
		if g then
			if ignoreChildren then
				clone.g = nil;
			else
				local cg = {}
				clone.g = cg;
				local o
				for i=1,#g do
					o = CloneClassInstance(g[i]);
					o.parent = clone;
					cg[#cg + 1] = o
				end
			end
		end

		-- If the object has a metatable, assign that, otherwise try to find it.
		-- that's the only difference between this function and CloneObject.
		-- Use CloneObject if you can guarantee that the metatable exists.
		local meta = getmetatable(object);
		if meta then
			setmetatable(clone, meta);
			return clone;
		else
			return CreateClassInstance(object.key, object[object.key], clone);
		end
	end
end
local function CloneObject(object, ignoreChildren)
	local clone = setmetatable({}, getmetatable(object));
	for key,value in pairs(object) do
		clone[key] = value;
	end
	local og = object.g
	if og and not ignoreChildren then
		local g = {};
		for i=1,#og do
			local child = CloneObject(og[i]);
			child.parent = clone;
			g[#g + 1] = child
		end
		clone.g = g;
	end
	return clone;
end
-- Allow importing a specific set of Class functions from one Class to another
local function ImportClassFunctions(baseClassName, copyClassName, ...)
	-- make sure the base class exists
	local baseClass = type(baseClassName) == "table" and baseClassName or classDefinitions[baseClassName]
	if not baseClass then error("ImportClassFunctions - base Class does not exist"..(baseClassName or "")) end

	-- make sure the copy class exists
	local copyClass = type(copyClassName) == "table" and copyClassName or classDefinitions[copyClassName]
	if not copyClass then error("ImportClassFunctions - copy Class does not exist"..(copyClassName or "")) end

	local funcName, func
	local count = select("#", ...)
	if count > 0 then
		-- app.PrintDebug("ImportClassFunctions - Explicit Copy",baseClassName,copyClassName,...)
		-- copy the explicitly-named class functions provided, these can replace the base class functions
		for i=1,count do
			funcName = select(i, ...)
			func = copyClass[funcName]
			if not func then app.print("ImportClassFunctions - func not found in copy Class",funcName,copyClassName)
			-- elseif baseClass[funcName] then app.print("ImportClassFunctions - func already exists in base Class",funcName,baseClassName)
			else
				baseClass[funcName] = func
				-- app.PrintDebug("Copied Base Func!",funcName,"from",copyClassName,"into",baseClassName)
			end
		end
	else
		-- app.PrintDebug("ImportClassFunctions - Soft Copy",baseClassName,copyClassName)
		-- soft-copy any missing class functions into the provided class
		for field,func in pairs(baseClass) do
			if not baseClass[field] then
				baseClass[field] = func
				-- app.PrintDebug("Copied Base Func!",funcName,"from",copyClassName,"into",baseClassName)
			-- else app.PrintDebug("ImportClassFunctions - Ignoring func already existing in base Class",field,baseClassName)
			end
		end
	end
end
app.CloneObject = CloneObject;
app.CloneClassInstance = CloneClassInstance;
app.CreateClassInstance = CreateClassInstance;
-- I wish this could just automatically work for any given Class, but the way this is designed
-- means it would have to generate a new variant class on top of every possible other Class, and most
-- wouldn't even be used obviously... so maybe in the future
local GlobalVariants = {}
app.GlobalVariants = GlobalVariants
-- Takes multiple other variants and combines them together into the specified name, then storing it
-- into the GlobalVariants table
GlobalVariants.Combine = function(...)
	local combine, conditions, name = {}, {}, ""
	local condition, variantName
	-- combine tables, check unique fields
	local variantParams = {...}
	local variant
	for i=1,#variantParams do
		variant = variantParams[i]
		variantName = variant.__name
		if not variantName or type(variantName) ~= "string" then
			ClassError("Cannot combine variants due to variant",variantName or _,"missing valid '__name' string!")
		end
		name = name..variantName
		condition = variant.__condition
		if not condition or type(condition) ~= "function" then
			ClassError("Cannot combine variants due to variant",variantName,"missing '__condition' function!")
		end
		conditions[#conditions + 1] = condition
		for k, v in pairs(variant) do
			if k ~= "__condition" and k ~= "__name" then
				if combine[k] then
					ClassError("Cannot combine variants due to conflicting variant key:",k)
				end
				combine[k] = v
			end
		end
	end
	-- save into GlobalVariants
	if GlobalVariants[name] then
		ClassError("Cannot Combine variants into",name,"since it has already been defined!")
	end
	-- store the combined name
	combine.__name = name
	-- create a new __condition based on the running of all other conditions
	combine.__condition = function(t)
		for i=1,#conditions do
			if not conditions[i](t) then return end
		end
		return true
	end
	GlobalVariants[name] = combine
	return combine
end

local function GenerateVariantClasses(class)
	local fields = class.__class
	local variants = fields.variants
	if not variants or #variants == 0 then return end
	local subbase = function(t, key) return class.__index; end
	local classname = fields.__type()
	local variantClone, variantName, variant
	for i=1,#variants do
		variant = variants[i]
		if not variant.__name then
			ClassError("Missing Class Variant __name!",i,classname)
		end
		if not variant.__condition then
			ClassError("Missing Class Variant __condition!",variant.__name,classname)
		end
		-- raw variant table may be used by other classes, so need to copy it for this specific subclass
		variantClone = CloneDictionary(fields, CloneDictionary(variant, {base=subbase}))
		variantName = classname..variant.__name
		variants[i] = CreateClassMeta(variantClone, variantName);
		if variant.__onclassgenerated then variant.__onclassgenerated(variantName) end
	end
end
local function AppendVariantConditionals(conditionals, class)
	local subcassCondition = class.__class.__condition
	local variants = class.__class.variants
	if subcassCondition then
		if variants then
			conditionals[#conditionals + 1] = function(t)
				if subcassCondition(t) then
					-- check any variants for this subclass
					local variant
					for i=1,#variants do
						variant = variants[i]
						if variant.__class.__condition(t) then
							setmetatable(t, variant);
							-- app.PrintDebug("Create Variant",t.hash,class.__class.__type()..variant.__name)
							return true
						end
					end
					setmetatable(t, class);
					return true;
				end
			end
		else
			conditionals[#conditionals + 1] = function(t)
				if subcassCondition(t) then
					setmetatable(t, class);
					return true;
				end
			end
		end
	elseif variants then
		conditionals[#conditionals + 1] = function(t)
			-- check any variants for this class
			local variant
			for i=1,#variants do
				variant = variants[i]
				if variant.__class.__condition(t) then
					setmetatable(t, variant);
					-- app.PrintDebug("Create Variant",t.hash,class.__class.__type()..variant.__name)
					return true
				end
			end
			setmetatable(t, class);
			return true;
		end
	end
end
local GenerateSimpleMetaClass = app.EmptyFunction
-- Only Classic utilizes this 'simplemeta' since the cost logic works completely different than in Retail
if app.IsClassic then
GenerateSimpleMetaClass = function(fields,name,subname)
	if fields.collectibleAsCost then
		local simpleclass = CloneDictionary(fields, {
			collectibleAsCost = app.ReturnFalse
		})
		simpleclass.collectedAsCost = nil
		local simplemeta = CreateClassMeta(simpleclass, "Simple" .. name .. (subname or ""))
		fields.simplemeta = function(t) return simplemeta end
	end
end
end

app.CreateClass = function(className, classKey, fields, ...)
	-- Validate arguments
	if not className then
		ClassError("A Class Name must be declared when using CreateClass");
	end
	if not classKey then
		ClassError("A Class Key must be declared when using CreateClass");
	end
	if not fields then
		ClassError("Fields must be declared when using CreateClass");
	end

	-- app.PrintDebug("CreateClass",className, classKey)

	-- Ensure that a key field exists!
	if not fields.key then
		fields.key = function() return classKey; end;
	end

	-- If a Type is collectible via in-game Event, also enforce that it defines for itself its CacheKey
	-- for the common immediate collection handling logic
	if fields.collectible and fields.collected and not fields.RefreshCollectionOnly then
		if not fields.CACHE then
			ClassError("Class",className,"is missing CACHE by which the collected Keys are stored in the Cache");
		end
	end

	-- Allow the base Class to ImportFrom another Class
	if fields.ImportFrom then
		ImportClassFunctions(fields, fields.ImportFrom, unpack(fields.ImportFields))
	end

	-- If this object supports collectibleAsCost, that means it needs a way to fallback to a version of itself without any cost evaluations should it detect that it doesn't use it anywhere.
	GenerateSimpleMetaClass(fields, className)

	local args = { ... };
	local total = #args;
	local Class = CreateClassMeta(fields, className);
	local conditionals = {};
	GenerateVariantClasses(Class)
	if total > 0 then
		local base = function(t, key) return Class.__index; end
		for i=1,total,3 do
			local subclassName = args[i];
			if subclassName then
				local conditional = args[i + 2];
				local subfields = args[i + 1];
				if subfields then
					CloneDictionary(fields, subfields)
					subfields.__condition = conditional
					subfields.base = base;
					if subfields.ImportFrom then
						ImportClassFunctions(subfields, subfields.ImportFrom, unpack(subfields.ImportFields))
					end
					GenerateSimpleMetaClass(subfields, className, subclassName)
					local subclass = CreateClassMeta(subfields, className .. subclassName)
					GenerateVariantClasses(subclass)
					AppendVariantConditionals(conditionals, subclass)
				else
					conditionals[#conditionals] = conditional
				end
			end
		end
	end
	-- Class variants must be added following other subclasses/variants
	AppendVariantConditionals(conditionals, Class)
	total = #conditionals;
	local classConstructor = total > 0 and function(id, t)
		t = constructor(id, t, classKey);
		for i=1,total,1 do
			if conditionals[i](t) then
				return t;
			end
		end
		return setmetatable(t, Class);
	end or function(id, t)
		return setmetatable(constructor(id, t, classKey), Class);
	end
	if not classesByKey[classKey] then
		classesByKey[classKey] = classConstructor;
	elseif not fields.IsClassIsolated then
		ClassError(className, "does not have a unique class Key", classKey, "and will have trouble with instance creation without a direct reference to an existing object or a direct integration using parser!");
	end
	return classConstructor, Class;
end
app.CreateClassFromArray = function(arr)
	return app.CreateClass(unpack(arr));
end
app.CreateClassWithInfo = function(className, classKey, classInfo, fields)
	-- Validate arguments
	if not className then
		ClassError("A Class Name must be declared when using CreateClassWithInfo");
	end
	if not classKey then
		ClassError("A Class Key must be declared when using CreateClassWithInfo");
	end
	if not fields then
		ClassError("Fields must be declared when using CreateClassWithInfo");
	end
	if not classInfo then
		ClassError("ClassInfo must be declared when using CreateClassWithInfo");
	end

	-- Ensure that a key and _type field exists!
	local class = CloneDictionary(DefaultFields, CloneDictionary(fields, {
		__type = function() return className; end,
		key = function() return classKey; end
	}))
	if not classDefinitions[className] then
		classDefinitions[className] = class;
	else
		ClassError("A Class has already been defined with that name!", className);
	end

	local classConstructor = function(id, t)
		if t then
			if not t.g and t[1] then
				t = { g=t };
			end
		else
			t = {};
		end
		t[classKey] = id;
		local info = classInfo[id];
		return setmetatable(t, {
			__index = function(t, key)
				return info[key] or call(class, key, t);
			end,
		});
	end;
	classesByKey[classKey] = classConstructor;
	return classConstructor;
end
app.CreateUnimplementedClass = function(className, classKey)
	return app.CreateClass(className, classKey, {
		name = function(t)
			return className;
		end,
		icon = function(t)
			return 134400;
		end,
		title = function(t)
			return app.L.DATA_TYPE_NOT_SUPPORTED;
		end,
		IsClassIsolated = true,
		RefreshCollectionOnly = true,
		isInvalid = app.ReturnTrue,
		collected = app.ReturnFalse,
		collectible = app.ReturnTrue,
	});
end
app.ExtendClass = function(baseClassName, className, classKey, fields, ...)
	local baseClass = classDefinitions[baseClassName];
	if baseClass then
		-- clone the base fields and make sure to remove fields we don't want to inherit in the extended classes
		local basefields = CloneDictionary(baseClass)
		basefields.__type = nil;
		basefields.variants = nil
		basefields.key = nil;
		basefields.conditionals = nil;
		basefields.simplemeta = nil;
		-- then clone those into the extended class
		fields = CloneDictionary(basefields, fields)
	else
		ClassError("Could not find specified base class:", baseClassName);
	end
	-- app.PrintDebug("ExtendClass",baseClassName, className, classKey)
	return app.CreateClass(className, classKey, fields, ...);
end
-- Allows swapping the Class's method for a given field
app.SwapClassDefinitionMethod = function(className, classField, newFunc)
	local class = classDefinitions[className]
	if not class then app.print("Class",className,"does not exist!") return end

	local curFunc = class[classField]
	if not curFunc then app.print("Class",className,"does not contain field",classField) return end

	if newFunc and type(newFunc) ~= "function" then app.print("Cannot assign non-function for Class",className,"field",classField) return end

	local swapdefaults = class.__swapdefaults
	if not swapdefaults then
		swapdefaults = {}
		class.__swapdefaults = swapdefaults
	end

	if not swapdefaults[classField] then
		swapdefaults[classField] = curFunc
	end

	if newFunc then
		-- app.PrintDebug("SwapClassNew",className,classField,newFunc)
		class[classField] = newFunc
	else
		-- app.PrintDebug("SwapClassDef",className,classField,swapdefaults[classField])
		class[classField] = swapdefaults[classField]
	end
end
-- Setup a simple true/false swap for the 'collectible' field of the given class based on the tracked setting name
app.AddSimpleCollectibleSwap = function(classname, setting)
	local function AssignCollectibleFunction()
		-- app.PrintDebug("Swapping",classname,".collectible","via",setting,app.Settings.Collectibles[setting])
		if app.Settings.Collectibles[setting] then
			app.SwapClassDefinitionMethod(classname,"collectible",app.ReturnTrue)
		else
			app.SwapClassDefinitionMethod(classname,"collectible",app.ReturnFalse)
		end
	end
	app.AddEventHandler("OnSettingsNeedsRefresh", AssignCollectibleFunction);
	app.AddEventHandler("OnStartup", AssignCollectibleFunction);
end

-- Allows wrapping one Type Object with another Type Object. This allows for fall-through field logic
-- without requiring a full copied definition of identical field functions and raw Object content
app.WrapObject = function(object, baseObject)
	if not object or not baseObject then
		error("Tried to WrapObject with none provided!")
	end
	-- need to preserve the existing object's meta AND return the object being wrapped while also allowing fallback to the base object
	local objectMeta = getmetatable(object)
	if not objectMeta then
		error("Tried to WrapObject which has no metatable! (Wrapping not necessary)")
	end
	-- save the set of originally-defined meta-fields of this object's class
	object.__class = objectMeta.__class
	local objectMetaIndex = objectMeta.__index
	if not objectMetaIndex then
		error("Tried to WrapObject which has no index!")
	end
	if type(objectMetaIndex) == "function" then
		return setmetatable(object, {
			__index = function(t, key)
				-- app.PrintDebug("__wrapf",key
				-- 	,"Wrapped?",t.__class[key]~=nil
				-- 	,"WrapVal:",objectMetaIndex(t, key)
				-- 	,"BaseVal:",baseObject[key])
				-- the original class of the object defines a function for 'key' then use that only (allows false/nil overrides properly)
				if t.__class[key] then
					return objectMetaIndex(t, key)
				end
				return baseObject[key];
			end
		});
	end
	return setmetatable(object, {
		__index = function(t, key)
			return objectMetaIndex[key] or baseObject[key];
		end
	});
end

local ClassDataCaches = {}
-- Create a local cache table which can be used by a Type class of a Thing to easily store shared
-- information based on a unique key field for any Thing object of that Type
app.CreateCache = function(idField, className)
	local cache, _t, v = {}, nil, nil;
	local DefaultFunctions = {}
	cache.GetCached = function(t)
		local id = t[idField];
		if id then
			_t = cache[id];
			if not _t then
				_t = {};
				cache[id] = _t;
			end
			return _t, id;
		end
		app.PrintDebug("CACHE_MISS",idField,">",id,t.__type,t.hash)
		app.PrintTable(t)
	end
	cache.GetCachedByID = function(id)
		if id then
			_t = cache[id];
			if not _t then
				_t = {};
				cache[id] = _t;
			end
			return _t, id;
		end
		app.PrintDebug("CACHE_MISS_ID",idField,">",id)
	end
	cache.GetCachedField = function(t, field, default_function)
		--[[ -- Debug Prints
		local _t, id = cache.GetCached(t);
		app.PrintDebug("GetCachedField",t.hash,id,field,_t[field]);
		--]]
		_t = cache.GetCached(t);
		if _t then
			-- set a default provided cache value if any default function was provided and evalutes to a value
			v = _t[field];
			if v ~= nil then return v end

			default_function = default_function or DefaultFunctions[field]
			if not default_function then return end

			local defVal = default_function(t, field, _t);
			if defVal then
				v = defVal;
				_t[field] = v;
			end
			return v
		end
	end
	cache.SetCachedField = function(t, field, value)
		--[[ Debug Prints
		local _t, id = cache.GetCached(t);
		if _t[field] then
			print("SetCachedField",id,field,"Old",t[field],"New",value);
		else
			print("SetCachedField",id,field,"New",value);
		end
		--]]
		_t = cache.GetCached(t);
		if _t then _t[field] = value; end
	end
	cache.DefaultFunctions = DefaultFunctions
	if app.__perf then
		return app.__perf.AutoCaptureTable(cache, "ClassCache:"..(className or idField))
	end
	if className then
		ClassDataCaches[className] = cache
	end
	return cache
end
app.GetOrCreateCache = function(idField, className)
	local cache = ClassDataCaches[className]
	if cache then return cache end

	app.print("Missing className",className,"for ClassData cache with idField",idField)
	return app.CreateCache(idField, className)
end

-- Returns an object which contains no data, but can return values from an overrides table, and be loaded/created when a specific field is attempted to be referenced
-- i.e. Create a data group which contains no information but will attempt to populate itself when [loadField] is referenced
app.DelayLoadedObject = function(objFunc, loadField, overrides, ...)
	local o;
	local def = {}
	local params = {...};
	local loader = {
		__index = function(t, key)
			-- load the object if it matches the load field and not yet loaded
			if not o and key == loadField then
				o = objFunc(unpack(params))
				if not o then
					error("DLO failed to generate an Object when loading!",unpack(params))
				end
				-- parent of the underlying object should correspond to the hierarchical parent of t (dlo)
				local dloParent = rawget(t, "parent");
				rawset(o, "parent", dloParent);
				rawset(t, "__o", o);
				-- allow the object to reference the DLO if needed
				o.__dlo = t;
				-- app.PrintDebug("DLO:Loaded",o.hash,"parent:",dloParent,dloParent and dloParent.hash)
				-- DLOs can now have an OnLoad function which runs here when loaded for the first time
				if overrides.OnLoad then overrides.OnLoad(o); end
			end

			-- override for the object
			local override = overrides and overrides[key];
			if override ~= nil then
				-- app.PrintDebug("DLO:override",key,":",override)
				-- overrides can also be a function which will execute once the object has been created
				if o and type(override) == "function" then
					return override(o, key);
				else
					return override;
				end
			-- existing object, then reference the respective key
			elseif o then
				return o[key];
			-- otherwise ensure visible
			elseif key == "visible" then
				-- app.PrintDebug("dlo.visible",unpack(params))
				return true;
			end
			-- return any default value
			return def[key]
		end,
		-- transfer field sets to the underlying object if the field does not have an override for the object
		__newindex = function(t, key, val)
			if o then
				if not overrides[key] then
					-- app.PrintDebug("DLO:__newindex:",o.hash,key,val)
					rawset(o, key, val);
				end
			elseif key == "parent" then
				rawset(t, key, val);
			else
				-- allow direct assignment prior to o creation to the set of default fields
				def[key] = val
			end
		end,
	};
	-- data is just an empty table with a loader metatable
	local dlo = setmetatable({__dlo=true}, loader);
	return dlo;
end

--[[
-- Proof of Concept with Class Conditionals
local fields = {
	["name"] = function(t)
		return "Loki";
	end,
	MyField = function(t)
		return "MyField";
	end,
	["OnTest"] = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a god!");
		end
	end,
};
local fieldsWithArgs = {
	MyField = function(t)
		return "MyOverriddenField";
	end,
	OnTest = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a variant!", t.MyField, t.base(t, "MyField"));
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
local fieldsWithWorldQuest = {
	Test = function(t)
		return "AsWorldQuest";
	end,
	OnTest = function()
		return function(t)
			print(t.name .. " (" .. t.__type .. "): I'm a subvariant!");
		end
	end,
	variants = {
		{
			Test = function(t)
				return "AndReputation";
			end,
			OnTest = function()
				return function(t)
					print(t.name .. " (" .. t.__type .. "): I'm a subvariant with reputation!");
				end
			end,
			__name = "VariantName",
			__condition = function(t)
				return t.maxReputation
			end,
		},
	},
};
local WorldQuestConditional = function(t)
	if t.isWorldQuest then
		return true;
	end
end;
app.CreateExample = app.CreateClass("Example", "exampleID", fields,
	"WithArgs", fieldsWithArgs, (function(t) return t.args; end),
	"WithFeeling", fieldsWithFeeling, (function(t) return t.feeling; end),
	"WithWorldQuest", fieldsWithWorldQuest, WorldQuestConditional);

for i,instance in ipairs({
	app.CreateExample(1),
	app.CreateExample(2, { name = "Alligator Loki", args = "I'm a Crocodile!" }),
	app.CreateExample(3, { name = "Sylvie", feeling = "Pretty Neat" }),
	app.CreateExample(4, { name = "World Quest Loki", isWorldQuest = true }),
	app.CreateExample(5, { name = "WQ Reputation Loki", isWorldQuest = true, maxReputation = true }),
	app.CreateExample(5, { name = "Reputation Loki", maxReputation = true }),
}) do
	instance.OnTest(instance);
end
]]--

-- Collected helper functions.
local function NotInitialized(name)
	app.print(name,"not initialized yet...");
end
app.SetAccountCollected = function() NotInitialized("SetAccountCollected") end;
app.SetCollected = function() NotInitialized("SetCollected") end;
app.SetCached = function() NotInitialized("SetCached") end;
app.IsCached = function() NotInitialized("IsCached") end;
app.IsAccountCached = function() NotInitialized("IsAccountCached") end;
app.IsAccountTracked = function() NotInitialized("IsAccountTracked") end;
app.SetBatchAccountCached = function() NotInitialized("SetBatchAccountCached") end;
app.SetBatchCached = function() NotInitialized("SetBatchCached") end;
