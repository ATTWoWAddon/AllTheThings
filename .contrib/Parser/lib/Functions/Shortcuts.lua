---@diagnostic disable: lowercase-global

---@param field string
---@param id number
---@param t? table
---@return table|nil
struct = function(field, id, t)		-- Construct a commonly formatted object.
	if not t then t = {};
	elseif (t.g or t.groups) and t[1] then
		print("ERROR: Don't use 'g' or 'groups' with an array of objects! Fix Group: "..field..":"..id);
		return;
	elseif not t.groups and t[1] then
		t = { ["groups"] = validateGroups(t) };
	elseif t.groups then
		validateGroups(t.groups);
	end
	if not id then
		print("Missing ID for",field,"group");
	end
	if t[field] and t[field] ~= id then
		print("ERROR: Don't reuse tables within constructed objects! Fix Group: "..field..":"..id.." which has "..t[field].." already assigned!")
	end
	t[field] = id;
	return t;
end

---@param t table
---@param c? table
---@return table
clone = function(t, c)	-- Clone a piece of data as a separate table (t => c, return c)
	if type(t) ~= "table" then return t end
	c = c or {};

	for key,value in pairs(t) do
		if c[key] == nil then
			c[key] = type(value) == "table" and clone(value) or value;
		end
	end
	return c;
end

