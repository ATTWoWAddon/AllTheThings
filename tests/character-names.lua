-- Flat tooltip and account Summary tests.
-- Run from the repository root: lua tests/character-names.lua [repository-root]
--
-- Test architecture:
-- 1. Source: read() loads addon files. The patterns below select the actual
--    KnownBy/CompletedBy processors and shared name formatter from
--    src/Settings/Pages/Interface - Information.lua; compile() loads that code.
-- 2. Environment: fixture() supplies saved characters, exact/normalized realm
--    names, collection flags, inventory counts and the required addon services.
--    Each case starts with independent data and API call counters.
-- 3. Flow: add characters to f.data, call f:run() or f.processors.render(),
--    then check the resulting tooltip rows. text() joins rows for inspection;
--    equal() and contains() check exact values or expected text fragments.
--    Cases check local-realm hiding, foreign realms, full names, colors,
--    quantities, account notices and profession ranks.
-- 4. Summary: accountSync() loads the actual serializer/deserializer from
--    src/UI/Windows/Account Management.lua. Cases check the twelve wire fields,
--    complete names and clearing Identifier only after name or realm changes.
--    player-names.lua is loaded in "fixtures" mode to obtain its initializer,
--    so login output can also be passed through the tooltip and Summary paths.
-- 5. Results: test() catches assertion failures and prints each case's result.
--    Any failed case produces a traceback and a nonzero exit after all cases run.

--- Current and maximum ranks in one cached profession.
---@class ATTNameTestSkillRank
---@field [1] number Current profession rank.
---@field [2] number Maximum profession rank.

--- Saved character fields shared by the name, tooltip and synchronization fixtures.
---@class ATTNameTestCharacter: ATTAccountCharacter
---@field Spells? table<integer, boolean> Known spell IDs, including recipe spells.
---@field Quests? table<integer, boolean> Completed quest IDs.
---@field PriorQuests? table<integer, boolean> Quest IDs completed before the current collection state.
---@field Mounts? table<integer, boolean> Collected mount IDs.
---@field ActiveSkills? table<integer, ATTNameTestSkillRank> Profession spell IDs mapped to current and maximum ranks.
---@field ignored? boolean Whether KnownBy omits the character.
---@field totalTimePlayed? number Cached played time in seconds.
---@field lastTimePlayedRecorded? number Timestamp of the last played-time update.

--- Client flavor and local realm values supplied to a tooltip fixture.
---@class ATTTooltipTestOptions
---@field raw? string Exact local realm returned by GetRealmName.
---@field normalized? string Local realm returned by GetNormalizedRealmName.
---@field forever? boolean Whether the simulated client is Forever; defaults to true.
---@field classic? boolean Whether profession and OwnedBy processing use Classic behavior.
---@field build? integer Simulated client build; defaults to 16001.

--- Counts calls made while formatting one character list.
---@class ATTTooltipTestCalls
---@field raw integer Calls to GetRealmName.
---@field normalized integer Calls to GetNormalizedRealmName.

--- Collection fields supplied to the real KnownBy and CompletedBy processors.
---@class ATTTooltipTestReference: ATTKnownByReference
---@field spellID? integer Spell whose owning characters are displayed.
---@field questID? integer Quest whose current or prior completion is displayed.
---@field mountID? integer Mount whose owning characters are displayed.
---@field itemID? integer Item whose inventory count is appended to OwnedBy.

--- Character and ranks passed to the Classic profession sorter.
---@class ATTTooltipTestProfessionRow
---@field [1] ATTNameTestCharacter Character owning the profession.
---@field [2] number Current rank used for sorting.
---@field [3] number Maximum rank displayed in the right column.

--- Localized labels consumed by the extracted tooltip code.
---@class ATTTooltipTestLocale
---@field KNOWN_BY string Format containing %s for characters that know a thing.
---@field COMPLETED_BY string Format containing %s for characters that completed a thing.
---@field OWNED_BY string Format containing %s for characters that own a thing.

