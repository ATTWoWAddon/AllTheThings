-- Run from the repository root: lua tests/ProfilerModules.lua
-- Execute actual ATT function bodies and load-time hooks with deterministic dependencies.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))()
local Compile = loadstring or load
local now, clockReads = 100, 0
GetTimePreciseSec = function() clockReads = clockReads + 1; now = now + 0.001; return now end
C_Timer = { After = function() end }
C_AddOnProfiler, Enum = nil, nil
time = function() return 1000 end
wipe = function(t) for key in pairs(t) do t[key] = nil end return t end

---Create a normal addon namespace or explicitly install the optional test tracker.
---@param enabled boolean True to load the original optional tracker with its capture extensions.
---@return table app Isolated ATT dependency namespace used by one module fixture.
local function NewApp(enabled)
  local app = { print = function() end, AddEventHandler = function() end }
  if enabled then
    Fixture.LoadEnabled(app)
    assert(app.__perf and app.Profiler == nil and app.ProfilerJobs == nil and app.ProfilerHooks == nil)
  end
  return app
end

---Read actual production source between two literal markers.
---@param path string Repository-relative production Lua source path.
---@param first string Unique literal marker at the beginning of the requested span.
---@param after string Literal marker following the requested span.
---@return string source Production source including first and excluding after.
local function SourceSpan(path, first, after)
  local file = assert(io.open(path, "rb"))
  local source = file:read("*a"):gsub("\r\n", "\n")
  file:close()
  local at = assert(source:find(first, 1, true), first)
  local finish = assert(source:find(after, at + #first, true), after)
  return source:sub(at, finish - 1)
end

---Require a literal metric or message in a captured report.
---@param report string Capture report to inspect.
---@param text string Required literal report fragment.
local function Contains(report, text)
  assert(report:find(text, 1, true), "missing " .. text .. "\n" .. report)
end

---Reject a metric that should be gated out of the report.
---@param report string Capture report to inspect.
---@param text string Forbidden literal report fragment.
local function Absent(report, text)
  assert(not report:find(text, 1, true), "unexpected " .. text .. "\n" .. report)
end

---Find an explicit capture declaration on its original cumulative scope/key metric.
---@param app table Namespace containing the enabled original tracker.
---@param id string Stable capture ID declared by an actual production hook.
---@return table metric Original scope/key entry retaining cumulative count/time.
local function Metric(app, id)
  for _, scope in pairs(app.__perf) do
    if type(scope) == "table" and rawget(scope, "__scope") then
      for _, metric in pairs(scope) do
        if type(metric) == "table" and rawget(metric, "id") == id then return metric end
      end
    end
  end
  error("missing original metric declaration: " .. id)
end

---Exercise collection exports and verify the queued handler uses the rebound hot local.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckCollection(enabled)
  local app, handlers, jobs = NewApp(enabled), {}, {}
  local collectionEvents = 0
  local group = { text = "Item", collectible = true, __type = "Item", key = "itemID", itemID = 123, keyval = 123, spellID = 321, CACHEDKEY = "spellID", CACHE = "Sources" }
  app.L = {}
  app.Modules = { RetrievingData = { IsRetrieving = function() return false end } }
  app.Audio = { PlayMountFanfare = function() end, PlayFanfare = function() end }
  app.CallbackHandlers = { Callback = function() end }
  app.CreateRunner = function() return { Run = function(callback, ...) jobs[#jobs + 1] = { callback, ... } end } end
  app.AddEventHandler = function(event, callback) handlers[event] = callback end
  app.HandleEvent = function(event) if event == "OnThingCollected" then collectionEvents = collectionEvents + 1 end end
  app.UpdateRawID, app.PrintDebug = function() end, function() end
  app.GetRelativeField = function(value, field) return value[field] end
  app.SearchLink = function(_, value) return value.text end
  app.SearchForObject = function() return group end
  app.Settings = { AccountWide = {}, GetTooltipSetting = function() return false end }
  assert(loadfile("src/Modules/Collection.lua"))("AllTheThings", app)
  handlers.OnLoad()
  local character, account = { Sources = {}, TimeStamps = {} }, { Sources = {} }
  handlers.OnSavedVariablesAvailable(character, account)
  if enabled then assert(app.__perf.Start(30, 3)) end
  assert(app.SetBatchCached("Sources", { [1] = true }, 1) == nil)
  local changes = {}
  assert(app.SetBatchCachedAndTrackChanges("Sources", { [1] = true, [2] = true }, changes, 1))
  assert(#changes == 1 and changes[1] == 2)
  assert(app.SetBatchCachedAndTrackChanges("Sources", { [1] = true }, changes, 1) == nil)
  app.SetBatchAccountCached("Sources", { [3] = true }, 1)
  assert(account.Sources[3] == 1)
  assert(app.SetThingCollected("itemID", 123, false, true) == 1)
  assert(character.Sources[321] == 1 and account.Sources[321] == 2 and #jobs == 1)
  assert(character.Sources[123] == nil and account.Sources[123] == nil)
  assert(jobs[1][1](jobs[1][2], jobs[1][3]) == nil)
  if enabled then
    Contains(app.__perf.Report(), "collection.apply\t1")
    Contains(app.__perf.Report(), "collection.change\t1")
  end
  assert(collectionEvents == 1)
  group._hqt = true
  assert(jobs[1][1](jobs[1][2], jobs[1][3]) == nil and collectionEvents == 1)
end

---Exercise cache searches and a converter registered after the initial table capture.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckCache(enabled)
  local app = NewApp(enabled)
  local one, two = { id = 1 }, { id = 2 }
  app.ArrayAppend = function(dest, values) for _, value in ipairs(values) do dest[#dest + 1] = value end end
  app.testCaches = { a = { itemID = { [1] = { one }, [2] = {} } }, b = { itemID = { [1] = {}, [2] = { two } } } }
  local code = "local app = ...\nlocal AllCaches, ArrayAppend = app.testCaches, app.ArrayAppend\n"
    .. SourceSpan("src/Cache.lua", "app.SearchForFieldInAllCaches =", "app.CreateDataCache =")
  assert(Compile(code, "@src/Cache.lua search hooks"))(app)
  if enabled then assert(app.__perf.Start(30, 3)) end
  local found = app.SearchForFieldInAllCaches("itemID", 1)
  assert(#found == 1 and found[1] == one)
  found = app.SearchForManyInAllCaches("itemID", { 1, 2 })
  assert(#found == 2 and ((found[1] == one and found[2] == two) or (found[1] == two and found[2] == one)))
  local indexed = {}
  app.index = function(group, field, value) indexed[#indexed + 1] = { group, field, value } end
  local converterCode = "local app = ...\nlocal CacheField, fieldConverters = app.index, {}\n"
    .. SourceSpan("src/Cache.lua", "app.AddGenericFieldConverter =", "local allowMapCaching")
    .. SourceSpan("src/Cache.lua", "-- Performance Tracking for Caching", "setmetatable(fieldConverters,")
    .. "return fieldConverters\n"
  local converters = assert(Compile(converterCode, "@src/Cache.lua late converter hook"))(app)
  converters.testField = false -- Simulate an earlier miss before the converter was registered.
  app.AddGenericFieldConverter("testField")
  assert(converters.testField(one, 99) == nil)
  assert(#indexed == 1 and indexed[1][1] == one and indexed[1][2] == "testField" and indexed[1][3] == 99)
  if enabled then
    Contains(app.__perf.Report(), "cache.search.single\t1")
    Contains(app.__perf.Report(), "cache.search.many\t1")
    Contains(app.__perf.Report(), "CacheFields.testField\t1")
    local metric = Metric(app, "CacheFields.testField")
    assert(metric.count == 1 and type(metric.time) == "number")
    assert(type(metric.capture) == "table" and type(metric.capture.sessionID) == "number")
    local generation, wrapper = metric.capture.sessionID, converters.testField
    assert(app.__perf.CaptureFunction(wrapper, "testField", "CacheFields", { module = "cache", minLevel = 3 }) == wrapper)
    assert(Metric(app, "CacheFields.testField") == metric, "rehooking created a separate metric")
    assert(app.__perf.Start(30, 3))
    assert(converters.testField(one, 100) == nil and metric.count == 2)
    assert(metric.capture.sessionID ~= generation, "new capture reused the previous generation")
    Contains(app.__perf.Report(), "CacheFields.testField\t1")
  end
end

---Exercise source sweeps through load-time boundary and selected API alias rebindings.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckTransmog(enabled)
  local app = NewApp(enabled)
  local ownershipCalls, infoCalls, expanded = 0, 0, 0
  app.MaxSourceID, app.Class, app.Presets = 6, "Hunter", { Hunter = {} }
  app.Settings = { Get = function() return false end }
  app.ItemSourceFilter = function(info) return info and info.allowed end
  app.testSources, app.testUnique = {}, {}
  app.Ownership = function(id) ownershipCalls = ownershipCalls + 1; return id % 2 == 1 end
  app.Info = function(id) infoCalls = infoCalls + 1; return { sourceID = id, allowed = true } end
  app.Mark = function() expanded = expanded + 1 end
  ATTAccountWideData = { BrokenUniqueSources = { [2] = true, [3] = true } }
  local code = [[local app = ...
local AccountSources, AccountUniqueSources = app.testSources, app.testUnique
local C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance, C_TransmogCollection_GetSourceInfo = app.Ownership, app.Info
local MarkUniqueCollectedSourcesBySource = app.Mark
local function AccountUniqueSources_ADD(id) AccountUniqueSources[id] = true end
]]
    .. SourceSpan("src/Classes/Transmog.lua", "if app.__perf then", "local C_TooltipInfo_GetItemByItemModifiedAppearanceID")
    .. SourceSpan("src/Classes/Transmog.lua", "local function CollectUniqueAppearances()", "-- These events are technically")
    .. "return RefreshAppearanceSources, CollectUniqueAppearances\n"
  local refresh, unique = assert(Compile(code, "@src/Classes/Transmog.lua source hooks"))(app)
  if enabled then assert(app.__perf.Start(30, 1)) end
  refresh(); unique()
  assert(ownershipCalls == 6 and expanded == 3 and infoCalls == 1)
  assert(app.testSources[1] == 1 and app.testSources[2] == nil and app.testUnique[2])
  if enabled then
    local report = app.__perf.Report()
    Contains(report, "transmog.sources.scan\t1")
    Contains(report, "transmog.unique.collect\t1")
    Absent(report, "transmog.unique.expand\t")
    Absent(report, "transmog.api.known\t")
    assert(app.__perf.Start(30, 3))
    refresh(); unique()
    Contains(app.__perf.Report(), "transmog.unique.expand\t3")
    assert(app.__perf.Start(30, 6, { include = "transmog", sampleEvery = 2 }))
    local oldCalls = ownershipCalls
    refresh()
    assert(ownershipCalls - oldCalls == 6)
    Contains(app.__perf.Report(), "transmog.api.known\t3")
    assert(app.__perf.Start(30, 6, { include = "search", sampleEvery = 1 }))
    refresh(); unique()
    report = app.__perf.Report()
    Contains(report, "transmog.sources.scan\t1")
    Absent(report, "transmog.api.known\t")
    Absent(report, "transmog.unique.expand\t")
  end
end

---Verify cost refresh scheduling, assignment results, and pre-captured hot references.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckCosts(enabled)
  local app = NewApp(enabled)
  local one, two = {}, {}
  local queued, onEnd, resets, filters, itemQueries = {}, nil, 0, 0, 0
  local costFields = { itemIDAsCost = { [123] = { one, two }, [124] = { one } }, currencyIDAsCost = { [42] = { two } }, spellIDAsCost = { [99] = { one } } }
  app.Settings = { GetTooltipSetting = function() return false end }
  app._SettingsRefresh = true
  app.GetFieldContainer = function(field) return costFields[field] end
  app.runner = {
    Reset = function() queued = {}; resets = resets + 1 end,
    OnEnd = function(callback) onEnd = callback end,
    Run = function(callback, id, refresh, chainUpdate, refs)
      queued[#queued + 1] = { callback = callback, id = id, refresh = refresh, chainUpdate = chainUpdate, refs = refs }
    end,
  }
  local dispatched = { item = 0, currency = 0, spell = 0 }
  app.item = function(id) assert(id == 123 or id == 124); dispatched.item = dispatched.item + 1 end
  app.currency = function(id) assert(id == 42); dispatched.currency = dispatched.currency + 1 end
  app.spell = function(id) assert(id == 99); dispatched.spell = dispatched.spell + 1 end
  app.start, app.complete, app.filters = function() end, function() end, function() filters = filters + 1 end
  app.GetItemCount = function(id, bank, uses, reagent, warband)
    assert(id == 123 and bank == true and uses == nil and reagent == true and warband == true)
    itemQueries = itemQueries + 1; return 7
  end
  app.totals, app.currencyAmounts = { i = { [123] = 5 }, ip = {}, c = { [42] = 5 }, sp = { [99] = true } }, { [42] = 3 }
  local assigned = {}
  app.assign = function(groups, isCost, refresh, id, owned, chainUpdate)
    assigned[#assigned + 1] = { groups = groups, isCost = isCost, refresh = refresh, id = id, owned = owned, chainUpdate = chainUpdate }
  end
  local code = [[local app = ...
local GetItemCount, GetCurrencyInfo = app.GetItemCount, function() end
]]
    .. SourceSpan("src/Modules/Costs.lua", "if app.__perf then", "-- App locals")
    .. SourceSpan("src/Modules/Costs.lua", "if app.__perf then\n\tGetItemCount", "local IsSpellKnownHelper")
    .. [[
local CostTotals, CurrencyAmounts, SetCostTotals = app.totals, app.currencyAmounts, app.assign
local UpdateRunner = app.runner
local UpdateCostsByItemID, UpdateCostsByCurrencyID, UpdateCostsBySpellID = app.item, app.currency, app.spell
local CostCalcStart, CostCalcComplete, CacheFilters = app.start, app.complete, app.filters
local DoCollectibleCheckForItemRef, DoCollectibleCheckForCurrRef, DoCollectibleCheckForSpellRef = function() end, function() end, function() end
local function PlayerIsMissingProviderSpell() return true end
]]
    .. SourceSpan("src/Modules/Costs.lua", "local function FinishCostAssignmentsForItem", "local UpdateCostGroup")
    .. SourceSpan("src/Modules/Costs.lua", "local function UpdateCosts()", "local UpdateCostTypeFunc")
    .. "return UpdateCosts, FinishCostAssignmentsForItem, FinishCostAssignmentsForCurr, FinishCostAssignmentsForSpell\n"
  local queue, assignItem, assignCurrency, assignSpell = assert(Compile(code, "@src/Modules/Costs.lua queue/assign hooks"))(app)
  if enabled then assert(app.__perf.Start(30, 3)) end
  queue()
  assert(resets == 1 and filters == 1 and #queued == 5 and queued[1].callback == app.start and onEnd == app.complete)
  local found = {}
  for index = 2, #queued do
    local job = queued[index]
    assert(job.refresh == true and job.chainUpdate == false)
    if job.id == 123 or job.id == 124 then assert(job.refs == costFields.itemIDAsCost[job.id])
    elseif job.id == 42 then assert(job.refs == costFields.currencyIDAsCost[job.id])
    elseif job.id == 99 then assert(job.refs == costFields.spellIDAsCost[job.id])
    else error("unexpected cost job") end
    found[job.id] = true
    assert(job.callback(job.id, job.refresh, job.chainUpdate, job.refs) == nil)
  end
  assert(dispatched.item == 2 and dispatched.currency == 1 and dispatched.spell == 1)
  assert(found[123] and found[124] and found[42] and found[99])
  assert(assignItem(123, { one, two }, true, true) == nil)
  assert(assignCurrency(42, { two }, true, false) == nil)
  assert(assignSpell(99, { one }, true) == nil)
  assert(#assigned == 3 and assigned[1].id == 123 and assigned[1].isCost == true and assigned[1].owned == true)
  assert(assigned[1].chainUpdate == true)
  assert(assigned[2].id == 42 and assigned[2].isCost == true and assigned[2].owned == nil and assigned[2].chainUpdate == false)
  assert(assigned[3].id == 99 and assigned[3].isCost == true and assigned[3].owned == nil)
  for _, result in ipairs(assigned) do assert(result.refresh == true) end
  if enabled then
    local report = app.__perf.Report()
    Contains(report, "costs.queue.refresh\t1")
    Contains(report, "costs.assign.item\t1")
    Contains(report, "costs.assign.currency\t1")
    Contains(report, "costs.assign.spell\t1")
    Absent(report, "costs.api.itemcount\t")
    assert(app.__perf.Start(30, 6, { include = "costs", sampleEvery = 1 }))
    assignItem(123, { one }, true)
    Contains(app.__perf.Report(), "costs.api.itemcount\t1")
    assert(itemQueries == 2)
  end
end

---Exercise actual search orchestration with rebound clone/cache/filter helpers.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckSearch(enabled)
  local app = NewApp(enabled)
  local one, two = {}, {}
  local root, recursiveCalls, cachedCalls = { g = { one, two } }, 0, 0
  app.GetDatabaseRoot = function() return root end
  app.GetRawFieldContainer = function() return { [42] = { one, two } } end
  app.PrintDebug, app.ReturnTrue = function() end, function() return true end
  app.recursive, app.cached = function() recursiveCalls = recursiveCalls + 1 end, function() cachedCalls = cachedCalls + 1 end
  local code = [[local app = ...
local MainRoot, ClonedHierarchyGroups
local ClonedHierarachyMapping, SearchGroups, DropFields = {}, {}, {}
local api = { SearchNil = {} }
local Eval_RecursiveFilterCriteria = app.ReturnTrue
local function SetRescursiveFilters() end
local function ResetCriterias() Eval_RecursiveFilterCriteria = app.filter or app.ReturnTrue end
local function BuildClonedHierarchy(groups) for _, group in ipairs(groups) do ClonedHierarchyGroups[#ClonedHierarchyGroups + 1] = group end end
local function RunRecursiveFilterCriteria(groups) table.remove(groups) end
local function BuildSearchResponseViaCacheContainer(container, value) app.cached(); BuildClonedHierarchy(container[value]) end
local function AddSearchGroupsByFieldValue(groups) app.recursive(); for _, group in ipairs(groups) do SearchGroups[#SearchGroups + 1] = group end end
local AddSearchGroupsByField = AddSearchGroupsByFieldValue
]]
    .. SourceSpan("src/Modules/Search.lua", "if app.__perf then\n\tBuildClonedHierarchy", "-- Builds ClonedHierarchyGroups from the cached container")
    .. SourceSpan("src/Modules/Search.lua", "if app.__perf then\n\tBuildSearchResponseViaCacheContainer", "-- Collects a cloned hierarchy of groups which have the field")
    .. SourceSpan("src/Modules/Search.lua", "function app:BuildTargettedSearchResponse", "-- Performs the internal logic of searching ATT")
  assert(Compile(code, "@src/Modules/Search.lua search hooks"))(app)
  if enabled then assert(app.__perf.Start(30, 3)) end
  local found = app:BuildTargettedSearchResponse(root, "itemID", 42)
  assert(#found == 2 and found[1] == one and found[2] == two and cachedCalls == 1 and recursiveCalls == 0)
  found = app:BuildTargettedSearchResponse({ one }, "itemID", 42)
  assert(#found == 1 and found[1] == one and recursiveCalls == 1)
  assert(app:BuildTargettedSearchResponse(nil, "itemID", 42) == nil)
  app.filter = function() return false end
  found = app:BuildTargettedSearchResponse(root, "itemID", 42)
  assert(#found == 1 and found[1] == one)
  if enabled then
    local report = app.__perf.Report()
    Contains(report, "search.build\t4")
    Contains(report, "search.clone\t3")
    Contains(report, "search.cached\t2")
    Contains(report, "search.recursive_filter\t1")
  end
end

---Verify tooltip attachment retains cache use and its original protected search errors.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckTooltip(enabled)
  local app = NewApp(enabled)
  local group, rendered, generated, skips = { text = "ATT group" }, 0, 0, {}
  app.GetCachedSearchResults = function() return group, false end
  app.SetSkipLevel = function(level) skips[#skips + 1] = level end
  app.PrintDebug = function() end
  app.cache = setmetatable({}, { __index = function(cache, key)
    generated = generated + 1; local info = { text = key.text }; cache[key] = info; return info
  end })
  app.AttachInfo = function(_, info) assert(info.text == group.text); rendered = rendered + 1 end
  local code = "local app = ...\nlocal TooltipInfoCache, AttachTooltipInformation = app.cache, app.AttachInfo\n"
    .. SourceSpan("src/Modules/Tooltip.lua", "if app.__perf then\n\tAttachTooltipInformation", "local function ClearTooltip")
    .. SourceSpan("src/Modules/Tooltip.lua", "local function AttachTooltipSearchResults", "local AttachTypicalSearchResults")
    .. "return AttachTooltipSearchResults\n"
  local attach = assert(Compile(code, "@src/Modules/Tooltip.lua attach hooks"))(app)
  local tooltip = { NumLines = function() return 0 end, AddDoubleLine = function(_, text) assert(text == group.text) end }
  if enabled then assert(app.__perf.Start(30, 3)) end
  attach(tooltip, function() end, "itemID", 42); attach(tooltip, function() end, "itemID", 42)
  assert(rendered == 2 and generated == 1 and tooltip.ATT_AttachComplete)
  assert(#skips == 4 and skips[1] == 1 and skips[2] == 0)
  if enabled then
    Contains(app.__perf.Report(), "tooltip.attach\t2")
    Contains(app.__perf.Report(), "tooltip.information\t2")
  end
  app.GetCachedSearchResults = function() error("original search failure") end
  assert(pcall(attach, tooltip, function() end, "itemID", 42))
  assert(skips[#skips] == 0)
end

---Exercise original window rendering methods after their load-time table-field rebinding.
---@param enabled boolean Whether the optional tracker is loaded before module initialization.
local function CheckWindow(enabled)
  local app = NewApp(enabled)
  local one, groupUpdates, rowRenders = {}, 0, 0
  app.TopLevelUpdateGroup = function() groupUpdates = groupUpdates + 1 end
  app.HandleEvent, app.PrintDebug, app.render = function() end, function() end, function() rowRenders = rowRenders + 1 end
  app.wipearray = wipe
  local code = [[local app = ...
local L = {}
local wipearray = app.wipearray
local function ExpandGroupsRecursively() end
local function ProcessGroup(rows, data) rows[#rows + 1] = data; rows[#rows + 1] = data.g[1] end
local function SetRowData(_, row, data) row.data = data; app.render() end
local function RedrawRowTooltip() end
]]
    .. SourceSpan("src/UI/Window Definitions.lua", "if app.__perf then\n\tSetRowData", "local function RedrawRowTooltip()")
    .. SourceSpan("src/UI/Window Definitions.lua", "local FieldDefaults = {", "local function CheckOpenWindowsForCompletion()")
    .. "return FieldDefaults.DefaultUpdate, FieldDefaults.DefaultRefresh, FieldDefaults.DefaultRedraw\n"
  local update, refresh, redraw = assert(Compile(code, "@src/UI/Window Definitions.lua rendering hooks"))(app)
  local button = { Show = function() end, Hide = function() end }
  local row = function() return { GetHeight = function() return 20 end } end
  local window = { data = { total = 2, progress = 0, g = { one } }, rowData = {},
    Container = { rows = { row(), row() }, GetHeight = function() return 40 end },
    CloseButton = button, ScrollBar = { CurrentIndex = 1, Show = button.Show, Hide = button.Hide }, rowCount = 2,
    IsShown = function(self) return self.shown end, GetHeight = function() return 100 end,
    ToggleExtraFilters = function() end, SetMinMaxValues = function() end, Redraw = redraw }
  assert(update(window) == nil and redraw(window) == nil)
  if enabled then assert(app.__perf.Start(30, 3)) end
  window.shown = true
  assert(update(window, true) == true and #window.rowData == 2 and groupUpdates == 1)
  assert(refresh(window) == nil and redraw(window) == nil and rowRenders == 4 and window.Container.rows[2].data == one)
  if enabled then
    local report = app.__perf.Report()
    Contains(report, "window.update\t1")
    Contains(report, "window.refresh\t1")
    Contains(report, "window.redraw\t2")
    Contains(report, "window.row.set\t4")
  end
end

local checks = { CheckCollection, CheckCache, CheckTransmog, CheckCosts, CheckSearch, CheckTooltip, CheckWindow }
for _, check in ipairs(checks) do check(false) end
assert(clockReads == 0, "normal module paths read the profiling clock")
for _, check in ipairs(checks) do check(true) end
print("PASS: original module paths, zero default clocks, shared tracker hooks/metrics, session generations, sampled API aliases, and late converters")
