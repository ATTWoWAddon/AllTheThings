-- Standalone Lua 5.1 tests for actual client detection, reports, and guarded transmog defaults.
-- Mock WoW services establish runtime behavior, not live API semantics or Titan database support.
-- Run from the repository root: lua5.1 tests/titan-client.lua [repository-root]
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

-- The generic runtime module is available before merge/filter/settings consumers.
local toc = ReadFile("AllTheThings.toc");
local progression = assert(toc:find("src\\Modules\\Progression.lua", 1, true));
assert(progression < assert(toc:find("src\\DataHandling.lua", 1, true)));
assert(progression < assert(toc:find("src\\Modules\\Filter.lua", 1, true)));
assert(progression < assert(toc:find("src\\Settings\\Settings.xml", 1, true)));
print("PASS: actual Titan detector, malformed identities, diagnostics, and transmog settings/capability fallback");