-- Helper Functions
isarray = function(t)
	return t and type(t) == 'table' and (#t > 0 or next(t) == nil);
end
-- Ensures that 't' has a 'groups' field containing the array data of the table
togroups = function(t)
	if isarray(t) then
		local groups = {};
		for _,group in ipairs(t) do
			table.insert(groups, group);
		end
		t = { ["groups"] = groups };
	end
	return t;
end
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
-- Appends a common groups set into the groups for this object. The last element is the one to append into.
appendGroups = function(...)
	local data = { ... };
	local count = #data;
	if count < 2 then
		-- Clone the group.
		local groups = {};
		for i,o in ipairs(data[1]) do
			table.insert(groups, o);
		end
		return groups;
	else
		-- The last element is the one to append into.
		local groups = data[count];
		for i=1,count-1,1 do
			for j,o in ipairs(data[i]) do
				table.insert(groups, o);
			end
		end
		return groups;
	end
end
-- Appends together multiple arrays of groups (into the first provided group). This way multiple portions of a single group can be created separately and joined together for one final 'groups' container
appendAllGroups = function(g, ...)
	local arrs = select("#", ...);
	if arrs > 0 then
		g = g or {};
		local i, a = #g + 1, nil;
		for n=1,arrs do
			a = select(n, ...);
			if a then
				for ai=1,#a do
					g[i] = a[ai];
					i = i + 1;
				end
			end
		end
	end
	return g;
end
local SharedKeyWarnings = {
	-- sharedData description is not 'always' correct to consolidate to sharedDescription since it is recursive for all children, and may not be intentional for them
	-- description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
local BubbleDownKeyWarnings = {
	description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
-- I've determined that this isn't going to work out with how our data is currently organized
-- Since we've grown accustomed to making the inner timeline fully-replace any bubbleDown, there's no
-- real way to add logic to merge these properly. Oh well, maybe another field will eventually benefit
-- from this concept :(
-- local CustomMergedData = {
-- 	timeline = function(t, new)
-- 		local old = t.timeline
-- 		if old == new then
-- 			print("Self-merging timeline within bubbledown??",tostring(new),"=>",tostring(old))
-- 			for k, v in pairs(t) do
-- 				print(k,"=",v)
-- 			end
-- 			return
-- 		end
-- 		-- don't merge into an ignored timeline, the purpose is to prevent merging if it's ignored!
-- 		if old == IGNORED_VALUE then
-- 			return
-- 		end
-- 		if type(old) ~= "table" then
-- 			print("Merging into timeline which is not an array =>",old)
-- 			old = {old}
-- 		end
-- 		if type(new) ~= "table" then
-- 			print("Merging from timeline which is not an array =>",new)
-- 			new = {new}
-- 		end
-- 		-- print("#new",#new,tostring(old),tostring(new))
-- 		for _,patch in ipairs(new) do
-- 			old[#old + 1] = patch
-- 			-- print("merged timeline",patch,"@",#old)
-- 		end
-- 		t.timeline = old
-- 	end
-- }
-- Simply applies keys from 'data' into 't' using a custom function by key, or where the key does not already exist
applyData = function(data, t)
	if data and t then
		for key, value in pairs(data) do
			if t[key] == nil then	-- don't replace existing data
				if SharedKeyWarnings[key] then
					print(SharedKeyWarnings[key],"[",value,"]")
				end
				t[key] = clone(value)
			-- else
			-- 	local custom = CustomMergedData[key]
			-- 	if custom then
			-- 		custom(t, value)
			-- 	end
			end
		end
	end
end
splitTimelineEvent = function(epoch)
	local words = {};
	for word in epoch:gmatch("%S+") do table.insert(words, word) end
	for i=2,#words,1 do words[i] = tonumber(words[i]) or words[i]; end
	return words;
end
-- Applies the timeline event (epoch) to the object.
applyTimelineEvent = function(epoch, t)
	if epoch and t then
		local timeline = t.timeline;
		if not timeline then
			-- Nothing there already, simply assign a new timeline.
			t.timeline = { epoch };
		else
			-- More complicated... (merge the data!)
			local index = -1;
			local epochParts = splitTimelineEvent(epoch);
			for i,currentEpoch in ipairs(timeline) do
				if currentEpoch == epoch then
					-- Epoch already present. Don't duplicate it.
					return;
				end
				local after = true;
				local parts = splitTimelineEvent(currentEpoch);
				for j=2,math.min(#epochParts, #parts),1 do
					if epochParts[j] < parts[j] then
						after = false;
						break;
					end
				end
				if not after then
					-- We don't want to circumvent the timeline's ability to strip out data that's not supposed to be in the game yet.
					if i == 1 and parts[1] == "added" and epochParts[1] == "removed" then
						return;
					end
					--[[
					-- Uncomment to Test:
					local summary = "";
					for j=1,i - 1,1 do
						summary = summary .. "  [" .. j .. "]: '" .. timeline[j] .. "'\n";
					end
					summary = summary .. "  >>> '" .. epoch .. "'\n  [" .. i .. "]: '" .. currentEpoch .. "'";
					print(summary);
					]]--
					index = i;
					break;
				end
			end
			if index >= 0 then
				table.insert(timeline, index, epoch);
			else
				table.insert(timeline, epoch);
			end
		end
	end
end
-- Applies a copy of the provided data into the tables of the provided array/group
sharedData = function(data, t)
	if not data then
		print("sharedData: No Shared Data")
	end
	if not t or (#t == 0 and not t.g and not t.groups) then
		print("sharedData: No Source 't'")
	end
	if t then
		for _,group in ipairs(t) do
			applyData(data, group);
		end
		if t.g or t.groups then
			for _,group in ipairs(t.g or t.groups) do
				applyData(data, group);
			end
		end
	end
	return t;
end
-- Performs sharedData logic but also applies the data to the top-level table
sharedDataSelf = function(data, t)
	if not data then
		print("sharedDataSelf: No Shared Data")
	end
	if not t then
		print("sharedDataSelf: No Source 't'")
	end
	-- if this is an array, convert to .groups container first to prevent merge confusion
	t = togroups(t);
	-- then apply the data to itself
	applyData(data, t);
	-- then apply regular sharedData on the group if it has content
	if not (#t == 0 and not t.g and not t.groups) then
		return sharedData(data, t);
	end
	return t
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array
bubbleDown = function(data, t)
	if not data then
		print("bubbleDown: No Bubble Data")
	end
	if not t then
		print("bubbleDown: No Source 't'")
	end
	for key,val in pairs(data) do
		if BubbleDownKeyWarnings[key] then
			print(BubbleDownKeyWarnings[key],"[",val,"]")
		end
	end
	if t then
		if t.g or t.groups then
			applyData(data, t);
			if t.groups then
				bubbleDown(data, t.groups);
			end
			if t.g then
				bubbleDown(data, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDown(data, group);
			end
		else
			applyData(data, t);
		end
		return t;
	end
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array assuming that table matches the requirements of the filter.
bubbleDownFiltered = function(data, filter, t)
	if t then
		if t.g or t.groups then
			if filter(t) then applyData(data, t); end
			bubbleDownFiltered(data, filter, t.groups);
			bubbleDownFiltered(data, filter, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDownFiltered(data, filter, group);
			end
		else
			if filter(t) then applyData(data, t); end
		end
		return t;
	end
end
bubbleDownAndReplace = function(data, t)
	if t then
		if t.g or t.groups then
			for key, value in pairs(data) do
				t[key] = value;
			end
			bubbleDownAndReplace(data, t.groups);
			bubbleDownAndReplace(data, t.g);
		elseif isarray(t) then
			for i,group in ipairs(t) do
				bubbleDownAndReplace(data, group);
			end
		else
			for key, value in pairs(data) do
				t[key] = value;
			end
		end
		return t;
	end
end
-- Performs bubbleDown logic but also applies the data to the top-level table
bubbleDownSelf = function(data, t)
	if not data then
		print("bubbleDownSelf: No Bubble Data")
	end
	if not t then
		print("bubbleDownSelf: No Source 't'")
	end
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular bubbleDown on the group
	return bubbleDown(data, t);
end
-- Applies the timeline event (epoch) to all sub-groups of the provided table/array
bubbleDownTimelineEvent = function(epoch, t)
	if not epoch then
		print("bubbleDownTimelineEvent: No Epoch")
	end
	if not t then
		print("bubbleDownTimelineEvent: No Source 't'")
	end
	if t then
		if t.g or t.groups then
			applyTimelineEvent(epoch, t);
			if t.groups then
				bubbleDownTimelineEvent(epoch, t.groups);
			end
			if t.g then
				bubbleDownTimelineEvent(epoch, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDownTimelineEvent(epoch, group);
			end
		else
			applyTimelineEvent(epoch, t);
		end
		return t;
	end
end
bubbleDownTimelineEventSelf = function(epoch, t)
	return bubbleDownTimelineEvent(epoch, togroups(t));
end
-- Validates and returns 't' (expected 'groups' content) ensuring that contained content is in the expected formats
validateGroups = function(t)
	if t then
		for i,group in pairs(t) do
			if type(i) ~= "number" then
				error("You're trying to use '" .. i .. "' in a 'groups' field. (can't do that!)");
			elseif type(group) ~= "table" then
				error("You're trying to use '" .. group .. "' in a 'groups' field. (can't do that!)");
			end
		end
		return t;
	end
end
contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
exclude = function(data, t)
	local t2 = {};
	if type(data) == "table" then
		-- Group of Values (You shouldn't be excluding a complex object if that's what you're trying to do)
		if #data > 0 then
			for i,o in ipairs(t) do
				if not contains(data, o) then
					table.insert(t2, o);
				end
			end
		else
			-- Just create a clone
			for i,o in ipairs(t) do
				table.insert(t2, o);
			end
		end
	else
		-- Single Value
		for i,o in ipairs(t) do
			if o ~= data then
				table.insert(t2, o);
			end
		end
	end
	return t2;
end
excludeMany = function(t, ...)
	return exclude({...}, t);
end
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
bubbleDownRepSkip = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, i+3}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
bubbleDownRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, i}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
local classicRepsMap = {
	NEUTRAL,
	FRIENDLY,
	HONORED,
	REVERED,
	EXALTED
};
bubbleDownClassicRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, classicRepsMap[i]}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
run = function(method, t)
	if t then
		if t.g or t.groups then
			method(t);
			run(method, t.groups);
			run(method, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				run(method, group);
			end
		else
			method(t);
		end
		return t;
	end
end
unpack = function(t, i)
  i = i or 1
  if t[i] ~= nil then
	return t[i], unpack(t, i + 1)
  end
end

-- Helper Functions
asset = function(path)
	print("ASSET: " .. path);
	error("The asset function has been deprecated");
end
icon = function(path)
	print("ICON: " .. path);
	error("The icon function has been deprecated");
end
applyevent = function(eventID, data)
	if not eventID then
		print("INVALID EVENT ID PASSED TO APPLYHOLIDAY");
		---@diagnostic disable-next-line: undefined-global
		print(CurrentSubFileName or CurrentFileName);
	end
	-- Force Root Event object type for event headers to ensure they parse as Events
	if data.npcID and data.npcID < 0 then
		data._eventHeaderID = data.npcID;
		data.type = "eventHeader";
	end
	return bubbleDown({ ["e"] = eventID }, data);
end
-- #if ANYCLASSIC
applyclassicphase = function(phase, data, force)
	return (force and bubbleDownAndReplace or bubbleDown)({ ["u"] = phase }, data);
end
ifclassic = function(classicValue, value)
	return classicValue;
end
-- #else
applyclassicphase = function(phase, data, force)
	return data;
end
ifclassic = function(classicValue, value)
	return value;
end
-- #endif
local function ProcessProviderForRetailAsUncollectible(provider)
	if provider then
		if provider[1] == "i" then
			-- TODO: If ya'll actually use Objectives some day I'd be thrilled,
			-- but if not, this will move that stuff into uncollectible for ya!
			local itemID = provider[2];
			root(ROOTS.Uncollectible)[itemID] = { ["itemID"] = itemID };
		end
	end
end

local squishes = {};
lvlsquish = function(originalLvl, cataLvl, shadowlandsLvl)
	if cataLvl < shadowlandsLvl then
		local squish = "lvlsquish(" .. originalLvl .. ", " .. cataLvl .. ", " ..shadowlandsLvl .. ") > " .. "lvlsquish(" .. originalLvl .. ", " .. shadowlandsLvl .. ", " .. cataLvl .. ")";
		if not squishes[squish] then
			print("Someone messed up a lvlsquish order.", squish);
			squishes[squish] = true;
		end
	end
	local lvl;
	-- #if AFTER SHADOWLANDS
	lvl = shadowlandsLvl;
	-- #elseif AFTER CATA
	lvl = cataLvl;
	-- #else
	lvl = originalLvl;
	-- #endif
	return lvl;
end
Sym_PvPWeaponsArsenal = function(TIER, SEASON, PVPSET)
	return {{"sub","pvp_weapons_ensemble",TIER,SEASON,PVPSET}}
end

-- Cost Helper Functions
applycost = function(item, ...)
	local cost = item.cost;
	if not cost then
		cost = {};
		item.cost = cost;
	end
	for i,o in ipairs({ ... }) do
		table.insert(cost, o);
	end
	return item;
end
tokencost = function(tokenItemID, item)				-- Assign a token cost to an item.
	applycost(item, { "i", tokenItemID, 1 });
	return item;
end
bloody = function(cost, item)							-- Assign an Bloody Tokens cost to an item.
	if cost > 0 then applycost(item, { "c", BLOODY_TOKENS, cost }); end
	return item;
end
champ = function(cost, item)							-- Assign a Champion's Seal cost to an item with proper timeline & phase requirements.
	applycost(item, { "c", 241, cost });	-- Champion's Seal
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
chefsaward = function(cost, item)						-- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch)
	-- #if AFTER 5.0.4
	applycost(item, { "c", 81, cost });	-- Epicurean's Award
	-- #else
	applycost(item, { "c", 402, cost });	-- Chef's Award
	-- #endif
	return item;
end
conquest = function(cost, item)							-- Assign a Conquest cost to an item.
	if cost > 0 then applycost(item, { "c", CONQUEST, cost }); end
	return item;
end
daljewelcraftingtoken = function(cost, item)			-- Assign a Dalaran Jewelcrafter's Token cost to an item.
	applycost(item, { "c", 61, cost });
	return item;
end
darkmoondaggermaw = function(cost, item)				-- Assign a Darkmoon Daggermaw cost to an item.
	applycost(item, { "i", 124669, cost });	-- Darkmoon Daggermaw
	return item;
end
darkmoonprizeticket = function(cost, item)				-- Assign a Darkmoon Prize Ticket cost to an item.
	applycost(item, { "c", 515, cost });	-- Darkmoon Prize Ticket
	return item;
end
defilersscourgestone = function(cost, item)				-- Assign a Defiler's Scourgestone (Defense Protocol Gamma - Wrath Classic) cost to an item with proper timeline requirements.
	-- #if ANYCLASSIC
	applycost(item, { "c", DEFILERS_SCOURGESTONE, cost });
	-- #endif
	return item;
end
emoc = function(cost, item)								-- Assign a Emblem of Conquest cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 221, cost });	-- Emblem of Conquest
	-- #endif
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
emof = function(cost, item)								-- Assign a Emblem of Frost cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 341, cost });	-- Emblem of Frost
	-- #endif
	return applyclassicphase(WRATH_PHASE_FOUR, item);
end
emoh = function(cost, item)								-- Assign a Emblem of Heroism cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 101, cost });	-- Emblem of Heroism
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
emot = function(cost, item)								-- Assign a Emblem of Triumph cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 301, cost });	-- Emblem of Triumph
	-- #endif
	return applyclassicphase(WRATH_PHASE_THREE, item);
end
emov = function(cost, item)								-- Assign a Emblem of Valor cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 102, cost });	-- Emblem of Valor
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
epicurean = function(cost, item)						-- Assign a Epicurean's Award cost to an item.
	applycost(item, { "c", 81, cost });
	return item;
end
fbiron = function(cost, item)						-- Assign a Flame-Blessed Iron cost to an item.
	if cost > 0 then applycost(item, { "c", 3090, cost }); end
	return item;
end
gold = function(cost, item)								-- Assign a Gold cost to an item.
	applycost(item, { "g", cost * 10000 });	-- Gold
	return item;
end
honor = function(cost, item)							-- Assign an Honor cost to an item. (modern)
	if cost > 0 then applycost(item, { "c", HONOR, cost }); end
	return item;
end
honorpoints = function(cost, item)						-- Assign a Honor cost to an item with proper timeline requirements. (pre-Cata costs)
	-- #if BEFORE CATA
	-- TODO: Add the before Cata Honor System
	--applycost(item, { "c", , cost });	-- Honor
	-- #endif
	return item;
end
moh = function(cost, item)								-- Assign a Mark of Honor cost to an item with proper timeline requirements.
	-- #if AFTER 7.0.3.22248
	applycost(item, { "i", 137642, cost });	-- Mark of Honor
	-- #endif
	return item;
end
siderealessence = function(cost, item)					-- Assign a Sidereal Essence (Defense Protocol Beta - Wrath Classic) cost to an item with proper timeline requirements.
	-- #if ANYCLASSIC
	applycost(item, { "c", SIDEREAL_ESSENCE, cost });
	-- #endif
	return item;
end
spiritshard = function(cost, item)						-- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch)
	-- #if AFTER 8.0.1
	applycost(item, { "c", 1704, cost });	-- Spirit Shard (currency)
	-- #else
	applycost(item, { "i", 28558, cost });	-- Spirit Shard (item)
	-- #endif
	return item;
