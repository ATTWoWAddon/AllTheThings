-- Execute generated acquisition trees with inert constructors, using Lua 5.1.
-- This validates Parser output structure and variant boundaries, not live game facts.
assert(_VERSION == "Lua 5.1", "Lua 5.1 is required");
local root, flavor = assert(arg[1], "repository root required"), assert(arg[2], "flavor required");
local inspect = arg[3] == "--inspect";
local expected = { Wrath = "wrath", Vanilla = "era", VanillaSOD = "sod" };
assert(expected[flavor], "Unsupported output fixture: " .. flavor);
local function Read(path)
 local file = assert(io.open(root .. "/" .. path, "rb"), "Missing generated fixture: " .. path);
 local source = file:read("*a"):gsub("^\239\187\191", ""); file:close(); return source;
end
local function Identity(node) return node; end
local identities = setmetatable({}, { __index = function() return Identity; end });
local app = { FactionID = 1, L = setmetatable({}, { __index = function(_, key) return key; end }),
 OnInitDB = identities, OnUpdateDB = identities, OnTooltipDB = identities,
 Modules = { FactionData = { AddReputationTooltipInfo = function() end } },
 WOWAPI = { GetItemCount = function() return 0; end },
 Settings = {
  GetUnobtainableFilter = function() return true; end,
  GetPhaseFilter = function() return true; end,
 },
 IsQuestFlaggedCompleted = function() return false; end,
};
local constructors = {
 Achievement = "achievementID", Header = "headerID", CustomHeader = "headerID",
 CharacterClass = "classID", AchievementCriteria = "criteriaID", CharacterUnlockSpell = "spellID",
 CurrencyClass = "currencyID", Difficulty = "difficultyID", Encounter = "encounterID", Expansion = "expansionID",
 Faction = "factionID", Filter = "filterID", Item = "itemID", Instance = "instanceID", Mount = "mountID",
 NPC = "npcID", Object = "objectID", Species = "speciesID", Profession = "professionID", Quest = "questID",
 QuestObjective = "objectiveID", Recipe = "recipeID", Spell = "spellID", Title = "titleID", Toy = "itemID",
};
local function Node(field, id, data)
 local node = data or {};
 assert(type(node) == "table", "Unexpected constructor data for " .. field);
 if #node > 0 then
  assert(not node.g, "Generated constructor has both array children and g");
  local children = {}; for index = 1, #node do children[index] = node[index]; end
  for index = #node, 1, -1 do node[index] = nil; end
  node.g = children;
 end
 node[field] = id; return node;
end
for name, field in pairs(constructors) do
 app["Create" .. name] = function(id, data) return Node(field, id, data); end;
end
app.CreateItemSource = function(sourceID, itemID, data)
 local node = Node("itemID", itemID, data); node.sourceID = sourceID; return node;
end
app.ResolveQuestData = function(data)
 local node = {}; for key, value in pairs(data) do if key ~= "aqd" and key ~= "hqd" then node[key] = value; end end
 for key, value in pairs(data.aqd or data.hqd or {}) do node[key] = value; end
 return node;
