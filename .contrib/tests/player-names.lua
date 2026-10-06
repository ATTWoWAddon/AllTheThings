-- Executes the actual API wrapper and both player identity initialization paths.
-- Run from the repository root: lua .contrib/tests/player-names.lua [repository-root]
local mode,fixtureRoot=...
local root=fixtureRoot or arg[1] or "."
local function read(path)
	local file=assert(io.open(root.."/"..path,"rb")); local value=file:read("*a"); file:close(); return value
end
local function compile(source,name,env)
	if loadstring and setfenv then local chunk=assert(loadstring(source,name)); setfenv(chunk,env); return chunk end
	return assert(load(source,name,"t",env))
end
local wrappers=read("src/WoW API Wrappers.lua")
local base=read("src/base.lua")
local startup=read("AllTheThings.lua")
local nameSetup=assert(base:match("(%-%- Determine the player's name and class information.-)%-%- Determine the player's race information"))
local characterSource=read("src/Classes/CharacterClass.lua")
local unitSetup=assert(characterSource:match("(local function CacheCharacterDataFromAPIs.-)local cache = app.CreateCache"))
local characterSetup=assert(startup:match("(%-%- Character Data Storage.-app%.CurrentCharacter = currentCharacter;)"))
local function equal(actual,expected,message)
	assert(actual==expected,(message or "Values differ")..": expected "..tostring(expected)..", got "..tostring(actual))
