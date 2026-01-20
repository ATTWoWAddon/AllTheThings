
-- Sort lib
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for performing sort logic against sets of ATT groups

-- Global locals
local ipairs, tostring, type, table_sort, pcall
	= ipairs, tostring, type, table.sort, pcall;

-- Module locals

-- Sorting Logic
local sortA, sortB;
local function calculateSourceQuestDepth(group, text)
	if group.sourceQuestDepth then return group.sourceQuestDepth; end
	if group.sourceQuests then
		local maxDepth, results, depth = 0, nil, nil;
		for i,sourceQuestID in ipairs(group.sourceQuests) do
			results = app.SearchForField("questID", sourceQuestID);
			if results and #results > 0 then
				depth = calculateSourceQuestDepth(results[1]) + 1;
			else
				depth = 1;
			end
			if maxDepth < depth then maxDepth = depth; end
		end
		group.sourceQuestDepth = maxDepth;
		return maxDepth;
	end
	return 0;
end
local function toLowerString(value)
	---@diagnostic disable-next-line: undefined-field
	return tostring(value):lower();
end
local function calculateAccessibility(source)
	return source.AccessibilityScore or 10000000;
end
local function defaultComparison(a,b)
	-- If either object doesn't exist
	if a then
		if not b then
			return true;
		end
	elseif b then
		return false;
	else
		-- neither a or b exists, equality returns false
		return false;
	end
	-- If comparing non-tables
	if type(a) ~= "table" or type(b) ~= "table" then
		return a < b;
	end
	local acomp, bcomp;
	-- SortPriority
	acomp = a.SortPriority or 0
	bcomp = b.SortPriority or 0
	if acomp ~= bcomp then
		return acomp < bcomp
	end
	-- Maps
	acomp = a.mapID;
	bcomp = b.mapID;
	if acomp then
		if not bcomp then return true; end
	elseif bcomp then
		return false;
	end
	-- Raids/Encounter
	acomp = a.isRaid;
	bcomp = b.isRaid;
	if acomp then
		if not bcomp then return true; end
	elseif bcomp then
		return false;
	end
	-- Headers/Filters/AchievementCategories (or other Types which are used as Headers)
	acomp = a.headerID or a.filterID or a.achievementCategoryID or a.isHeader or a.isMinilistHeader
	bcomp = b.headerID or b.filterID or b.achievementCategoryID or b.isHeader or b.isMinilistHeader
	if acomp then
		if not bcomp then return true; end
	elseif bcomp then
		return false;
	end
	-- Quests
	acomp = a.questID;
	bcomp = b.questID;
	if acomp then
		if not bcomp then return true; end
	elseif bcomp then
		return false;
	end
	-- Items
	acomp = a.itemID;
	bcomp = b.itemID;
	if acomp then
		if not bcomp then return true; end
	elseif bcomp then
		return false;
	end
	-- Any two similar-type groups via name
	acomp = toLowerString(a.name);
	bcomp = toLowerString(b.name);
	return acomp < bcomp;
end
local function GetGroupSortValue(group)
	-- sub-groups on top
	-- >= 1
	if group.g then
		local total = group.total;
		if total then
			local progress = group.progress;
			-- completed groups at the very top, ordered by their own total
			if total == progress then
				-- 3 <= p
				return 2 + total;
			-- partially completed next
			elseif progress and progress > 0 then
				-- 1 < p <= 2
				return 1 + (progress / total);
			-- no completion, ordered by their own total in reverse
			-- 0 < p <= 1
			else
				return (1 / total);
			end
		end
	-- collectibles next
	-- >= 0
	elseif group.collectible then
		-- = 0.5
		if group.collected then
			return 0.5;
		else
			-- 0 <= p < 0.5
			return (group.sortProgress or 0) / 2;
		end
	-- trackables next
	-- -1 <= p <= -0.5
	elseif group.trackable then
		if group.saved then
			return -0.5;
		else
			return -1;
		end
	-- remaining last
	-- = -2
	else
		return -2;
	end
end
local function stringComparison(a,b)
	-- If either object doesn't exist
	if a then
		if not b then
			return true;
		end
	elseif b then
		return false;
	else
		-- neither a or b exists, equality returns false
		return false;
	end
	-- Any two similar-type groups with text
	a = toLowerString(a);
	b = toLowerString(b);
	return a < b;