end
local callbacks = {};
app.AddEventHandler = function(event, callback)
 assert(event == "OnBuildDataCache", "Unexpected generated event " .. event);
 callbacks[#callbacks + 1] = callback;
end
local env = setmetatable({
 GetCVar = function() return "CN"; end,
 GetLocale = function() return "enUS"; end,
 Enum = { FlightPathFaction = { Horde = 2 } },
 C_Seasons = flavor == "VanillaSOD" and { GetActiveSeason = function() return 2; end } or nil,
}, { __index = _G });
local categories = {};
for _, category in ipairs({ "Instances", "Promotions" }) do
 local path = "db/" .. flavor .. "/Categories/" .. category .. ".lua";
 local chunk = assert(loadstring(Read(path), "@" .. path)); setfenv(chunk, env); chunk("AllTheThings", app);
end
for _, callback in ipairs(callbacks) do callback(categories); end
assert(categories.Instances and categories.Promotions, "Flavor guard did not register generated categories");
local records = {};
local function Copy(value) local copy = {}; for key, item in pairs(value) do copy[key] = item; end return copy; end
local function Walk(node, scope)
 if type(node) ~= "table" then return; end
 local nextScope = Copy(scope);
 nextScope.requirements = Copy(scope.requirements);
 nextScope.npcs = Copy(scope.npcs);
 nextScope.encounters = Copy(scope.encounters);
 for key in pairs(node) do assert(type(key) ~= "string" or not key:find("^_progression"), "Private binding field leaked"); end
 if node.instanceID then nextScope.instanceID = node.instanceID; end
 if node.difficultyID then nextScope.difficultyID = node.difficultyID; end
 if node.npcID then nextScope.npcs[node.npcID] = true; end
 if node.encounterID then nextScope.encounters[node.encounterID] = true; end
 if node.u ~= nil then nextScope.u = node.u; end
 for _, phase in ipairs(node.releasePhases or {}) do nextScope.requirements[phase] = true; end
 records[#records + 1] = { node = node, scope = nextScope };
 for _, child in ipairs(node.g or node) do Walk(child, nextScope); end
end
for _, category in pairs(categories) do Walk(category, { requirements = {}, npcs = {}, encounters = {} }); end
local function Find(field, id, instance, difficulty, npc, encounter)
 local result = {};
 for _, record in ipairs(records) do
  local scope = record.scope;
  if record.node[field] == id and (not instance or scope.instanceID == instance)
   and (not difficulty or scope.difficultyID == difficulty) and (not npc or scope.npcs[npc])
   and (not encounter or scope.encounters[encounter]) then result[#result + 1] = record; end
 end
 return result;
end
local function RequireRoute(field, id, instance, difficulty, phase, npc, encounter)
 local found = Find(field, id, instance, difficulty, npc, encounter);
 assert(#found > 0, flavor .. ": missing authored route " .. field .. "=" .. id);
 if phase then
  for _, record in ipairs(found) do
   assert(record.scope.requirements[phase], flavor .. ": missing inherited " .. phase .. " on " .. field .. "=" .. id);
  end
 end
 return found;
end
local function Absent(field, id, instance, difficulty)
 assert(#Find(field, id, instance, difficulty) == 0, flavor .. ": cross-variant acquisition " .. field .. "=" .. id);
end
if inspect then
 for _, sample in ipairs({ {"itemID",226659},{"itemID",232099},{"itemID",18878},{"itemID",228263},
  {"itemID",19335},{"itemID",230241},{"itemID",22937},{"itemID",236257},{"instanceID",759},
  {"mountID",1280400},{"titleID",673} }) do
  for _, record in ipairs(Find(sample[1],sample[2])) do
   local phases = {}; for phase in pairs(record.scope.requirements) do phases[#phases + 1] = phase; end table.sort(phases);
   print(flavor,sample[1],sample[2],record.scope.instanceID,record.scope.difficultyID,record.node.u,table.concat(phases,","));
  end
 end
 print(flavor, #records .. " generated acquisition nodes loaded"); return;
end
if flavor == "Vanilla" then
 RequireRoute("itemID",18878,741,nil,"era:1",nil,1519);
 RequireRoute("itemID",19335,742,nil,"era:3",nil,1529);
 RequireRoute("itemID",22937,754,nil,"era:6",15956);
 for _, id in ipairs({228263,230241,236257,226659,232099}) do Absent("itemID",id); end
elseif flavor == "VanillaSOD" then
 -- MC actually replaces Lucifron's NPC identity. BWL/Naxx retain encounter/NPC identities
 -- but author separate difficulty/loot variants, so an NPC-only phase binding is insufficient.
 RequireRoute("itemID",228263,741,201,"sod:4",228429);
 Absent("itemID",228263,741,9);
 RequireRoute("itemID",18878,741,9,nil,nil,1519);
 Absent("itemID",18878,741,201);
 RequireRoute("itemID",230241,742,201,"sod:5",nil,1529);
 Absent("itemID",230241,742,9);
 RequireRoute("itemID",19335,742,9,nil,nil,1529);
 Absent("itemID",19335,742,201);
 RequireRoute("itemID",236257,754,201,"sod:7",15956);
 Absent("itemID",236257,754,9);
 RequireRoute("itemID",22937,754,9,nil,15956);
 Absent("itemID",22937,754,201);
 for _, record in ipairs(RequireRoute("itemID",226659,741,201,"sod:4",227819)) do
  assert(not record.scope.requirements["sod:5"], "Tier 1 inherited the later same-NPC vendor release");
  assert(record.node.phase ~= 1608, "Mapped Tier 1 release retained its numeric phase");
 end
 RequireRoute("itemID",232099,741,201,"sod:5",227819);
 RequireRoute("itemID",233213,741,201,"sod:6");
 RequireRoute("itemID",233201,741,201,"sod:6");
 for _, record in ipairs(RequireRoute("itemID",18878,741,9)) do assert(record.scope.u == 2, "Removed legacy MC reward lost u=2"); end
elseif flavor == "Wrath" then
 RequireRoute("instanceID",759,759,nil,"wrath:2");
 local matchedWrathNaxx = false;
 for _, record in ipairs(RequireRoute("instanceID",754,754)) do
  if record.node.awp == 30002 then
   assert(record.scope.requirements["wrath:1"], "Wrath Naxxramas source lost its release");
   matchedWrathNaxx = true;
  else
   assert(not record.scope.requirements["wrath:1"], "Classic Naxxramas inherited the same-ID Wrath release");
  end
 end
 assert(matchedWrathNaxx, "Missing separate Wrath Naxxramas source");
 for _, id in ipairs({673,674,675}) do RequireRoute("titleID",id,758,nil,"wrath:4"); end
 Absent("mountID",1280400);
end
-- These explicit non-progression states must not be consumed by a release adapter.
if flavor == "Wrath" then
 for _, record in ipairs(RequireRoute("achievementID",411)) do assert(record.node.u == 2, "Removed promotion lost u=2"); end
 for _, record in ipairs(RequireRoute("speciesID",240)) do assert(record.node.u == 1, "Never implemented promotion lost u=1"); end
end
print(flavor .. ": generated variant/release checks passed (" .. #records .. " acquisition nodes)");
