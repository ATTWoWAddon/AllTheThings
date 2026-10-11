-- Exercises actual ATT code for player identity and unit-name caching.
-- Run from the repository root: lua tests/player-names.lua [repository-root]
--
-- Test architecture:
-- Code under test:
--   src/WoW API Wrappers.lua supplies client-build flags and API bindings.
--   src/base.lua builds app.Me, the class-colored complete name and realm.
--   AllTheThings.lua's login storage block updates the existing saved player.
--   src/Classes/CharacterClass.lua supplies feature detection and the cache helper.
--
-- Setup: initialize(opts) creates fake name, realm, build, GUID, class and race APIs.
-- Inputs distinguish the complete GetUnitName result from tuple first/second values,
-- where the second value is a Forever surname or a Retail/Classic realm.
-- Saved spell/profession data starts intact; the saved name and realm may be stale.
-- Execution: compile() runs the wrapper module and extracted base/login blocks.
-- checkIdentity() checks their outputs; unitCache() loads the real cache helper,
-- together with its actual module-level name selection. Cases call player, party1,
-- raid3 and GUID inputs, with regional names absent, disabled or enabled.
-- Assertions compare identities, UI text, API counts and class/race metadata.
-- They verify one feature check per module load, secret-GUID handling,
-- and preservation of existing spell and profession tables at login.
-- Login stores native identity without managing Account Management's Identifier.
-- linked-character-identifiers.lua tests rebuilding that cache before AutoSync.
-- Loading with "fixtures" returns initialize without running the test cases;
-- character-names.lua uses this mode to reuse the initialized player in tooltip tests.
-- test() reports each case and collects assertion failures with tracebacks.
-- Any failed case produces a nonzero exit after all cases have run.

--- Inputs for native player-name APIs and an optional remote-unit lookup.
---@class ATTPlayerNameTestOptions
---@field full string Complete player name returned by GetUnitName.
---@field first string Player first-name component returned by tuple APIs.
---@field second string Forever surname or Retail/Classic realm returned by tuple APIs.
---@field build? integer Client build; defaults to the Forever fixture build.
---@field raw? string Actual realm returned by GetRealmName; defaults to the spaced fixture realm.
---@field savedName? string Existing saved name used to verify login refresh.
---@field savedRealm? string Existing saved realm used to verify login refresh.
---@field savedIdentifier? string Existing derived identifier left for Account Management to refresh.
---@field remoteUnit? string Additional permitted unit token, such as party1 or raid3.
---@field remoteFull? string Remote GetUnitName result, including a Forever surname or Retail/Classic realm suffix.
---@field remoteFirst? string Remote UnitName first result, separate from the UnitFullName name.
---@field remoteName? string Remote UnitFullName name result.
---@field remoteRealm? string Remote UnitFullName surname or realm result.
---@field regionalNames? boolean Feature API result; nil omits RegionalUniqueNamesEnabled entirely.
---@field secretGuid? boolean Whether unit-token GUIDs must be discarded as secret.

--- Native API call counts and the server-name flags passed to GetUnitName.
---@class ATTPlayerNameTestCalls
---@field complete integer GetUnitName call count.
---@field realm integer GetRealmName call count.
---@field unit integer UnitName call count.
---@field unmodified integer UnitNameUnmodified call count.
---@field native integer UnitFullName call count.
---@field nameutil integer NameUtil reconstruction call count.
---@field regional integer RegionalUniqueNamesEnabled evaluation count.
---@field guidInfo integer GetPlayerInfoByGUID call count.
---@field guid integer UnitGUID call count.
---@field class integer UnitClass call count.
---@field race integer UnitRace call count.
---@field secret integer Secret-GUID guard call count.
---@field flags (boolean|"default")[] GetUnitName flags in call order; omitted flags are recorded as "default".