end
tolbaradcommendation = function(cost, item)				-- Assign a Tol Barad Commendation cost to an item with proper timeline requirements.
	applycost(item, { "c", 391, cost });	-- Tol Barad Commendation
	return item;
end
venture = function(cost, item)							-- Assign a Venture Coin cost to an item with proper timeline requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 201, cost });	-- Venture Coin
	-- #endif
	return item;
end
writ = function(item)									-- Assign a Champion's Writ cost to an item with proper timeline & phase requirements.
	applycost(item, { "i", 46114, 1 });	-- 1x Champion's Writ
	return applyclassicphase(WRATH_PHASE_TWO, item);
end

-- Achievement Shortcuts
ach = function(id, altID, t)							-- Create an ACHIEVEMENT Object
	if t or type(altID) == "number" then
		t = struct("allianceAchievementID", id, t or {});
		t.hordeAchievementID = altID;
	else
		t = struct("achievementID", id, altID);
	end
	if t then
		-- #if BEFORE WRATH
		-- These are helper variables (capitalized for a reason)
		local AllProvidersRequiredForAchievement = t.AllProvidersRequiredForAchievement;
		t.AllProvidersRequiredForAchievement = nil;
		local AllSourceQuestsRequiredForAchievement = t.AllSourceQuestsRequiredForAchievement;
		t.AllSourceQuestsRequiredForAchievement = nil;
		if not t.OnUpdate then
			if t.provider or t.providers then
				-- A lot of achievements are proc'd by having an item, quests with providers on them pretty much guarantee it works.
				t.OnUpdate = AllProvidersRequiredForAchievement and [[_.CommonAchievementHandlers.ALL_ITEM_PROVIDERS]] or [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]];
			elseif t.sourceQuest or t.sourceQuests then
				-- For Classic, we can detect if you've completed an achievement if there's a quest that involves killing the mob in question.
				t.OnUpdate = AllSourceQuestsRequiredForAchievement and [[_.CommonAchievementHandlers.ALL_SOURCE_QUESTS]] or [[_.CommonAchievementHandlers.ANY_SOURCE_QUEST]];
			end
		end
		-- #endif
	end
	return t;
end
achWithRep = function(id, factionID, t)					-- Create an ACHIEVEMENT Object with getting Exalted with a Faction as a requirement.
	t = ach(id, t);
	if t then
		-- #if ANYCLASSIC
		-- CRIEVE NOTE: This function is temporary until I get the handlers cleared out of the main files.
		t.OnInit = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnInit(t, ]] .. factionID ..[[); end]];
		if not t.OnUpdate then
			-- #if AFTER 3.0.1
			if id == 5788 then	-- Agent of Shen'dralar still needs this until after 4.1.0
			-- #endif
				t.OnUpdate = [[_.CommonAchievementHandlers.EXALTED_REP_OnUpdate]];
			-- #if AFTER 3.0.1
			end
			-- #endif
		end
		t.OnClick = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]];
		t.OnTooltip = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]];
		-- #endif
	end
	return t;
end
achWithReps = function(id, factions, t)					-- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
	t = ach(id, t);
	if t then
		-- #if ANYCLASSIC
		-- CRIEVE NOTE: This function is temporary until I get the handlers cleared out of the main files.
		local init = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnInit(t, ]] .. factions[1];
		for i=2,#factions,1 do init = init .. "," .. factions[i]; end
		t.OnInit = init ..[[); end]];
		-- #if BEFORE 3.0.1
		if not t.OnUpdate then
			t.OnUpdate = [[_.CommonAchievementHandlers.EXALTED_REPS_OnUpdate]];
		end
		-- #endif
		t.OnClick = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]];
		t.OnTooltip = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]];
		-- #endif
	end
	return t;
end
achWithAnyReps = function(id, factions, t)				-- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
	t = ach(id, t);
	if t then
		-- #if ANYCLASSIC
		-- CRIEVE NOTE: This function is temporary until I get the handlers cleared out of the main files.
		local init = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnInit(t, ]] .. factions[1];
		for i=2,#factions,1 do init = init .. "," .. factions[i]; end
		t.OnInit = init ..[[); end]];
		-- #if BEFORE 3.0.1
		if not t.OnUpdate then
			t.OnUpdate = [[_.CommonAchievementHandlers.EXALTED_REPS_ANY_OnUpdate]];
		end
		-- #endif
		t.OnClick = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]];
		t.OnTooltip = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]];
		-- #endif
	end
	return t;
