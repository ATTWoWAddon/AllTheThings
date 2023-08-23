
-- Sort lib
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for performing sort logic against sets of ATT groups

-- Global locals
local ipairs, pairs, tostring, type, string_lower, table_sort, pcall
	= ipairs, pairs, tostring, type, string.lower, table.sort, pcall;

-- App locals

-- Module locals

-- Sorting Logic
local calculateAccessibility = function(source)
	local score = 0;
	if source.nmr then
		score = score + 10;
	end
	if source.nmc then
		score = score + 10;
	end
	if source.e then
		score = score + 1;
	end
	if source.u then
		score = score + 1;
		if source.u < 3 then
			score = score + 100;
		elseif source.u < 4 then
			score = score + 10;
		else
			score = score + 1;
		end
	end
	return score;
end
local sortByAccessibility = function(a, b)
	return calculateAccessibility(a) <= calculateAccessibility(b);
end
local defaultComparison = function(a,b)
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
	-- Headers/Filters
	acomp = a.headerID or a.filterID;
	bcomp = b.headerID or b.filterID;
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
	acomp = string_lower(tostring(a.name));
	bcomp = string_lower(tostring(b.name));
	return acomp < bcomp;
end
local defaultTextComparison = function(a,b)
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
	a = string_lower(tostring(a));
	b = string_lower(tostring(b));
	return a < b;
end
local defaultNameComparison = function(a,b)
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
	a = string_lower(tostring(a.name));
	b = string_lower(tostring(b.name));
	return a < b;
end
local defaultValueComparison = function(a,b)
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
end
local defaultHierarchyComparison = function(a,b)
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
	acomp = a.g and #a.g or 0;
	bcomp = b.g and #b.g or 0;
	return acomp < bcomp;
end
local defaultTotalComparison = function(a,b)
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
end
local defaultEventStartComparison = function(a,b)
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
end
app.SortDefaults = {
	Accessibility = sortByAccessibility,
	Global = defaultComparison,
	Text = defaultTextComparison,
	Name = defaultNameComparison,
	Value = defaultValueComparison,
	-- Sorts objects first by whether they do not have sub-groups [.g] defined
	Hierarchy = defaultHierarchyComparison,
	-- Sorts objects first by how many total collectibles they contain
	Total = defaultTotalComparison,
	-- Sorts objects first by their nextEvent.Start
	EventStart = defaultEventStartComparison,
};
local function Sort(t, compare, nested)
	if t then
		if not compare then compare = defaultComparison; end
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
	pcall(Sort, t, compare, nested);
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
-- Sorts a group using the provided sortType, whether to recurse through nested groups, and whether sorting should only take place given the group having a conditional field
local function SortGroup(group, sortType, row, recur, conditionField)
	if group.g then
		-- either sort visible groups or by conditional
        if (not conditionField and group.visible) or (conditionField and group[conditionField]) then
			-- app.PrintDebug("sorting",group.key,group.key and group[group.key],"by",sortType,"recur",recur,"condition",conditionField)
			if sortType == "name" then
				app.Sort(group.g);
			elseif sortType == "progress" then
				local progA, progB;
				app.Sort(group.g, function(a, b)
					progA = GetGroupSortValue(a);
					progB = GetGroupSortValue(b);
					return progA > progB;
				end);
			else
				local sortA, sortB;
				local sortFunc = app.SortDefaults[sortType] or
					(sortType and function(a, b)
						sortA = a and tostring(a[sortType]);
						sortB = b and tostring(b[sortType]);
						return sortA < sortB;
					end) or nil;
				app.Sort(group.g, sortFunc);
			end
			-- since this group was sorted, clear any SortInfo which may have caused it
			group.SortInfo = nil;
		end
		-- TODO: Add more sort types?
		if recur then
			for _,o in ipairs(group.g) do
				SortGroup(o, sortType, nil, recur, conditionField);
			end
		end
	end
	if row then
		row:GetParent():GetParent():Update();
		app.print("Finished Sorting.");
	end
end
app.SortGroup = SortGroup;
-- Allows defining SortGroup data which is only executed when the group is actually expanded
app.SortGroupDelayed = function(group, sortType, row, recur, conditionField)
	-- app.PrintDebug("Delayed Sort defined for",group.text)
	group.SortInfo = { sortType, row, recur, conditionField };
end