--- Mock game APIs used by collection and quantity processing.
---@class ATTTooltipTestWoWAPI
---@field GetItemCount fun(itemID: integer, includeBank?: boolean): integer Fixture inventory count, defaulting to one.
---@field IsQuestFlaggedCompletedOnAccount fun(questID: integer): boolean? Fixture account-wide completion state.

--- Default character-name comparator passed to the fixture sorter.
---@class ATTTooltipTestSortDefaults
---@field name fun(a: ATTNameTestCharacter, b: ATTNameTestCharacter): boolean Complete-name ordering, with display-text fallback.

--- Tooltip grouping settings used by the shared character-list builder.
---@class ATTTooltipTestSettings
---@field GetTooltipSetting fun(self: ATTTooltipTestSettings, key: string): boolean Returns false so identity cases use flat lists.

--- Minimal addon services referenced by the extracted tooltip processors.
---@class ATTTooltipTestApp
---@field IsForever boolean Whether native names contain Forever surnames.
---@field IsClassic boolean Whether Classic-specific collection branches are enabled.
---@field GameBuildVersion integer Simulated client build.
---@field GUID string GUID of the simulated current character.
---@field CurrentCharacter? ATTAccountCharacter Optional saved current-character metadata.
---@field Settings ATTTooltipTestSettings Settings that keep grouping disabled for identity cases.
---@field L ATTTooltipTestLocale KnownBy, CompletedBy and OwnedBy formats.
---@field Colors { TooltipDescription: string } Color assigned to appended description rows.
---@field AccountWideQuestsDB table<integer, boolean> Quest IDs tracked account-wide.
---@field WOWAPI ATTTooltipTestWoWAPI Inventory and account-completion mocks.
---@field SortDefaults ATTTooltipTestSortDefaults Default complete-name comparison.
---@field Sort fun(values: (ATTNameTestCharacter|ATTTooltipTestProfessionRow)[], compare: function) Sorts character records or profession rows using the supplied comparator.
---@field wipearray fun(values: (ATTNameTestCharacter|ATTTooltipTestProfessionRow)[]) Clears the array shared by consecutive tooltip calls.

--- Globals injected while the real tooltip section is compiled.
---@class ATTTooltipTestEnvironment
---@field ATTCharacterData table<string, ATTNameTestCharacter> Saved character records indexed by fixture keys.
---@field GetRealmName fun(): string Exact local realm mock.
---@field GetNormalizedRealmName fun(): string Normalized local realm mock.
---@field ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE string Account-wide ownership notice.
---@field ACCOUNT_COMPLETED_QUEST_NOTICE string Prior account-completion notice.

--- Real processor functions exported by the generated tooltip chunk.
---@class ATTTooltipTestProcessors
---@field known fun(context: unknown, reference: ATTTooltipTestReference, rows: ATTTooltipLine[]) Appends KnownBy rows; context is unused.
---@field completed fun(context: unknown, reference: ATTTooltipTestReference, rows: ATTTooltipLine[]) Appends CompletedBy or OwnedBy rows.
---@field render fun(characters: ATTNameTestCharacter[], kind: string): ATTTooltipLine[] Formats an explicit list through the shared builder.

---@alias ATTTooltipTestProcessorKind "known"|"completed"

--- Mutable collection state, API counters and processor entry points for one test.
---@class ATTTooltipTestFixture
---@field app ATTTooltipTestApp Addon services supplied to the extracted code.
---@field data table<string, ATTNameTestCharacter> Saved characters consulted by the real processors.
---@field inventory table<integer, integer> Item IDs mapped to owning quantities.
---@field accountQuests table<integer, boolean> Quest IDs with account-wide completion.
---@field calls ATTTooltipTestCalls Realm API call counts.
---@field processors ATTTooltipTestProcessors Actual addon processor functions.
---@field run fun(self: ATTTooltipTestFixture, kind: ATTTooltipTestProcessorKind, reference: ATTTooltipTestReference): ATTTooltipLine[] Executes a collection processor with fresh output rows.

