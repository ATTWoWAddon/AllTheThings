
local _, app = ...;
local CreateObject = app.__CreateObject;

local api = {}
app.Modules.Test = api

app.Testraw = function(count)

	local a

	local t = {}

	local mt = { __index = { [1] = true } }
	local mtt = setmetatable({}, mt);

	local mtf = { __index = function(t, key) return key; end }
	local mttf = setmetatable({}, mtf);

	local mti = { __newindex = function(t,key,val) rawset(t,key,val); end }
	local mtti = setmetatable({}, mti);

	-- Items are likely the most complex of Lib types, though in practice they are all inherently 1 layer deep
	local o = CreateObject({itemID=203408});

	local function Benchmark(t, type)
		app.PrintDebug(type,"rawset")
		for i=1,count do
			rawset(t, i, true)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"[]<=")
		for i=1,count do
			t[i] = true
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"rawget")
		for i=1,count do
			a = rawget(t, i)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"<=[]")
		for i=1,count do
			a = t[i]
		end
		app.PrintDebugPrior("---")
	end

	app.PrintDebug("Test:Start",count)
	Benchmark(t, "raw")
	Benchmark(mtt, "__index-table")
	Benchmark(mttf, "__index-func")
	Benchmark(mtti, "__newindex")
	Benchmark(o, "Item Type")
	app.PrintDebug("Test:End")

end



app.Testwraps = function(count)

	local a

	-- Items are likely the most complex of Lib types, though in practice they are all inherently 1 layer deep
	local o = CreateObject({itemID=203408});
	local Wrap = app.CreateWrapHeader;
	local WrapFilter = app.CreateWrapFilterHeader;

	local function Benchmark(t, type)
		app.PrintDebug(type,"CreateObject")
		for i=1,count do
			a = CreateObject(t)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateObject.rootOnly")
		for i=1,count do
			a = CreateObject(t, true)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateWrapHeader")
		for i=1,count do
			a = Wrap(t)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateWrapFilterHeader")
		for i=1,count do
			a = WrapFilter(t)
		end
		app.PrintDebugPrior("---")
	end

	app.PrintDebug("Test:Start",count)
	Benchmark(o, "Item Type")
	app.PrintDebug("Test:End")

end


app.Testaccess = function(count)

	local t = {
		a = 1,
		b = 2,
		c = 3
	}
	local z

	local function DirectAccessx1()
		if t.a then
			return t.a
		end
	end
	local function LocalAccessx1()
		local a = t.a;
		if a then
			return a
		end
	end

	local function Benchmark()
		app.PrintDebug("DirectAccess",count)
		for i=1,count do
			z = DirectAccessx1()
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("LocalAccess",count)
		for i=1,count do
			z = LocalAccessx1()
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("local in loop",count)
		for i=1,count do
			local z = i
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("local before loop",count)
		local z
		for i=1,count do
			z = i
		end
		app.PrintDebugPrior("---")
	end

	Benchmark();

end


app.metacompare = function(count)

	local t = {
		a = 1,
		b = 2,
		c = 3
	}
	local m = setmetatable(t, { __index = function(t,key) return 0; end})
	local z

	local function Benchmark()

		-- 0.320742 @ 1M
		app.PrintDebug("Basic Access",count)
		for i=1,count do
			z = t[i]
		end
		app.PrintDebugPrior("---")
		-- 0.389216 @ 1M
		app.PrintDebug("Basic Access with fallback",count)
		for i=1,count do
			z = t[i] or 0
		end
		app.PrintDebugPrior("---")
		-- 0.335911 @ 1M
		app.PrintDebug("Meta Access",count)
		for i=1,count do
			z = m[i]
		end
		app.PrintDebugPrior("---")
	end

	Benchmark();

end


app.errors = function(msg)

	print("ATT Errors Test", msg)

	local function throw(msg)
		print("error",msg)
		error(msg)
	end

	local function throwroutine()
		local i = 0
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		throw("coroutine"..msg)
	end

	local runner1 = app.CreateRunner("error1")
	local runner2 = app.CreateRunner("error2")
	local UpdateRunner = app.CreateRunner("update")

	-- push function error
	app.Push("push"..msg, "test", throw)

	-- start coroutine error
	app.StartCoroutine("testroutine", throwroutine, 1)

	-- runner errors
	runner1.Run(throw, msg.."1")
	runner1.Run(throw, msg.."2")
	runner2.Run(throw, msg.."3")
	runner2.Run(throw, msg.."4")

	-- repeated test on consistent runner
	UpdateRunner.Run(throw, "update"..msg.."5")
	UpdateRunner.Run(throw, "update"..msg.."6")

