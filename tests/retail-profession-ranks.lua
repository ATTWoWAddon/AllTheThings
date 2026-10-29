-- Standalone regression tests for the Retail profession rank cache.
-- Loads the actual API wrappers, callback scheduler, and Retail Tradeskills initialization without the UI.
-- Mock profession data and a controllable timer exercise startup, foreign views, coalesced events,
-- rank timestamps, and tooltip invalidation; separate fixtures cover modern and legacy APIs.
-- Classic Era fixtures omit recipe APIs and verify the no-op fallback and Retail window guard.
-- Run from the repository root: lua5.1 tests/retail-profession-ranks.lua [repository-root]
local root = arg[1] or ".";
local unpack = table.unpack or unpack;
--- Reads addon source relative to the optional repository root and normalizes line endings.
---@param path string # Repository-relative Lua source path.
---@return string source # Complete source text using LF newlines for stable extraction patterns.
local function ReadFile(path)
	local file = assert(io.open(root .. "/" .. path, "r"));
	local content = file:read("*a"):gsub("\r\n", "\n");
	file:close();
	return content;
end
--- Compiles an extracted addon module for execution with the rank-fixture application.
---@param source string # Actual addon source selected by the fixture.
---@param name string # File label used in syntax errors and tracebacks.
---@return fun(addonName: string, app: ATTProfessionRankTestApp) chunk # Compiled addon initializer receiving the fixture services.
local function Compile(source, name)
	return assert((loadstring or load)(source, "@" .. name));
end
local wrappers = ReadFile("src/WoW API Wrappers.lua");
local callbacks = ReadFile("lib/Callback.lua");
local tradeskills = ReadFile("src/UI/Windows/Retail/Tradeskills.lua");
-- Rank initialization precedes the real profession window, which requires the game UI.
tradeskills = assert(tradeskills:match("^(.-)\napp:CreateWindow"), "Cannot locate Retail profession initialization");
local clientBuild = 120000;
GetBuildInfo = function() return "test", "1", "date", clientBuild; end
GetTradeSkillTexture = function() return 1; end
GetSpellInfo = function() return "Skill"; end
InCombatLockdown = function() return false; end
wipe = function(t) for key in pairs(t) do t[key] = nil; end end
local now = 1000;
time = function() return now; end
--- A delayed callback recorded by the fixture's controllable timer.
---@class ATTProfessionRankTestTimer
---@field [1] number # Delay requested by the real callback scheduler.
---@field [2] fun() # Pending callback invoked when the fixture flushes timers.

--- Current and maximum ranks in one pre-existing Classic skill cache entry.
---@class ATTProfessionRankTestSkillRank
---@field [1] number # Current rank that Retail refresh must preserve.
---@field [2] number # Maximum rank retained with that entry.

--- Character-owned professions and synchronization timestamps used by the rank cache.
---@class ATTProfessionRankTestCharacter
---@field Professions table<integer, boolean|number> # Owned base professions, specializations, and always-available skills.
---@field ActiveSkills table<integer, ATTProfessionRankTestSkillRank> # Existing Classic skill tuples that Retail refresh must preserve.
---@field ProfessionRanks? ATTProfessionRanks # Current base and expansion ranks keyed by their own skill-line IDs.
---@field TimeStamps? table<string, number> # Last change timestamp for each synchronized cache field.
---@field lastPlayed? number # Character timestamp advanced by cache changes.

--- Mock addon services plus observable effects of the actual Retail rank-refresh code.
---@class ATTProfessionRankTestApp
---@field CurrentCharacter ATTProfessionRankTestCharacter # Cached professions, ranks, and timestamps.
---@field IsRetail boolean # Selects Retail behavior when the extracted code checks client flavor.
---@field ClassIndex integer # Simulated Hunter class ID, preserving the existing Beast Training ownership flag.
---@field handlers table<string, (fun())[]> # Startup and collection callbacks registered by production code.
---@field events table<string, fun()> # Event callbacks registered by production code.
---@field invalidations integer # Number of tooltip search-cache invalidations.
---@field searchCache table<string, string> # Search results retained when ranks are unchanged and cleared when they change.
---@field WOWAPI {GetProfessionInfoByRecipeID: fun(recipeID: integer): {professionID: integer}?, IsTradeSkillLinked: fun(): boolean} # Actual wrappers selected for the fixture's available API variants.
---@field FlushCallbacks fun() # Executes one batch of callbacks recorded by the real scheduler.
---@field PendingCallbacks fun(): ATTProfessionRankTestTimer[] # Returns callbacks awaiting a manual timer flush.