--- Addon placeholder required when loading the Summary serializer definitions.
---@class ATTTooltipTestSummaryApp
---@field EmptyFunction fun() Callback used for ignored synchronization fields.

--- Globals injected into the extracted account serialization section.
---@class ATTTooltipTestSummaryEnvironment
---@field app ATTTooltipTestSummaryApp Ignored-field callback provider.

--- Real twelve-field Summary functions exported by the generated account chunk.
---@class ATTTooltipTestSummaryAPI
---@field serialize fun(character: ATTNameTestCharacter): string Encodes the saved identity and metadata.
---@field deserialize fun(field: string, currentValue: unknown, data: ATTCharacterSummaryFields, character: ATTNameTestCharacter) Applies Summary fields and clears Identifier only when name or realm changes.

local root=arg[1] or "."
--- Reads an addon or fixture source file relative to the repository root.
---@param path string Repository-relative Lua file path.
---@return string source Complete file contents.
local function read(path)
	local file=assert(io.open(root.."/"..path,"rb")); local value=file:read("*a"); file:close(); return value
end
--- Compiles extracted addon code using optional fixture globals.
---@param source string Lua source to compile.
---@param name string Chunk label used in syntax errors and tracebacks.
---@param env ATTTooltipTestEnvironment|ATTTooltipTestSummaryEnvironment|nil Injected globals; nil keeps the normal global environment.
---@return function chunk Compiled code whose exported functions are typed at each call site.
local function compile(source,name,env)
	if loadstring and setfenv then
		local chunk=assert(loadstring(source,name)); if env then setfenv(chunk,env) end; return chunk
	end
	-- This branch uses the environment-aware loader available after Lua 5.1.
	return assert(load --[[@as fun(source: string, name: string, mode: string, env: ATTTooltipTestEnvironment|ATTTooltipTestSummaryEnvironment|_G): function?]](source,name,"t",env or _G))
end
--- Checks an exact value and reports both sides when the assertion fails.
---@param actual unknown Value produced by the code under test.
---@param expected unknown Required value, including nil for missing data.
---@param message string? Optional context included in the failure message.
local function equal(actual,expected,message)
	assert(actual==expected,(message or "Values differ")..": expected "..tostring(expected)..", got "..tostring(actual))
end
--- Checks a literal text fragment without interpreting Lua pattern characters.
---@param value string Rendered tooltip text to inspect.
---@param part string Exact fragment that must remain in the output.
local function contains(value,part)
	assert(value:find(part,1,true),"Missing "..part.." in "..value)