end
achraw = function(id, altID, t)							-- Create an ACHIEVEMENT Object whose Criteria will not be adjusted by AchievementDB info
	t = ach(id, altID, t);
	if t then
		if t.sym then
			error("Do not use 'sym' on achievement: "..id..". It causes criteria to be placed under Hidden Quest Triggers")
		end
		-- TODO: hopefully we can define a better way for these Criteria to exist such that the Criteria can be moved as expected again
		-- they were being moved under HQT defined in _quests via AchievementDB from Blizzard
		-- but for now prevent the Criteria from disappearing into the Unsorted window
		bubbleDown({ _noautomation = true }, t);
	end
	return t;
end
explorationAch = function(id, t)						-- Create an EXPLORATION ACHIEVEMENT Object
	t = struct("achievementID", id, t or {});
	-- #if ANYCLASSIC
	t.OnClick = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]];
	t.OnUpdate = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]];
	-- #else
	t.sym = {{ "achievement_criteria" }};
	-- #endif
	return t;
end

-- SHORTCUTS for Object Class Types
achcat = function(id, t)								-- Create an ACHIEVEMENT CATEGORY Object
	return struct("achievementCategoryID", id, t);
end
achievementCategory = achcat;
artifact = function(id, t)								-- Create an ARTIFACT Object
	return struct("artifactID", id, t);
end
az = function(id, rank, t)								-- Create a AZERITE ESSENCE Object.
	if t or type(rank) == "number" then
		t = struct("azeriteessenceID", id, t or {});
		t.rank = rank;
		return t;
	else
		return struct("azeriteessenceID", id, rank);
	end
end
azeriteEssence = az;									-- Create a AZERITE ESSENCE Object. (alternative shortcut)
azeriteItem = function(id, t)							-- Create an Item which is marked as having obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "HOA" };
	return t;
end
azewrongItem = function(id, t)							-- Create an Item which is marked as having not obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "!HOA" };
	return t;
end
battlepet = function(id, t)								-- Create a BATTLE PET Object (Battle Pet == Species == Pet)
	return struct("speciesID", id, t);
end
pet = battlepet;										-- Create a BATTLE PET Object (alternative shortcut)
p = battlepet;											-- Create a BATTLE PET Object (alternative shortcut)
battlepetability = function(id, t)						-- Create a BATTLE PET ABILITY Object
	return struct("petAbilityID", id, t);
end
bpa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
pa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
battlepettype = function(id, t)							-- Create a BATTLE PET TYPE Object
	return struct("petTypeID", id, t);
end
bpt = battlepettype;									-- Create a BATTLE PET TYPE Object (alternative shortcut)
category = function(id, t)								-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
cat = category
cl = function(id, specc, t)								-- Create a CHARACTER CLASS Object
	-- specc is optional
	if not t then
		t = specc;
	else
		if specc == FROST or specc == RESTORATION or specc == HOLY or specc == PROTECTION then
			if id == MAGE then
				specc = 64;
			elseif id == SHAMAN then
				specc = 264;
			elseif id == PRIEST then
				specc = 257
			elseif id == WARRIOR then
				specc = 73;
			end
		end
		id = id + (specc / 1000)
		t = togroups(t)
	end;
	return struct("classID", id, t);
end
clWithoutLock = function(id, t)							-- Create a CHARACTER CLASS Object without a Class Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Class;
	return t;
end
creature = function(id, t)								-- Create a CREATURE Object
	return struct("creatureID", id, t);
