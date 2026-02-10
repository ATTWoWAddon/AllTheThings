-- Chat and Print functionality
local appName, app = ...;

local print, tostring, ipairs, pairs, type,math_floor
	= print, tostring, ipairs, pairs, type,math.floor

app.print = function(...)
	print(app.L.SHORTTITLE, ...);
end
app.report = function(...)
	if ... then
		app.print(...);
	end
	app.print(app.Version..": "..app.L.PLEASE_REPORT_MESSAGE);
end
app.PrintMemoryUsage = function(...)
	collectgarbage()
	UpdateAddOnMemoryUsage();
	app.print(... or "Memory", GetAddOnMemoryUsage(appName));
end
-- Consolidated debug-only print with preceding precise timestamp
local GetTimePreciseSec = GetTimePreciseSec;
local DEBUG_PRINT_LAST;
app.PrintDebug = function(...)
	DEBUG_PRINT_LAST = GetTimePreciseSec();
	if app.Debugging then print(DEBUG_PRINT_LAST,...) end
end
-- Consolidated debug-only print with precise frame duration since last successful print
app.PrintDebugPrior = function(...)
	if app.Debugging then
		local now = GetTimePreciseSec();
		if DEBUG_PRINT_LAST then
			local diff = now - DEBUG_PRINT_LAST
			print(now,"<>",math_floor(diff * 10000 / 10),"ms @", math.ceil(1 / diff),"FPS", ...)
		else
			print(now,0,...)
		end
		DEBUG_PRINT_LAST = GetTimePreciseSec();
	end
end
app.PrintGroup = function(group,depth)
	depth = depth or 0;
	if group then
		local p = "";
		for i=0,depth,1 do
			p = p .. "-";
		end
		p = p .. tostring(group.key or group.text) .. ":" .. tostring(group.keyval);
		print(p);
		if group.g then
			for i,sg in ipairs(group.g) do
				app.PrintGroup(sg,depth + 1);
			end
		end
	end
	print("---")
end
local SkipTableFields = {
	parent = 1,
	sourceParent = 1,
	__merge = 1,
	window = 1,
}
app.PrintTable = function(t,depth)
	-- only allowing table prints when Debug print is active
	if not app.Debugging then return; end
	if t == nil then print("nil"); return; end
	if type(t) ~= "table" then print(type(t),t); return; end
	depth = depth or 0;
	if depth == 0 then app._PrintTable = {}; end
	local p = "";
	for i=1,depth,1 do
		p = p .. "-";
	end
	-- dont accidentally recursively print the same table
	if not app._PrintTable[t] then
		app._PrintTable[t] = true;
		print(p,tostring(t),"__type",t.__type," {");
		for k,v in pairs(t) do
			if SkipTableFields[k] then
				print(p,k,":",tostring(v), "[SKIPPED]")
			elseif type(v) == "table" then
				if k == "g" then
					print(p,k,": #",v and #v)
				else
					print(p,k,":");
					app.PrintTable(v,depth + 1);
				end
			else
				print(p,k,":",tostring(v))
			end
		end
		if getmetatable(t) then
			print(p,"__index:");
			app.PrintTable(getmetatable(t).__index, depth + 1);
		end
		print(p,"}");
	else
		print(p,tostring(t),"RECURSIVE");
	end
end
