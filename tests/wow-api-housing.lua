-- Run with Lua 5.1: lua tests/wow-api-housing.lua [repository root]
-- Exercises actual catalog collection and UI callbacks without old compatibility fields.
assert(_VERSION == "Lua 5.1")
local root = arg[1] or "."
local function read(path)
 local file = assert(io.open(root .. "/" .. path, "rb"))
 local data = file:read("*a"):gsub("\r\n", "\n")
 file:close()
 return data
end
local wrapperSource, callerSource = read("src/WoW API Wrappers.lua"), read("src/Classes/Decor.lua")
local function fixture(build, legacy)
 local state = {events = {}, registry = {}, cached = {}, searches = {}, attached = {}, collected = {}, lookups = 0, creates = 0, extended = 0, native = {}, editing = false, alt = true}
 local function info(id, kind, stored, placed)
  if legacy then return {entryID = {recordID = id, entryType = kind}, quantity = stored, numPlaced = placed} end
  return {recordID = id, entryType = kind, totalNumStored = stored, totalNumPlaced = placed}
 end
 state.native[101] = info(101, 1, 2, 1)
 state.native[102] = info(102, 1, 0, 0)
 state.native[103] = info(103, 1, 4294967295, 0)
 state.native[104] = info(104, 2, 2, 1)
 local results = {{recordID = 101, entryType = 1, variantIdentifier = 0}, {recordID = 102, entryType = 1, variantIdentifier = 0}, {recordID = 103, entryType = 1, variantIdentifier = 0}, {recordID = 104, entryType = 2, variantIdentifier = 0}}
 local searcher = {
  SetAutoUpdateOnParamChanges = function(_, enabled) assert(enabled == false) end,
  SetResultsUpdatedCallback = function(_, callback) state.searchCallback = callback end,
  RunSearch = function() assert(state.searchCallback) state.searchCallback() end,
  GetCatalogSearchResults = function() return results end,
 }
 local env = setmetatable({
  GetBuildInfo = function() return "fixture", "1", "Oct 15 2026", build end,
  Enum = {HousingCatalogEntryType = {Decor = 1}, TooltipDataLineType = {None = 0}, SpellBookSpellBank = {Player = 0, Pet = 1}},
  C_HousingCatalog = {
   GetCatalogEntryInfo = function(entry) state.lookups = state.lookups + 1 return state.native[entry.recordID] end,
   CreateCatalogSearcher = function() state.creates = state.creates + 1 return searcher end,
  },
  C_HouseEditor = {IsHouseEditorActive = function() return state.editing end},
  C_TooltipInfo = {GetOwnedItemByID = function() return {lines = {{type = 0, leftText = "Owned: 3"}}} end},
  IsAltKeyDown = function() return state.alt end,
  HOUSING_DECOR_OWNED_COUNT_FORMAT = "Owned: %d",
 }, {__index = _G})
 env._G = env
 local app = {
  print = function() end,
  Settings = {Collectibles = {Decor = true}},
  IsAccountCached = function(cache, id) assert(cache == "Decor") return state.cached[id] end,
  ExtendClass = function(base, name, key, members)
   assert(base == "Item" and name == "Decor" and key == "decorID")
   state.extended = state.extended + 1
   return function(id)
    return setmetatable({decorID = id}, {__index = function(object, field)
     local getter = members[field]
     if type(getter) == "function" then return getter(object) end
     return getter
    end})
   end
  end,
  AddEventHandler = function(name, callback) state.events[name] = callback end,
  AddEventRegistryCallback = function(name, callback) state.registry[name] = callback end,
  AddEventRegistration = function(name, callback) state.events[name] = callback end,
  AddSimpleCollectibleSwap = function(name, cache) assert(name == "Decor" and cache == "Decor") end,
  AddGenericFieldConverter = function(key) assert(key == "decorID") end,
  SetBatchAccountCached = function(cache, saved, value)
   assert(cache == "Decor" and value == 1)
   state.batch = saved
   for id in pairs(saved) do state.cached[id] = true end
  end,
  SetThingCollected = function(key, id, collected, refresh)
   assert(key == "decorID" and collected == true and refresh == true)
   state.collected[#state.collected + 1] = id
   state.cached[id] = true
  end,
  SearchAndOpen = function(query) state.searches[#state.searches + 1] = query end,
  ForceAttachTooltip = function(tooltip, reference)
   state.attached[#state.attached + 1] = {tooltip = tooltip, reference = reference}
  end,
 }
 local wrappers = assert(loadstring(wrapperSource, "@actual-WoW-API-Wrappers"))
 setfenv(wrappers, env)("AllTheThings", app)
 local caller = assert(loadstring(callerSource, "@actual-Decor-caller"))
 setfenv(caller, env)("AllTheThings", app)
 state.app, state.env, state.info = app, env, info
 return state
end
local checks = 0
for _, legacy in ipairs({false, true}) do
 local h = fixture(120105, legacy)
 local account = {}
 h.events.OnSavedVariablesAvailable({}, account)
 assert(type(account.Decor) == "table")
 h.events.OnStartup()
 h.events.OnRefreshCollections()
 assert(h.creates == 1 and h.lookups == 4)
 assert(h.batch[101] == true and h.batch[102] == nil and h.batch[103] == nil and h.batch[104] == nil)
 assert(h.app.CreateDecor(101).collected == 1 and h.app.CreateDecor(102).collected == nil)
 -- Reuse the searcher; existing collections are skipped by the actual callback.
 h.events.OnRefreshCollections()
 assert(h.creates == 1 and h.lookups == 7)
 local frame, tooltip = {entryInfo = h.info(112, 1, 1, 2)}, {}
 h.registry["HousingCatalogEntry.OnInteract"](nil, frame, "LeftButton")
 assert(h.searches[1] == "decor:112")
 h.alt = false
 h.registry["HousingCatalogEntry.OnInteract"](nil, frame, "LeftButton")
 h.alt = true
 h.registry["HousingCatalogEntry.OnInteract"](nil, frame, "RightButton")
 assert(#h.searches == 1)
 h.registry["HousingCatalogEntry.TooltipCreated"](nil, frame, tooltip)
 assert(h.collected[1] == 112 and #h.attached == 1)
 assert(h.attached[1].tooltip == tooltip and h.attached[1].reference.type == "decor" and h.attached[1].reference.id == 112)
 h.editing = true
 h.registry["HousingCatalogEntry.TooltipCreated"](nil, frame, tooltip)
 assert(#h.collected == 1 and #h.attached == 1)
 h.editing = false
 local fallback = h.info(113, 1, 0, 0)
 fallback.itemID = 9000
 h.registry["HousingCatalogEntry.TooltipCreated"](nil, {entryInfo = fallback}, tooltip)
 assert(h.collected[2] == 113 and h.attached[2].reference.id == 113)
 if legacy then
  assert(h.native[101].recordID == nil and h.native[101].totalNumStored == nil)
  assert(frame.entryInfo.recordID == nil and frame.entryInfo.totalNumStored == nil)
 else
  assert(h.native[101].entryID == nil and h.native[101].quantity == nil and h.native[101].numPlaced == nil)
  assert(frame.entryInfo.entryID == nil and frame.entryInfo.quantity == nil and frame.entryInfo.numPlaced == nil)
 end
 checks = checks + 1
 print("PASS actual Decor caller: " .. (legacy and "legacy shape normalization" or "modern fields only") .. ", search collection, interactions, tooltip and editor guards")
end
for _, build in ipairs({16001, 11509, 50504}) do
 -- Even with a mock catalog present, the production build gate must skip housing.
 local h = fixture(build, false)
 assert(h.extended == 1 and h.app.CreateDecor(55).decorID == 55)
 assert(next(h.events) == nil and next(h.registry) == nil and h.creates == 0 and h.lookups == 0)
 checks = checks + 1
 print("PASS actual Decor caller: build " .. build .. " preserves Item extension and registers no housing feature")
end
print("PASS housing caller: " .. checks .. " scenarios")