end
cr = creature;											-- Create a CREATURE Object (alternative shortcut)
crit = function(criteriaUID, t)							-- Create an Achievement Criteria Object (localized automatically)
	if not t then t = {};
	elseif not t.groups then
		if isarray(t) then
			t = { ["groups"] = t };
		end
	end
	if (t.groups or t.g) and #(t.groups or t.g) > 0 and false then
		error(table.concat({"Do not nest content (g/groups) inside Achievement Criteria:",criteriaUID}))
	end
	if t.achievementID then
		-- print(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
		-- error(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
	end
	if t.questID then
		error(table.concat({"Do not use 'questID' in crit(",criteriaUID,") ==> [\"_quests\"]={",t.questID,"}"}))
	end
	if t.creatureID or t.npcID then
		error(table.concat({"Do not use 'creatureID' or 'npcID' in crit(",criteriaUID,") ==> [\"crs\"]={",t.creatureID or t.npcID,"}"}))
	end
	t.criteriaID = criteriaUID;
	-- Apply a default timeline of 3.0.2 to Criteria
	if not t.timeline then
		t._defaulttimeline = { ADDED_3_0_2 }
	end
	return t;
end
currency = function(id, t)								-- Create a CURRENCY Object
	return struct("currencyID", id, t);
end
d = function(id, t)										-- Create a DIFFICULTY Object
	if not id then
		error("INVALID DIFFICULTY", id);
	end
	local difficultyID, ids = GetOrCreateMultiDifficulty(id);
	t = struct("difficultyID", difficultyID, t);
	if t then
		local db = DifficultyDB[difficultyID];
		if db then
			if db.simplify then
				-- must preserve the multi-difficultyID for parser, since changing the difficultyID secretly
				-- inside a shortcut function is anything but 'simple'
				-- TODO: clean this up and make it Parser logic instead to change the id values
				t._multiDifficultyID = difficultyID
				difficultyID = ids[1];
				local difficulties = {}
				for i=2,#ids,1 do
					difficulties[#difficulties + 1] = ids[i];
				end
				t.difficultyID = difficultyID;
				t.difficulties = difficulties;
				ids = nil;
			end
			-- #if AFTER MOP
			t.modID = db.modID;
			-- #endif
		end

		if ids then
			local oldDifficulties = t.difficulties;
			if oldDifficulties then
				local merged,dict,count = {},{},1;
				for i,d in ipairs(oldDifficulties) do
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				local firstID = ids[1];
				for i=2,#ids,1 do
					local d = ids[i];
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				if dict[firstID] then
					table.remove(merged, dict[firstID]);
				end
				table.insert(merged, 1, firstID);
				t.difficulties = merged;
			else
				t.difficulties = ids;
			end
		end
	end
	return t;
end
-- #if AFTER WRATH
e = function(id, t)										-- Create an ENCOUNTER Object (Post-Wrath)
	return struct("encounterID", id, t);
end
-- #else
e = function(id, t)										-- Create an ENCOUNTER Object (Post-Wrath)
	-- Not yet supported in classic.
	if t then
		if t.groups or t.g then
			-- #if AFTER WRATH
			t.encounterID = id;
			-- #endif
			-- Convert to a Header or NPC ID.
			if t.npcID then
				return t;
			elseif t.creatureID then
				t.npcID = t.creatureID;
				t.creatureID = nil;
				return t;
			elseif t.cr then
				t.npcID = t.cr;
				t.cr = nil;
				return t;
			elseif t.crs then
				t.npcID = t.crs[1];
				table.remove(t.crs, 1);
				if #t.crs < 1 then
					t.crs = nil;
				end
				return t;
			else
				t.npcID = -1;
				return t;
			end
		else
			return { ["npcID"] = -1, ["groups"] = t };
		end
	end
end
-- #endif
elitepvp = function(t)									-- Flag all nested content as requiring Elite PvP gameplay
	return bubbleDown({
		["pvp"] = true,
		["u"] = ELITE_PVP_REQUIREMENT,					-- CRIEVE NOTE: This currently uses the same filter as our other filters. This should probably be changed to act like the PVP filter or make "pvp" a 2 or something.
	}, t);
end
local PatchDecimals = 2
local RevDecimals = 2
local PatchShift = 10 ^ PatchDecimals
local RevShift = 10 ^ RevDecimals
expansion = function(id, patch, t)							-- Create an EXPANSION Object
	-- patch is optional
	if not t then
		t = patch;
	else
		id = id + (patch / PatchShift);
		t = togroups(t);
	end
	t = struct("expansionID", id, t);
	if t and not t.timeline then
		t._defaulttimeline = { "added " .. math.floor(id) .. ".0" };
	end
	return t;
end
exploration = function(id, t)							-- Create an EXPLORATION Object
	if type(t) == "string" then
		t = nil;
	end
	return struct("explorationID", id, t);
end
visit_exploration = function(id, t)						-- Create an EXPLORATION Object (which fails to return in exploration API and must be visited manually for name-based area check to capture)
	t = struct("explorationID", id, t)
	t.collectible = false	-- only way to cache these is to visit manually -- too tedious :/
	-- #IF ANYCLASSIC
	-- leave it up to the ExplorationAreaPositionDB for that Classic Version
	t.coord = nil
	t.coords = nil
	-- Flag as collectible if the areaID is confirmed as validly-working in that Classic Version
	if ValidExplorationAreaIDsForClassic[id] then
		t.collectible = nil
	else
		-- completely omit non-valid explorations from Classic for now since they're connected to Exploration Achievements
		t._remove=true
	end
	-- #ENDIF
	return t
end
faction = function(id, t)								-- Create a FACTION Object
	return struct("factionID", id, t);
end
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightpathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
filter = function(id, t)								-- Create a FILTER Object
	if not id or id < 0 then
		error("Used filter() with bad filter value "..(id or "")..". Did you mean to use n()?")
	end
	return struct("f", id, t);
end
f = filter;												-- Create a FILTER Object (Alternative)
follower = function(id, t)								-- Create a FOLLOWER Object
	return struct("followerID", id, t);
end
garrisonBuilding = function(id, t)						-- Create a GARRISON BUILDING Object
	return struct("buildingID", id, t);
end
gb = garrisonBuilding;									-- Create a GARRISON BUILDING Object (Alternative)
garrisonTalent = function(id, t)						-- Create a GARRISON TALENT Object
	return struct("talentID", id, t);
end
gt = function(id, t)									-- Create an GARRISON TALENT Object (Alternative)
	return struct("talentID", id, t);
end
gs = function(id, t)									-- Create a GEAR SET Object (IE: "Vestments of Prophecy")
	return struct("setID", id, t);
end
gsh = function(id, t)									-- Create a GEAR SET HEADER Object (IE: "Season 1")
	return struct("setHeaderID", id, t);
end
gssh = function(id, t)									-- Create a GEAR SET SUB HEADER Object (IE: "Gladiator")
	return struct("setSubHeaderID", id, t);
end
header = function(type, id, t)							-- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination
	t = struct("headerID", id, t);
	if not type then
		error("Invalid header type for id",id);
	end
	t.type = type;
	return t;
end
heir = function(id, t)									-- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance)
	return struct("itemID", id, t);
end
hqt = function(id, t)									-- Create a HQT (Hidden Quest Tracker) Object
	-- currently this is simply a 'Quest' but will soon be an actual new Type to track
	t = q(id, t);
	t.type = "hqt"
	return t
end
illusion = function(id, t)								-- Create an ILLUSION Object (only necessary for illusions without itemIDs)
	return struct("illusionID", id, t);
end
ill = illusion;											-- Create an ILLUSION Object

-- Create an ITEM Object
---@param id number
---@param t? table
---@return table|nil
item = function(id, t)
	return struct("itemID", id, t);
end
i = item;												-- Create an ITEM Object (alternative shortcut)
ig = function(id, t)									-- Create an ITEM Object that ignores bonus IDs.
	t = struct("itemID", id, t);
	-- #if NOT ANYCLASSIC
	t.ignoreBonus = true;
	-- #endif
	return t;
end
iupgrade = function(itemID, modID, bonusID, t)			-- Create an ITEM Object which can be Upgraded to another Item version (specified by ModID/BonusID)
	if (modID or 0) == 0 and (bonusID or 0) == 0 then
		error("Item Upgrade needs ModID or BonusID!");
	end
	local i = i(itemID, t);
	-- use ModID/BonusID combination to represent the new Item available via Upgrading
	i.up = (tonumber(modID) or 0) + ((tonumber(bonusID) or 0) / 100000);
	return i;
end
iensemble = function(itemID, t)
	local i = i(itemID, t);
	i.type = "ensembleID"
	return i
end
iexact = function(itemID, modID, bonusID, t)			-- Create an exact ITEM Object (specified by ModID/BonusID)
	local i = i(itemID, t);
	if modID and modID ~= 0 then
		i.modID = modID;
	end
	if bonusID and bonusID ~= 0 then
		i.bonusID = bonusID;
	end
	return i;
end

---@param id number
---@param t? table
---@return table|nil
inst = function(id, t)									-- Create an INSTANCE Object
	t = struct("instanceID", id, t);

	-- #if BEFORE WRATH
	-- Not yet supported in classic.
	if t and (t.groups or t.g) then
		-- Convert to a MAP ID.
		if not t.mapID then
			if t.maps then
				t.mapID = t.maps[1];
				table.remove(t.maps, 1);
				if #t.maps < 1 then
					t.maps = nil;
				end
			else
				--error("Instance Missing a MapID: " .. id);
			end
		end
	end
	-- #endif
	return t;
end

---@param id number
---@param t? table
---@return table|nil
map = function(id, t)									-- Create a MAP Object
	if t then
		-- do not attach achievements to maps
		if t.achievementID then
			error("Do not attach 'achievementID' to a map.")
		end
	end
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
mission = function(id, t)								-- Create an MISSION Object
	return struct("missionID", id, t);
end
mi = mission											-- Create a MISSION Object (Alternative)
molemachine = function(questID, name, t)				-- Create a MOLE MACHINE Quest Object
	if questID then
		t = struct("questID", questID, t);
		if t and not t.provider then
			t.provider = { "n", 143925 };	-- Dark Iron Mole Machine
		end
	else
		t = struct("npcID", 143925, t);	-- Dark Iron Mole Machine
	end
	if t then
		if not t.icon then
			t.icon = 1786409;
		end
		if not t.timeline then
			t._defaulttimeline = { ADDED_8_0_1 };
		end
		-- TODO: Do we really need the location as a description if its in each zone?
		-- CRIEVE NOTE: Perhaps make an areaID-based class that can do header things?
		-- CRIEVE NOTE2: ... Hell yeah, when I get time I'm converting those names to areaID!
		if name then
			t.name = name;
			t.description = name;
		end
		if not t.races then
			t.races = { DARKIRON };
		end
	end
	return t;
end
mount = function(id, t)									-- Create a MOUNT Object, which is just a spellID with a filter.
	return struct("mountID", id, t);
end

---@param id number
---@param t? table
---@return table|nil
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
	if not id then
		print("NPC ID Missing for n() header");
		--[[
		-- Uncomment this if something from retail sneaks past the header checker again.
		for i,o in ipairs(t) do
			print("  " .. i .. ": ");
			for key,value in pairs(o) do
				if key == "groups" or key == "g" then
					print("    " .. key .. ": ");
					for j,p in ipairs(value) do
						print("    " .. j .. ": ");
						for key2,value2 in pairs(p) do
							if key2 == "groups" or key2 == "g" then
								print("    " .. key2 .. ": TRIMMED");
							else
								print("    " .. key2 .. " - " .. tostring(value2));
							end
						end
					end
				else
					print("    " .. key .. " - " .. tostring(value));
				end
			end
		end
		]]--
		if t then
			return unpack(t);
		else
			return nil;
		end
	end
	-- #IF NOT ANYCLASSIC
	-- Retail Cleanliness checks
	if id == COMMON_BOSS_DROPS or
		id == COMMON_VENDOR_ITEMS or
		id == DROPS
	then
		-- Items contained under these Header values will automatically list under the respective NPCs in minilists
		if t.crs or t.cr then
			t.maps = nil;
			t.map = nil;
		end
	end
	-- #ENDIF
	return struct("npcID", id, t);
end
n = npc;												-- Create an NPC Object (alternative shortcut)
obj = function(id, t)									-- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest)
	return struct("objectID", id, t);
end
o = obj;												-- Create a WORLD OBJECT Object (alternative shortcut)
o_repeated = function(t, o)								-- Create a group which represents the shared contents for multiple, identically-named WORLD OBJECTS
	if t[1] then
		-- move the raw array of objects into a .g group
		-- include o as a separate array so we can list the shared contents/objects separately for easier data application
		t = { g = appendAllGroups(t, o) };
	end
	t.type = "AsGenericObjectContainer"
	if t.groups or t.g then
		for i,group in ipairs(t.groups or t.g) do
			-- first existing objectID value of the sub-groups will be used to show the localized name in-game instead of creating a new custom category as well
			if group.objectID and not t.objectID then
				-- is it really this simple
				t = struct("objectID", group.objectID, t);
				break
			end
		end
		-- Now we want the children of these generic groups to be 'special' since they require 'special' logic in the addon
		for i,group in ipairs(t.groups or t.g) do
			group.type = "AsSubGenericObject"
		end
		return t
	end
	print("Could not find a group with an objectID value");
end
-- #if ANYCLASSIC
petbattle = function(t)									-- Pet Battle (ignored in Classic)
	return t;
end
-- #else
petbattle = function(t)									-- Pet Battle (bubbleDown pb filter)
	return bubbleDown({ ["pb"] = true }, t);
end
-- #endif
prof = function(skillID, t)								-- Create a PROFESSION Object
	return struct("professionID", skillID, t);
end
profession = function(skillID, t)						-- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.)
	local p = prof(skillID, t);
	-- #if NOT ANYCLASSIC
	bubbleDown({ ["requireSkill"] = skillID }, p);
	-- #endif
	root(ROOTS.Professions, p);
	return p;
