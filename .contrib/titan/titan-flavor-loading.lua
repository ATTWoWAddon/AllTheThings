-- Standalone Lua 5.1 tests for the actual client detector and generated flavor chunks.
-- Generated data is executed with mock WoW services; these fixtures do not validate live loot or API semantics.
-- Run from the repository root: lua5.1 .contrib/titan/titan-flavor-loading.lua [repository-root]
assert(_VERSION == "Lua 5.1", "Lua 5.1 is required");
local root = arg[1] or ".";
local function ReadFile(path)
	local file = assert(io.open(root .. "/" .. path, "rb"), "Missing fixture dependency: " .. path);
	local source = file:read("*a"):gsub("^\239\187\191", ""):gsub("\r\n", "\n");
	file:close();
	return source;
end
local function Compile(source, path, env)
	local chunk = assert(loadstring(source, "@" .. path));
	setfenv(chunk, env);
	return chunk;
end
local wrappers = ReadFile("src/WoW API Wrappers.lua");
-- Execute the actual early initializer in malformed-client cases. Existing unrelated wrappers require core APIs.
local earlyWrappers = assert(wrappers:match("^(.-)\napp.IsForever ="), "Missing early client initializer");
local function MakeApp(interface, project, wrathProject, options)
	options = options or {};
	local buildReads = 0;
	local env = setmetatable({
		WOW_PROJECT_ID = project,
		WOW_PROJECT_WRATH_CLASSIC = wrathProject,
		GetBuildInfo = not options.missingBuildAPI and function()
			buildReads = buildReads + 1;
			return "3.80.2", "70372", "Oct 8 2026", interface;
		end or nil,
		GetLocale = function() return options.locale or "enUS"; end,
		GetCurrentRegion = function() return options.region or 1; end,
		GetRealmName = function() return "FixtureRealm"; end,
		C_Seasons = options.season and { GetActiveSeason = function() return options.season; end } or nil,
		C_Item = options.transmog and {} or nil,
		C_Transmog = options.transmog and { GetSlotForInventoryType = function() end } or nil,
		C_TransmogCollection = options.transmog and {
			GetItemInfo = function() end,
			GetSourceInfo = function() end,
			GetAllAppearanceSources = function() end,
			PlayerHasTransmogItemModifiedAppearance = function() end,
		} or nil,
	}, { __index = _G });
	local app = { print = function() end, L = {}, Modules = { Filter = { Set = {} } } };
	Compile(options.earlyOnly and earlyWrappers or wrappers, "src/WoW API Wrappers.lua", env)("AllTheThings", app);
	return app, env, function() return buildReads; end;
end
local cases = {
	{ "Titan candidate", 38002, 11, 11, true },
	{ "Titan lower bound", 38000, 11, 11, true },
	{ "Titan upper bound", 38999, 11, 11, true },
	{ "before Titan", 37999, 11, 11, false },
	{ "after Titan", 39000, 11, 11, false },
	{ "ordinary Wrath", 30405, 11, 11, false, { region = 5, locale = "zhCN" } },
	{ "Classic Era", 11509, 2, 11, false },
	{ "Season of Discovery", 11509, 2, 11, false, { season = 2 } },
	{ "Retail", 120105, 1, 11, false },
	{ "Mists", 50504, 19, 11, false },
	{ "wrong project", 38002, 1, 11, false },
	{ "missing project", 38002, nil, 11, false },
	{ "missing Wrath constant", 38002, 11, nil, false },
	{ "wrong Wrath constant", 38002, 11, 12, false },
	{ "matching wrong constant", 38002, 12, 12, false },
	{ "string project", 38002, "11", 11, false },
	{ "string Wrath constant", 38002, 11, "11", false },
	{ "boolean project", 38002, true, 11, false },
	{ "missing interface", nil, 11, 11, false, { earlyOnly = true } },
	{ "string interface", "38002", 11, 11, false, { earlyOnly = true } },
	{ "boolean interface", false, 11, 11, false, { earlyOnly = true } },
	{ "table interface", {}, 11, 11, false, { earlyOnly = true } },
	{ "missing build API", nil, 11, 11, false, { earlyOnly = true, missingBuildAPI = true } },
};
for _,case in ipairs(cases) do
	local app, _, reads = MakeApp(case[2], case[3], case[4], case[6]);
	assert(app.IsTitanReforged() == case[5], case[1]);
	local lines = table.concat(app.GetClientInformationLines(), "\n");
	assert(lines:find("ServerPhase: unknown (not observed)", 1, true), case[1]);
	assert(lines:find("ReferenceDatabaseProfile: unknown (nil)", 1, true), case[1]);
	assert(reads() == (case[6] and case[6].missingBuildAPI and 0 or 1), "Build info must be captured once");
	if not (case[6] and case[6].earlyOnly) then
		local forever = case[2] >= 16001 and case[2] < 20000;
		assert(app.IsForever == forever and app.IsRetail == (case[2] >= 110000 or forever), case[1]);
		assert(app.IsClassic == not app.IsRetail, case[1]);
	end
