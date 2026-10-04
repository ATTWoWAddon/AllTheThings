-- Standalone behavior regression suite for the PR 2277 Retail backport.
-- Loads only the actual tooltip processors so WoW's UI does not need to run.
-- Run from the repository root: lua .contrib/tests/character-tooltip.lua
-- An optional first argument supplies a different repository root.
local root = arg[1] or "."
local function read(path)
	local file = assert(io.open(path, "rb")); local data = file:read("*a"); file:close(); return data
end
local source = read(root .. "/src/Settings/Pages/Interface - Information.lua")
local referenceDB = read(root .. "/db/Standard/ReferenceDB.lua")
local skillDBSource = assert(referenceDB:match("(_%.SkillDB=.-)_%.TW_EventIDs="), "Cannot locate actual SkillDB")
local skillDB = assert(load("local _ = {}\n" .. skillDBSource .. "\nreturn _.SkillDB", "actual-SkillDB"))()
-- WoW's Enum.FlightPathFaction values are also reflected in src/base.lua quest faction data.
local ALLIANCE, HORDE = 2, 1
local section = assert(source:match("(%-%- Known By / Completed By.-)%-%- Specialization Requirements"), "Cannot locate tooltip processor section")
local program = [[
local _, app = ...
local L, settings = app.L, app.Settings
local tinsert, tremove = table.insert, table.remove
local wipearray = app.wipearray
local Colorize = app.Modules.Color.Colorize
local GetRelativeValue = app.GetRelativeValue
local GetRealmName = GetRealmName
local IsQuestFlaggedCompletedOnAccount = app.WOWAPI.IsQuestFlaggedCompletedOnAccount
local GetItemCount = app.WOWAPI.GetItemCount
local GetProfessionInfoByRecipeID = app.WOWAPI.GetProfessionInfoByRecipeID
]] .. section .. [[
return { known = ProcessForKnownBy, completed = ProcessForCompletedBy, useful = ProcessForUsefulFor, builder = BuildKnownByInfoForKind }
]]
local tests, failures = 0, {}
local function equal(actual, expected, reason)
	assert(actual == expected, (reason or "Values differ") .. ": expected " .. tostring(expected) .. ", got " .. tostring(actual))
end
local function contains(haystack, needle, reason)
	assert(haystack:find(needle, 1, true), (reason or "Expected text") .. ": " .. needle .. " in " .. haystack:sub(1,1000))
end
local function excludes(haystack, needle, reason)
	assert(not haystack:find(needle, 1, true), (reason or "Unexpected text") .. ": " .. needle .. " in " .. haystack)