end
--- Joins tooltip columns so assertions can inspect all appended rows.
---@param rows ATTTooltipLine[] Left and optional right text from the actual processors.
---@return string rendered Rows joined with spaces between columns and newlines between rows.
local function text(rows)
	local result={}; for _,row in ipairs(rows) do result[#result+1]=(row.left or "").." "..(row.right or "") end
	return table.concat(result,"\n")
end
local rawRealm,normalizedRealm="Winter And Rivers","WinterAndRivers"
--- Builds a spell-owning character with standard class-colored display text.
---@param name string Complete native character name, including any surname.
---@param realm string Actual server name kept separate from the character name.
---@param extra ATTNameTestCharacter? Saved fields overriding the defaults, such as build, GUID or text.
---@return ATTNameTestCharacter character Saved identity and collection record for the fixture.
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
	--- Sends an explicit character list through the real shared tooltip builder.
	---@param characters ATTNameTestCharacter[] Records or text-only account notices to display.
	---@param kind string Localized format containing %s for the character list.
	---@return ATTTooltipLine[] rows Appended description rows.
	render=function(characters,kind)
		for _,character in ipairs(characters) do tinsert(knownBy,character) end
		local rows={}; BuildKnownByInfoForKind(rows,kind); return rows
	end}
]]
--- Loads the real tooltip processors with independent client and collection state.
---@param opts ATTTooltipTestOptions? Flavor, build and realm overrides; omitted fields use the default Forever client.
---@return ATTTooltipTestFixture fixture Mutable saved data, mocked APIs and actual processor entry points.
local function fixture(opts)
	opts=opts or {}
	local calls={raw=0,normalized=0}
	local raw=opts.raw or rawRealm
	local normalized=opts.normalized or normalizedRealm
	local data,inventory,accountQuests={},{},{}
	local app={
		IsForever=opts.forever~=false,IsClassic=opts.classic or false,GameBuildVersion=opts.build or 16001,GUID="current",
		Settings={
			--- Keeps realm and faction grouping disabled in name-formatting cases.
			---@param self ATTTooltipTestSettings Fixture settings object.
			---@param key string Tooltip setting name queried by the real builder.
			---@return boolean enabled Always false for these flat-list cases.
			GetTooltipSetting=function(self,key) return false end
		},L={KNOWN_BY="Known by %s",COMPLETED_BY="Completed by %s",OWNED_BY="Owned by %s"},
		Colors={TooltipDescription="description"},AccountWideQuestsDB={},WOWAPI={},
		SortDefaults={
			--- Compares complete names, using display text for text-only account notices.
			---@param a ATTNameTestCharacter First character or account notice.
			---@param b ATTNameTestCharacter Second character or account notice.
			---@return boolean before Whether a sorts before b.
			name=function(a,b) return (a.name or a.text or "")<(b.name or b.text or "") end
		},
		--- Sorts the supplied character records or Classic profession rows in place.
		---@generic T
		---@param values T[] Array passed by the real tooltip processor.
		---@param compare fun(a: T, b: T): boolean Ordering predicate for the array entries.
		Sort=function(values,compare) table.sort(values,compare) end,
		--- Clears reusable tooltip entries after each processor call.
		---@generic T
		---@param values T[] Mutable array to empty.
		wipearray=function(values) for i=#values,1,-1 do values[i]=nil end end,
	}
	--- Returns the exact fixture realm and records one native API call.
	---@return string realm Exact local realm name.
	local getRealmName=function() calls.raw=calls.raw+1; return raw end
	--- Returns the normalized fixture realm and records one native API call.
	---@return string realm Normalized local realm name.
	local getNormalizedRealmName=function() calls.normalized=calls.normalized+1; return normalized end
	--- Supplies item quantities used by the actual OwnedBy processor.
	---@param id integer Item ID queried by the addon.
	---@return integer count Fixture quantity, defaulting to one.
	app.WOWAPI.GetItemCount=function(id) return inventory[id] or 1 end
	--- Supplies the account-wide completion state for a quest notice.
	---@param id integer Quest ID queried by the addon.
	---@return boolean? completed Recorded completion state; nil means no fixture entry.
	app.WOWAPI.IsQuestFlaggedCompletedOnAccount=function(id) return accountQuests[id] end
	---@cast app ATTTooltipTestApp
	local env=setmetatable({ATTCharacterData=data,GetRealmName=getRealmName,GetNormalizedRealmName=getNormalizedRealmName,
		ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE="Account-Wide",ACCOUNT_COMPLETED_QUEST_NOTICE="Previously completed on your Account"},{__index=_G})
	---@cast env ATTTooltipTestEnvironment
	---@type ATTTooltipTestProcessors
	local processors=compile(program,"actual-tooltip-processors",env)("AllTheThings",app)
	local result={app=app,data=data,inventory=inventory,accountQuests=accountQuests,calls=calls,processors=processors}
	--- Runs an actual collection processor with a new output array.
	---@param kind ATTTooltipTestProcessorKind KnownBy or CompletedBy entry point to execute.
	---@param reference ATTTooltipTestReference Collection fields selecting the branch under test.
	---@return ATTTooltipLine[] rows Processor output including text, colors and optional rank columns.
	function result:run(kind,reference)
		local rows={}; self.processors[kind]({},reference,rows); return rows
	end
	---@cast result ATTTooltipTestFixture
	return result