end
-- Locale and region do not establish or suppress Titan identity.
for _,locale in ipairs({ "enUS", "zhCN", "zhTW" }) do
	local app = MakeApp(38002, 11, 11, { locale = locale, region = 1 });
	assert(app.IsTitanReforged() and app.IsClassic and not app.IsRetail);
end

-- Load the real settings initialization rather than reproducing its default expressions.
local settingsSource = assert(ReadFile("src/Settings/Settings.lua"):match("^(.-)\nlocal FilterSettingsBase ="));
settingsSource = settingsSource .. "\nreturn settings, GeneralSettingsBase.__index;";
local function CheckTransmogDefaults(interface, project, hasAPIs, expected, tweak)
	local app, env = MakeApp(interface, project, 11, { transmog = hasAPIs });
	if tweak then tweak(env); end
	env.CreateFrame = function() return { SetAllPoints = function() end, Hide = function() end }; end;
	local settings, defaults = Compile(settingsSource, "src/Settings/Settings.lua", env)("AllTheThings", app);
	assert(not not settings.RequiredForInsaneMode.Transmog == expected);
	assert(not not settings.RequiredForRankedMode.Transmog == expected);
	assert(not not settings.RequiredForCoreMode.Transmog == expected);
	assert(not not defaults["Thing:Transmog"] == expected);
	if interface == 38002 then assert(not app.IsRetail and app.IsClassic); end
	return app, env;
end
CheckTransmogDefaults(38002, 11, true, true);
CheckTransmogDefaults(38002, 11, false, false);
CheckTransmogDefaults(30405, 11, true, false);
CheckTransmogDefaults(11509, 2, false, false);
CheckTransmogDefaults(40402, 14, false, true);
CheckTransmogDefaults(120105, 1, false, true);
CheckTransmogDefaults(16001, 2, false, true);
local transmogPrelude = assert(ReadFile("src/Classes/Transmog.lua"):match("^(.-)\nlocal RETRIEVING_DATA"));
local apiNames = { "GetItemInfo", "GetSourceInfo", "GetAllAppearanceSources", "PlayerHasTransmogItemModifiedAppearance" };
for _,missing in ipairs(apiNames) do
	local app, env = CheckTransmogDefaults(38002, 11, true, false, function(env)
		env.C_TransmogCollection[missing] = nil;
	end);
	assert(not app.IsTitanTransmogSupported(), missing);
	app.CreateItem = function(id, data) return { itemID = id, source = data }; end;
	Compile(transmogPrelude, "src/Classes/Transmog.lua", env)("AllTheThings", app);
	assert(app.CreateItemSource(100, 200).itemID == 200, "Incomplete Titan APIs must use item fallback");
	assert(type(app.Modules.Filter.Set.ItemSource) == "function");
end
for _,missing in ipairs({ "slot API", "transmog namespace", "item namespace", "wrong item namespace type" }) do
	local app, env = CheckTransmogDefaults(38002, 11, true, false, function(env)
		if missing == "slot API" then env.C_Transmog.GetSlotForInventoryType = nil;
		elseif missing == "transmog namespace" then env.C_Transmog = nil;
		elseif missing == "item namespace" then env.C_Item = nil;
		else env.C_Item = "invalid"; end
	end);
	app.CreateItem = function(id, data) return { itemID = id, source = data }; end;
	Compile(transmogPrelude, "src/Classes/Transmog.lua", env)("AllTheThings", app);
	assert(app.CreateItemSource(100, 200).itemID == 200, missing);