end
app.SortDefaults = setmetatable({
	-- Naming Convention: Capital = Special Sort Function, lowercase = field on an object
	Global = defaultComparison,
	Strings = stringComparison,
	Values = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		return a < b;
	end,
	-- Sorts objects first by whether they do not have sub-groups [.g] defined
	Hierarchy = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		-- Items always prioritize above other Types
		local acomp = a.itemID;
		local bcomp = b.itemID;
		if acomp then
			if not bcomp then return true; end
		elseif bcomp then
			return false;
		end
		-- Specific Class stuff for the current character should prioritize
		acomp = not a.nmc
		bcomp = not b.nmc
		if acomp then
			if not bcomp then return true; end
		elseif bcomp then
			return false;
		end
		-- Race-based stuff for the current character should prioritize
		acomp = not a.nmr
		bcomp = not b.nmr
		if acomp then
			if not bcomp then return true; end
		elseif bcomp then
			return false;
		end
		-- Otherwise order by container size
		acomp = a.g
		bcomp = b.g
		return (acomp and #acomp or 0) < (bcomp and #bcomp or 0);
	end,
	-- Sorts objects first by how many total collectibles they contain
	Total = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		local acomp, bcomp;
		acomp = a.total or 0;
		bcomp = b.total or 0;
		return acomp < bcomp;
	end,
	-- Sorts objects first by their nextEvent.Start
	EventStart = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		local acomp, bcomp;
		acomp = a.nextEvent;
		acomp = acomp and acomp.start or 0;
		bcomp = b.nextEvent;
		bcomp = bcomp and bcomp.start or 0;
		return acomp < bcomp;
	end,
	ClassicQuestOrder = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		if a.isRaid then
			if not b.isRaid then
				return true;
			end
		elseif b.isRaid then
			return false;
		end
		if a.isBreadcrumb then
			if not b.isBreadcrumb then
				return true;
			end
		elseif b.isBreadcrumb then
			return false;
		end
		-- Any two similar-type groups with text
		sortA = toLowerString(a.text);
		sortB = toLowerString(b.text);
		if sortA == sortB and sortA then
			return calculateSourceQuestDepth(a, sortA) < calculateSourceQuestDepth(b, sortB);
		end
		return sortA < sortB;
	end,
	Accessibility = function(a, b)
		return calculateAccessibility(a) < calculateAccessibility(b);
	end,
	MapClassSortType = function(a, b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		if a.mapID or a.maps then
			if not (b.mapID or b.maps) then
				return true;
			end
		elseif b.mapID or b.maps then
			return false;
		end
		if a.isRaid then
			if not b.isRaid then
				return true;
			end
		elseif b.isRaid then
			return false;
		end
		if a.isBreadcrumb then
			if not b.isBreadcrumb then
				return true;
			end
		elseif b.isBreadcrumb then
			return false;
		end
		-- Any two similar-type groups with text
		a = toLowerString(a.text);
		b = toLowerString(b.text);
		return a < b;
	end,
	name = function(a,b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		-- SortPriority
		local acomp = a.SortPriority or 0
		local bcomp = b.SortPriority or 0
		if acomp ~= bcomp then
			return acomp < bcomp
		end
		-- Any two similar-type groups with text
		a = toLowerString(a.name);
		b = toLowerString(b.name);
		return a < b;
	end,
	text = function(a, b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		-- Any two similar-type groups with text
		a = toLowerString(a.text);
		b = toLowerString(b.text);
		return a < b;
	end,
	textAndLvl = function(a, b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		sortA = a.lvl or 0;
		sortB = b.lvl or 0;
		if sortA < sortB then
			return false;
		elseif sortA == sortB then
			-- Any two similar-type groups with text
			a = toLowerString(a.name or a.text);
			b = toLowerString(b.name or b.text);
			return a < b;
		else
			return true;
		end
	end,
	expansion = function(a, b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true
			end
		elseif b then
			return false
		else
			-- neither a or b exists, equality returns false
			return false
		end

		-- Compare by expansionID (lowest to highest)
		local aExp = a.expansionID or 0
		local bExp = b.expansionID or 0

		if aExp == bExp then
			-- fallback: alphabetical by name/text if same
			a = toLowerString(a.name or a.text)
			b = toLowerString(b.name or b.text)
			return a < b
		else
			return aExp < bExp
		end
	end,
	progress = function(a, b)
		-- If either object doesn't exist
		if a then
			if not b then
				return true;
			end
		elseif b then
			return false;
		else
			-- neither a or b exists, equality returns false
			return false;
		end
		-- SortPriority
		local acomp = a.SortPriority or 0
		local bcomp = b.SortPriority or 0
		if acomp ~= 0 or bcomp ~= 0 then
			return acomp < bcomp
		end
		-- progress value
		local acomp = GetGroupSortValue(a)
		local bcomp = GetGroupSortValue(b)
		if acomp ~= bcomp then
			return acomp > bcomp
		end
		-- identical progress, sort by name
		return app.SortDefaults.name(a,b);
	end,
	IndexOneStrings = function(a,b)
		return stringComparison(a[1], b[1]);
	end,
}, {
	__index = function(t, sortType)
		if type(sortType) == "function" then
			return sortType;
		end
		local method = function(a, b)
			-- If either object doesn't exist
			if a then
				if not b then
					return true;
				end
			elseif b then
				return false;
			else
				-- neither a or b exists, equality returns false
				return false;
			end
			return a[sortType] < b[sortType];
		end;
		rawset(t, sortType, method);
		return method;
	end,
});
local function Sort(t, compare, nested)
	if t then
		table_sort(t, compare);
		if nested then
			for i=#t,1,-1 do
				Sort(t[i].g, compare, nested);
			end
		end
	end
end
-- Safely-sorts a table using a provided comparison function and whether to propogate to nested groups
-- Wrapping in a pcall since sometimes the sorted values are able to change while being within the sort method. This causes the 'invalid sort order function' error
app.Sort = function(t, compare, nested)
	return pcall(Sort, t, compare or defaultComparison, nested);
end
-- Sorts a group using the provided sortType, whether to recurse through nested groups, and whether sorting should only take place given the group having a conditional field
local function SortGroup(group, sortType)
	-- app.PrintDebug("SortGroup", group.parent and group.parent.text, group.text, sortType);
	if group.g then
		-- either sort visible groups or by conditional
        if group.visible then
			-- app.PrintDebug("sorting",group.hash,"by",sortType)
			local status,err = app.Sort(group.g, app.SortDefaults[sortType]);
			if status then
				-- Setting this to false instead of nil causes the field to also
				-- ignore inherited settings, such as from its base class.
				if group.SortType and not group.PersistSortType then group.SortType = false; end
			else
				-- Uncomment this to debug errors in your sort functions
				-- app.PrintDebug("Error in sort", err);
			end
		end
	end
end
app.SortGroup = SortGroup;