--- Saved collection data that must survive identity initialization.
---@class ATTPlayerNameTestSavedCharacter: ATTNameTestCharacter
---@field Spells table<integer, boolean> Known spells retained by login.
---@field ActiveSkills table<integer, ATTNameTestSkillRank> Profession rank and maximum pairs retained by login.
---@field CustomCollects? table<string, boolean> Custom collection flags initialized by login.
---@field Professions? table<integer, boolean> Known profession spells initialized by login.

--- App fields populated or consumed by the extracted identity source.
---@class ATTPlayerNameTestApp
---@field GUID string Current player GUID fixture.
---@field Level integer Current player level.
---@field FactionID integer Current player faction.
---@field RaceIndex integer Current player race index.
---@field Race string Current player race token.
---@field GameBuildVersion integer Client build populated by the wrapper module.
---@field IsForever boolean Whether the build uses Forever name semantics.
---@field IsRetail boolean Whether the build uses Retail or Forever code paths.
---@field IsClassic boolean Whether the build uses Classic code paths.
---@field CurrentCharacter ATTPlayerNameTestSavedCharacter Refreshed saved player record.
---@field Me string Class-colored complete name and realm built during base initialization.
---@field ClassName string Class-colored localized class name.
---@field ClassIndex integer Current player class ID.
---@field Class string Current player class token.
---@field WOWAPI { issecretvalue: fun(value: string): boolean } Secret-GUID guard used by the unit cache.
---@field print fun(...: string) Silent sink for wrapper-availability messages.
---@field LocalizeGlobalIfAllowed fun(key: string, initialize?: boolean): table<string, ATTPlayerNameTestSavedCharacter> Saved-character table lookup.

--- Mock native APIs and supporting metadata supplied to compiled source.
---@class ATTPlayerNameTestEnvironment
---@field GetBuildInfo fun(): string, string, string, integer Version, build label, date and numeric client build.
---@field GetRealmName fun(): string Actual current realm, with spaces retained.
---@field GetNormalizedRealmName fun(): string Normalized current realm alias.
---@field GetUnitName fun(unit: string, showServer?: boolean): string? Complete native name for an allowed unit.
---@field UnitName fun(unit: string): string?, string? Native first name and client-specific second component.
---@field UnitNameUnmodified fun(unit: string): string, string Unmodified player tuple that must not be used to obtain a realm.
---@field UnitFullName fun(unit: string): string?, string? Player or remote tuple with client-specific second-value semantics.
---@field NameUtil { GetUnmodifiedUnitFullName: fun(unit?: string): string } Reconstruction sentinel that must not be called.
---@field Constants { CharacterNameSeparatorConsts: { CHARACTERNAME_SURNAME_SEPARATOR: string } } Deliberately unrelated surname separator.
---@field UnitClass fun(unit?: string): string, string, integer Localized class, class token and class ID.
---@field UnitRace fun(unit?: string): string, string, integer Localized race, race token and race ID.
---@field UnitGUID fun(unit: string): string GUID for an allowed unit.
---@field RegionalUniqueNamesEnabled? fun(): boolean Whether complete regional names are available.
---@field GetPlayerInfoByGUID fun(guid: string): string, string, string, string, integer, string GUID class/race metadata and native name.
---@field issecretvalue fun(value: string): boolean Whether a GUID must be hidden from the cache.
---@field C_CreatureInfo { GetRaceInfo: fun(raceID?: integer): { raceName: string } } Localized race metadata.
---@field RAID_CLASS_COLORS table<string, { colorStr: string }> Class-color lookup by class token.

--- Exported fixture initializer used by other character-name regression suites.
---@alias ATTPlayerNameTestInitializer fun(opts: ATTPlayerNameTestOptions): ATTPlayerNameTestApp, ATTPlayerNameTestCalls, ATTPlayerNameTestEnvironment
--- Actual unit-cache callable extracted from CharacterClass.lua.
---@alias ATTPlayerNameTestUnitCache fun(record: ATTUnitIdentityCache, unit: string)

