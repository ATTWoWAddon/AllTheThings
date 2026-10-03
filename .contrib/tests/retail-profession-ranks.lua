-- Run from the repository root: lua .contrib/tests/retail-profession-ranks.lua [repository-root]
local root = arg[1] or ".";
local unpack = table.unpack or unpack;
local function ReadFile(path)
	local file = assert(io.open(root .. "/" .. path, "r"));
	local content = file:read("*a"):gsub("\r\n", "\n");
	file:close();
	return content;
end
local function Compile(source, name)
	return assert((loadstring or load)(source, "@" .. name));
end
local wrappers = ReadFile("src/WoW API Wrappers.lua");
local callbacks = ReadFile("lib/Callback.lua");
local tradeskills = ReadFile("src/UI/Windows/Retail/Tradeskills.lua");
-- The rank cache is initialized before the game-window code, which needs a running WoW UI.
tradeskills = assert(tradeskills:match("^(.-)\napp:CreateWindow"));
GetBuildInfo = function() return "12.0.0", "1", "date", 120000; end
GetTradeSkillTexture = function() return 1; end
GetSpellInfo = function() return "Skill"; end
InCombatLockdown = function() return false; end
wipe = function(t) for key in pairs(t) do t[key] = nil; end end
local now = 1000;
time = function() return now; end
local function MakeApp()
	local handlers, events, scheduled = {}, {}, {};
	local app = {
		print = function() end,
		L = {},
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

-- Older clients without modern APIs still capture personal base ranks safely.
C_TradeSkillUI = { GetTradeSkillLineForRecipe = function() return 171, "Alchemy", 171; end };
app = MakeApp();
assert(app.WOWAPI.GetProfessionInfoByRecipeID(100).professionID == 171);
assert(#app.WOWAPI.GetAllProfessionTradeSkillLines() == 0);
assert(app.WOWAPI.GetProfessionInfoBySkillLineID(171) == nil);
Compile(tradeskills, "retail_tradeskills")("AllTheThings", app);
app.handlers.OnStartup[1]();
assert(app.CurrentCharacter.ProfessionRanks[171] == 300);
assert(app.CurrentCharacter.ProfessionRanks[2485] == nil);

-- A client lacking both recipe APIs receives nil rather than an unavailable-wrapper error.
C_TradeSkillUI = nil;
app = MakeApp();
assert(app.WOWAPI.GetProfessionInfoByRecipeID(100) == nil);
assert(#app.WOWAPI.GetAllProfessionTradeSkillLines() == 0);
print("PASS: Retail ranks, exact expansion keys, dropped professions, foreign views, delayed refreshes, tooltip invalidation, and API fallbacks");