end
pvp = function(t)										-- Flag all nested content as requiring PvP gameplay
	return bubbleDown({ ["pvp"] = true }, t);
end
pvprank = function(id, t)								-- Create a PVP Rank Object.
	return struct("pvpRankID", id, t);
end
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
qNYI = function (id, t)									-- Create a QUEST Object flagged with the NYI unobtainable flag
	t = q(id, t);
	t.u = NEVER_IMPLEMENTED;
	return t;
end
questobjective = function(id, t)						-- Create a QUEST OBJECTIVE Object
	t = struct("objectiveID", id, t);
	if t then
		-- #if NOT OBJECTIVES
		-- ProcessProviderForRetailAsUncollectible(t.provider);
		-- if t.providers then
		-- 	for i,provider in ipairs(t.providers) do
		-- 		ProcessProviderForRetailAsUncollectible(provider);
		-- 	end
		-- end
		-- #endif
		if t.itemID then
			print("INCORRECT OBJECTIVE FORMAT", id, t.itemID);
			print("Use a provider entry instead!");
		end
	end
	return t;
end
objective = questobjective;								-- Create a QUEST OBJECTIVE Object (alternative shortcut)
qo = questobjective;									-- Create a QUEST OBJECTIVE Object (alternative shortcut)
race = function(id, t)									-- Create a RACE Object
	return struct("raceID", id, t);
end
raceWithoutLock = function(id, t)							-- Create a CHARACTER RACE Object without a Race Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Race;
	return t;
end
recipe = function(id, t)								-- Create a RECIPE Object
	return struct("recipeID", id, t);
end
r = recipe;												-- Create a RECIPE Object (alternative shortcut)
local SpecialRoots = {
	__DropG = function(g)
		return bubbleDownFiltered({
			-- keep API data from populating into NYI/Hidden quests
			["_drop"]={"g"}
		},FILTERFUNC_questID,g)
	end,
}
SpecialRoots[ROOTS.HiddenAchievementTriggers] = SpecialRoots.__DropG
SpecialRoots[ROOTS.HiddenCurrencyTriggers] = SpecialRoots.__DropG
SpecialRoots[ROOTS.HiddenQuestTriggers] = SpecialRoots.__DropG
SpecialRoots[ROOTS.NeverImplemented] = SpecialRoots.__DropG
root = function(category, g)							-- Create a ROOT CATEGORY Object
	if not g then g = g or {}; end
	-- special global handling for certain categories
	if SpecialRoots[category] then g = SpecialRoots[category](g) end
	local o = _[category];
	if not o then
		if isarray(g) then
			o = g;
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				o = g;
			else
				o = { g };
			end
		end
		_[category] = o;
	else
		if isarray(g) then
			for i,t in ipairs(g) do
				table.insert(o, t);
			end
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				for key,value in pairs(g) do
					o[key] = value;
				end
			else
				table.insert(o, g);
			end
		end
	end
	return o;
end
spell = function(id, t)									-- Create a SPELL Object
	return struct("spellID", id, t);
end
sp = spell;												-- Create a SPELL Object (alternative shortcut)
title = function(id, t)									-- Create a TITLE Object
sensemble = function(spellID, t)						-- Create an Ensemble directly from SpellID
	local i = sp(spellID, t);
	i.type = "ensembleSpellID"
	return i
end
	return struct("titleID", id, t);
end
title_female = function(id, t)							-- Create a TITLE Object for Female Characters
	t = struct("titleID", id, t);
	t.gender = 3;
	return t;
end
title_male = function(id, t)							-- Create a TITLE Object for Male Characters
	t = struct("titleID", id, t);
	t.gender = 2;
	return t;
end

-- Common Object Types
dragonridingrace = function(id, t)						-- Creates a QUEST which is for a Dragonriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	t.sourceQuestNumRequired = 1;
	t.sourceQuests = {
		68795,	-- Dragonriding
		DF_ACCOUNT_CAMPAIGN_QUEST,
	};
	return t;
end
skyridingrace = function(id, t)						-- Creates a QUEST which is for a Skyriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end
driverace = function(id, t)						-- Creates a QUEST which is for a D.R.I.V.E. Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end

-- Outdoor Zones Headers with Filters
battlepets = function(timeline, t)						-- Creates a BATTLE_PETS header with pet battle filter on it. Use this with Outdoor Zones.
	if not t then
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	return petbattle(filter(BATTLE_PETS, bubbleDownSelf({ ["timeline"] = timeline }, t)));
end
petbattles = function(timeline, t)						-- Creates a PET_BATTLE header with pet battle filter on it. Use this with Outdoor Zones.
	if not t then
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	return petbattle(n(PET_BATTLE, bubbleDownSelf({ ["timeline"] = timeline }, t)));
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
a = function(t)	-- Flag as Alliance Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as ALLIANCE_ONLY on a thing already marked with races.");
	else
		t.races = ALLIANCE_ONLY;
	end
	return t;
end
-- Adds an item which is convertable between itself and another subitem by way of a subitem amount and whether the
-- item to subitem is possible
convertItem = function(itemID, subItemID, subItemAmount, includeItemToSubitem)
	return i(itemID, {["cost"]={{"i",subItemID,subItemAmount}},["g"]=includeItemToSubitem and {i(subItemID)} or nil})
end
crs = function(id, t)											-- Add a Creature List to an object.
	if type(id) == "number" then
		t.cr = id;
	else
		t.crs = id;
	end
	return t;
end
h = function(t) -- Flag as Horde Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as HORDE_ONLY on a thing already marked with races.");
	else
		t.races = HORDE_ONLY;
	end
	return t;
end
model = function(displayID, t)
	t.displayID = displayID;
	return t;