end
local unpackValues=table.unpack or unpack
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
local function initialize(opts)
	local oldSkills={[2259]={50,100}}
	local savedName,savedRealm=opts.savedName or "OldFirst",opts.savedRealm or "OldSurname"
	local saved={name=savedName,realm=savedRealm,text="|c"..color..savedName.."-"..savedRealm.."|r",Identifier="OldFirst-OldSurname",Spells={[10]=true},ActiveSkills=oldSkills}
	local data={current=saved}
	local realm=opts.raw
	if realm==nil then realm=rawRealm end
	local calls={complete=0,realm=0,unit=0,unmodified=0,native=0,nameutil=0,flags={}}
	local function expectUnit(unit)
		assert(unit=="player" or unit==opts.remoteUnit,"Unexpected unit: "..tostring(unit))
	end
	local app={GUID="current",Level=70,FactionID=2,RaceIndex=1,Race="Human",print=function() end}
	app.LocalizeGlobalIfAllowed=function(key) equal(key,"ATTCharacterData"); return data end
	local env=setmetatable({
		GetBuildInfo=function() return "test","1","date",opts.build or 16001 end,
		GetRealmName=function() calls.realm=calls.realm+1; return realm end,
		GetNormalizedRealmName=function() return normalizedRealm end,
		GetUnitName=function(unit,showServer)
			expectUnit(unit); calls.complete=calls.complete+1; calls.flags[#calls.flags+1]=showServer==nil and "default" or showServer
			return unit=="player" and opts.full or opts.remoteFull
		end,
		UnitName=function(unit) expectUnit(unit); calls.unit=calls.unit+1; return opts.first,opts.second end,
		UnitNameUnmodified=function(unit) expectUnit(unit); calls.unmodified=calls.unmodified+1; return opts.first,opts.second end,
		UnitFullName=function(unit)
			expectUnit(unit); calls.native=calls.native+1
			if unit=="player" then return opts.first,opts.second end
			return opts.remoteName,opts.remoteRealm
		end,
		NameUtil={GetUnmodifiedUnitFullName=function() calls.nameutil=calls.nameutil+1; return "Wrong reconstructed name" end},
		Constants={CharacterNameSeparatorConsts={CHARACTERNAME_SURNAME_SEPARATOR="!"}},
		UnitClass=function() return "Mage","MAGE",8 end,
		UnitRace=function() return "Human","Human",1 end,
		UnitGUID=function(unit) expectUnit(unit); return unit=="player" and "current" or "remote" end,
		C_CreatureInfo={GetRaceInfo=function() return {raceName="Human"} end},
		RAID_CLASS_COLORS={MAGE={colorStr=color}},
	},{__index=_G})
	compile(wrappers,"@src/WoW API Wrappers.lua",env)("AllTheThings",app)
	compile("local _,app=...\n"..nameSetup,"@src/base.lua",env)("AllTheThings",app)
	compile("local _,app=...\n"..characterSetup,"@AllTheThings.lua",env)("AllTheThings",app)
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
local function checkIdentity(opts,name,realm)
	local app,calls=initialize(opts)
	equal(app.CurrentCharacter.name,name,"Saved complete name")
	equal(app.CurrentCharacter.realm,realm,"Saved actual realm")
	local expected="|c"..color..name.."-"..realm.."|r"
	equal(app.Me,expected,"Base display name")
	equal(app.CurrentCharacter.text,expected,"Saved display matches base display")
	return calls
end
local function unitCache(app,env)
	local prefix="local _,app=...\nlocal ClassInfoByClassFile={MAGE={classID=8}}\nlocal ClassInfoByID={[8]={icon=1}}\n"
	return compile(prefix..unitSetup.."\nreturn CacheCharacterDataFromAPIs","@src/Classes/CharacterClass.lua",env)("AllTheThings",app)
end
local tests,failures=0,{}
local function test(name,fn)
	tests=tests+1; local ok,err=xpcall(fn,debug.traceback)
	if ok then print("PASS "..name) else failures[#failures+1]=name.."\n"..err; print("FAIL "..name) end
end

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
		local app,calls,env=initialize({build=flavor.build,full=flavor.expected,first=flavor.first,second=flavor.second})
		local cache=unitCache(app,env)
		local record={}; cache(record,"player")
		equal(record.name,flavor.expected); equal(record.realm,flavor.realm); equal(record.guid,"current"); equal(record.classID,8); equal(record.raceID,1)
		equal(calls.complete,3,"Both initialization paths and the unit cache use GetUnitName")
		equal(calls.realm,3,"Both initialization paths and the unit cache use GetRealmName")
		equal(calls.unit,0); equal(calls.unmodified,0); equal(calls.native,0,"Tuple APIs are not used for identity on any client")
	end)
end

for _,flavor in ipairs({
	{name="Forever",build=16001,full="Milo River",first="Milo",second="River",remoteFull="Visitor Stone",remoteName="Visitor",remoteRealm="Stone",expected="Visitor Stone",realm=rawRealm,nativeCalls=0},
	{name="Retail",build=120000,full="RetailName",first="RetailName",second=normalizedRealm,remoteFull="Visitor-MoonGuard",remoteName="Visitor",remoteRealm="Moon Guard",expected="Visitor",realm="Moon Guard",nativeCalls=1},
	{name="Classic",build=30400,full="ClassicName",first="ClassicName",second=normalizedRealm,remoteFull="Visitor-DawnsHope",remoteName="Visitor",remoteRealm="Dawn's Hope (EU)",expected="Visitor",realm="Dawn's Hope (EU)",nativeCalls=1},
}) do
	for _,unit in ipairs({"party1","raid3"}) do
		test(flavor.name.." preserves the client identity for "..unit,function()
			local app,calls,env=initialize({build=flavor.build,full=flavor.full,first=flavor.first,second=flavor.second,
				remoteUnit=unit,remoteFull=flavor.remoteFull,remoteName=flavor.remoteName,remoteRealm=flavor.remoteRealm})
			local record={}; unitCache(app,env)(record,unit)
			equal(record.name,flavor.expected); equal(record.realm,flavor.realm); equal(record.guid,"remote")
			equal(record.classID,8); equal(record.raceID,1)
			equal(calls.complete,3-flavor.nativeCalls,"No unused complete-name calls"); equal(calls.realm,3-flavor.nativeCalls,"No unused current-realm calls")
			equal(calls.native,flavor.nativeCalls,"Only other players on Retail and Classic use UnitFullName's realm")
			equal(calls.unit,0); equal(calls.unmodified,0); equal(calls.nameutil,0)
			equal(app.CurrentCharacter.name,flavor.full); equal(app.CurrentCharacter.realm,rawRealm,"Remote lookups retain the current player's identity")
		end)
	end
end

print(("\n%d tests, %d failures"):format(tests,#failures))
if #failures>0 then io.stderr:write(table.concat(failures,"\n\n"),"\n"); os.exit(1) end