local mode,fixtureRoot=...
local root=fixtureRoot or arg[1] or "."
--- Read one repository source file for extraction without executing the full addon.
---@param path string Repository-relative source path.
---@return string source Complete UTF-8 source file contents.
local function read(path)
	local file=assert(io.open(root.."/"..path,"rb")); local value=file:read("*a"); file:close(); return value
end
--- Compile extracted source with fixture APIs under Lua 5.1 or later.
---@param source string Lua source to compile.
---@param name string Chunk name used in diagnostics.
---@param env ATTPlayerNameTestEnvironment Native API fixture and inherited Lua globals.
---@return function chunk Compiled source callable bound to the supplied environment.
local function compile(source,name,env)
	if loadstring and setfenv then local chunk=assert(loadstring(source,name)); setfenv(chunk,env); return chunk end
	return assert(load --[[@as fun(source: string, name: string, mode: string, env: ATTPlayerNameTestEnvironment): function?]](source,name,"t",env))
end
local wrappers=read("src/WoW API Wrappers.lua")
local base=read("src/base.lua")
local startup=read("AllTheThings.lua")
local nameSetup=assert(base:match("(%-%- Determine the player's name and class information.-)%-%- Determine the player's race information"))
local characterSource=read("src/Classes/CharacterClass.lua")
local unitNameSetup=assert(characterSource:match("(local RegionalUniqueNamesEnabled = RegionalUniqueNamesEnabled;.-)local math_floor"),"Cannot locate module-level native name selection")
local unitSetup=assert(characterSource:match("(local function CacheCharacterDataFromAPIs.-)local cache = app.CreateCache"))
local characterSetup=assert(startup:match("(%-%- Character Data Storage.-app%.CurrentCharacter = currentCharacter;)"))
--- Assert equality while retaining a caller-supplied failure explanation.
---@generic T
---@param actual T Value produced by the tested source.
---@param expected T Expected value or unchanged object reference.
---@param message? string Context included in the assertion failure.
local function equal(actual,expected,message)
	assert(actual==expected,(message or "Values differ")..": expected "..tostring(expected)..", got "..tostring(actual))
