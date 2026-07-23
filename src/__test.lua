
local _, app = ...;
local CreateObject = app.__CreateObject;

local api = {}
app.Modules.Test = api

local Runner = app.CreateRunner("TestRunner")

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

	local rawdatasearch1 = app:BuildSearchResponseRetailStyle("u", 2)
	local rawdatasearch2 = app:BuildSearchResponseRetailStyle("u", 2)

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
	local GetTimePreciseSec=GetTimePreciseSec
	local Success,StartWait
	local function PrintWait(sec)
		app.print("waiting",sec,"s ... via",source)
	end
	local function LongRun(sec)
		Success = nil
		StartWait = GetTimePreciseSec()
		local done = StartWait + (sec or 0)
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

	local test = true
	local min,max = 0,60
	local time = max
	local function VerifyPriorSuccess(sec)
		local change
		if Success then
			app.print("Success!",sec)
			min = math.max(min,time)
			change = (max - min) / 2
			time = min + change
		else
			app.print("Script Timeout!",sec)
			max = GetTimePreciseSec() - StartWait
			change = (max - min) / 2
			time = max - change
		end
		if change < (max / 100) then
			test = nil
		end
	end
	local function FinalTimeouts()
		app.print("Longest Success",min)
		app.print("Shortest Timeout",max)
	end
	local function TryNextTime()
		if test then
			Runner.Run(PrintWait, time)
			Runner.Run(LongRun, time)
			Runner.Run(VerifyPriorSuccess, time)
			Runner.Run(TryNextTime)
		else
			Runner.Run(FinalTimeouts)
		end
	end
	Runner.Run(TryNextTime)
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

	local ipairs,next,pairs
		= ipairs,next,pairs
	local z
	local a = {}
	for i=1,count do
		a[i] = i
	end
	local function fillRandomKeys(t, count)
		local c = 0
		while c < count do
			local key
			if math.random() < 0.5 then
				key = math.random(1, 1e9)                -- numeric key
			else
				key = string.char(
					math.random(97,122),
					math.random(97,122),
					math.random(97,122)
				)                                        -- 3‑letter string key
			end
			if not t[key] then
				c = c + 1
				t[key] = true
			end
		end
		return t
	end
	local t = fillRandomKeys({}, count)

	local function Benchmark(t, ty)
		app.PrintDebug("Benchmark",ty)
		-- 13,14,13ms @ 1M Array
		-- N/A Table
		app.PrintDebug("for i=1,#t",count)
		for i=1,#t do
			z = t[i]
		end
		app.PrintDebugPrior("---")
		-- 79,80,82ms @ 1M Array
		-- N/A Table
		app.PrintDebug("for i,v in ipairs(t)",count)
		for i,v in ipairs(t) do
			z = v
		end
		app.PrintDebugPrior("---")
		-- 79,83,80ms @ 1M Array
		-- 152,145,144ms @ 1M Table
		app.PrintDebug("for k,v in pairs(t)",count)
		for k,v in pairs(t) do
			z = v
		end
		app.PrintDebugPrior("---")
		-- 87,81,80ms @ 1M Array
		-- 157,149,142ms @ 1M Table
		app.PrintDebug("for k,v in next(t)",count)
		for k,v in next,t do
			z = v
		end
		app.PrintDebugPrior("---")
	end

	Runner.Run(Benchmark, a, "Array")
	Runner.Run(Benchmark, t, "Table")
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


do	-- app.ArrayAppendDistinct
function Test_ArrayAppendDistinct()

    local function assertEqual(desc, actual, expected)
        if actual ~= expected then
            print("FAIL:", desc, "Expected:", expected, "Got:", actual)
        else
            print("PASS:", desc)
        end
    end

    local function assertTable(desc, t, expected)
        if #t ~= #expected then
            print("FAIL:", desc, "Length mismatch. Expected:", #expected, "Got:", #t)
            return
        end
        for i=1,#t do
            if t[i] ~= expected[i] then
                print("FAIL:", desc, "Mismatch at index", i, "Expected:", expected[i], "Got:", t[i])
                return
            end
        end
        print("PASS:", desc)
    end

    print("Running ArrayAppendDistinct Tests...\n")

    -- Test 1: Small array, no duplicates
    local a1 = {1,2,3}
    local a2 = {4,5}
    local r = app.ArrayAppendDistinct(a1, a2)
    assertTable("Test 1", r, {1,2,3,4,5})

    -- Test 2: Small array, with duplicates
    a1 = {1,2,3}
    a2 = {2,3,4}
    r = app.ArrayAppendDistinct(a1, a2)
    assertTable("Test 2", r, {1,2,3,4})

    -- Test 3: Large array triggers hash path
    a1 = {}
    for i=1,250 do a1[i] = i end
    a2 = {100,200,300,400}
    r = app.ArrayAppendDistinct(a1, a2)
    assertEqual("Test 3 size", #r, 252)

    -- Test 4: Multiple input arrays
    a1 = {1,2}
    a2 = {2,3}
    local a3 = {3,4}
    local a4 = {4,5}
    r = app.ArrayAppendDistinct(a1, a2, a3, a4)
    assertTable("Test 4", r, {1,2,3,4,5})

    -- Test 5: Nil initial array
    r = app.ArrayAppendDistinct(nil, {1,2}, {2,3})
    assertTable("Test 5", r, {1,2,3})

    -- Test 6: Nil/empty arrays
    a1 = {1,2}
    a2 = {}
    a3 = nil
    a4 = {2,3}
    r = app.ArrayAppendDistinct(a1, a2, a3, a4)
    assertTable("Test 6", r, {1,2,3})

    -- Test 7: Table identity
    local t1 = {x=1}
    local t2 = {x=1}
    local t3 = t1
    a1 = {t1}
    a2 = {t2, t3}
    r = app.ArrayAppendDistinct(a1, a2)
    assertEqual("Test 7 count", #r, 2)

    -- Test 8: Stress test
    a1 = {}
    for i=1,500 do a1[i] = i end
    a2 = {}
    for i=400,600 do a2[#a2+1] = i end
    r = app.ArrayAppendDistinct(a1, a2)
    assertEqual("Test 8 size", #r, 600)

    -- Test 9: Multiple large arrays
    a1 = {}
    for i=1,300 do a1[i] = i end
    a2 = {}
    for i=250,350 do a2[#a2+1] = i end
    a3 = {}
    for i=340,360 do a3[#a3+1] = i end
    r = app.ArrayAppendDistinct(a1, a2, a3)
    assertEqual("Test 9 size", #r, 360)

    -- Test 10: Return same table
    a1 = {1,2,3}
    r = app.ArrayAppendDistinct(a1, {4})
    assertEqual("Test 10 same table", r == a1, true)

    print("\nAll tests completed.")
end


end