--- Builds fresh rank caches and event hooks, then loads the real API wrappers and callback scheduler.
---@return ATTProfessionRankTestApp app # Independent state, registered callbacks, and observable cache invalidations.
local function MakeApp()
	local handlers, events, scheduled = {}, {}, {};
	local app = {
		print = function() end,
		L = {},
		IsRetail = true,
		ClassIndex = 3,
		CurrentCharacter = { Professions = {}, ActiveSkills = { [4036] = { 25, 75 } } },
		SkillDB = {
			AlwaysAvailable = { 2819 },
			Specializations = { [202] = { 20219 } },
			BaseSkills = {},
			Conversion = { [2485] = 171, [2823] = 171, [2836] = 202 },
		},
		IsSpellKnownHelper = function(id) return id == 20219; end,
		AddEventHandler = function(name, fn)
			handlers[name] = handlers[name] or {};
			table.insert(handlers[name], fn);
		end,
		AddEventRegistration = function(name, fn) events[name] = fn; end,
		RegisterFuncEvent = function() end,
		invalidations = 0,
		searchCache = {},
	};
	app.WipeSearchCache = function()
		app.invalidations = app.invalidations + 1;
		wipe(app.searchCache);
	end
	C_Timer = { After = function(delay, fn)
		table.insert(scheduled, { delay, fn });
	end };
	app.FlushCallbacks = function()
		local pending = scheduled;
		scheduled = {};
		for _,entry in ipairs(pending) do entry[2](); end
	end
	app.PendingCallbacks = function() return scheduled; end
	app.handlers, app.events = handlers, events;
	Compile(wrappers, "wrappers")("AllTheThings", app);
	Compile(callbacks, "callbacks")("AllTheThings", app);
	return app;
end
local linked, guild, reads = false, false, 0;
local professions = { 1, 2 };
local skillLines = { 171, 2485, 2823, 2836, 9999 };
local infos = {
	[171] = { skillLevel = 0 }, -- Unloaded data must not overwrite the personal base rank.
	[2485] = { skillLevel = 155 },
	[2823] = { skillLevel = 67 },
	[2836] = { skillLevel = 42 },
};
GetProfessions = function() return unpack(professions); end
GetProfessionInfo = function(index)
	if index == 1 then return "Alchemy", 1, 300, 300, 0, 0, 171; end
	if index == 2 then return "Engineering", 1, 200, 300, 0, 0, 202; end
end
C_TradeSkillUI = {
	GetAllProfessionTradeSkillLines = function() reads = reads + 1; return skillLines; end,
	GetProfessionInfoBySkillLineID = function(id) return infos[id]; end,
	GetProfessionInfoByRecipeID = function() return { professionID = 2823 }; end,
	GetTradeSkillLineForRecipe = function() error("The legacy recipe API must not be called"); end,
	IsTradeSkillLinked = function() return linked; end,
	IsTradeSkillGuild = function() return guild; end,
};
local app = MakeApp();
Compile(tradeskills, "retail_tradeskills")("AllTheThings", app);
local refresh = app.handlers.OnStartup[1];
refresh();
local ranks = app.CurrentCharacter.ProfessionRanks;
assert(ranks[171] == 300 and ranks[202] == 200);
assert(ranks[2485] == 155 and ranks[2823] == 67 and ranks[2836] == 42);
assert(ranks[9999] == nil);
assert(app.CurrentCharacter.Professions[171] and app.CurrentCharacter.Professions[202]);
assert(app.CurrentCharacter.Professions[20219] and app.CurrentCharacter.Professions[2819] == 1);
assert(app.CurrentCharacter.Professions[261] == 1, "Retail refresh preserves the Hunter Beast Training flag");
assert(app.CurrentCharacter.ActiveSkills[4036][1] == 25);
assert(app.WOWAPI.GetProfessionInfoByRecipeID(100).professionID == 2823);
assert(app.invalidations == 1);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1000);
assert(app.CurrentCharacter.TimeStamps.Professions == 1000);
assert(app.CurrentCharacter.lastPlayed == 1000);
app.searchCache.recipe = "Current tooltip";
now = 1001;
refresh();
assert(app.invalidations == 1 and app.searchCache.recipe == "Current tooltip");
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1000 and app.CurrentCharacter.lastPlayed == 1000);

-- A linked or guild view must preserve personal ranks and cached tooltips.
for _,mode in ipairs({ "linked", "guild" }) do
	linked, guild = mode == "linked", mode == "guild";
	infos[2823].skillLevel = 999;
	local before = reads;
	refresh();
	assert(reads == before and ranks[2823] == 67);
	assert(app.invalidations == 1 and app.searchCache.recipe == "Current tooltip");
	assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1000);
end
linked, guild = false, false;

