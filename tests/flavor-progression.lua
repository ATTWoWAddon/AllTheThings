-- Actual progression/settings/merge/filter pipeline with synthetic acquisition routes. Lua 5.1 only.
-- These fixtures do not establish live release dates, loot, or instance difficulty behavior.
assert(_VERSION == "Lua 5.1");
local root = arg[1] or ".";
local function Read(path, optional)
	local f, reason, code = io.open(root .. "/" .. path, "rb");
	if optional and not f and code == 2 then return; end -- ENOENT only; other read failures remain fatal.
	assert(f, reason);
	local s = f:read("*a"):gsub("^\239\187\191", ""):gsub("\r\n", "\n"); f:close(); return s;
end
local function Compile(source, name, env)
	local chunk = assert(loadstring(source, "@" .. name)); setfenv(chunk, env); return chunk;
end
local function Section(source, first, last)
	local a = assert(source:find(first, 1, true), first);
	local b = assert(source:find(last, a + #first, true), last);
	return source:sub(a, b - 1);
end
local settingsSource, dataSource, filterSource = Read("src/Settings/Settings.lua"), Read("src/DataHandling.lua"), Read("src/Modules/Filter.lua");
local function Profile(id, baseline, count, firstLegacy)
	local p = { id = id, baseline = id .. ":" .. baseline, phases = {} };
	for i=1,count do p.phases[id .. ":" .. i] = { order = i, legacyU = firstLegacy and firstLegacy + i - 1,
		name = { en = "Phase " .. i, tw = "第 " .. i .. " 階段", cn = "第 " .. i .. " 阶段" } }; end
	p.phases[id .. ":unknown"] = { status = "unknown", name = { en = "Unconfirmed", tw = "尚未確認", cn = "尚未确认" } };
	return p;
end
local function MakeApp(profile)
	local raw = { Unobtainable = setmetatable({}, { __index = { [1] = false, [2] = false, [31] = true } }), ReleasePhases = {} };
	local activeEvents = { [1] = true, [2] = false };
	local env = setmetatable({ RawFixture = raw, GetLocale = function() return "zhTW"; end,
		wipe = function(t) for k in pairs(t) do t[k] = nil; end end,
	}, { __index = _G });
	local app = { Modules = { FactionData = { FACTION_RACES = { {}, {} } } }, WOWAPI = {}, L = {
		PHASES = { [1] = { state = 1 }, [2] = { state = 1 }, [31] = { state = 2, buildVersion = 1 }, [32] = { state = 2, buildVersion = 2 } },
	}, EmptyFunction = function() end, AddEventHandler = function() end, HandleEvent = function() end };
	local settings = { GetRawSettings = function(_, key) return raw[key]; end,
		Refresh = function() end, UpdateMode = function() end };
	app.Settings = settings;
	Compile(Read("src/Modules/Progression.lua"), "Progression.lua", env)("ATT", app);
	-- Load actual storage and accessor implementations with their private raw-settings upvalue.
	local setValue = Section(settingsSource, "settings.SetValue = function", "settings.SetTooltipSetting = function");
	local accessors = Section(settingsSource, "settings.GetUnobtainableFilter = function", "settings.Objects = {};");
	Compile("local app=select(2,...); local settings=app.Settings; local RawSettings=RawFixture;\n" .. setValue .. accessors,
		"Settings.lua release accessors", env)("ATT", app);
	local events = Section(Read("src/Modules/Events.lua"), "local function FilterIsEventActive(group)", "local function GetEventName(e)");
	app.Modules.Events = { FilterIsEventActive = Compile("local ActiveEvents=...;\n" .. events .. "\nreturn FilterIsEventActive;", "Events.lua", env)(activeEvents) };
	local prefix = Section(filterSource, "-- Filter Module", "-- PvP");
	local event = assert(filterSource:match('(DefineToggleFilter%("Event", AccountFilters, function%(item%).-\nend%);)'));
	local recursive = Section(filterSource, "local function RecursiveUnobtainableFilter(group)", "-- Recursively check outwards to find if any parent group restricts the filter for the current character (regardless of settings)");
	local account = Section(filterSource, "local function SettingsFilters_Account(o)", "local function SettingsExtraFilters(o, extraFilters)");
	Compile(prefix .. "\n" .. account .. "\napi.Filters.TestAccount = SettingsFilters_Account;\nSettingsUnobtainable=app.Settings:GetRawSettings(\"Unobtainable\");\n" .. event .. "\n" .. recursive,
		"Filter.lua availability pipeline", env)("ATT", app);
	local merge = dataSource:sub((assert(dataSource:find("local MergeSkipFields = {", 1, true))));
	Compile("local app=select(2,...); local L=app.L;\n" .. merge, "DataHandling.lua actual merge pipeline", env)("ATT", app);
	local clones = Section(Read("src/Classes/base.lua"), "local function CloneClassInstance(object, ignoreChildren)", "-- Allow importing a specific set of Class functions from one Class to another");
	app.CloneClassInstance, app.CloneObject = Compile("local app=select(2,...);\n" .. clones .. "\nreturn CloneClassInstance,CloneObject;", "Classes/base.lua actual clones", env)("ATT", app);
	local dispatch = Section(dataSource, "UpdateGroups = function(parent, g)", "app.UpdateGroups = UpdateGroups");
	env.UpdateGroupFixture = function(group) group.visible = not not app.Modules.Filter.Filters.RecursiveUnobtainableFilter(group); end;
	Compile("local app=select(2,...); local UpdateGroup=UpdateGroupFixture; local UpdateGroups;\n" .. dispatch
		.. "\napp.UpdateGroups=UpdateGroups;", "DataHandling.lua actual callback dispatch", env)("ATT", app);
	-- Assigning after all runtime modules load proves no early Era/catalog capture is used.
	app.ProgressionProfile = profile;
	local set = app.Modules.Filter.Set;
	set.Unobtainable(true); set.Phase(true); set.Event(true); set.ReleasePhase(profile ~= nil);
	return app, raw, env;
end
local meta = { __index = { key = "itemID" } };
local function Item(fields) fields.itemID = 900001; return setmetatable(fields, meta); end
local function Visible(app, item) return not not app.Modules.Filter.Filters.RecursiveUnobtainableFilter(item); end

local app, raw = MakeApp(Profile("titan", 6, 10));
assert(app.Settings:GetReleasePhaseFilter("titan:6"));
assert(not app.Settings:GetReleasePhaseFilter("titan:7"));
assert(not app.Settings:GetReleasePhaseFilter("titan:unknown"));
assert(not app.Settings:GetReleasePhaseFilter("wrath:2"));
assert(not app.Modules.Progression.RequirementsPass({ "titan:6", "titan:7" }));
assert(not app.Modules.Progression.RequirementsPass({ bad = "titan:6" }));
assert(not app.Modules.Progression.RequirementsPass(false));
local sparse = { "titan:6", "titan:7", "titan:7" }; sparse[2] = nil;
assert(not app.Modules.Progression.RequirementsPass(sparse));
assert(not app.Modules.Progression.RequirementsPass({ nil, "titan:7" }));
do
	local localized = MakeApp(Profile("sod", 4, 8, 1605));
	-- Use the module's own environment to verify the existing esMX -> mx locale key.
	local functionEnv = getfenv(localized.Modules.Progression.Localize);
	functionEnv.GetLocale = function() return "esMX"; end;
	assert(localized.Modules.Progression.Localize({ en = "English", es = "Spain", mx = "Mexico" }) == "Mexico");
end
local baseline = app.ProgressionProfile.baseline;
for _,invalid in ipairs({ "titan:unknown", "wrath:6", "titan:missing" }) do
	app.ProgressionProfile.baseline = invalid;
	assert(app.Modules.Progression.GetProfile() == nil);
	assert(not Visible(app, Item({ releasePhases = { "titan:6" } })));
end
app.ProgressionProfile.baseline = baseline;
local earlier = Item({ releasePhases = { "titan:6" } });
local later = Item({ releasePhases = { "titan:7" } });
assert(Visible(app, earlier) and not Visible(app, later));
local nested = Item({ releasePhases = { "titan:6" }, parent = { releasePhases = { "titan:7" } } });
assert(not Visible(app, nested), "Ancestors and node requirements must combine with AND");
assert(not Visible(app, Item({ releasePhases = { "titan:6" }, u = 1 })));
assert(not Visible(app, Item({ releasePhases = { "titan:6" }, u = 2 })));
local removed = Item({ releasePhases = { "titan:6" }, u = 2 });
local merged = app.MergedObject({ removed, later }, true);
assert(not Visible(app, merged), "Released+removed OR future+obtainable cannot borrow each other's fields");
raw.ReleasePhases["titan:7"] = true;
assert(Visible(app, merged), "Visibility choices must be evaluated live on retained routes");
raw.ReleasePhases["titan:7"] = nil;
local nestedClone = app.MergedObject({ nested }, true);
assert(nestedClone.parent == nil and not Visible(app, nestedClone), "Detached clones must retain original ancestor conditions");

-- Capture unmapped provenance before a later merge introduces phase conditions.
local legacyA, legacyB = Item({ u = 2, e = 1 }), Item({ e = 2 });
local sequence = app.MergedObject({ legacyA, legacyB }, true);
app.MergeProperties(sequence, later);
assert(not Visible(app, sequence), "A later phase route must not inherit an impossible flattened u/event pair");
assert(app.Modules.Progression.GetMergedSourceCount(sequence) == 3);
raw.ReleasePhases["titan:7"] = true;
assert(Visible(app, sequence)); raw.ReleasePhases["titan:7"] = nil;
local eventPair = app.MergedObject({ Item({ releasePhases = { "titan:6" }, e = 2 }), Item({ releasePhases = { "titan:7" }, e = 1 }) }, true);
assert(not Visible(app, eventPair), "Active event and open phase must belong to the same route");
app.Modules.Filter.Set.Event(); assert(Visible(app, eventPair)); app.Modules.Filter.Set.Event(true);
for _,clone in ipairs({ app.CloneObject(sequence), app.CloneClassInstance(sequence) }) do
	app.MergeProperties(clone, later);
	assert(app.Modules.Progression.GetMergedSourceCount(clone) == 3, "Cloning/re-merging must deduplicate original sources");
	assert(not Visible(app, clone));
end
local weak = setmetatable({}, { __mode = "k" });
for i=1,100 do
	local clone = app.CloneObject(sequence); app.MergeProperties(clone, later); weak[clone] = true;
end
collectgarbage("collect"); collectgarbage("collect");
assert(next(weak) == nil, "Weak provenance must not retain closed window clones");

-- Source availability and acquisition ancestry remain live after a view is merged.
local liveSource = Item({ releasePhases = { "titan:6" }, u = 2 });
local liveMerged = app.MergedObject({ liveSource, later }, true);
assert(not Visible(app, liveMerged)); liveSource.u = nil;
assert(Visible(app, liveMerged)); liveSource.u = 2;
assert(not Visible(app, liveMerged));
local mutableClone = app.CloneObject(liveSource);
mutableClone.u = nil;
assert(Visible(app, mutableClone) and not Visible(app, liveSource), "A copied source's actual u mutation must stay local to that copy");
mutableClone.u = 2; assert(not Visible(app, mutableClone));
-- A local nil delta survives re-cloning and single-source merged views.
for _,field in ipairs({ "u", "e" }) do
	local original = Item({ releasePhases = { "titan:6" }, [field] = 2 });
	local first = app.CloneObject(original); first[field] = nil;
	assert(Visible(app, first));
	for _,second in ipairs({ app.CloneObject(first), app.MergedObject({ first }, true) }) do
		assert(Visible(app, second), "A copied occurrence must retain its prior local " .. field .. " delta");
		local untouched = field == "u" and "e" or "u";
		original[untouched] = 2;
		assert(not Visible(app, second), "Re-cloning must keep untouched availability fields live");
		original[untouched] = nil;
		assert(Visible(app, second));
		second[field] = 2;
		assert(not Visible(app, second), "A newer copy's local field update supersedes its inherited nil override");
		assert(not Visible(app, app.CloneObject(second)));
		assert(not Visible(app, app.MergedObject({ second }, true)));
	end
end
-- A merged route retains its last observed local delta after the weak source copy disappears.
for _,field in ipairs({ "u", "e" }) do
	local original = Item({ releasePhases = { "titan:6" }, [field] = 2 });
	local copy = app.CloneObject(original); copy[field] = nil;
	local display = app.MergedObject({ Item({ releasePhases = { "titan:7" } }), copy }, true);
	assert(Visible(app, display));
	app.MergeProperties(display, Item({ releasePhases = { "titan:8" } }));
	local weakCopy = setmetatable({ copy }, { __mode = "v" }); copy = nil;
	collectgarbage("collect"); collectgarbage("collect");
	assert(weakCopy[1] == nil and Visible(app, display), "Collected source copies retain their observed " .. field .. " delta");
end
-- Flattening a live original refreshes the fallback shared by already existing copies.
for _,field in ipairs({ "u", "e" }) do
	local original = Item({ releasePhases = { "titan:6" }, [field] = 2 });
	local old = app.CloneObject(original); original[field] = nil;
	assert(Visible(app, original) and Visible(app, old));
	app.MergeProperties(original, Item({ releasePhases = { "titan:7" } }));
	assert(Visible(app, original) and Visible(app, old), "Flattening must retain the current original " .. field .. " condition");
end
-- Weak originals can disappear; copies retain the complete last observed condition set.
for _,field in ipairs({ "u", "e" }) do
	local original = Item({ releasePhases = { "titan:6" }, [field] = 2 });
	local old = app.CloneObject(original); original[field] = nil;
	assert(Visible(app, old));
	local weakOriginal = setmetatable({ original }, { __mode = "v" }); original = nil;
	collectgarbage("collect"); collectgarbage("collect");
	assert(weakOriginal[1] == nil and Visible(app, old), "Collected sources retain their last observed " .. field .. " condition");
end
local lateSource = Item({});
local lateMerged = app.MergedObject({ lateSource }, true);
lateSource.parent = { releasePhases = { "titan:7" } };
assert(not Visible(app, lateMerged), "An original source can gain its acquisition parent after cloning");
local copied = app.CloneObject(earlier);
copied.parent = { releasePhases = { "titan:7" } };
local copiedMerged = app.MergedObject({ copied }, true);
assert(not Visible(app, copiedMerged) and Visible(app, earlier), "Late copy ancestry must be retained when the copy is detached");

-- A representative source callback adapts only its own availability field.
-- This tests the runtime contract without depending on paused Parser-authored callbacks.
do
	local app, raw = MakeApp(Profile("wrath", 3, 4, 30));
	local function callback(group)
		if app.Settings:GetUnobtainableFilter(32) then
			if app.ProgressionProfile then
				app.Modules.Progression.SetSourceAvailability(group, "u", 2);
			else group.u = 2; end
			group.rwp = nil;
		else
			if app.ProgressionProfile then
				app.Modules.Progression.SetSourceAvailability(group, "u", nil);
			else group.u = 31; end
			group.rwp = 30200;
		end
	end
	local source = Item({ releasePhases = { "wrath:2" }, OnUpdate = callback });
	callback(source); assert(source.u == 2);
	local merged = app.MergedObject({ source, Item({ releasePhases = { "wrath:4" } }) }, true);
	assert(not Visible(app, merged));
	app.ProgressionProfile.baseline = "wrath:2";
	callback(source); assert(source.u == nil);
	assert(Visible(app, merged), "A source callback clearing status must affect an already merged view");
	app.ProgressionProfile.baseline = "wrath:3";
	callback(source); assert(source.u == 2 and not Visible(app, merged));
	-- The real UpdateGroups dispatcher invokes callbacks on displayed copies.
	local display = app.CloneObject(merged);
	app.UpdateGroups(nil, { display }); assert(display.u == 2 and not display.visible);
	app.ProgressionProfile.baseline = "wrath:2";
	app.UpdateGroups(nil, { display });
	assert(display.u == nil and display.visible and source.u == 2);
	app.ProgressionProfile.baseline = "wrath:3";
	app.UpdateGroups(nil, { display }); assert(display.u == 2 and not display.visible);
	app.ProgressionProfile.baseline = "wrath:2";
	local futureCallback = Item({ releasePhases = { "wrath:4" }, OnUpdate = callback });
	local unrelatedRemoved = Item({ releasePhases = { "wrath:2" }, u = 2 });
	local scoped = app.MergedObject({ futureCallback, unrelatedRemoved }, true);
	app.UpdateGroups(nil, { scoped });
	assert(not scoped.visible, "A callback cannot clear the unavailable flag of another acquisition route");
	local sharedFunctionOther = Item({ releasePhases = { "wrath:2" }, u = 2, OnUpdate = callback });
	local sharedFunction = app.MergedObject({ futureCallback, sharedFunctionOther }, true);
	app.UpdateGroups(nil, { sharedFunction });
	assert(not sharedFunction.visible, "Sharing a callback function does not make acquisition origins identical");
	-- A callback can retain its legacy fallback when no profile has opted in.
	local profile, legacy = app.ProgressionProfile, Item({});
	app.ProgressionProfile = nil;
	raw.Unobtainable[32] = true; callback(legacy); assert(legacy.u == 2);
	raw.Unobtainable[32] = false; callback(legacy); assert(legacy.u == 31);
	raw.Unobtainable[32] = nil; app.ProgressionProfile = profile;
end

-- Source callbacks changing one field keep the other field paired with their own origin.
do
	local function CheckCallbackWrapper(install, label)
		local app = MakeApp(Profile("titan", 6, 10));
		local callback = function(group) app.Modules.Progression.SetSourceAvailability(group, "u", nil); end;
		local source = Item({ releasePhases = { "titan:6" }, u = 2, e = 2, OnUpdate = callback });
		local merged = app.MergedObject({ source, Item({ releasePhases = { "titan:7" }, e = 1 }) }, true);
		app.UpdateGroups(nil, { merged });
		assert(not merged.visible, "A u callback cannot borrow the active event of another route");
		install(merged, callback);
		app.UpdateGroups(nil, { merged });
		assert(not merged.visible, label .. " must retain the source event condition");
		local eligible = Item({ releasePhases = { "titan:6" }, u = 2, e = 1, OnUpdate = callback });
		local display = app.MergedObject({ eligible, Item({ releasePhases = { "titan:7" } }) }, true);
		install(display, callback);
		app.UpdateGroups(nil, { display });
		assert(display.visible and eligible.u == 2, label .. " must update the displayed origin without mutating its source");
	end
	-- Always test callback composition, independently of optional addon features.
	CheckCallbackWrapper(function(source, callback)
		source.OnUpdate = function(row, parent, updateGroup) return callback(row, parent, updateGroup); end;
	end, "A generic post-merge wrapper");
	-- Check the actual feature wrapper too when this checkout includes that module.
	local questModule = Read("src/Modules/QuestRewardVisibility.lua", true);
	if questModule then
		local wrapper = assert(questModule:match('(source.OnUpdate = function%(row, parent, updateGroup%).-\n\t\t\tend)'));
		CheckCallbackWrapper(function(source, callback)
			local context = { source = source, hash = "fixture", onUpdate = callback,
				self = { IsHidden = function() return false; end } };
			setmetatable(context, { __index = _G });
			Compile(wrapper, "QuestRewardVisibility.lua actual callback wrapper", context)();
		end, "The actual QuestRewardVisibility wrapper");
	else
		print("SKIP: optional QuestRewardVisibility wrapper is absent from this checkout");
	end
end

-- Explicit nil overrides change one field while the other still follows the live source.
do
	local app = MakeApp(Profile("titan", 6, 10));
	local callback = function() end;
	local source = Item({ releasePhases = { "titan:6" }, u = 2, e = 1, OnUpdate = callback });
	local display = app.MergedObject({ source, Item({ releasePhases = { "titan:7" } }) }, true);
	app.Modules.Progression.SetSourceAvailability(display, "u", nil);
	assert(Visible(app, display)); source.e = 2;
	assert(not Visible(app, display), "An overridden u must not freeze the live source event");
	source.e = 1; assert(Visible(app, display));
	local other = Item({ releasePhases = { "titan:6" }, u = 2, e = 2, OnUpdate = callback });
	local eventDisplay = app.MergedObject({ other, Item({ releasePhases = { "titan:7" } }) }, true);
	app.Modules.Progression.SetSourceAvailability(eventDisplay, "e", nil);
	assert(not Visible(app, eventDisplay)); other.u = nil;
	assert(Visible(app, eventDisplay), "An overridden event must not freeze the live source u");
	other.u = 2; assert(not Visible(app, eventDisplay));
end

-- Explicit adapters on single copies establish a new baseline for later local writes.
for _,field in ipairs({ "u", "e" }) do
	local source = Item({ releasePhases = { "titan:6" }, [field] = 2, OnUpdate = function() end });
	local copy = app.CloneObject(source);
	app.Modules.Progression.SetSourceAvailability(copy, field, nil);
	assert(Visible(app, copy)); copy[field] = 2;
	assert(not Visible(app, copy));
	assert(not Visible(app, app.CloneObject(copy)));
end

-- On a flattened copy, an explicit adapter supersedes its prior cached local delta.
for _,field in ipairs({ "u", "e" }) do
	local source = Item({ releasePhases = { "titan:6" }, [field] = 2, OnUpdate = function() end });
	local copy = app.CloneObject(source); copy[field] = nil;
	assert(Visible(app, copy));
	app.MergeProperties(copy, Item({ releasePhases = { "titan:7" } }));
	assert(Visible(app, copy));
	local independent = app.CloneObject(copy);
	app.Modules.Progression.SetSourceAvailability(copy, field, 2);
	assert(not Visible(app, copy), "An explicit adapter must supersede an older flattened-view delta");
	assert(Visible(app, independent), "The explicit adapter must keep other copies independent");
	app.Modules.Progression.SetSourceAvailability(copy, field, nil);
	assert(Visible(app, copy));
end

-- A callback that performs its own supplied update publishes the new availability first.
do
	local app = MakeApp(Profile("titan", 6, 10));
	local callback = function(group, parent, update)
		app.Modules.Progression.SetSourceAvailability(group, "u", nil); update(group, parent); return true;
	end;
	local source = Item({ releasePhases = { "titan:6" }, u = 2, OnUpdate = callback });
	local merged = app.MergedObject({ source, Item({ releasePhases = { "titan:7" } }) }, true);
	app.UpdateGroups(nil, { merged });
	assert(merged.visible, "Self-updating callbacks must not filter with stale availability");
end

-- Same shared content, independent Era/SoD profile keys and preserved explicit legacy choices.
app.ProgressionProfile = Profile("era", 1, 6, 11);
raw.Unobtainable[12] = false;
assert(not app.Settings:GetReleasePhaseFilter("era:2"));
app.ProgressionProfile.baseline = "era:6";
assert(not app.Settings:GetReleasePhaseFilter("era:2"), "Explicit false must survive a newer baseline");
raw.Unobtainable[12] = nil;
assert(app.Settings:GetReleasePhaseFilter("era:2"), "An unset choice uses this profile's baseline");
app.Settings:SetReleasePhaseFilter("era:2", false);
assert(not app.Settings:GetUnobtainableFilter(12), "Legacy callbacks must honor namespaced overrides");
app.ProgressionProfile = Profile("sod", 4, 8, 1605);
assert(app.Settings:GetReleasePhaseFilter("sod:4"));
assert(not app.Settings:GetReleasePhaseFilter("sod:5"));
assert(not app.Settings:GetReleasePhaseFilter("sod:6"));
assert(raw.ReleasePhases["era:2"] == false and raw.ReleasePhases["sod:2"] == nil);
-- Synthetic MC 40/20-player occurrences and later reward/vendor routes do not share a progression key.
local mc40 = Item({ difficultyID = 9, releasePhases = { "era:1" } });
local mc20 = Item({ difficultyID = 201, releasePhases = { "sod:4" } });
local laterReward = Item({ releasePhases = { "sod:5" }, parent = mc20 });
local laterVendor = Item({ releasePhases = { "sod:6" } });
assert(not Visible(app, mc40) and Visible(app, mc20));
assert(not Visible(app, laterReward) and not Visible(app, laterVendor));
app.ProgressionProfile.baseline = "sod:5";
assert(Visible(app, laterReward) and not Visible(app, laterVendor));
-- Distinct rebuilt bosses/reward lists remain separate even when their parent instance ID matches.
do
	local oldScope = { instanceID = 999001, difficultyID = 9, releasePhases = { "era:1" } };
	local sodScope = { instanceID = 999001, difficultyID = 201, releasePhases = { "sod:4" } };
	local oldBoss = { npcID = 900101, hash = "boss:900101", parent = oldScope, g = {} };
	local sodBoss = { npcID = 900102, hash = "boss:900102", parent = sodScope, g = {} };
	local oldReward = Item({ parent = oldBoss }); oldReward.itemID = 900201;
	local sodReward = Item({ parent = sodBoss }); sodReward.itemID = 900202;
	oldBoss.g[1], sodBoss.g[1] = oldReward, sodReward;
	local bosses = { oldBoss }; app.MergeObjects(bosses, { sodBoss });
	assert(#bosses == 2 and bosses[1].g[1].itemID == 900201 and bosses[2].g[1].itemID == 900202);
	assert(bosses[1].parent.difficultyID == 9 and bosses[2].parent.difficultyID == 201);
	assert(not Visible(app, oldReward) and Visible(app, sodReward));
	local sharedOld = Item({ parent = oldBoss }); sharedOld.itemID = 900203;
	local sharedSod = Item({ parent = sodBoss, releasePhases = { "sod:6" } }); sharedSod.itemID = 900203;
	local shared = app.MergedObject({ sharedOld, sharedSod }, true);
	assert(app.Modules.Progression.GetMergedSourceCount(shared) == 2);
	assert(not Visible(app, shared), "A shared item must retain the distinct old/Rebuilt source alternatives");
	app.ProgressionProfile.baseline = "sod:6";
	assert(Visible(app, shared));
end
-- Same NPC identity can still contain independently gated reward occurrences.
-- IDs mirror maintained-source regression cases; this fixture is not a live acquisition observation.
do
	app.ProgressionProfile = Profile("sod", 4, 8, 1605);
	local tier1 = Item({ hash = "item:226659" }); tier1.itemID = 226659;
	local tier2 = Item({ hash = "item:232099" }); tier2.itemID = 232099;
	local vendor4 = { npcID = 227819, hash = "npc:227819", releasePhases = { "sod:4" }, g = { tier1 } };
	local vendor5 = { npcID = 227819, hash = "npc:227819", releasePhases = { "sod:5" }, g = { tier2 } };
	tier1.parent, tier2.parent = vendor4, vendor5;
	local vendors = { vendor4 }; app.MergeObjects(vendors, { vendor5 });
	assert(#vendors == 1 and #vendors[1].g == 2);
	assert(Visible(app, tier1) and not Visible(app, tier2), "Merging a shared NPC header must not open a later reward source");
	app.ProgressionProfile.baseline = "sod:5";
	assert(Visible(app, tier1) and Visible(app, tier2));
end
app.ProgressionProfile = Profile("wrath", 2, 4, 30);
assert(app.Settings:GetUnobtainableFilter(31) and not app.Settings:GetUnobtainableFilter(32));
raw.Unobtainable[32] = true;
assert(app.Settings:GetUnobtainableFilter(32));
app.ProgressionProfile = Profile("titan", 6, 10);
assert(not app.Settings:GetReleasePhaseFilter("titan:7"), "Titan must not inherit Wrath numeric phase choices");

-- Copy actual profile storage; flat overrides must not alias or discard explicit false.
do
	local _, _, env = MakeApp(Profile("era", 6, 6, 11));
	local state = { Unobtainable = { [12] = false }, ReleasePhases = { ["era:2"] = false }, General = {}, Tooltips = {}, Filters = {} };
	env.AllTheThingsProfiles = { Profiles = { original = state } };
	local copy = Section(settingsSource, "local function rawcopy(source, copy)", "-- Removes a Profile");
	local owner = { Settings = {} }; owner.ProgressionProfile = Profile("era", 6, 6, 11);
	owner.Settings.GetProfile = function() return "original"; end;
	Compile("local app=select(2,...); local settings=app.Settings;\n" .. copy, "Settings.lua actual profile copy", env)("ATT", owner);
	local result = owner.Settings:CopyProfile("copy", "original");
	assert(result.Unobtainable[12] == false and result.ReleasePhases["era:2"] == false);
	result.ReleasePhases["era:2"] = true;
	assert(state.ReleasePhases["era:2"] == false);
end
-- Both entry points must evaluate complete routes and rebuild the enabled filter array.
local function PhaseVisible(app, item, expected, message)
	assert(Visible(app, item) == expected
		and (not not app.Modules.Filter.Filters.TestAccount(item)) == expected, message);
end
-- Numeric phase cannot borrow release permission from a different acquisition alternative.
do
	local a, choices = MakeApp(Profile("titan", 6, 10));
	choices.Unobtainable[31], choices.Unobtainable[32] = false, true;
	local blocked = Item({ releasePhases = { "titan:6" }, phase = 31 });
	local future = Item({ releasePhases = { "titan:7" }, phase = 32 });
	local combined = a.MergedObject({ blocked, future }, true);
	assert(combined.phase == 31, "The existing merger must still choose the earliest numeric phase");
	PhaseVisible(a, combined, false, "Separate sources cannot supply each other's release and numeric phase");
	choices.ReleasePhases["titan:7"] = true;
	PhaseVisible(a, combined, true, "A complete permitted alternative survives a blocked flattened phase");
	PhaseVisible(a, a.CloneObject(combined), true, "Merged clones retain their permitted alternative");
	choices.ReleasePhases["titan:7"] = false;
	a.Modules.Filter.Set.Phase(false);
	PhaseVisible(a, combined, true, "Disabling Phase bypasses only the numeric phase predicate");
	for _,fields in ipairs({ { releasePhases = { "titan:7" } },
		{ releasePhases = { "titan:6" }, u = 2 }, { releasePhases = { "titan:6" }, e = 2 } }) do
		fields.phase = 31;
		PhaseVisible(a, a.MergedObject({ Item(fields) }, true), false,
			"Disabling Phase must preserve release, unobtainable, and event restrictions");
	end
	a.Modules.Filter.Set.Phase(true);
	PhaseVisible(a, combined, false, "Re-enabling Phase restores both filtering entry points");

	-- Detach copied ancestry and verify that both weak originals really disappear.
	local ancestor = { phase = 31 };
	local source = Item({ releasePhases = { "titan:6" }, parent = ancestor });
	local copy = a.CloneObject(source); copy.parent = nil; copy.sourceParent = nil;
	a.MergeProperties(copy, future);
	PhaseVisible(a, copy, false, "A detached merged route retains a phase-only ancestor");
	ancestor.phase = 32; PhaseVisible(a, copy, true, "Phase-only ancestry remains live");
	ancestor.phase = 31; PhaseVisible(a, copy, false, "Ancestor changes refresh the retained fallback");
	local weak = setmetatable({ source, ancestor }, { __mode = "v" });
	source, ancestor = nil, nil; collectgarbage("collect"); collectgarbage("collect");
	assert(weak[1] == nil and weak[2] == nil, "Detached ancestry must not retain weak acquisition originals");
	PhaseVisible(a, copy, false, "Collected phase-only ancestry retains its last observed restriction");

	-- A copy can gain phase-only ancestry after its original acquisition route was captured.
	local original = Item({ releasePhases = { "titan:6" } });
	local occurrence = a.CloneObject(original); occurrence.parent = { phase = 31 };
	local context = occurrence.parent;
	local detached = a.MergedObject({ occurrence, future }, true);
	PhaseVisible(a, detached, false, "Late acquisition contexts retain phase-only restrictions");
	context.phase = 32; PhaseVisible(a, detached, true, "Late acquisition contexts are evaluated live");
	context.phase = 31; PhaseVisible(a, detached, false, "Late contexts refresh their phase fallback");
	local weakContext = setmetatable({ occurrence, context }, { __mode = "v" });
	occurrence, context = nil, nil; collectgarbage("collect"); collectgarbage("collect");
	assert(weakContext[1] == nil and weakContext[2] == nil);
	PhaseVisible(a, detached, false, "Collected late contexts retain their numeric phase");

	original = Item({ releasePhases = { "titan:6" }, phase = 31 });
	local localCopy = a.CloneObject(original); localCopy.phase = nil;
	local reclone = a.CloneObject(localCopy);
	PhaseVisible(a, reclone, true, "A recloned explicit nil phase delta stays local to that occurrence");
	assert(original.phase == 31);
	PhaseVisible(a, a.MergedObject({ reclone, future }, true), true, "Remerging preserves an explicit nil phase delta");
	reclone.phase = 31;
	PhaseVisible(a, a.CloneObject(reclone), false, "A newer local phase write supersedes an inherited nil delta");
	reclone.phase = 32;
	PhaseVisible(a, a.CloneObject(reclone), true, "New numeric phase deltas survive recloning");
	local untouched = a.CloneObject(original);
	original.phase = 32; PhaseVisible(a, untouched, true, "Untouched copies still read the original phase live");
	original.phase = 31; PhaseVisible(a, untouched, false, "A local override does not freeze untouched copies");
	local display = a.MergedObject({ localCopy, future }, true);
	PhaseVisible(a, display, true, "Observe a copy's nil phase before its weak reference disappears");
	local weakCopy = setmetatable({ localCopy }, { __mode = "v" }); localCopy = nil;
	collectgarbage("collect"); collectgarbage("collect");
	assert(weakCopy[1] == nil);
	PhaseVisible(a, display, true, "A collected copy retains its observed nil phase delta");

	-- Flattening refreshes the phase fallback shared by previously created copies.
	original.phase = 32; a.MergeProperties(original, future);
	PhaseVisible(a, untouched, true, "Flattening must retain an original's current numeric phase");
	local weakOriginal = setmetatable({ original }, { __mode = "v" }); original = nil;
	collectgarbage("collect"); collectgarbage("collect");
	assert(weakOriginal[1] == nil);
	PhaseVisible(a, untouched, true, "Collected flattened originals preserve the refreshed phase fallback");
end
-- Both availability callbacks keep their acquisition origin and copy-local phase delta.
for _,field in ipairs({ "u", "e" }) do
	local a, choices = MakeApp(Profile("titan", 6, 10));
	choices.Unobtainable[31], choices.Unobtainable[32] = false, true;
	local callback = function(group, parent, update)
		a.Modules.Progression.SetSourceAvailability(group, field, nil); update(group, parent); return true;
	end;
	local source = Item({ releasePhases = { "titan:6" }, phase = 31, [field] = 2, OnUpdate = callback });
	local future = Item({ releasePhases = { "titan:7" }, phase = 32 });
	local merged = a.MergedObject({ source, future }, true);
	a.UpdateGroups(nil, { merged });
	assert(not merged.visible, "Self-updating callbacks cannot borrow another route's numeric phase");
	PhaseVisible(a, merged, false, "A callback only adapts its retained origin's named availability field");
	choices.Unobtainable[31] = true; a.UpdateGroups(nil, { merged }); assert(merged.visible);
	choices.Unobtainable[31] = false;
	local copy = a.CloneObject(source); copy.phase = nil;
	a.UpdateGroups(nil, { copy }); assert(copy.visible);
	local reclone = a.CloneObject(copy);
	a.MergeProperties(reclone, future);
	PhaseVisible(a, reclone, true, "Callbacks preserve nil phase deltas through cloning and flattening");
	a.Modules.Progression.SetSourceAvailability(reclone, field, 2);
	PhaseVisible(a, reclone, false, "A newer availability write keeps the existing phase delta");
	a.Modules.Progression.SetSourceAvailability(reclone, field, nil);
	PhaseVisible(a, reclone, true, "Clearing availability must not discard the retained nil phase override");
	assert(source.phase == 31 and source[field] == 2, "Copy callbacks leave their original source unchanged");
end
-- Mapped numeric IDs use namespaced choices; unmapped IDs retain numeric settings.
do
	local a, choices = MakeApp(Profile("mapped", 1, 2, 31));
	local mapped = Item({ phase = 31 });
	choices.ReleasePhases["mapped:1"] = false; choices.Unobtainable[31] = true;
	PhaseVisible(a, mapped, false, "Namespaced false overrides a mapped numeric true");
	choices.ReleasePhases["mapped:1"] = true; choices.Unobtainable[31] = false;
	PhaseVisible(a, mapped, true, "Namespaced true overrides a mapped numeric false");
	local controlled = a.MergedObject({ Item({ releasePhases = { "mapped:1" }, phase = 32 }) }, true);
	choices.ReleasePhases["mapped:2"] = false; choices.Unobtainable[32] = true;
	PhaseVisible(a, controlled, false, "Controlled numeric phase uses its declared legacyU mapping");
	choices.ReleasePhases["mapped:2"] = true; choices.Unobtainable[32] = false;
	PhaseVisible(a, controlled, true, "Controlled routes honor namespaced true choices live");
	local unmapped = Item({ phase = 2 });
	PhaseVisible(a, unmapped, false, "Unmapped numeric phases preserve their raw false choice");
	choices.Unobtainable[2] = true;
	PhaseVisible(a, unmapped, true, "Unmapped numeric phases preserve their raw true choice");
end
-- Without a profile, master numeric phase filtering and earliest-phase merging stay active.
do
	local a, choices = MakeApp(nil);
	choices.Unobtainable[31], choices.Unobtainable[32] = false, true;
	local blocked, allowed = Item({ phase = 31 }), Item({ phase = 32 });
	PhaseVisible(a, blocked, false, "Legacy numeric false choices remain hidden");
	PhaseVisible(a, allowed, true, "Legacy numeric true choices remain visible");
	local merged = a.MergedObject({ allowed, blocked }, true);
	assert(merged.phase == 31 and a.Modules.Progression.GetMergedSourceCount(merged) == 0);
	PhaseVisible(a, merged, false, "Legacy merging still filters the earliest numeric phase");
	a.Modules.Filter.Set.Phase(false);
	PhaseVisible(a, merged, true, "Legacy Phase can be disabled in the account filter array");
	a.Modules.Filter.Set.Phase(true);
	PhaseVisible(a, merged, false, "Legacy Phase can be re-enabled in the account filter array");
	local unrestricted = a.MergedObject({ blocked, Item({}) }, true);
	assert(unrestricted.phase == nil);
	PhaseVisible(a, unrestricted, true, "A legacy source without phase keeps the merged view unrestricted");
end
local retail = MakeApp(nil);
local retailItem = Item({ u = 2 });
local retailMerged = retail.MergedObject({ retailItem, Item({}) }, true);
assert(retail.Modules.Progression.GetMergedSourceCount(retailMerged) == 0, "Non-opt-in merges retain the existing path");
print("PASS: actual per-flavor phase preferences, source alternatives, u/events, ancestry, clone lifecycle, and legacy compatibility");
