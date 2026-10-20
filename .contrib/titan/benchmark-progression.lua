-- Optional synthetic Lua 5.1 microbenchmark. This does not measure the WoW client or real data/cache sizes.
-- lua5.1 .contrib/titan/benchmark-progression.lua [repository-root] [iterations]
assert(_VERSION == "Lua 5.1");
local root = arg[1] or ".";
local iterations = tonumber(arg[2]) or 5000;
local f = assert(io.open(root .. "/tests/flavor-progression.lua", "rb"));
local source = f:read("*a"):gsub("\r\n", "\n"); f:close();
-- Reuse the fixture services while executing the real module/merge/clone/filter implementations.
local marker = assert(source:find("local app, raw = MakeApp(Profile", 1, true));
local makeApp, profile, item = assert(loadstring(source:sub(1, marker - 1) .. "\nreturn MakeApp,Profile,Item;"))();
local function Run(name, count, operation, app, expectedRoutes)
	collectgarbage("collect"); collectgarbage("collect");
	local before = collectgarbage("count");
	local start = os.clock();
	local last;
	for i=1,count do last = operation(i); end
	local elapsed = os.clock() - start;
	local peak = collectgarbage("count");
	if expectedRoutes then assert(app.Modules.Progression.GetMergedSourceCount(last) == expectedRoutes); end
	last = nil;
	collectgarbage("collect"); collectgarbage("collect");
	local after = collectgarbage("count");
	print(("%s,%d,%.6f,%.3f,%.2f,%.2f"):format(name, count, elapsed, elapsed * 1000000 / count, after - before, peak - before));
end
print("Lua 5.1 synthetic fixture; seconds are process CPU time; memory is Lua heap KiB.");
print("case,operations,seconds,microseconds_per_operation,retained_KiB_delta,ending_heap_KiB_delta");
for _,optIn in ipairs({ false, true }) do
	local app = makeApp(optIn and profile("titan", 6, 10) or nil);
	local label = optIn and "opt-in" or "legacy";
	Run(label .. " fresh two-source merge", iterations, function()
		return app.MergedObject({ item({ u = 2, releasePhases = optIn and { "titan:6" } or nil }),
			item({ e = 1, releasePhases = optIn and { "titan:7" } or nil }) }, true);
	end, app, optIn and 2 or 0);
	local cached = {};
	for i=1,32 do cached[i] = item({ u = i % 3 == 0 and 2 or nil, e = i % 2 + 1,
		releasePhases = optIn and { i % 2 == 0 and "titan:6" or "titan:7" } or nil }); end
	Run(label .. " cached 32-source merge", math.max(1, math.floor(iterations / 10)), function()
		return app.MergedObject(cached, true);
	end, app, optIn and 32 or 0);
	local merged = app.MergedObject(cached, true);
	Run(label .. " clone and duplicate source merge", iterations, function()
		local clone = app.CloneObject(merged); app.MergeProperties(clone, cached[1]); return clone;
	end, app, optIn and 32 or 0);
	Run(label .. " warmed clone duplicate merge", iterations, function()
		local clone = app.CloneObject(merged); app.MergeProperties(clone, cached[1]); return clone;
	end, app, optIn and 32 or 0);
	Run(label .. " merged availability filter", iterations * 5, function()
		return app.RecursiveUnobtainableFilter(merged);
	end, app);
end