end
-- Converts a given Item/Mod/Bonus combination into the current modItemID format (should roughly match GetGroupItemIDWithModID from Item.Retail.lua)
modItemId = function(itemID, modID, bonusID)
	itemID = itemID and tonumber(itemID) or 0;
	-- #if AFTER LEGION
	local m, b;
	m = modID and tonumber(modID);
	b = bonusID and tonumber(bonusID);
	if m then
		itemID = itemID + (m / 1000);
	end
	if b and b ~= 3524 then
		itemID = itemID + (b / 100000000);
	end
	-- #endif
	return itemID;
end
-- Adds the 'autoname' field with proper formatting to set the 'name' of this object automatically in Retail
-- NOTE: The base Type must support: GlobalVariants.WithAutoName as a Class Variant for the 'autoname' field to be recognized in the addon to generate a 'name'
-- ref. Classes/Quest.lua
name = function(type, id, t)
	t = t or {}
	if t.autoname then
		error("Cannot use name() when the contained data includes 'autoname' field! "..type..":"..id)
	end
	t.autoname = type..":"..id
	return t
end
-- Converts 3 separate patch values into a single patch decimal for use within expansion() groups
patch = function(major,minor,build)
	major = math.floor(tonumber(major) or 0)
	minor = math.floor(tonumber(minor) or 0)
	build = math.floor(tonumber(build) or 0)
	if major >= PatchShift then
		print("Using a Major Patch with too many digits! It will not be represented properly in-game",major)
	end
	if minor >= RevShift then
		print("Using a Minor Patch with too many digits! It will not be represented properly in-game",minor)
	end
	if build > 0 then
		print("WARN: Not currently supporting Build within a Patch",build)
	end
	return major + minor / RevShift
end
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.

