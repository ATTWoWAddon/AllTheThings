
-- Table Lib
local _, app = ...;

-- Dependencies

-- Concepts:
-- Encapsulates the functionality concerning consistent and complex operations on Lua Tables

-- Global locals
local ipairs, pairs, select, table_concat
	= ipairs, pairs, select, table.concat;

-- App locals

-- Module locals
app.contains = function(arr, value)
	local count = #arr;
	for i=1,count,1 do
		if arr[i] == value then return true; end
	end
end
app.containsAny = function(arr, arr2)
	local count, otherCount = #arr, #arr2;
	for i=1,count,1 do
		local a = arr[i];
		for j=1,otherCount,1 do
			if a == arr2[j] then return true; end
		end
	end
end
app.containsValue = function(dict, value)
	for _,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
app.containsAnyKey = function(dict, arr)
	local count = #arr
	local k
	for j=1,count do
		k = arr[j]
		if dict[k] ~= nil then return k end
	end
end
app.indexOf = function(arr, value)
	local count = #arr;
	for i=1,count,1 do
		if arr[i] == value then return i; end
	end
end
-- Simply wipes the array portion of a table
-- NOTE: compared to base wipe() this is giga-fast
app.wipearray = function(t)
	for i=1,#t do t[i] = nil end
end
-- Performs table.concat(tbl, sep, i, j) on the given table, but uses the specified field of table values if provided,
-- with a default fallback value if the field does not exist on the table entry
app.TableConcat = function(tbl, field, def, sep, i, j)
	if tbl then
		sep = sep or ""
		if field then
			local tblvals = {};
			for i=1,#tbl do
				tblvals[#tblvals + 1] = tbl[i][field] or def
			end
			return table_concat(tblvals, sep, i, j);
		else
			return table_concat(tbl, sep, i, j);
		end
	end
	return "";
end
-- Concats all the key/value pairs in the table into a string
app.StringifyTable = function(tbl, sep)
	if tbl then
		local tostring = tostring
		sep = sep or ""
		local tblvals = {};
		for k,v in pairs(tbl) do
			tblvals[#tblvals + 1] = k..":"..tostring(tbl[k])
		end
		return table_concat(tblvals, sep)
	end
	return "";
end
-- Allows efficiently appending the content of multiple arrays (in sequence) onto the end of the provided array, or new empty array
app.ArrayAppend = function(a1, ...)
	local arrs = select("#", ...);
	if arrs > 0 then
		a1 = a1 or {};
		local a
		for n=1,arrs do
			a = select(n, ...);
			if a then
				for ai=1,#a do
					a1[#a1 + 1] = a[ai];
				end
			end
		end
	end
	return a1;
end
-- Allows for returning a reversed array. Will do nothing for un-ordered tables or tables with a single entry
app.ReverseOrder = function(a)
	if a and a[1] and a[2] then
		local b, n, j = {}, #a, 1;
		for i=n,1,-1 do
			b[j] = a[i];
			j = j + 1;
		end
		return b;
	end
	return a;
end
-- Returns true if the two tables have any difference in assigned keys
app.TableKeyDiff = function(a,b)
	if not a then
		if b then return true end
		return
	elseif not b then
		if a then return true end
		return
	end
    -- Check keys in a that are missing in b
    for k in pairs(a) do
        if not b[k] then
            return true
        end
    end

    -- Check keys in b that are missing in a
    for k in pairs(b) do
        if not a[k] then
            return true
        end
    end
end
