
local _, app = ...;

-- Contains debugging logic for wrapping functionality with a performance monitor
-- Add to TOC prior to src/base.lua

local unpack, GetTimePreciseSec, pairs, type
	= unpack, GetTimePreciseSec, pairs, type
local tinsert, table_concat, rawset, setmetatable
	= tinsert, table.concat, rawset, setmetatable;

-- app.__perf[Key][Tracker(Count,Time)]
local keyMeta = {
	__index = function(t, key)
		local scopeKey = { count = 0, time = 0};
		rawset(t, key, scopeKey);
		return scopeKey;
	end,
};
local performance = setmetatable({}, {
	__index = function(t, scopeName)
		local scope = setmetatable({__name=scopeName}, keyMeta);
		rawset(t, scopeName, scope);
		return scope;
	end,
});
app.__perf = performance;

app.PrintPerf = function()
	local blob, line = {}, {};
	for typeKey,typeData in pairs(performance) do
		if type(typeData) == "table" then
			for k,v in pairs(typeData) do
				if type(v) == "table" then
					line[1] = typeKey;
					line[2] = k;
					line[3] = v.count;
					line[4] = v.time;
					tinsert(blob, table_concat(line, ","))
				-- else print("Why is this a",type(v),typeKey,k,v)
				end
			end
		end
	end
	local csv = table_concat(blob, "\n");
	app:ShowPopupDialogWithMultiLineEditBox(csv);
end
app.ClearPerf = function()
	for _,typeData in pairs(performance) do
		wipe(typeData);
	end
	app.print("Cleared Performance Stats");
end

local function perf_replace(source, key)
	local func = source[key]
	if type(func) ~= "function" or type(key) ~= "string" then return end
	local perf = source.__perfscope
	if not perf then
		print("failed perf replace",key)
		return
	end
	-- replace each function with itself wrapped in a perf update
	-- origFunctions[key] = func;4
	-- app.PrintDebug("Perf:",perf.__name,key)

	-- Perf capture of func calls
	local typePerf = perf[key];
	source[key] = function(...)
		local now = GetTimePreciseSec();
		local res = {func(...)};
		typePerf.time = typePerf.time + (GetTimePreciseSec() - now);
		typePerf.count = typePerf.count + 1;
		return unpack(res);
	end

	-- Simple print of func calls
	-- app[key] = function(...)
	-- 	app.PrintDebug("app.",key)
	-- 	return func(...)
	-- end

end

local function CaptureTable(table, scope)
	local perf = scope and performance[scope] or table.__perfscope
	-- if the host table has a __index providing a default
	if not perf or type(perf) ~= "table" then
		perf = performance[tostring(table)]
	end
	table.__perfscope = perf
	for key,func in pairs(table) do
		perf_replace(table, key)
	end
	return table;
end

local function AutoCaptureTable(t)
	-- setup the captured table for auto-tacking
	local mt = getmetatable(t)
	if mt and mt.__newindex then
		print("can't performance wrap",t.__perfscope.__name)
	elseif mt then
		-- print("added mt __newindex",t.__perfscope.__name)
		mt.__newindex = performance.MetaCapture.__newindex
	else
		t = setmetatable(t, performance.MetaCapture)
	end
end

-- Replaces all functions in the provided table with performance capture functions of those functions
performance.CaptureTable = CaptureTable
-- performance.CaptureModules = function()
-- 	for name,module in pairs(app.Modules) do
-- 		CaptureTable("Module."..name, module)
-- 	end
-- end

performance.MetaCapture = {
	-- when tracking performance, assignment of a new value into the table should automatically wrap all
	-- the function so that the performance wrap versions are used afterwards when referenced
	__newindex = function(t, key, val)
		if type(val) == "table" and type(key) == "string" then
			local pt = CaptureTable(val, key)
			rawset(t, key, pt)
			AutoCaptureTable(pt)
		else
			rawset(t, key, val)
			perf_replace(t, key)
		end
	end,
}