-- Region Specific Filters
regionExclusive = function(region, t)
	if t.OnInit or t.OnSourceInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnSourceInit = [[function(t)
	if GetCVar("portal") ~= "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end
regionUnavailable = function(region, t)
	if t.OnInit or t.OnSourceInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnSourceInit = [[function(t)
	if GetCVar("portal") == "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end
krONLY = function(t)
	return regionExclusive("KR", t);
end
krUnavailable = function(t)
	return regionUnavailable("KR", t);
end
cnONLY = function(t)
	return regionExclusive("CN", t);
end
cnUnavailable = function(t)
	return regionUnavailable("CN", t);
end
twONLY = function(t)
	return regionExclusive("TW", t);
end
twUnavailable = function(t)
	return regionUnavailable("TW", t);
end
euONLY = function(t)
	return regionExclusive("EU", t);
end
euUnavailable = function(t)
	return regionUnavailable("EU", t);
end
usONLY = function(t)
	return regionExclusive("US", t);
end
usUnavailable = function(t)
	return regionUnavailable("US", t);
end

-- Temporary function to force Items to use the Misc filter so that they do not get turned into Recipes by the Parser
-- until the 'guessing' logic is eventually relegated when Prof DB's are sufficient
TempForceMisc = function(t)
	t.f = MISC
	return t
end

-- Create a Header. Returns a UNIQUE ID, starting at 0.
(function()
if not NextHeaderID then
	-- Once we've eliminated all of the old style NPC IDs, we can change this value and
	-- delete the Dynamic Header IDs file to reassign easier to manage header IDs.
	NextHeaderID = -1000000; -- TODO: Change this to 0. (when the above task is done)
	HeaderAssignments = {};
end
local customHeaders = {};
local customHeadersByReadable, customHeadersByConstant = {}, {};
CustomHeaders = customHeaders;	-- This is global, so that it can be found by Parser!
local concatKeyPairs = function(t)
	local keys = {};
	for key,value in pairs(t) do
		table.insert(keys, key);
	end
	table.sort(keys);
	local schedule = "{";
	for i,key in ipairs(keys) do
		if i > 1 then
			schedule = schedule .. ",";
		end
		schedule = schedule .. "[\"" .. key .. "\"]=" .. t[key];
	end
	return schedule .. "}";
end
local getTimestamp = function(t)
	return os.time({
		year=t.year,
		month=t.month,
		day=t.monthDay,
		hour=t.hour,
		minute=t.minute,
	});
end
local SECONDS_IN_A_WEEK = 604800;
createHeader = function(data)
	if not data then
		print("INVALID HEADER: You must pass data into the createHeader function.");
	elseif not data.readable then
		print("INVALID HEADER (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID HEADER", data.readable, data.text);
	else
		if data.constant then
			if customHeadersByConstant[data.constant] then
				error("ERROR: HEADER CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. customHeadersByConstant[data.constant].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
			else
				customHeadersByConstant[data.constant] = data;
			end
		end
		if customHeadersByReadable[data.readable] then
			error("ERROR: HEADER READABLE " .. data.readable .. " ALREADY ASSIGNED TO " .. customHeadersByReadable[data.readable].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
		else
			customHeadersByReadable[data.readable] = data;
		end
		if data.eventSchedule then
			local schedule = "{";
			local currentDate = os.date("*t");
			if data.eventSchedule[1] == 0 then	-- Set Start and End Date
				local startTime = {
					year=data.eventSchedule[2],
					month=data.eventSchedule[3],
					monthDay=data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};
				local endTime = {
					year=data.eventSchedule[5] or (currentDate.year + 1),
					month=data.eventSchedule[6] or data.eventSchedule[3],
					monthDay=data.eventSchedule[7] or data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};

				-- Generate Time Stamps and add the weekday to the objects
				startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
				endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

				-- Append the schedule
				schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime)  .. ")";
			elseif data.eventSchedule[1] == 1 then	-- Recurring, every year forever on the same dates.
				local veryfirst = true;
				for yearOffset = -1,1,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end
					local startTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[2],
						monthDay=data.eventSchedule[3],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[4],
						minute=data.eventSchedule[5],
					};
					local endTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[6],
						monthDay=data.eventSchedule[7],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[8],
						minute=data.eventSchedule[9],
					};
					-- Feast of Winter Veil, for example, goes from Dec (Month 12) to Jan (Month 01)
					if endTime.month < startTime.month then
						endTime.year = endTime.year + 1;
					end

					-- Generate Time Stamps and add the weekday to the objects
					startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
					endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ")";
				end
			elseif data.eventSchedule[1] == 2 then	-- Recurring every month on the first Sunday until the next Sunday.
				-- START_YEAR, START_MONTH
				-- Example: 2023, 5
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Calculate the difference between the specified month/year and the current month/year
				local year, month, totalMonthOffset = data.eventSchedule[2], data.eventSchedule[3], 0;
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				while year < currentYear do
					while month <= 12 do
						month = month + 1;
						totalMonthOffset = totalMonthOffset + 1;
					end
					month = 1;
					year = year + 1;
				end
				while month < currentMonth do
					month = month + 1;
					totalMonthOffset = totalMonthOffset + 1;
				end

				-- Go back one month, to get last month's data.
				totalMonthOffset = (totalMonthOffset + totalEventIDs) - 1;	-- Ensure the offset is 0 or more
				month = month - 1;
				if month == 0 then month = 12; end

				local veryfirst = true;
				for monthOffset = 0,10,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Grab the current eventID
					local eventID = eventIDs[(totalMonthOffset % totalEventIDs) + 1];

					-- Determine the first sunday
					local startTime = {
						year=year,
						month=month,
						monthDay=1,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local startTimeStamp = getTimestamp(startTime);

					-- Find the first Sunday of the Month
					for dayOffset = 1,14,1 do
						if os.date("*t", startTimeStamp).wday == 1 then
							break;
						end
						startTime.monthDay = startTime.monthDay + 1;
						startTimeStamp = getTimestamp(startTime);
					end

					-- Determine the next Sunday
					local endTime = {
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.monthDay + 7,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local endTimeStamp = getTimestamp(endTime);
					startTime.weekday = os.date("*t", startTimeStamp).wday;
					endTime.weekday = os.date("*t", endTimeStamp).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ",{[\"remappedID\"]=" .. eventID .. "})";

					totalMonthOffset = totalMonthOffset + 1;
					month = month + 1;
					if month > 12 then
						month = 1;
						year = year + 1;
					end
				end
			elseif data.eventSchedule[1] == 3 then	-- Recurring every two weeks, lasting a week.
				-- START_YEAR, START_MONTH, START_DAY
				-- Example: 2023, 12, 4
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Specify the first recorded event matching the first eventID.
				local startTimeStamp = getTimestamp({
					year=data.eventSchedule[2],
					month=data.eventSchedule[3] or 1,
					monthDay=data.eventSchedule[4] or 1,
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				});

				-- Calculate the difference between the first recorded event to now.
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				local currentTimeStamp = os.time(currentDate);
				local totalOffset, SECONDS_IN_TWO_WEEKS = 0, SECONDS_IN_A_WEEK * 2;
				while true do
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					if startTimeStamp < currentTimeStamp then
						totalOffset = totalOffset + 1;
					else
						-- We want at least one event behind us if it is still active.
						startTimeStamp = startTimeStamp - SECONDS_IN_TWO_WEEKS;
						break;
					end
				end

				-- Now generate a full years worth of events going forward.
				local veryfirst = true;
				for week = 0,26,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Determine when the event is supposed to end.
					local startTime = os.date("*t", startTimeStamp);
					local endTime = os.date("*t", startTimeStamp + SECONDS_IN_A_WEEK);

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs({
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.day,
						weekday=startTime.wday,
						hour=0,
						minute=0,
					}) .. "," .. concatKeyPairs({
						year=endTime.year,
						month=endTime.month,
						monthDay=endTime.day,
						weekday=endTime.wday,
						hour=0,
						minute=0,
					}) .. ",{[\"remappedID\"]=" .. eventIDs[(totalOffset % totalEventIDs) + 1] .. "})";

					-- Adjust by 2 weeks.
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					totalOffset = totalOffset + 1;
				end
			else
				print("INVALID HEADER", data.readable, " INVALID SCHEDULE TYPE", data.eventSchedule[1]);
				return;
			end
			data.eventSchedule = schedule .. "\n}";
		end

		-- Try to find the headerID assignment from the readable table.
		local headerID = HeaderAssignments[data.readable];
		if not headerID then
			headerID = NextHeaderID;
			NextHeaderID = NextHeaderID - 1;
		end
		if customHeaders[headerID] then
			error("ERROR: HEADER ID " .. headerID .. " ALREADY ASSIGNED TO " .. customHeaders[headerID].readable .. ", but attempting to assign to " .. data.readable .. ". Please double check that the header definitions are different");
			return;
		end
		customHeaders[headerID] = data;
		---@diagnostic disable-next-line: undefined-global
		data.filepath = CurrentSubFileName or CurrentFileName;
		--print("HEADER", headerID .. ":", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
		return headerID;
	end
end
--[[
-- Here's an example showing all the different supported fields.
CRIEVES_SUPER_COOL_HEADER = createHeader({
	readable = "Crieve's Super Cool Header",
	constant = "CRIEVES_SUPER_COOL_HEADER",	-- If you specify a constant, the identifier will become accessible in the addon code (app.HeaderConstants.CRIEVES_SUPER_COOL_HEADER)
	icon = 12345,
	text = {
		en = "Crieve's Super Cool Header",
		ru = "TODO: Russion Translation Here",
	},
	description = {
		en = "This is just an example!",
	},
});
]]--
local temporaryHeaderAssignments = {};
translate = function(data, key)
	if not data then
		print("INVALID TRANSLATION: You must pass data into the translate function.");
	else
		if type(data) == "number" then
			if key then data = data .. ":" .. key; end
			return "~H:" .. data;
		else
			if not data.en then
				print("INVALID TRANSLATION (missing 'en')", data.en or (type(data.text) == "table" and data.text) or data);
			else
				-- We want to reuse this headerID for things that use the same translation data.
				local headerID = temporaryHeaderAssignments[data.en];
				if not headerID then
					headerID = createHeader({ readable = data.en, temporary = true, text = data });
					temporaryHeaderAssignments[data.en] = headerID;
				end
				return "~H:" .. headerID;
			end
		end
	end
end
end)();

-- Create a Custom Object. Returns a UNIQUE ID, starting at 100000000.
(function()
local nextCustomObjectID = 100000000;
createCustomObject = function(data)
	if not data then
		print("INVALID OBJECT: You must pass data into the createCustomObject function.");
	elseif not data.readable then
		print("INVALID OBJECT (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID OBJECT", data.readable, data.text);
	else
		local objectID = nextCustomObjectID;
		ObjectDB[objectID] = data;
		nextCustomObjectID = objectID + 1;
		return objectID;
	end
end
end)();

do
local itemDBConditional = ItemDBConditional;
local CurrentProfessionID = ALCHEMY;
local ItemRecipeHelper = function(itemID, recipeID, unobtainStatus, requireSkill)
	-- Cache the object.
	local object;
	if itemID == 0 then
		-- The RecipeDB table isn't setup to always return a value.
		object = RecipeDB[recipeID];
	else
		-- Cache the object as an item
		object = itemDBConditional[itemID];

		-- Update the recipeID.
		local originalSpellID = object.spellID;
		local originalRecipeID = object.recipeID;
		if not originalRecipeID then
			object.recipeID = recipeID;
		elseif originalRecipeID ~= recipeID then
			-- Replace it, but also show a warning.
			print("Item", itemID, "recipeID changed", originalRecipeID, ">", recipeID);
			object.recipeID = recipeID;
		end

		-- Check for a spellID.
		if originalSpellID then
			object.spellID = nil;
			if not (originalSpellID == originalRecipeID or originalSpellID == recipeID) then
				print("Item", itemID, "spellID changed", originalSpellID, "> nil");
			end
		end
	end

	-- Mark it as a recipe.
	object.f = RECIPES;

	-- Update the skill requirement.
	requireSkill = requireSkill or CurrentProfessionID;
	local originalRequireSkill = object.requireSkill;
	if not originalRequireSkill then
		if itemID ~= 0 then
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	elseif originalRequireSkill ~= requireSkill then
		-- Replace it, but also show a warning.
		if itemID == 0 then
			print("Recipe", recipeID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
		else
			print("Item", itemID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	end

	-- allow for timeline to be a raw 'u' value or single string of 'timeline' or table of multiple 'timeline' values
	local unobtainType = unobtainStatus and type(unobtainStatus);
	if unobtainType then
		if unobtainType == "number" then
			-- #if ANYCLASSIC
			-- CRIEVE NOTE: At this time, this is exclusive to Classic builds.
			object.u = unobtainStatus;
			-- #endif
		elseif unobtainType == "string" then
			object.timeline = { unobtainStatus };
		elseif unobtainType == "table" then
			object.timeline = unobtainStatus;
		end
	end
	return object;
end
GetRecipeHelperForProfession = function(professionID)
	CurrentProfessionID = professionID;
	return ItemRecipeHelper;
end


--[[
-- Proof of Concept:
-- If you assign new partial data to the item, it'll retain its previous data instead of discarding it.
local disgustingOozeling = ItemDBConditional[20769];
disgustingOozeling.spellID = 25162;
disgustingOozeling.speciesID = 114;

ItemDBConditional[20769] = { description = "What a shame it would be to lose this data..." };

print("Disgusting Oozeling contains:");
for key,value in pairs(ItemDBConditional[20769]) do
	print(" " .. key .. ": " .. value);
end
]]--
end

function Harvest(things)
	root("Items.HARVESTSOURCES", things);
end