end

function ATTarrayappend()

	local a,b,c,d,e

	local r
	app.PrintTable(r)

	local append = app.ArrayAppend

	app.PrintTable(append(r,a,b,c,d,e))

	e = {7,8,9}
	app.PrintTable(append(r,a,b,c,d,e))

	d = {5,6}
	c = {3,4}
	b = {2}
	a = {1}
	app.PrintTable(append(r,a,b,c,d,e))
end

function ATTinserts(count)
	count = count or 1000

	local a,b,c,d = {},{},{},{}

	app.PrintDebug("table.insert",count)
	-- 0.221352 @ 1M
	for i=1,count do
		table.insert(a,i)
	end
	app.PrintDebugPrior("---")

	local table_insert = table.insert
	app.PrintDebug("table_insert",count)
	-- 0.214889 @ 1M
	for i=1,count do
		table_insert(b,i)
	end
	app.PrintDebugPrior("---")

	local tinsert = tinsert
	app.PrintDebug("tinsert",count)
	-- 0.214733 @ 1M
	for i=1,count do
		tinsert(c,i)
	end
	app.PrintDebugPrior("---")

	local tinsert = tinsert
	app.PrintDebug("t[#t+1]",count)
	-- 0.087703 @ 1M
	for i=1,count do
		d[#d+1]=i
	end
	app.PrintDebugPrior("---")
end

function ATTfuncvsor(count)
	count = count or 1000

	local function hash(t)
		local a = t.hash
		if a then return a end
		a = app.CreateHash(t)
		return a
	end

	local o = app.__CreateObject(app.SearchForObject("questID", 8440))
	local p = {key="text",text="temp"}
	local temp

	app.PrintDebug("direct-only-object",count)
	-- 2.010676 @ 1M
	for i=1,count do
		temp = o.hash
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("func-only-object",count)
	-- 2.088579 @ 1M
	for i=1,count do
		temp = hash(o)
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct|func-object",count)
	-- 2.025655 @ 1M
	for i=1,count do
		temp = o.hash or hash(o)
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct-only-table",count)
	-- 0.029104 @ 1M
	for i=1,count do
		temp = p.hash
		p.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("func-only-table",count)
	-- 0.510414 @ 1M
	for i=1,count do
		temp = hash(p)
		p.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct|func-table",count)
	-- 0.527799 @ 1M
	for i=1,count do
		temp = p.hash or hash(p)
		p.hash = nil
	end
	app.PrintDebugPrior("---")

end


function ATTcoroutines(count)
	count = count or 1000


	local a,b = 1,1
	local aa,bb

	local cy = coroutine.yield

	local function fa()
		app.PrintDebug("fa",a,aa)
		a = a + 1
	end
	local function fb()
		app.PrintDebug("fb",b,bb)
		b = b + 1
	end


	local function ca()
		app.PrintDebug("ca")
		-- for i=1,count do
			fa()
		-- 	cy()
		-- end
		app.PrintDebug("ca:done")
		-- app.PrintMemoryUsage()
	end
	local function cb()
		app.PrintDebug("cb")
		-- for i=1,count do
			fb()
		-- 	cy()
		-- end
		app.PrintDebug("cb:done")
		-- app.PrintMemoryUsage()
	end


	local function cca()
		app.PrintDebug("cca")
		for i=1,count do
			app.PrintDebug("cca",i)
			aa = i
			app.StartCoroutine("ca",ca)
			-- app.PrintMemoryUsage()
			cy()
		end
		app.PrintDebug("cca:done")
		-- app.PrintMemoryUsage()
	end
	local function ccb()
		app.PrintDebug("ccb")
		for i=1,count do
			app.PrintDebug("ccb",i)
			bb = i
			app:StartATTCoroutine("cb",cb)
			-- app.PrintMemoryUsage()
			cy()
		end
		app.PrintDebug("ccb:done")
		-- app.PrintMemoryUsage()
	end

	app.PrintDebug("Test Coroutines")
	-- app.PrintMemoryUsage()

	app.StartCoroutine("cca",cca)
	-- app.PrintMemoryUsage()

	app:StartATTCoroutine("ccb",ccb)
	-- app.PrintMemoryUsage()

end

function ATTmetatest()


	local C_TransmogCollection_GetAllAppearanceSources,C_TransmogCollection_GetSourceInfo
		= C_TransmogCollection.GetAllAppearanceSources,C_TransmogCollection.GetSourceInfo
	local VisualIDSourceIDsCache = setmetatable({}, { __index = function(t, visualID)
		local sourceIDs = C_TransmogCollection_GetAllAppearanceSources(visualID)
		t[visualID] = sourceIDs
		return sourceIDs
	end})


	local temp, knownSource
	app.PrintDebug("API",app.MaxSourceID)
	-- 0.600820 @ 222939
	for i=1,app.MaxSourceID do
		knownSource = C_TransmogCollection_GetSourceInfo(i);
		if knownSource then
			temp = C_TransmogCollection_GetAllAppearanceSources(knownSource.visualID)
		end
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("meta-cache",app.MaxSourceID)
	-- 0.381800 @ 222939
	for i=1,app.MaxSourceID do
		knownSource = C_TransmogCollection_GetSourceInfo(i);
		if knownSource then
			temp = VisualIDSourceIDsCache[knownSource.visualID]
		end
	end
	app.PrintDebugPrior("---")

end

function ATTcheckawquests()

	local isaw = C_QuestLog.IsAccountQuest
	-- local load = app.RequestLoadQuestByID
	local dc = app.CallbackHandlers.DelayedCallback
	local aw, cur, step = {}, 1, 250
	local lim = step
	AllTheThingsHarvestItems.AccountWideQuestsDB = aw
	local awdb = app.AccountWideQuestsDB
	local function scan()
		for i=cur,lim do
			if not awdb[i] and isaw(i) then
				app.print("NEW AW-Quest!",i)
				aw[i] = true
			end
		end
		app.PrintDebug("scanned thru",lim)
		cur = lim + 1
		lim = lim + step
		if lim > 95000 then return end
		dc(scan, 1)
	end
	scan()
end


function ATTtestsort()

	local sort1 = app.SortDefaults.Global
	local sort2 = app.SortDefaults.Accessibility

	local rawdatasearch1 = app:BuildSearchResponse("u", 2)
	local rawdatasearch2 = app:BuildSearchResponse("u", 2)

	local function dosorts()
		app.PrintDebug("doSorts")
		coroutine.yield()
		app.PrintDebug("sort1")
		app.Sort(rawdatasearch1, sort1, true)
		app.PrintDebugPrior("sort1.done")
		coroutine.yield()
		app.PrintDebug("sort2")
		app.Sort(rawdatasearch2, sort2, true)
		app.PrintDebugPrior("sort2.done")
	end

	app.StartCoroutine("dosorts",dosorts)
end

function ATTclones(count)

	local tinsert,ipairs
		= tinsert,ipairs
	local function CloneArray_ipairs(arr)
		local clone = {};
		for i,value in ipairs(arr) do
			tinsert(clone, value);
		end
		return clone;
	end
	local function CloneArray_index(arr, clone)
		local clone = clone or {}
		for i=1,#arr do
			clone[#clone + 1] = arr[i]
		end
		return clone
	end

	local test = {}
	for i = 1, count, 1 do
		test[#test + 1] = i
	end

	app.PrintDebug("CloneArray_ipairs",count)
	-- 0.283 @ 1M
	local new = CloneArray_ipairs(test)
	app.PrintDebugPrior("---")

	app.PrintDebug("CloneArray_index",count)
	-- 0.101 @ 1M
	local new = CloneArray_index(test)
	app.PrintDebugPrior("---")
end

function ATTscripttimeout(source, immediatesec)
	app.print("Script Timeout test via",source,"@",immediatesec)
	local Success
	local function LongRun(sec)
		Success = nil
		app.print("waiting",sec,"s ... via",source)
		local done = GetTimePreciseSec() + (sec or 0)
		while GetTimePreciseSec() < done do
		end
		app.print("waited",sec,"s via",source)
		Success = true
	end

	if immediatesec then
		LongRun(tonumber(immediatesec))
		return
	end

	local Runner = app.CreateRunner("TestScriptTimeout")
	Runner.SetPerFrameDefault(1)
	local function VerifyPriorSuccess()
		if Success then
			app.print("Success!")
		else
			app.print("Script Timeout!")
		end
	end

	for i=0,5 do
		-- Runner.Run(LongRun, math.pow(2,i))
		Runner.Run(LongRun, 5)
		Runner.Run(VerifyPriorSuccess)
	end
end

-- ATTscripttimeout("immediate", 21)
-- app.AddEventHandler("OnLoad", ATTscripttimeout)
-- app.AddEventHandler("OnReady", ATTscripttimeout)

function DumpAllGlobals()
	local ks = {}
	for k, v in pairs(_G) do
		if type(v) == "string" then
			ks[#ks + 1] = ("%s = \"%s\""):format(k,v)
		end
	end

	local allkeys = table.concat(ks, "\n")
	app:ShowPopupDialogWithMultiLineEditBox(allkeys)
end

function ATTlooptypes(count)

	local ipairs = ipairs
	local pairs = pairs
	local z
	local t = {}
	for i=1,count do
		t[i] = i
	end

	local function Benchmark()
		-- 0.01164 @ 1M
		app.PrintDebug("for i=1,#t",count)
		for i=1,#t do
			z = t[i]
		end
		app.PrintDebugPrior("---")
		-- 0.13135 @ 1M
		app.PrintDebug("for i,v in ipairs(t)",count)
		for i,v in ipairs(t) do
			z = v
		end
		app.PrintDebugPrior("---")
		-- 0.11951 @ 1M
		app.PrintDebug("for k,v in pairs(t)",count)
		for k,v in pairs(t) do
			z = v
		end
		app.PrintDebugPrior("---")
	end

	Benchmark();
end

function attestimate_memory_usage(tbl)
	local seen = {}
	local recursiveKeys = {
		parent = true,
		sourceParent = true,
	}

	print("est. size for",tbl)
	local function get_size(val,indent,askey)
		-- if we've seen this object before, then assume it's just being referenced as a pointer
		if seen[val] then return 0 end

		seen[val] = true
		local t = type(val)
		if t == "number" then
			return 8  -- Approximate size of a number in bytes
		elseif t == "boolean" then
			return 1  -- Booleans take up minimal space
		elseif t == "string" then
			return #val + 24  -- Account for string overhead
		elseif t == "function" or t == "userdata" or t == "thread" then
			return askey or 32  -- Rough estimate for non-trivial types
		elseif t == "table" then
			if askey then
				return askey	-- Only count pointer size for table keys
			end
			local size = 40  -- Base table overhead
			local sub_size

			print(indent,val,"===")
			for k, v in pairs(val) do
				local key = tostring(k)
				sub_size = 4 + get_size(k,indent..key..".",8) + (recursiveKeys[val] and 4 or get_size(v,indent..key.."."))
				print(indent,k,v," : ",sub_size)
				size = size + sub_size
			end
			local mt = getmetatable(val)
			if mt then
				size = size + get_size(mt,indent.."__index.")  -- Include metatable size
			end
			return size
		else
			return 0  -- Unknown type, assume negligible
		end
	end

	print(get_size(tbl,""))
end


local PerfCaptures = {}
function app.CaptureForPerformance(name, func, paramGeneratorFunc)
	PerfCaptures[name] = { func, paramGeneratorFunc }
end

function app.RunPerformanceCaptures()

	local function Benchmark(count, func, ...)

		app.PrintMemoryUsage()
		app.PrintDebug("--Iterate:",count)
		for i=1,count do
			func(...)
		end
		app.PrintDebugPrior("---")
		app.PrintMemoryUsage()
	end

	local Runner = app.CreateRunner("__benchmark")

	for name,perfData in pairs(PerfCaptures) do
		Runner.Run(function()
			app.print("Benchmark:",name)
			Benchmark(1, perfData[1], perfData[2]())
		end)
		Runner.Run(function()
			app.print("Benchmark:",name)
			Benchmark(1000, perfData[1], perfData[2]())
		end)
		Runner.Run(function()
			app.print("Benchmark:",name)
			Benchmark(100000, perfData[1], perfData[2]())
		end)
	end

end