-- Use the real callback library to verify duplicate events coalesce into one delayed refresh.
infos[2823].skillLevel = 78;
now = 1002;
local before = reads;
app.events.TRADE_SKILL_SHOW();
app.events.TRADE_SKILL_LIST_UPDATE();
app.events.TRADE_SKILL_LIST_UPDATE();
app.events.SKILL_LINES_CHANGED();
assert(#app.PendingCallbacks() == 1 and app.PendingCallbacks()[1][1] == 2);
assert(reads == before and ranks[2823] == 67);
app.FlushCallbacks();
assert(reads == before + 1 and ranks[2823] == 78);
assert(app.invalidations == 2 and app.searchCache.recipe == nil);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1002);
assert(app.CurrentCharacter.TimeStamps.Professions == 1000 and app.CurrentCharacter.lastPlayed == 1002);
assert(#app.PendingCallbacks() == 0);

-- Subsequent skill changes can schedule another refresh and remove obsolete tooltip results.
app.searchCache.recipe = "Previous skill rank";
infos[2823].skillLevel = 79;
now = 1003;
app.events.SKILL_LINES_CHANGED();
assert(#app.PendingCallbacks() == 1);
app.FlushCallbacks();
assert(ranks[2823] == 79 and app.invalidations == 3 and app.searchCache.recipe == nil);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1003);

-- Dropping engineering removes its expansion ranks and specialization ownership.
professions = { 1 };
skillLines = { 171, 2485, 2823 };
now = 1004;
app.searchCache.recipe = "Dropped profession";
app.events.SKILL_LINES_CHANGED();
app.FlushCallbacks();
assert(ranks[202] == nil and ranks[2836] == nil and ranks[2823] == 79);
assert(app.CurrentCharacter.Professions[202] == nil and app.CurrentCharacter.Professions[20219] == nil);
assert(app.invalidations == 4 and app.searchCache.recipe == nil);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1004 and app.CurrentCharacter.TimeStamps.Professions == 1004);

-- Unloaded expansion data is conservatively omitted until the profession UI provides a rank.
infos[2823].skillLevel = 0;
now = 1005;
refresh();
assert(ranks[2823] == nil and ranks[171] == 300 and app.invalidations == 5);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == 1005 and app.CurrentCharacter.TimeStamps.Professions == 1004);

-- Legacy linked-view and recipe APIs still refresh base ranks and remove stale expansion ranks.
IsTradeSkillLinked = C_TradeSkillUI.IsTradeSkillLinked;
C_TradeSkillUI = { GetTradeSkillLineForRecipe = function() return 171, "Alchemy", 171; end };
app = MakeApp();
assert(app.WOWAPI.GetProfessionInfoByRecipeID(100).professionID == 171);
assert(app.WOWAPI.IsTradeSkillLinked() == false);
linked = true;
assert(app.WOWAPI.IsTradeSkillLinked() == true);
linked = false;
app.CurrentCharacter.ProfessionRanks = { [171] = 250, [2485] = 155 };
app.searchCache.recipe = "Stale expansion rank";
Compile(tradeskills, "retail_tradeskills")("AllTheThings", app);
app.handlers.OnStartup[1]();
assert(app.CurrentCharacter.ProfessionRanks[171] == 300);
assert(app.CurrentCharacter.ProfessionRanks[2485] == nil);
assert(app.CurrentCharacter.Professions[171]);
assert(app.invalidations == 1 and app.searchCache.recipe == nil);
assert(app.CurrentCharacter.TimeStamps.ProfessionRanks == now);
assert(app.CurrentCharacter.lastPlayed == now);

-- Classic Era can lack both recipe APIs, with or without the trade-skill namespace.
clientBuild = 11508;
IsTradeSkillLinked = nil;
for _,hasNamespace in ipairs({ false, true }) do
	C_TradeSkillUI = hasNamespace and {} or nil;
	app = MakeApp();
	assert(app.IsClassic and not app.IsRetail, "The absent-API fixture must use Classic Era");
	assert(type(app.WOWAPI.GetProfessionInfoByRecipeID) == "function",
		"Missing recipe APIs must provide a callable fallback for shared settings");
	assert(app.WOWAPI.GetProfessionInfoByRecipeID(100) == nil,
		"Missing recipe APIs must leave profession information unavailable");
	Compile(tradeskills, "classic_tradeskills")("AllTheThings", app);
	assert(app.handlers.OnStartup == nil, "Classic Era must skip Retail profession initialization");
end

-- Retail still requires a linked-view API; unrelated missing wrappers retain their error.
clientBuild = 120000;
app = MakeApp();
local available, message = pcall(function() return app.WOWAPI.IsTradeSkillLinked; end);
assert(not available and type(message) == "string" and message:find("API IsTradeSkillLinked not available!", 1, true),
	"Retail must report unavailable linked-view API variants");
print("PASS: Retail ranks, exact expansion keys, dropped professions, foreign views, delayed refreshes, tooltip invalidation, API variants, and Classic Era fallback");
