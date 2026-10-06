-- Run from the repository root: lua .contrib/tests/character-names.lua [repository-root]
-- Executes the actual flat tooltip processors and account Summary serializers.
local root=arg[1] or "."
local function read(path)
	local file=assert(io.open(root.."/"..path,"rb")); local value=file:read("*a"); file:close(); return value
end
local function compile(source,name,env)
	if loadstring and setfenv then
		local chunk=assert(loadstring(source,name)); if env then setfenv(chunk,env) end; return chunk
	end
	return assert(load(source,name,"t",env or _G))
end
local function equal(actual,expected,message)
	assert(actual==expected,(message or "Values differ")..": expected "..tostring(expected)..", got "..tostring(actual))
end
local function contains(value,part)
	assert(value:find(part,1,true),"Missing "..part.." in "..value)
end
local function text(rows)
	local result={}; for _,row in ipairs(rows) do result[#result+1]=(row.left or "").." "..(row.right or "") end
	return table.concat(result,"\n")
end
local rawRealm,normalizedRealm="Winter And Rivers","WinterAndRivers"
local function character(name,realm,extra)
	local result={name=name,realm=realm,text="|cffaabbcc"..name.."-"..realm.."|r",Spells={[10]=true},factionID=2}
	for k,v in pairs(extra or {}) do result[k]=v end
	return result
end
local source=read("src/Settings/Pages/Interface - Information.lua")
local section=assert(source:match("(%-%- Known By / Completed By.-)%-%- Specialization Requirements"))
local realmAPILocals=assert(source:match("local GetRealmName = [^\r\n]+")).."\n"
	..assert(source:match("local GetNormalizedRealmName = [^\r\n]+")).."\n"
local program=[[
local _,app=...
local L,settings=app.L,app.Settings
local tinsert,tremove=table.insert,table.remove
local wipearray=app.wipearray
]]..realmAPILocals..[[

local IsQuestFlaggedCompletedOnAccount=app.WOWAPI.IsQuestFlaggedCompletedOnAccount
local GetItemCount=app.WOWAPI.GetItemCount
]]..section..[[
return {known=ProcessForKnownBy,completed=ProcessForCompletedBy,
	render=function(characters,kind)
		for _,character in ipairs(characters) do tinsert(knownBy,character) end
		local rows={}; BuildKnownByInfoForKind(rows,kind); return rows
	end}
]]
local function fixture(opts)
	opts=opts or {}
	local calls={raw=0,normalized=0}
	local raw=opts.raw or rawRealm
	local normalized=opts.normalized or normalizedRealm
	local data,inventory,accountQuests={},{},{}
	local app={
		IsForever=opts.forever~=false,IsClassic=opts.classic or false,GameBuildVersion=opts.build or 16001,GUID="current",
		Settings={},L={KNOWN_BY="Known by %s",COMPLETED_BY="Completed by %s",OWNED_BY="Owned by %s"},
		Colors={TooltipDescription="description"},AccountWideQuestsDB={},WOWAPI={},
		SortDefaults={name=function(a,b) return (a.name or a.text or "")<(b.name or b.text or "") end},
		Sort=function(values,compare) table.sort(values,compare) end,
		wipearray=function(values) for i=#values,1,-1 do values[i]=nil end end,
	}
	local getRealmName=function() calls.raw=calls.raw+1; return raw end
	local getNormalizedRealmName=function() calls.normalized=calls.normalized+1; return normalized end
	app.WOWAPI.GetItemCount=function(id) return inventory[id] or 1 end
	app.WOWAPI.IsQuestFlaggedCompletedOnAccount=function(id) return accountQuests[id] end
	local env=setmetatable({ATTCharacterData=data,GetRealmName=getRealmName,GetNormalizedRealmName=getNormalizedRealmName,
		ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE="Account-Wide",ACCOUNT_COMPLETED_QUEST_NOTICE="Previously completed on your Account"},{__index=_G})
	local processors=compile(program,"actual-tooltip-processors",env)("AllTheThings",app)
	local result={app=app,data=data,inventory=inventory,accountQuests=accountQuests,calls=calls,processors=processors}
	function result:run(kind,reference)
		local rows={}; self.processors[kind]({},reference,rows); return rows
	end
	return result
end
local function accountSync()
	local account=read("src/UI/Windows/Account Management.lua")
	local definitions=assert(account:match("(%-%- Data Handling.-)%-%- Serialization"))
	local serializers=assert(account:match("(local defaultDeserializer.-)local function ReceiveCharacterSummary"))
	local env=setmetatable({app={EmptyFunction=function() end}},{__index=_G})
	return compile(definitions.."\nlocal ser,dser={},{}\n"..serializers.."\nreturn {serialize=serializers.Summary,deserialize=deserializers.Summary}","actual-account-Summary",env)()
end
local initializePlayer=compile(read(".contrib/tests/player-names.lua"),"player-name-fixtures")("fixtures",root)
local tests,failures=0,{}
local function test(name,fn)
	tests=tests+1; local ok,err=xpcall(fn,debug.traceback)
	if ok then print("PASS "..name) else failures[#failures+1]=name.."\n"..err; print("FAIL "..name) end
end

for _,case in ipairs({
	{name="spaced metadata and normalized text",realm=rawRealm,suffix=normalizedRealm},
	{name="normalized metadata and spaced text",realm=normalizedRealm,suffix=rawRealm},
	{name="spaced metadata and text",realm=rawRealm,suffix=rawRealm},
	{name="normalized metadata and text",realm=normalizedRealm,suffix=normalizedRealm},
}) do
	for _,identity in ipairs({{name="current character",guid="current"},{name="cached Forever alt",guid="cached-alt"}}) do
		test("KnownBy hides the matching local realm for "..identity.name..": "..case.name,function()
			local f=fixture()
			f.data.localChar=character("Milo River",case.realm,{build=16001,guid=identity.guid})
			f.data.localChar.text="|cffaabbccMilo River-"..case.suffix.."|r"
			local rows=f:run("known",{spellID=10}); equal(#rows,1)
			equal(rows[1].left,"Known by |cffaabbccMilo River|r")
		end)
	end
end

test("native initialized Forever names reach flat tooltips without losing surnames",function()
	local f=fixture()
	local app=initializePlayer({full="Milo River",first="Milo",second="River",savedName="Milo",savedRealm="River"})
	f.data.current=app.CurrentCharacter; f.app.CurrentCharacter=app.CurrentCharacter
	f.data.alt=character("Milo Stone",normalizedRealm,{build=16001,text="|cff00cc00Milo Stone-"..normalizedRealm.."|r"})
	local rendered=text(f:run("known",{spellID=10}))
	contains(rendered,"|cffaabbccMilo River|r"); contains(rendered,"|cff00cc00Milo Stone|r")
	assert(rendered:find("Milo River",1,true)<rendered:find("Milo Stone",1,true),"Complete names sort separately despite a shared first name")
	local owner=setmetatable({text=app.CurrentCharacter.text.." (x4)"},{__index=app.CurrentCharacter})
	contains(text(f.processors.render({owner},f.app.L.OWNED_BY)),"|cffaabbccMilo River|r (x4)")
end)

test("KnownBy retains complete foreign realms containing local realm words",function()
	local f=fixture({forever=false,build=120000})
	for _,realm in ipairs({normalizedRealm.."-East","East-"..normalizedRealm,rawRealm.." East","Other Realm"}) do
		f.data.foreign=character("Foreign",realm,{build=120000,guid="foreign-alt"})
		local rows=f:run("known",{spellID=10}); equal(#rows,1)
		equal(rows[1].left,"Known by "..f.data.foreign.text)
	end
end)

test("punctuation comes from exact client aliases rather than Lua patterns",function()
	local raw,normalized="A-B.C+(EU)","ABC"
	local f=fixture({raw=raw,normalized=normalized})
	f.data.localChar=character("ABCWatcher",raw,{build=16001,guid="current",text="|cffaabbccABCWatcher-ABC|r"})
	f.data.foreign=character("Visitor","A-BxCCCC(EU)",{build=16001})
	local rendered=text(f:run("known",{spellID=10}))
	contains(rendered,"|cffaabbccABCWatcher|r"); contains(rendered,f.data.foreign.text)
end)

for _,name in ipairs({normalizedRealm,"Watcher-"..rawRealm}) do
	test("realm words inside the character name stay intact: "..name,function()
		local f=fixture(); f.data.localChar=character(name,rawRealm,{build=16001,guid="current"})
		contains(text(f:run("known",{spellID=10})),"|cffaabbcc"..name.."|r")
	end)
end

test("KnownBy preserves custom display text, colors, and quantities when hiding the local realm",function()
	local f=fixture()
	f.data.alias=character("Stored Raw Name",rawRealm,{build=16001,guid="cached-alt",
		text="|cff00cc00Display Alias-"..normalizedRealm.."|r (x2)"})
	equal(f:run("known",{spellID=10})[1].left,"Known by |cff00cc00Display Alias|r (x2)")
	f.data.alias.text="|cff00cc00Custom label-"..rawRealm
	equal(f:run("known",{spellID=10})[1].left,"Known by |cff00cc00Custom label")
	f.data.alias.text="Custom UI label"
	equal(f:run("known",{spellID=10})[1].left,"Known by Custom UI label")
end)

test("KnownBy uses the missing-text fallback without rebuilding a cached name",function()
	local f=fixture()
	f.data.missing=character("Stored Raw Name",rawRealm,{build=16001,guid="cached-alt"})
	f.data.missing.text=nil
	equal(f:run("known",{spellID=10})[1].left,"Known by ???")
end)

test("uncolored names keep their spelling while removing only the suffix",function()
	local f=fixture(); f.data.localChar=character("Milo River",normalizedRealm,{text="Milo River-"..normalizedRealm})
	equal(f:run("known",{spellID=10})[1].left,"Known by Milo River")
end)

for _,missing in ipairs({{name="nil"},{name="empty",realm=""}}) do
	test(missing.name.." realm metadata leaves saved display text unchanged",function()
		local f=fixture()
		local localChar=character("Milo River",normalizedRealm); localChar.realm=missing.realm
		local foreign=character("Visitor Stone","East-"..normalizedRealm); foreign.realm=missing.realm
		contains(text(f.processors.render({localChar},f.app.L.KNOWN_BY)),localChar.text)
		contains(text(f.processors.render({foreign},f.app.L.KNOWN_BY)),foreign.text)
	end)
end

test("KnownBy hides the matching local realm for Classic and Retail cached alts",function()
	for _,build in ipairs({20000,30400,120000}) do
		local f=fixture({forever=false,build=build})
		f.data.alt=character("Player",rawRealm,{build=build,guid="cached-alt"})
		local rows=f:run("known",{spellID=10}); equal(#rows,1)
		equal(rows[1].left,"Known by |cffaabbccPlayer|r")
	end
end)

for _,flavor in ipairs({{name="Forever",build=16001,forever=true},{name="Classic",build=30400,forever=false},{name="Retail",build=120000,forever=false}}) do
	test(flavor.name.." stale cache never makes a foreign realm local",function()
		local f=fixture(flavor); f.app.CurrentCharacter={realm="River"}
		local foreign=character("Visitor Stone","River",{build=flavor.build})
		contains(text(f.processors.render({foreign},f.app.L.KNOWN_BY)),foreign.text)
	end)

	test(flavor.name.." uses only native raw and normalized realm aliases",function()
		local f=fixture({forever=flavor.forever,build=flavor.build,raw="A-B.C",normalized="ABC"}); f.app.CurrentCharacter={realm="A B C"}
		local cached=character("Player","A B C",{build=flavor.build})
		local native=character("NativePlayer","A-B.C",{build=flavor.build,guid="current",text="|cffaabbccNativePlayer-ABC|r"})
		local rendered=text(f.processors.render({cached,native},f.app.L.KNOWN_BY))
		contains(rendered,cached.text); contains(rendered,"|cffaabbccNativePlayer|r")
	end)

end

test("the current realm is captured once for a complete character list",function()
	local f=fixture()
	for _,name in ipairs({"Alpha","Beta","Gamma"}) do f.data[name]=character(name,rawRealm) end
	f:run("known",{spellID=10}); equal(f.calls.raw,1); equal(f.calls.normalized,1)
end)

test("Completed by handles quest history through the same literal formatter",function()
	local f=fixture(); f.data.done=character("Milo River",normalizedRealm,{PriorQuests={[20]=true}})
	contains(text(f:run("completed",{questID=20})),"|cffaabbccMilo River|r")
end)

test("account-wide completion notices remain complete messages",function()
	local f=fixture(); f.app.AccountWideQuestsDB[20]=true; f.accountQuests[20]=true
	equal(f:run("completed",{questID=20})[1].left,"Completed by Account-Wide")
	f.app.AccountWideQuestsDB[20]=nil
	equal(f:run("completed",{questID=20})[1].left,"Completed by Previously completed on your Account")
end)

test("Classic Owned by adds quantities without changing colors or foreign realms",function()
	local f=fixture({forever=false,classic=true,build=20000}); f.inventory[90]=3
	f.data.current=character("Owner",normalizedRealm,{Mounts={[30]=true}})
	f.data.foreign=character("Visitor","East-"..normalizedRealm,{Mounts={[30]=true}})
	local rendered=text(f:run("completed",{key="mountID",mountID=30,itemID=90}))
	contains(rendered,"|cffaabbccOwner|r (x3)"); contains(rendered,f.data.foreign.text)
end)

test("profession KnownBy preserves saved names and ranks",function()
	local f=fixture({classic=true})
	f.data.updated=character("Milo River",rawRealm,{build=16001,guid="current",ActiveSkills={[2259]={60,100}}})
	f.data.alt=character("Milo Stone","Other Realm",{build=16001,ActiveSkills={[2259]={50,100}}})
	local rows=f:run("known",{key="professionID",knownByID=2259})
	equal(#rows,3); equal(rows[2].left,"  |cffaabbccMilo River|r"); equal(rows[2].right,"60 / 100")
	equal(rows[3].left,"  "..f.data.alt.text); equal(rows[3].right,"50 / 100")
end)

local function summaryFields(wire)
	local fields={string.split(";",wire)}; equal(table.remove(fields,1),"Summary"); return fields
end

test("twelve-field Summary preserves complete native names and clears identity caches",function()
	local sync=accountSync(); local app=initializePlayer({full="Milo River",first="Milo",second="River"})
	local original=app.CurrentCharacter; local fields=summaryFields(sync.serialize(original))
	equal(#fields,12)
	local result={guid="cached-alt",name="Milo",realm="River",Identifier="Milo-River"}; sync.deserialize("Summary",nil,fields,result)
	for _,field in ipairs({"name","realm","text","build"}) do equal(result[field],original[field],"Synced "..field) end
	equal(result.Identifier,nil)
	local f=fixture(); result.Spells={[10]=true}; f.data.alt=result
	contains(text(f:run("known",{spellID=10})),"|cffaabbccMilo River|r")
end)

test("twelve-field Summary refresh clears an already-matching identity cache",function()
	local sync=accountSync(); local original=character("Milo","River",{build=16001})
	local fields=summaryFields(sync.serialize(original)); equal(#fields,12)
	local result={name="Milo",realm="River",Identifier="Milo-River"}
	sync.deserialize("Summary",nil,fields,result); equal(result.Identifier,nil)
	local f=fixture(); result.Spells={[10]=true}; f.data.alt=result
	contains(text(f:run("known",{spellID=10})),original.text)
end)

print(("\n%d tests, %d failures"):format(tests,#failures))
if #failures>0 then io.stderr:write(table.concat(failures,"\n\n"),"\n"); os.exit(1) end