end
--- Loads the real Summary serializer and deserializer with ignored-field stubs.
---@return ATTTooltipTestSummaryAPI sync Actual twelve-field account synchronization functions.
local function accountSync()
	local account=read("src/UI/Windows/Account Management.lua")
	local definitions=assert(account:match("(%-%- Data Handling.-)%-%- Serialization"))
	local serializers=assert(account:match("(local defaultDeserializer.-)local function ReceiveCharacterSummary"))
	local env=setmetatable({app={
		--- Ignores fields that the extracted synchronization definitions do not serialize.
		EmptyFunction=function() end
	}},{__index=_G})
	---@cast env ATTTooltipTestSummaryEnvironment
	return compile(definitions.."\nlocal ser,dser={},{}\n"..serializers.."\nreturn {serialize=serializers.Summary,deserialize=deserializers.Summary}","actual-account-Summary",env)()
end
---@type ATTPlayerNameTestInitializer
local initializePlayer=compile(read("tests/player-names.lua"),"player-name-fixtures")("fixtures",root)
local tests,failures=0,{}
--- Executes one named case and accumulates failures without stopping later cases.
---@param name string Behavior printed with the PASS or FAIL result.
---@param fn fun() Assertion callback for the case; a raised error records a failure.
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

--- Checks the Summary marker and returns its twelve positional string fields.
---@param wire string Serialized Summary message produced by the actual addon code.
---@return ATTCharacterSummaryFields fields Identity and metadata in the addon wire order.
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

test("twelve-field Summary refresh preserves an already-matching identity cache",function()
	local sync=accountSync(); local original=character("Milo","River",{build=16001})
	local fields=summaryFields(sync.serialize(original)); equal(#fields,12)
	local result={name="Milo",realm="River",Identifier="Milo-River"}
	sync.deserialize("Summary",nil,fields,result); equal(result.Identifier,"Milo-River")
	local f=fixture(); result.Spells={[10]=true}; f.data.alt=result
	contains(text(f:run("known",{spellID=10})),original.text)
end)

test("Summary clears Identifier after a name-only change",function()
	local sync=accountSync()
	local fields=summaryFields(sync.serialize(character("Milo River","Moon Guard",{build=16001})))
	local result=character("Milo Stone","Moon Guard",{build=16001,Identifier="Milo Stone-MoonGuard"})
	sync.deserialize("Summary",nil,fields,result)
	equal(result.name,"Milo River"); equal(result.realm,"Moon Guard")
	equal(result.Identifier,nil)
end)

test("Summary clears Identifier after a realm-only change",function()
	local sync=accountSync()
	local fields=summaryFields(sync.serialize(character("Milo River","Moon Guard",{build=16001})))
	local result=character("Milo River","Silvermoon",{build=16001,Identifier="Milo River-Silvermoon"})
	sync.deserialize("Summary",nil,fields,result)
	equal(result.name,"Milo River"); equal(result.realm,"Moon Guard")
	equal(result.Identifier,nil)
end)

test("Summary text-only refresh preserves the cached identity",function()
	local sync=accountSync(); local result=character("Milo River","Moon Guard",{build=16001})
	local fields=summaryFields(sync.serialize(result))
	-- Hydrate all wire fields before changing only the display text.
	sync.deserialize("Summary",nil,fields,result)
	result.Identifier="Milo River-MoonGuard"
	fields[2]="|cff00cc00Custom Display-Moon Guard|r"
	sync.deserialize("Summary",nil,fields,result)
	equal(result.name,"Milo River"); equal(result.realm,"Moon Guard")
	equal(result.text,fields[2]); equal(result.Identifier,"Milo River-MoonGuard")
end)

print(("\n%d tests, %d failures"):format(tests,#failures))
if #failures>0 then io.stderr:write(table.concat(failures,"\n\n"),"\n"); os.exit(1) end