end
local function text(rows)
	local values = {}; for _, row in ipairs(rows) do values[#values+1] = (row.left or "") .. " " .. (row.right or "") end
	return table.concat(values, "\n")
end
local function plain(value) return value:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|T.-|t", "") end
local currentRealm = "Aegwynn (EU).+"
local function character(name, realm, faction, color, extra)
	local c = { name = name, realm = realm or currentRealm, factionID = faction,
		text = "|c" .. (color or "ffffffff") .. name .. "-" .. (realm or currentRealm) .. "|r" }
	for k,v in pairs(extra or {}) do c[k] = v end
	return c
end
local function fixture(opts)
	opts = opts or {}
	local settings = { GroupByRealm = opts.grouped or false }
	function settings:GetTooltipSetting(key) return self[key] end
	function settings:Get(key) return self[key] end
	local app = {
		Settings = settings, L = { KNOWN_BY = "Known by %s", COMPLETED_BY = "Completed by %s", OWNED_BY = "Owned by %s", USEFUL_FOR = "Useful for %s", TITLE_NEUTRAL = "Neutral", UNKNOWN = "Unknown", UNKNOWN_REALM = "Unknown Realm" },
		IsClassic = opts.classic or false, IsRetail = not opts.classic, IsForever = false,
		GameBuildVersion = opts.build or (opts.classic and 20000 or 120000), GUID = "current",
		Colors = { TooltipDescription = "description", Alliance = "ff0088ff", Horde = "ffff0000" },
		AccountWideQuestsDB = {}, EmptyTable = {},
		SkillDB = skillDB,
		Modules = { Color = { Colorize = function(value, color) return "|c" .. color .. value .. "|r" end } },
		WOWAPI = {}, SortDefaults = { name = function(a,b) return (a.name or a.text or "") < (b.name or b.text or "") end },
		wipearray = function(t) for i=#t,1,-1 do t[i]=nil end end,
		Sort = function(t, compare) table.sort(t, compare) end,
		contains = function(array,value) for _,v in ipairs(array) do if v==value then return true end end end,
	}
	local objects, professionInfos, accountQuests, inventory = {}, {}, {}, {}
	function app.SearchForObject(key, id) return objects[key] and objects[key][id] end
	function app.SearchForField(key, id)
		local result = app.SearchForObject(key, id); return result and {result} or {}
	end
	function app.GetRelativeValue(object, key)
		while object do if object[key] then return object[key] end; object = object.sourceParent or object.parent end
	end
	function app.WOWAPI.GetProfessionInfoByRecipeID(id) return professionInfos[id] end
	function app.WOWAPI.IsQuestFlaggedCompletedOnAccount(id) return accountQuests[id] end
	function app.WOWAPI.GetItemCount(id) return inventory[id] or 1 end
	local data = {}
	local env = setmetatable({
		ATTCharacterData = data, GetRealmName = function() return currentRealm end,
		FACTION_ALLIANCE = "Alliance", FACTION_HORDE = "Horde", FACTION_NEUTRAL = "Neutral", UNKNOWN = "Unknown",
		ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE = "Account-Wide", ACCOUNT_COMPLETED_QUEST_NOTICE = "Previously completed on your Account",
		Enum = { FlightPathFaction = { Alliance = ALLIANCE, Horde = HORDE, Neutral = 0 } },
		tinsert = table.insert, tremove = table.remove,
	}, {__index=_G})
	local processors = assert(load(program, "tooltip-processors", "t", env))("ATT", app)
	local f = { app=app, settings=settings, data=data, objects=objects, professionInfos=professionInfos,
		accountQuests=accountQuests, inventory=inventory, processors=processors }
	function f:run(kind, reference)
		assert(self.processors[kind], kind .. " processor missing")
		local rows = {}; self.processors[kind]({}, reference, rows); return rows
	end
	return f
end
local function accountSync()
	local accountSource = read(root .. "/src/UI/Windows/Account Management.lua")
	local typeDefinitions = assert(accountSource:match("(%-%- Data Handling.-)%-%- Serialization"), "Cannot locate account wire types")
	local numericCode = assert(accountSource:match("(local function serializeKV.-dser%.numnumtbl = deserializeKV)"), "Cannot locate numeric map serialization")
	local separators = assert(accountSource:match("(local rowIdSep =.-local rowEnd = [^\r\n]+)"), "Cannot locate numeric map separators")
	local serializers = assert(accountSource:match("(local defaultDeserializer.-)local function ReceiveCharacterSummary"), "Cannot locate actual account serializers")
	-- WoW adds string.split; standalone Lua does not provide it.
	function string.split(separator, value)
		local pieces, start = {}, 1
		while true do
			local found = value:find(separator,start,true)
			if not found then pieces[#pieces+1]=value:sub(start); break end
			pieces[#pieces+1]=value:sub(start,found-1); start=found+#separator
		end
		return table.unpack(pieces)
	end
	local env = setmetatable({app={EmptyFunction=function() end}, wipe=function(t) for k in pairs(t) do t[k]=nil end end}, {__index=_G})
	-- Load the actual numeric library and actual field registrations. The unrelated
	-- bitarray implementation contains loop-variable assignments allowed by WoW's Lua
	-- but rejected by standalone Lua 5.5, so it is outside this numeric-map test.
	local code = typeDefinitions .. "\nlocal ser,dser={},{}\n" .. separators .. "\n" .. numericCode .. "\n" .. serializers
		.. "\nreturn {serialize=serializers.ProfessionRanks, deserialize=deserializers.ProfessionRanks}"
	return assert(load(code,"account-serializers","t",env))()
end
local function test(name, fn)
	tests = tests + 1
	local ok, err = xpcall(fn, debug.traceback)
	if ok then print("PASS " .. name) else failures[#failures+1] = name .. "\n" .. err; print("FAIL " .. name) end
end
local function addRecipeCharacters(f, skillID, threshold)
	local ranks = { Able=threshold, Low=threshold-1, Known=threshold+10, Ignored=threshold+10, WrongExpansion=200, BooleanOnly=false, NoProfession=threshold+10 }
	for name, rank in pairs(ranks) do
		local c = character(name, nil, ALLIANCE, nil, {Spells={}, Professions={[171]=true}, ProfessionRanks={}, ActiveSkills={}})
		if rank then c.ProfessionRanks[skillID]=rank; c.ActiveSkills[f.app.SkillDB.SkillToSpell[skillID] or 2259]={rank,200} end
		if name == "Known" then c.Spells[101]=true end
		if name == "Ignored" then c.ignored=true end
		if name == "WrongExpansion" then c.ProfessionRanks={[171]=200}; c.ActiveSkills={[2259]={200,200}} end
		if name == "NoProfession" then c.Professions={} end
		f.data[name] = c
	end
end
local function usefulOnlyAble(f, reference)
	local rows = f:run("useful", reference); local rendered = text(rows)
	contains(rendered, "Able")
	for _, name in ipairs({"Low", "Known", "Ignored", "WrongExpansion", "BooleanOnly", "NoProfession"}) do excludes(rendered, name) end
	return rows
end

test("flat Known by keeps class colors, plain-name order, and exact realm suffix", function()
	local f=fixture()
	f.data.z=character("Zulu", nil, 1, "ff000001", {Spells={[10]=true}})
	f.data.a=character("Alpha", nil, 1, "fffffff1", {Spells={[10]=true}})
	f.data.foreign=character("Foreign", "Aegwynn (EU).+-East", 2, nil, {Spells={[10]=true}})
	f.data.ignored=character("Ignored", nil, 1, nil, {Spells={[10]=true},ignored=true})
	local rows=f:run("known", {spellID=10, CACHE="Spells"})
	equal(#rows,1,"Flat output row count")
	local rendered=text(rows)
	contains(rendered,"|cfffffff1Alpha|r"); contains(rendered,"|cff000001Zulu|r")
	contains(rendered,"Foreign-Aegwynn (EU).+-East")
	excludes(rendered,"Alpha-Aegwynn"); excludes(rendered,"Ignored")
	assert(rendered:find("Alpha",1,true)<rendered:find("Zulu",1,true), "Characters must sort by plain names")
end)

test("flat suffix removal does not alter names or foreign realm prefixes", function()
	local f=fixture()
	f.data.a=character("Realm", "OtherRealm", 1, nil, {Spells={[10]=true}})
	f.data.b=character("Aegwynn (EU).+", nil, 1, nil, {Spells={[10]=true}})
	local rendered=text(f:run("known", {spellID=10}))
	contains(rendered,"Realm-OtherRealm"); contains(rendered,"|cffffffffAegwynn (EU).+|r")
end)

test("grouped output has realm/faction counts and sorts names inside groups", function()
	local f=fixture({grouped=true})
	f.data.z=character("Zulu", "ZuluRealm", 1, "ff000001", {Spells={[10]=true}})
	f.data.a=character("Alpha", "ZuluRealm", 1, "fffffff1", {Spells={[10]=true}})
	f.data.h=character("Hordechar", "AlphaRealm", 2, nil, {Spells={[10]=true}})
	f.data.ignore=character("Ignored", "ZuluRealm", 1, nil, {Spells={[10]=true},ignored=true})
	local rows=f:run("known", {spellID=10}); local rendered=text(rows)
	assert(#rows>1,"Grouped output should have separate headers")
	contains(rendered,"AlphaRealm"); contains(rendered,"ZuluRealm"); contains(rendered,"Alliance"); contains(rendered,"Horde")
	contains(rendered,"(2)"); contains(rendered,"(1)")
	assert(rendered:find("AlphaRealm",1,true)<rendered:find("ZuluRealm",1,true),"Realm headers should sort")
	assert(rendered:find("Alpha",rendered:find("ZuluRealm",1,true),true)<rendered:find("Zulu",rendered:find("ZuluRealm",1,true)+9,true),"Names should sort inside realm")
	contains(rendered,"|cfffffff1Alpha|r"); excludes(rendered,"Ignored")
end)

test("neutral and missing factions remain visible in grouped output", function()
	local f=fixture({grouped=true})
	f.data.n=character("Neutralchar", "OtherRealm", 0, nil, {Spells={[10]=true}})
	f.data.u=character("Unknownchar", "OtherRealm", nil, nil, {Spells={[10]=true}})
	local rendered=text(f:run("known",{spellID=10}))
	contains(rendered,"Neutralchar"); contains(rendered,"Unknownchar"); excludes(rendered,"Alliance"); excludes(rendered,"Horde")
end)

test("Known by respects cache type and per-character accountwide overrides", function()
	local f=fixture(); f.data.a=character("Learner",nil,1,nil,{Spells={[10]=true},Toys={[20]=true}})
	equal(#f:run("known",{spellID=10,__type="Mount"}),0)
	contains(text(f:run("known",{spellID=10,__type="Mount",perCharacter=true})),"Learner")
	contains(text(f:run("known",{knownByID=20,CACHE="Toys"})),"Learner")
end)

test("Completed by includes quest history and excludes ignored characters", function()
	local f=fixture({grouped=true})
	f.data.current=character("Current",nil,1,nil,{Quests={[20]=true}})
	f.data.prior=character("Prior",nil,1,nil,{PriorQuests={[20]=true}})
	f.data.ignore=character("Ignored",nil,1,nil,{Quests={[20]=true},ignored=true})
	local rendered=text(f:run("completed",{questID=20}))
	contains(rendered,"Current"); contains(rendered,"Prior"); excludes(rendered,"Ignored")
	equal(#f:run("completed",{questID=20,objectiveID=1}),0)
	equal(#f:run("completed",{questID=20,recipeID=101}),0)
end)

test("account-wide quest and historic pseudo messages stay flat when grouped", function()
	local f=fixture({grouped=true}); f.app.AccountWideQuestsDB[20]=true; f.accountQuests[20]=true
	local rows=f:run("completed",{questID=20}); equal(#rows,1); contains(text(rows),"Completed by Account-Wide")
	f.app.AccountWideQuestsDB[20]=nil
	rows=f:run("completed",{questID=20}); equal(#rows,1); contains(text(rows),"Previously completed on your Account")
	excludes(text(rows),currentRealm); excludes(text(rows),"Neutral")
end)

for _, info in ipairs({{"explorationID","Exploration"},{"firstcraftID","FirstCrafts"},{"professionnodeID","ProfessionNodes"}}) do
	test("Completed by "..info[1].." filters ignored characters", function()
		local f=fixture(); f.data.a=character("Eligible",nil,1,nil,{[info[2]]={[30]=true}})
		f.data.b=character("Ignored",nil,1,nil,{[info[2]]={[30]=true},ignored=true})
		local rendered=text(f:run("completed",{[info[1]]=30})); contains(rendered,"Eligible"); excludes(rendered,"Ignored")
	end)
end

test("Classic achievement completion ignores hidden characters", function()
	local f=fixture({classic=true,build=40000})
	f.data.a=character("Eligible",nil,1,nil,{Achievements={[30]=true}})
	f.data.b=character("Ignored",nil,1,nil,{Achievements={[30]=true},ignored=true})
	local rendered=text(f:run("completed",{key="achievementID",achievementID=30})); contains(rendered,"Eligible"); excludes(rendered,"Ignored")
end)

for _, info in ipairs({{"mountID","Mounts"},{"speciesID","BattlePets"},{"toyID","Toys"}}) do
	test("Classic Owned by "..info[1].." preserves quantity and filters ignored",function()
		local f=fixture({classic=true}); f.settings.GroupByRealm=true; f.inventory[90]=3
		local id=info[1]=="toyID" and 90 or 30
		f.data.current=character("Eligible",nil,1,nil,{[info[2]]={[id]=true}})
		f.data.ignored=character("Ignored",nil,1,nil,{[info[2]]={[id]=true},ignored=true})
		local rendered=text(f:run("completed",{key=info[1],[info[1]]=30,itemID=90}))
		contains(rendered,"Eligible|r (x3)"); excludes(rendered,"Eligible-"..currentRealm); excludes(rendered,"Ignored")
	end)
end

test("Classic profession Known by preserves descending rank rows",function()
	local f=fixture({classic=true,grouped=true})
	f.data.a=character("Lower",nil,1,nil,{ActiveSkills={[2259]={50,150}}})
	f.data.b=character("Higher",nil,1,nil,{ActiveSkills={[2259]={100,150}}})
	f.data.i=character("Ignored",nil,1,nil,{ActiveSkills={[2259]={150,150}},ignored=true})
	local rows=f:run("known",{key="professionID",professionID=171,knownByID=2259})
	equal(#rows,3); contains(rows[2].left,"Higher"); equal(rows[2].right,"100 / 150"); contains(rows[3].left,"Lower")
	excludes(text(rows),"Ignored"); excludes(text(rows),"Higher-"..currentRealm)
end)

test("Useful for Retail requires exact expansion rank and profession ownership",function()
	local f=fixture(); addRecipeCharacters(f,2485,50); f.professionInfos[101]={professionID=2485,parentProfessionID=171}
	usefulOnlyAble(f,{key="recipeID",recipeID=101,spellID=101,requireSkill=171,learnedAt=50})
end)

test("Useful for Retail does not use base profession rank for an unresolved expansion",function()
	local f=fixture()
	f.data.high=character("HighBase",nil,ALLIANCE,nil,{Professions={[171]=true},ProfessionRanks={[171]=300},Spells={}})
	equal(#f:run("useful",{recipeID=101,requireSkill=171,learnedAt=50}),0)
	-- Forever has one skill rank per base profession rather than Retail expansion ranks.
	f.app.IsForever=true
	contains(text(f:run("useful",{recipeID=101,requireSkill=171,learnedAt=50})),"HighBase")
end)

test("Useful for Retail expansion skill metadata works without recipe API",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	usefulOnlyAble(f,{recipeID=101,skillID=2485,requireSkill=171,learnedAt=50})
end)

test("Useful for supports inherited skill and learnedAt metadata",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	usefulOnlyAble(f,{recipeID=101,parent={requireSkill=2485,learnedAt=50}})
end)

test("Useful for resolves recipe metadata through knownByID",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	f.objects.recipeID={[101]={recipeID=101,skillID=2485,requireSkill=171,learnedAt=50}}
	usefulOnlyAble(f,{knownByID=101})
end)

test("Useful for resolves recipe metadata through spellID",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	f.objects.recipeID={[101]={recipeID=101,skillID=2485,requireSkill=171,learnedAt=50}}
	usefulOnlyAble(f,{spellID=101})
end)

test("Useful for ignores spell-only nonrecipes even with profession metadata",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	f.objects.spellID={[101]={spellID=101,skillID=2485,requireSkill=171,learnedAt=50}}
	equal(#f:run("useful",{spellID=101,skillID=2485,requireSkill=171}),0)
end)

test("Useful for defaults learnedAt to one and filters zero ranks",function()
	local f=fixture(); addRecipeCharacters(f,2485,1)
	usefulOnlyAble(f,{recipeID=101,skillID=2485,requireSkill=171})
end)

test("Useful for specialization needs base and specialization profession flags",function()
	local f=fixture()
	f.professionInfos[101]={professionID=164,parentProfessionID=164}
	f.data.able=character("Able",nil,ALLIANCE,nil,{Professions={[164]=true,[9787]=true},ProfessionRanks={[164]=300},Spells={}})
	f.data.base=character("BaseOnly",nil,ALLIANCE,nil,{Professions={[164]=true},ProfessionRanks={[164]=300},Spells={}})
	f.data.specialized=character("NoBase",nil,ALLIANCE,nil,{Professions={[9787]=true},ProfessionRanks={[164]=300},Spells={}})
	local rendered=text(f:run("useful",{recipeID=101,requireSkill=9787,learnedAt=250}))
	contains(rendered,"Able"); excludes(rendered,"BaseOnly"); excludes(rendered,"NoBase")
end)

test("Useful for Classic uses SkillToSpell rank mapping and ignores known/hidden",function()
	local f=fixture({classic=true})
	f.data.able=character("Able",nil,1,nil,{ActiveSkills={[2259]={50,150}},Spells={}})
	f.data.low=character("Low",nil,1,nil,{ActiveSkills={[2259]={49,150}},Spells={}})
	f.data.wrong=character("WrongKey",nil,1,nil,{ActiveSkills={[171]={100,150}},Spells={}})
	f.data.known=character("Known",nil,1,nil,{ActiveSkills={[2259]={100,150}},Spells={[101]=true}})
	f.data.ignored=character("Ignored",nil,1,nil,{ActiveSkills={[2259]={100,150}},ignored=true,Spells={}})
	local rendered=text(f:run("useful",{recipeID=101,requireSkill=171,learnedAt=50}))
	contains(rendered,"Able"); for _,name in ipairs({"Low","WrongKey","Known","Ignored"}) do excludes(rendered,name) end
end)

test("Useful for remains available when Known by is disabled",function()
	contains(source,'CreateInformationType("UsefulFor"')
	local f=fixture(); f.settings.KnownBy=false; addRecipeCharacters(f,2485,50)
	contains(text(f:run("useful",{recipeID=101,skillID=2485,requireSkill=171,learnedAt=50})),"Able")
end)

test("grouped Useful for uses shared headers and counts eligible characters only",function()
	local f=fixture({grouped=true}); addRecipeCharacters(f,2485,50)
	f.data.Second=character("Second",nil,ALLIANCE,"ffaabbcc",{Professions={[171]=true},ProfessionRanks={[2485]=50},Spells={}})
	local rendered=text(f:run("useful",{recipeID=101,skillID=2485,requireSkill=171,learnedAt=50}))
	contains(rendered,"Useful for"); contains(rendered,currentRealm); contains(rendered,"Alliance"); contains(rendered,"(2)")
	contains(rendered,"Able"); contains(rendered,"|cffaabbccSecond|r"); excludes(rendered,"Ignored"); excludes(rendered,"Known")
end)

test("unknown recipe profession data produces no eligibility claims",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	equal(#f:run("useful",{recipeID=101}),0)
	f.objects.recipeID={[101]={recipeID=101}}
	equal(#f:run("useful",{knownByID=101}),0)
end)

test("Useful for respects inherited faction/class/race restrictions",function()
	local f=fixture()
	for _,record in ipairs({
		{"Able",ALLIANCE,8,1}, {"WrongFaction",HORDE,8,1}, {"WrongClass",ALLIANCE,1,1}, {"WrongRace",ALLIANCE,8,2}, {"MissingIdentity",ALLIANCE},
	}) do
		f.data[record[1]]=character(record[1],nil,record[2],nil,{classID=record[3],raceID=record[4],Professions={[171]=true},ProfessionRanks={[2485]=100},Spells={}})
	end
	local rendered=text(f:run("useful",{recipeID=101,skillID=2485,requireSkill=171,learnedAt=50,parent={r=ALLIANCE,c={8},races={1}}}))
	contains(rendered,"Able")
	for _,name in ipairs({"WrongFaction","WrongClass","WrongRace","MissingIdentity"}) do excludes(rendered,name) end
end)

test("Useful for prefers sourceParent inherited profession requirements",function()
	local f=fixture(); addRecipeCharacters(f,2485,50)
	usefulOnlyAble(f,{recipeID=101,learnedAt=50,sourceParent={requireSkill=2485},parent={requireSkill=164}})
end)

test("Useful for Classic specialization requires its cloned skill rank",function()
	local f=fixture({classic=true})
	f.data.able=character("Able",nil,ALLIANCE,nil,{ActiveSkills={[2018]={300,300},[9787]={300,300}},Spells={}})
	f.data.base=character("BaseOnly",nil,ALLIANCE,nil,{ActiveSkills={[2018]={300,300}},Spells={}})
	local rendered=text(f:run("useful",{recipeID=101,requireSkill=9787,learnedAt=250}))
	contains(rendered,"Able"); excludes(rendered,"BaseOnly")
end)

test("Useful for rejects nonnumeric legacy-synced profession ranks",function()
	local f=fixture()
	f.data.legacy=character("Legacy",nil,ALLIANCE,nil,{Professions={[171]=true},ProfessionRanks={[2485]=true},Spells={}})
	equal(#f:run("useful",{recipeID=101,skillID=2485,learnedAt=50}),0)
end)

test("account sync round-trip preserves numeric ranks and distinct expansion IDs",function()
	local sync=accountSync()
	local original={[171]=300,[2485]=55,[2823]=37,[2871]=0}
	local wire=sync.serialize("ProfessionRanks",original,100,99)
	contains(wire,"ProfessionRanks;")
	local payload=wire:match("^[^;]+;(.*)$")
	local result=sync.deserialize("ProfessionRanks",nil,{payload})
	for id,rank in pairs(original) do equal(result[id],rank,"Synced rank for "..id); equal(type(result[id]),"number") end
	equal(sync.serialize("ProfessionRanks",original,100,100),nil,"Unchanged rank timestamp")
end)

test("account sync empty profession updates remove old cached ranks",function()
	local sync=accountSync()
	local wire=sync.serialize("ProfessionRanks",{},100,99)
	assert(wire,"Empty update must be transferred")
	local payload=wire:match("^[^;]+;(.*)$")
	local result=sync.deserialize("ProfessionRanks",{[171]=300,[2485]=55},{payload})
	equal(next(result),nil,"Unlearned professions should leave no stale ranks")
end)

test("incremental account sync sends only ranks newer than the receiver baseline",function()
	local sync=accountSync()
	local c={ProfessionRanks={[2485]=56},TimeStamps={ProfessionRanks=101},lastPlayed=101}
	local field="ProfessionRanks"
	local wire=sync.serialize(field,c[field],c.TimeStamps[field],100)
	assert(wire,"Rank changes after the receiver baseline must be sent")
	local result=sync.deserialize(field,{[2485]=55},{wire:match("^[^;]+;(.*)$")})
	equal(result[2485],56,"Incremental update preserves the new rank")
	equal(sync.serialize(field,c[field],c.TimeStamps[field],101),nil,"Equal timestamp skips redundant data")
	equal(sync.serialize(field,c[field],c.TimeStamps[field],102),nil,"Newer receiver baseline skips older data")
end)

test("empty result followed by another processor cannot retain character state",function()
	local f=fixture(); f.data.a=character("KnownOnly",nil,1,nil,{Spells={[10]=true}})
	contains(text(f:run("known",{spellID=10})),"KnownOnly")
	equal(#f:run("completed",{questID=90}),0)
	equal(#f:run("known",{spellID=90}),0)
end)

print(("\n%d tests, %d failures"):format(tests,#failures))
if #failures>0 then io.stderr:write(table.concat(failures,"\n\n"),"\n"); os.exit(1) end