end
-- Execute the real report append block and the actual Debugger export hook closures.
do
	local app, env, reads = MakeApp(38002, 11, 11);
	app.Version = "fixture-att";
	app.DatabaseMetadata = { profile = "Titan", dataPatch = "3.80.2.70372", phasePolicy = "fixture-policy" };
	local contributor = ReadFile("src/Modules/Contributor.lua");
	local formats = assert(contributor:match("(local ReportLineFormats = {.-\n})\nlocal function GetReportPlayerLocation"));
	local append = assert(contributor:match('(reportData%[#reportData %+ 1%] = ReportLineFormats.ATT:format.-reportData%[#reportData %+ 1%] = "```";)'));
	env.date = function() return "2026-10-21T00:00:00Z"; end;
	env.time = function() return 1; end;
	local source = "local app = select(2,...); local reportData = {};\n" .. formats .. "\n" .. append .. "\nreturn reportData;";
	local report = Compile(source, "src/Modules/Contributor.lua report footer", env)("AllTheThings", app);
	local text = table.concat(report, "\n");
	assert(text:find('ATT: "fixture-att"GameBuild"38002"UTC"2026-10-21T00:00:00Z"', 1, true));
	assert(text:find("ClientVersion: 3.80.2 (string)", 1, true));
	assert(text:find("ClientBuild: 70372 (string)", 1, true));
	assert(text:find("ClientInterface: 38002 (number)", 1, true));
	assert(report[#report] == "```", "Client diagnostic fields must remain inside the report code block");
	local styles = {};
	app.RegisterDataStyleExporter = function(_, name, style) styles[name] = style; end;
	local debugger = ReadFile("src/UI/Windows/Debugger.lua");
	for _,name in ipairs({ "Raw", "Readable" }) do
		local registration = assert(debugger:match('(app:RegisterDataStyleExporter%("' .. name .. '", {.-\n}%))'));
		Compile("local app = select(2,...);\n" .. registration, "src/UI/Windows/Debugger.lua " .. name .. " exporter", env)("AllTheThings", app);
		local header = styles[name].beforeExport({ name = "fixture" });
		assert(header:find("\n-- ClientBuild: 70372 (string)", 1, true));
		assert(header:find("\n-- ReferenceDatabaseProfile: Titan (string)", 1, true));
		assert(header:find("ServerPhase: unknown (not observed)", 1, true));
	end
	assert(reads() == 1, "Reports reuse the captured client tuple");
end
print("PASS: actual Titan detector, malformed identities, diagnostics, and transmog settings/capability fallback");

local toc = ReadFile("AllTheThings.toc");
local genericRef = assert(toc:find("db\\[Game]\\ReferenceDB.lua", 1, true));
local titanRef = assert(toc:find("db\\Titan\\ReferenceDB.lua", 1, true));
local base = assert(toc:find("src\\base.lua", 1, true));
assert(genericRef < titanRef and titanRef < base, "Titan references must precede base consumers");

-- Generic mock names provide localization text only; no API collection result is claimed by this fixture.
local dummy;
dummy = setmetatable({}, {
	__index = function() return dummy; end,
	__call = function() return dummy, dummy, dummy, dummy, dummy, dummy, dummy, dummy; end,
	__concat = function(a, b) return tostring(a) .. tostring(b); end,
	__tostring = function() return "fixture"; end,
});
local function LoadFlavors(interface, project, season, classic)
	local app, env = MakeApp(interface, project, 11, { season = season });
	local state = { references = {}, localization = {}, registrations = {} };
	local current;
	local localized = {};
	app.L = setmetatable({}, {
		__index = function(_, key) return localized[key] or dummy; end,
		__newindex = function(_, key, value)
			state.localization[current] = (state.localization[current] or 0) + 1;
			localized[key] = value;
		end,
	});
	app.DefaultColors = setmetatable({}, { __index = function() return "ffffff"; end });
	app.FilterConstants, app.HeaderConstants = {}, {};
	app.AddEventHandler = function(event, callback)
		assert(event == "OnBuildDataCache", "Unexpected generated database event");
		state.registrations[current] = (state.registrations[current] or 0) + 1;
	end;
	-- Keep values behind a proxy so overwriting an existing reference is observable too.
	local appValues = app;
	app = setmetatable({}, {
		__index = function(_, key)
			if appValues[key] ~= nil then return appValues[key]; end
			return dummy;
		end,
		__newindex = function(_, key, value)
			state.references[current] = (state.references[current] or 0) + 1;
			appValues[key] = value;
		end,
	});
	setmetatable(env, { __index = function(_, key)
		if _G[key] ~= nil then return _G[key]; end
		return dummy;
	end });
	local function Load(path)
		current = path;
		Compile(ReadFile(path), path, env)("AllTheThings", app);
	end
	-- The actual TOC order must establish the selected references before base.lua accesses them.
	local family = classic and "Vanilla" or "Wrath";
	local expected = classic and (season == 2 and "VanillaSOD" or "Vanilla") or (app.IsTitanReforged() and "Titan" or "Wrath");
	Load("db/" .. family .. "/ReferenceDB.lua");
	Load("db/Titan/ReferenceDB.lua");
	if not classic then assert(app.DatabaseMetadata.profile == expected, "Exactly one selected reference profile must survive"); end
	current = "src/Modules/Progression.lua";
	Compile(ReadFile(current), current, env)("AllTheThings", app);
	assert(app.Modules.Progression.GetProfile() == nil, "The progression profile is selected by guarded localization");
	assert(type(appValues.RaceDB) == "table" and next(appValues.RaceDB), "RaceDB must exist before base.lua");
	assert(type(appValues.Presets) == "table" and next(appValues.Presets), "Presets must exist before base.lua");
	local raceInitializer = assert(ReadFile("src/base.lua"):match('(local _, race, raceID = UnitRace%("player"%);.-app.Race = race;)'));
	env.UnitRace = function() return "Human", "Human", 1; end;
	current = "src/base.lua race initialization";
	Compile('local app = select(2, ...); local factionGroup = "Alliance";\n' .. raceInitializer,
		"src/base.lua race initialization", env)("AllTheThings", app);
	assert(type(appValues.RaceIndex) == "number", "The actual early race consumer must receive initialized references");
	local visited, scripts = {}, {};
	local function LoadXML(path)
		assert(not visited[path], "Unexpected duplicate/cyclic database XML: " .. path);
		visited[path] = true;
		local directory = assert(path:match("^(.*)/"));
		for tag, name in ReadFile(path):gmatch('<(%w+)%s+file="([^"]+)"%s*/>') do
			local target = directory .. "/" .. name:gsub("\\", "/");
			target = target:gsub("[^/]+/%.%./", "");
			if tag == "Include" then LoadXML(target);
			elseif tag == "Script" then scripts[#scripts + 1] = target; Load(target); end
		end
	end
	LoadXML("db/" .. family .. "/Database.xml");
	local supplemental = classic and "VanillaSOD" or "Titan";
	assert(visited["db/" .. supplemental .. "/Database.xml"], "Shared XML must unconditionally enumerate the supplemental profile");
	for _,flavor in ipairs(classic and { "Vanilla", "VanillaSOD" } or { "Wrath", "Titan" }) do
		local active = flavor == expected;
		if not classic then
			assert(not not state.references["db/" .. flavor .. "/ReferenceDB.lua"] == active,
				"Inactive references must not assign: " .. flavor);
		end
		assert(not not state.localization["db/" .. flavor .. "/LocalizationDB.lua"] == active,
			"Inactive localization must not assign: " .. flavor);
		local categories = 0;
		for _,path in ipairs(scripts) do
			if path:find("db/" .. flavor .. "/Categories/", 1, true) then
				categories = categories + 1;
				assert((state.registrations[path] or 0) == (active and 1 or 0),
					"Exactly the active category chunk must register: " .. path);
			end
		end
		assert(categories > 0, "Missing generated categories: " .. flavor);
	end
	local lines = table.concat(app.GetClientInformationLines(), "\n");
	local expectedProfile = classic and (season == 2 and "sod" or "era") or expected:lower();
	assert(app.Modules.Progression.GetProfile().id == expectedProfile, "Guarded localization must select the active flavor lazily");
	assert(lines:find("ProgressionProfile: " .. expectedProfile, 1, true));
	if expected == "Titan" then
		assert(lines:find("VisibilityBaseline: titan:6 (string)", 1, true));
		assert(lines:find("ServerPhase: unknown (not observed)", 1, true));
	end
end
-- The unconditional TOC reference also runs on other game routes. It must preserve every existing key.
local function CheckOtherReferences(flavor, interface, project, season)
	local app, env = MakeApp(interface, project, 11, { season = season });
	setmetatable(env, { __index = function(_, key)
		if _G[key] ~= nil then return _G[key]; end
		return dummy;
	end });
	Compile(ReadFile("db/" .. flavor .. "/ReferenceDB.lua"), "generic " .. flavor .. " references", env)("AllTheThings", app);
	local before, count = {}, 0;
	for key,value in pairs(app) do before[key] = value; count = count + 1; end
	Compile(ReadFile("db/Titan/ReferenceDB.lua"), "inactive Titan references", env)("AllTheThings", app);
	local afterCount = 0;
	for key,value in pairs(app) do
		afterCount = afterCount + 1;
		assert(before[key] == value, "Inactive Titan references changed existing " .. flavor .. " key " .. key);
	end
	assert(afterCount == count, "Inactive Titan references added keys on " .. flavor);
	assert(type(app.RaceDB) == "table" and type(app.Presets) == "table");
end
CheckOtherReferences("Vanilla", 11509, 2);
CheckOtherReferences("Vanilla", 11509, 2, 2); -- SoD uses the existing shared Classic reference route.
CheckOtherReferences("VanillaSOD", 11509, 2, 2); -- Preserve its generated reference output too.
CheckOtherReferences("Standard", 120105, 1);
CheckOtherReferences("Mists", 50504, 19);
LoadFlavors(38002, 11);
LoadFlavors(30405, 11);
LoadFlavors(11509, 2, nil, true);
LoadFlavors(11509, 2, 2, true);
print("PASS: actual generated Wrath/Titan references, localization, XML enumeration, and category registration guards");