end
local unpackValues=table.unpack or unpack
--- Supply WoW's literal string splitter for the actual unit-token/GUID detection code.
---@param separator string Nonempty delimiter searched literally.
---@param value string String to split into consecutive fields.
---@return string ... Fields in their original order, including empty fields.
function string.split(separator,value)
	local values,start={},1
	while true do
		local found=value:find(separator,start,true)
		if not found then values[#values+1]=value:sub(start); return unpackValues(values) end
		values[#values+1]=value:sub(start,found-1); start=found+#separator
	end
end
local color="ffaabbcc"
local rawRealm,normalizedRealm="Winter And Rivers","WinterAndRivers"
--- Execute base and login identity initialization against native-name API fixtures.
--- Return the initialized app, call counters and environment for further unit lookups.
---@param opts ATTPlayerNameTestOptions Player API values and optional saved or remote identities.
---@return ATTPlayerNameTestApp app Initialized addon fields and saved player record.
---@return ATTPlayerNameTestCalls calls Native API usage recorded during initialization.
---@return ATTPlayerNameTestEnvironment env Mock APIs available to later source snippets.
local function initialize(opts)
	---@type table<integer, ATTNameTestSkillRank>
	local oldSkills={[2259]={50,100}}
	local savedName,savedRealm=opts.savedName or "OldFirst",opts.savedRealm or "OldSurname"
	---@type ATTPlayerNameTestSavedCharacter
	local saved={name=savedName,realm=savedRealm,text="|c"..color..savedName.."-"..savedRealm.."|r",Identifier=opts.savedIdentifier or "OldFirst-OldSurname",Spells={[10]=true},ActiveSkills=oldSkills}
	---@type table<string, ATTPlayerNameTestSavedCharacter>
	local data={current=saved}
	local realm=opts.raw
	if realm==nil then realm=rawRealm end
	---@type ATTPlayerNameTestCalls
	local calls={complete=0,realm=0,unit=0,unmodified=0,native=0,nameutil=0,regional=0,guidInfo=0,guid=0,class=0,race=0,secret=0,flags={}}
	--- Reject API calls to unit tokens that this fixture does not define.
	---@param unit string Requested player or configured remote unit token.
	local function expectUnit(unit)
		assert(unit=="player" or unit==opts.remoteUnit,"Unexpected unit: "..tostring(unit))
	end
	local app={GUID="current",Level=70,FactionID=2,RaceIndex=1,Race="Human",print=function() end}
	--- Expose the saved character table to the extracted login initialization.
	---@type fun(key: string, initialize?: boolean): table<string, ATTPlayerNameTestSavedCharacter>
	app.LocalizeGlobalIfAllowed=function(key) equal(key,"ATTCharacterData"); return data end
	local env=setmetatable({
		GetBuildInfo=function() return "test","1","date",opts.build or 16001 end,
		GetRealmName=function() calls.realm=calls.realm+1; return realm end,
		GetNormalizedRealmName=function() return normalizedRealm end,
		GetUnitName=function(unit,showServer)
			expectUnit(unit); calls.complete=calls.complete+1; calls.flags[#calls.flags+1]=showServer==nil and "default" or showServer
			return unit=="player" and opts.full or opts.remoteFull
		end,
		UnitName=function(unit)
			expectUnit(unit); calls.unit=calls.unit+1
			if unit=="player" then return opts.first,opts.second end
			-- A distinct second value detects realm reads from the wrong tuple API.
			return opts.remoteFirst,"Ignored UnitName realm"
		end,
		UnitNameUnmodified=function(unit) expectUnit(unit); calls.unmodified=calls.unmodified+1; return opts.first,opts.second end,
		UnitFullName=function(unit)
			expectUnit(unit); calls.native=calls.native+1
			if unit=="player" then return opts.first,opts.second end
			return opts.remoteName,opts.remoteRealm
		end,
		NameUtil={GetUnmodifiedUnitFullName=function() calls.nameutil=calls.nameutil+1; return "Wrong reconstructed name" end},
		Constants={CharacterNameSeparatorConsts={CHARACTERNAME_SURNAME_SEPARATOR="!"}},
		UnitClass=function() calls.class=calls.class+1; return "Mage","MAGE",8 end,
		UnitRace=function() calls.race=calls.race+1; return "Human","Human",1 end,
		UnitGUID=function(unit) expectUnit(unit); calls.guid=calls.guid+1; return unit=="player" and "current" or "remote" end,
		GetPlayerInfoByGUID=function(guid)
			equal(guid,"Player-1-Test"); calls.guidInfo=calls.guidInfo+1
			return "GUID Mage","MAGE","Human","Human",1,"GuidName"
		end,
		issecretvalue=function() calls.secret=calls.secret+1; return opts.secretGuid or false end,
		C_CreatureInfo={GetRaceInfo=function() return {raceName="Human"} end},
		RAID_CLASS_COLORS={MAGE={colorStr=color}},
	},{__index=_G})
	---@cast env ATTPlayerNameTestEnvironment
	if opts.regionalNames~=nil then
		--- Record module-level feature detection independently from unit lookups.
		---@return boolean enabled Whether native names include regional name components.
		env.RegionalUniqueNamesEnabled=function() calls.regional=calls.regional+1; return not not opts.regionalNames end
	end
	compile(wrappers,"@src/WoW API Wrappers.lua",env)("AllTheThings",app)
	compile("local _,app=...\n"..nameSetup,"@src/base.lua",env)("AllTheThings",app)
	compile("local _,app=...\n"..characterSetup,"@AllTheThings.lua",env)("AllTheThings",app)
	---@cast app ATTPlayerNameTestApp
	equal(app.CurrentCharacter,saved,"Login repairs the existing character")
	equal(saved.ActiveSkills,oldSkills,"Cached profession data survives login")
	equal(saved.Spells[10],true,"Cached spell data survives login")
	equal(saved.build,opts.build or 16001,"The current client build is saved")
	assert(calls.complete>=2,"Both initialization paths use the native complete-name API")
	assert(calls.realm>=2,"Both initialization paths read the realm independently")
	equal(calls.unit,0,"UnitName's second return is not used as a realm")
	equal(calls.unmodified,0,"UnitNameUnmodified's second return is not used as a realm")
	equal(calls.native,0,"UnitFullName's second return is not used as a realm")
	equal(calls.nameutil,0,"Complete names are not reconstructed")
	return app,calls,env
end
if mode=="fixtures" then return initialize end
--- Verify that base UI text and the saved login record contain the same complete identity.
---@param opts ATTPlayerNameTestOptions Player APIs and preexisting saved identity.
---@param name string Expected complete native player name.
---@param realm string Expected actual realm, retaining its original spaces.
---@return ATTPlayerNameTestCalls calls Initialization API counts and recorded flags.
local function checkIdentity(opts,name,realm)
	local app,calls=initialize(opts)
	equal(app.CurrentCharacter.name,name,"Saved complete name")
	equal(app.CurrentCharacter.realm,realm,"Saved actual realm")
	local expected="|c"..color..name.."-"..realm.."|r"
	equal(app.Me,expected,"Base display name")
	equal(app.CurrentCharacter.text,expected,"Saved display matches base display")
	return calls
end
--- Compile actual module-level name selection and the cache helper with fixture APIs.
---@param app ATTPlayerNameTestApp Initialized player identity and client-flavor flags.
---@param env ATTPlayerNameTestEnvironment Native APIs used by unit-token lookups.
---@return ATTPlayerNameTestUnitCache cache Callable that fills a unit identity cache record.
local function unitCache(app,env)
	local prefix="local _,app=...\nlocal ClassInfoByClassFile={MAGE={classID=8}}\nlocal ClassInfoByID={[8]={icon=1}}\n"
	return compile(prefix..unitNameSetup.."\n"..unitSetup.."\nreturn CacheCharacterDataFromAPIs","@src/Classes/CharacterClass.lua",env)("AllTheThings",app)
end
---@type integer, string[]
local tests,failures=0,{}
--- Run one named regression and retain its traceback without stopping later cases.
---@param name string Description of the behavior checked by this case.
---@param fn fun() Assertion callback; failures are captured with a traceback.
local function test(name,fn)
	tests=tests+1; local ok,err=xpcall(fn,debug.traceback)
	if ok then print("PASS "..name) else failures[#failures+1]=name.."\n"..err; print("FAIL "..name) end
end

test("login preserves the account cache when name and realm are unchanged",function()
	local cachedIdentifier="Milo River-WinterAndRivers"
	local app=initialize({
		full="Milo River",first="Milo",second="River",
		savedName="Milo River",savedRealm=rawRealm,savedIdentifier=cachedIdentifier,
	})
	equal(app.CurrentCharacter.Identifier,cachedIdentifier,"Unchanged identity retains its derived cache")
	equal(app.CurrentCharacter.name,"Milo River","Complete name remains unchanged")
	equal(app.CurrentCharacter.realm,rawRealm,"Actual realm remains unchanged")
	equal(app.CurrentCharacter.Spells[10],true,"Known spell progress is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][1],50,"Profession rank is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][2],100,"Profession maximum is retained")
end)

test("login updates the native name without managing the account cache",function()
	local app=initialize({
		full="Milo Stone",first="Milo",second="Stone",
		savedName="Milo River",savedRealm=rawRealm,savedIdentifier="Milo River-WinterAndRivers",
	})
	equal(app.CurrentCharacter.name,"Milo Stone","The changed native complete name replaces the saved name")
	equal(app.CurrentCharacter.realm,rawRealm,"The unchanged realm is retained")
	equal(app.CurrentCharacter.Identifier,"Milo River-WinterAndRivers","Account Management owns the derived cache")
	equal(app.CurrentCharacter.Spells[10],true,"Known spell progress is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][1],50,"Profession rank is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][2],100,"Profession maximum is retained")
end)

test("login updates the native realm without managing the account cache",function()
	local app=initialize({
		full="Milo River",first="Milo",second="River",raw="Other Realm",
		savedName="Milo River",savedRealm=rawRealm,savedIdentifier="Milo River-WinterAndRivers",
	})
	equal(app.CurrentCharacter.name,"Milo River","The unchanged complete name is retained")
	equal(app.CurrentCharacter.realm,"Other Realm","The changed native realm replaces the saved realm")
	equal(app.CurrentCharacter.Identifier,"Milo River-WinterAndRivers","Account Management owns the derived cache")
	equal(app.CurrentCharacter.Spells[10],true,"Known spell progress is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][1],50,"Profession rank is retained")
	equal(app.CurrentCharacter.ActiveSkills[2259][2],100,"Profession maximum is retained")
end)

test("Forever keeps first and surname while repairing the saved surname realm",function()
	checkIdentity({full="Milo River",first="Milo",second="River",savedName="Milo",savedRealm="River"},"Milo River",rawRealm)
end)

test("Forever keeps the complete native name without duplicate surname parts",function()
	checkIdentity({full="Milo von River",first="Milo",second="River"},"Milo von River",rawRealm)
end)

test("Forever preserves complete native names without guessing separators",function()
	checkIdentity({full="Milo·River",first="Milo",second="River"},"Milo·River",rawRealm)
end)

test("a native complete name without surname remains unchanged",function()
	checkIdentity({full="Milo",first="Milo",second=""},"Milo",rawRealm)
end)

test("native GetUnitName keeps complete names for both server-name flags",function()
	local _,calls,env=initialize({full="Milo River",first="Milo",second="River"})
	equal(env.GetUnitName("player",true),"Milo River")
	equal(env.GetUnitName("player",false),"Milo River")
	equal(calls.flags[#calls.flags-1],true); equal(calls.flags[#calls.flags],false)
end)

test("Retail keeps native names and independently reads the spaced realm",function()
	checkIdentity({build=120000,full="RetailName",first="RetailName",second=normalizedRealm},"RetailName",rawRealm)
end)

test("Classic keeps native names and independently reads the spaced realm",function()
	checkIdentity({build=30400,full="ClassicName",first="ClassicName",second=normalizedRealm},"ClassicName",rawRealm)
end)

for _,flavor in ipairs({{name="Forever",build=16001,first="Milo",second="River",expected="Milo River",realm=rawRealm},{name="Retail",build=120000,first="RetailName",second=normalizedRealm,expected="RetailName",realm=rawRealm},{name="Classic",build=30400,first="ClassicName",second=normalizedRealm,expected="ClassicName",realm=rawRealm}}) do
	test(flavor.name.." unit cache uses the client name and realm semantics",function()
		local app,calls,env=initialize({build=flavor.build,full=flavor.expected,first=flavor.first,second=flavor.second,regionalNames=flavor.name=="Forever"})
		local cache=unitCache(app,env)
		---@type ATTUnitIdentityCache
		local record={}; cache(record,"player")
		equal(record.name,flavor.expected); equal(record.realm,flavor.realm); equal(record.guid,"current"); equal(record.classID,8); equal(record.raceID,1)
		equal(calls.complete,flavor.name=="Forever" and 3 or 2,"Only regional unit names use GetUnitName")
		equal(calls.realm,3,"Player realm comes from GetRealmName in both modes")
		equal(calls.unit,flavor.name=="Forever" and 0 or 1,"Traditional names use UnitName exactly once")
		equal(calls.regional,1,"Feature detection runs once at module initialization")
		equal(calls.unmodified,0); equal(calls.native,0,"Player lookups never use UnitFullName")
	end)
end

for _,flavor in ipairs({
	{name="Forever",build=16001,full="Milo River",first="Milo",second="River",remoteFull="Visitor Stone",remoteFirst="Visitor",remoteName="IgnoredVisitor",remoteRealm="Stone",expected="Visitor Stone",realm=rawRealm,nativeCalls=0},
	{name="Retail",build=120000,full="RetailName",first="RetailName",second=normalizedRealm,remoteFull="Visitor-MoonGuard",remoteFirst="Visitor",remoteName="IgnoredVisitor",remoteRealm="Moon Guard",expected="Visitor",realm="Moon Guard",nativeCalls=1},
	{name="Classic",build=30400,full="ClassicName",first="ClassicName",second=normalizedRealm,remoteFull="Visitor-DawnsHope",remoteFirst="Visitor",remoteName="IgnoredVisitor",remoteRealm="Dawn's Hope (EU)",expected="Visitor",realm="Dawn's Hope (EU)",nativeCalls=1},
}) do
	for _,unit in ipairs({"party1","raid3"}) do
		test(flavor.name.." preserves the client identity for "..unit,function()
			local app,calls,env=initialize({build=flavor.build,full=flavor.full,first=flavor.first,second=flavor.second,
				remoteUnit=unit,remoteFull=flavor.remoteFull,remoteFirst=flavor.remoteFirst,remoteName=flavor.remoteName,remoteRealm=flavor.remoteRealm,
				regionalNames=flavor.name=="Forever"})
			---@type ATTUnitIdentityCache
			local record={}; unitCache(app,env)(record,unit)
			equal(record.name,flavor.expected); equal(record.realm,flavor.realm); equal(record.guid,"remote")
			equal(record.classID,8); equal(record.raceID,1)
			equal(calls.complete,3-flavor.nativeCalls,"Only regional unit names use GetUnitName")
			equal(calls.realm,3,"Each unit lookup initializes the local realm")
			equal(calls.native,flavor.nativeCalls,"Traditional remote lookups read only UnitFullName's realm")
			equal(calls.unit,flavor.nativeCalls,"Traditional remote names use UnitName exactly once")
			equal(calls.regional,1,"Feature detection runs once at module initialization")
			equal(calls.unmodified,0); equal(calls.nameutil,0)
			equal(app.CurrentCharacter.name,flavor.full); equal(app.CurrentCharacter.realm,rawRealm,"Remote lookups retain the current player's identity")
		end)
	end
end


test("an absent regional-name API uses the first UnitName result for player",function()
	local app,calls,env=initialize({build=120000,full="RetailName-RealmSuffix",first="RetailName",second="TupleRealm"})
	---@type ATTUnitIdentityCache
	local record={}; unitCache(app,env)(record,"player")
	equal(record.name,"RetailName"); equal(record.realm,rawRealm)
	equal(calls.regional,0); equal(calls.complete,2); equal(calls.unit,1); equal(calls.native,0)
end)

test("a traditional remote unit without a realm retains the local realm",function()
	local app,calls,env=initialize({build=120000,full="PlayerName",first="PlayerName",second=normalizedRealm,
		regionalNames=false,remoteUnit="party1",remoteFull="Visitor-RealmSuffix",remoteFirst="Visitor",remoteName="IgnoredVisitor"})
	---@type ATTUnitIdentityCache
	local record={}; unitCache(app,env)(record,"party1")
	equal(record.name,"Visitor","UnitFullName cannot overwrite the selected native name")
	equal(record.realm,rawRealm,"A missing remote realm preserves GetRealmName")
	equal(calls.complete,2); equal(calls.unit,1); equal(calls.native,1); equal(calls.realm,3)
end)

test("regional names on a non-Forever client keep the complete remote name",function()
	local app,calls,env=initialize({build=120000,full="PlayerName",first="PlayerName",second=normalizedRealm,
		regionalNames=true,remoteUnit="party1",remoteFull="Visitor Stone",remoteFirst="Visitor",remoteName="IgnoredVisitor",remoteRealm="Stone"})
	equal(app.IsForever,false,"This case must not rely on a Forever build")
	---@type ATTUnitIdentityCache
	local record={}; unitCache(app,env)(record,"party1")
	equal(record.name,"Visitor Stone"); equal(record.realm,rawRealm,"Surname is never treated as a realm")
	equal(calls.complete,3); equal(calls.unit,0); equal(calls.native,0); equal(calls.realm,3)
end)

test("regional-name selection is cached across repeated unit lookups",function()
	local app,calls,env=initialize({full="Milo River",first="Milo",second="River",regionalNames=true})
	local cache=unitCache(app,env)
	equal(calls.regional,1,"The feature API runs while the module locals initialize")
	--- Fail if a lookup rechecks feature availability after module initialization.
	---@return boolean enabled This sentinel never returns normally.
	env.RegionalUniqueNamesEnabled=function() error("Feature selection must remain cached") end
	--- Fail if a lookup resolves the name API again instead of using the selected local.
	---@param unit string Unit token passed to an incorrectly reselected API.
	---@param showServer? boolean Optional realm-display flag; unused by this sentinel.
	---@return string? name This sentinel never returns normally.
	env.GetUnitName=function(unit,showServer) error("Name API selection must remain cached: "..unit) end
	for _=1,2 do
		---@type ATTUnitIdentityCache
		local record={}; cache(record,"player")
		equal(record.name,"Milo River"); equal(record.realm,rawRealm)
	end
	equal(calls.regional,1); equal(calls.complete,4,"Exactly one selected name call per lookup")
	equal(calls.unit,0); equal(calls.native,0); equal(calls.realm,4)
end)

test("GUID input retains the GUID metadata path without unit-token APIs",function()
	local app,calls,env=initialize({full="Milo River",first="Milo",second="River",regionalNames=true})
	local classCalls,raceCalls=calls.class,calls.race
	---@type ATTUnitIdentityCache
	local record={}; unitCache(app,env)(record,"Player-1-Test")
	equal(record.name,"GuidName"); equal(record.realm,nil); equal(record.guid,"Player-1-Test")
	equal(record.className,"GUID Mage"); equal(record.classFile,"MAGE"); equal(record.classID,8); equal(record.icon,1)
	equal(record.race,"Human"); equal(record.raceID,1)
	equal(calls.guidInfo,1); equal(calls.guid,0); equal(calls.secret,0)
	equal(calls.class,classCalls); equal(calls.race,raceCalls)
	equal(calls.complete,2); equal(calls.realm,2); equal(calls.unit,0); equal(calls.native,0)
end)

test("unit-token lookups discard a secret GUID while retaining class and race",function()
	local app,calls,env=initialize({full="Milo River",first="Milo",second="River",regionalNames=true,secretGuid=true})
	local classCalls,raceCalls=calls.class,calls.race
	---@type ATTUnitIdentityCache
	local record={}; unitCache(app,env)(record,"player")
	equal(record.name,"Milo River"); equal(record.realm,rawRealm); equal(record.guid,nil)
	equal(record.className,"Mage"); equal(record.classFile,"MAGE"); equal(record.classID,8); equal(record.icon,1)
	equal(record.race,"Human"); equal(record.raceID,1)
	equal(calls.guid,1); equal(calls.secret,1); equal(calls.guidInfo,0)
	equal(calls.class,classCalls+1); equal(calls.race,raceCalls+1)
	equal(calls.complete,3); equal(calls.unit,0); equal(calls.native,0)
end)

print(("\n%d tests, %d failures"):format(tests,#failures))
if #failures>0 then io.stderr:write(table.concat(failures,"\n\n"),"\n"); os.exit(1) end
