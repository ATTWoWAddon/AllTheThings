-- Run from the repository root: lua5.1 tests/information-settings.lua [root] [inventory.csv]
-- Loads the complete Information page and actual setting defaults/getter/setter.
-- Frame/class services and client APIs are fixtures. Processor spies check every
-- visible checkbox's wiring; separate cases exercise real modifier consumers.
-- These checks do not establish behavior inside a running WoW client.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root, reportPath = arg[1] or ".", arg[2]
local assertions, inventory = 0, {}
local function check(value, message)
	assert(value, message)
	assertions = assertions + 1
end
local function equal(actual, expected, message)
	check(actual == expected, (message or "value") .. ": expected " .. tostring(expected) .. ", got " .. tostring(actual))
end
local function read(path)
	local file = assert(io.open(root .. "/" .. path, "r"))
	local source = file:read("*a"):gsub("\r\n", "\n")
	file:close()
	return source
end
local function compile(source, name, env)
	local chunk = assert(loadstring(source, "@" .. name))
	setfenv(chunk, env)
	return chunk
end
local function wipe(t)
	for key in pairs(t) do t[key] = nil end
end
local function split(delimiter, value)
	local values, start = {}, 1
	while true do
		local first, last = value:find(delimiter, start, true)
		if not first then values[#values + 1] = value:sub(start); break end
		values[#values + 1] = value:sub(start, first - 1)
		start = last + 1
	end
	return unpack(values)
end
local previousSplit = string.split
string.split = split
local pageSource = read("src/Settings/Pages/Interface - Information.lua")
local settingsSource = read("src/Settings/Settings.lua")
local defaultsSource = assert(settingsSource:match("local TooltipSettingsBase = (%b{})"))
local getterSource = assert(settingsSource:match("(settings%.GetTooltipSetting = function%(self, setting%).-\nend)"))
local setterSource = assert(settingsSource:match("(settings%.SetTooltipSetting = function%(self, setting, value%).-\nend)"))
local unitConsumerSource = assert(read("src/Modules/Tooltip.lua"):match("(local function TryShowUnitTooltipInfo.-)\n\n%-%- Tooltip API Differences"))

local Frame = {}
Frame.__index = Frame
local function newFrame(kind, name, parent)
	local frame = setmetatable({kind=kind, name=name, parent=parent, children={}, points={}, shown=true}, Frame)
	if parent then parent.children[#parent.children + 1] = frame end
	return frame
end
function Frame:SetPoint(...) self.points[#self.points + 1] = {...} end
function Frame:ClearAllPoints() self.points = {} end
function Frame:SetSize(width, height) self.width, self.height = width, height end
function Frame:SetWidth(width) self.width = width end
function Frame:SetHeight(height) self.height = height end
function Frame:SetChecked(value) self.checked = not not value end
function Frame:GetChecked() return self.checked end
function Frame:GetCheckedTexture()
	if not self.checkedTexture then self.checkedTexture = self:CreateTexture() end
	return self.checkedTexture
end
function Frame:SetDesaturated(value) self.desaturated = value end
function Frame:SetTexture(value) self.texture = value end
function Frame:Show()
	local wasShown = self.shown
	self.shown = true
	if not wasShown and self.OnShow then self:OnShow() end
end
function Frame:Hide() self.shown = false end
function Frame:SetShown(value) if value then self:Show() else self:Hide() end end
function Frame:IsShown() return self.shown end
function Frame:IsVisible() return self.shown and (not self.parent or self.parent:IsVisible()) end
function Frame:SetText(value)
	self.text = value
	if self.OnTextChanged then self:OnTextChanged(false) end
end
function Frame:GetText() return self.text end
function Frame:GetName() return self.name end
function Frame:SetScript(event, handler) self[event] = handler end
function Frame:HookScript(event, handler)
	local original = self[event]
	self[event] = function(frame, ...)
		if original then original(frame, ...) end
		handler(frame, ...)
	end
end
function Frame:SetScrollChild(content) self.scrollChild = content end
function Frame:CreateFontString() return newFrame("FontString", nil, self) end
function Frame:CreateTexture() return newFrame("Texture", nil, self) end
function Frame:SetTextInsets() end
function Frame:SetHitRectInsets() end
function Frame:SetATTTooltip() end
function Frame:SetJustifyH() end
function Frame:SetWordWrap() end
function Frame:SetColorTexture() end
function Frame:Click(value)
	if self.kind == "CheckButton" then
		if value == nil then value = not self.checked end
		self:SetChecked(value)
	end
	self.OnClick(self)
end
local function makeFixture(build, debugging)
	local fixture = {build=build, debug=debugging, handlers={}, callbacks={}, profiles={}, cacheWipes=0, writes={}}
	local page = newFrame("Frame", "Information")
	page.separator, page.buttons = newFrame("Frame", nil, page), {}
	function page:CreateTextbox(options)
		return newFrame("EditBox", options.name, self)
	end
	function page:CreateButton(options, functions)
		local button = newFrame("Button", options.text, self)
		button:SetScript("OnClick", functions.OnClick)
		self.buttons[options.text] = button
		return button
	end
	local L = setmetatable({COMPLETED_BY="Completed by %s", KNOWN_BY="Known by %s", USEFUL_FOR="Useful for %s"}, {
		__index=function(t, key) local value=tostring(key); rawset(t, key, value); return value end,
	})
	local settings = newFrame("Frame", "ATTSettings")
	settings.UITemplates = {Checkbox="UICheckButtonTemplate"}
	local app = {
		L=L, Settings=settings, GameBuildVersion=build, Debugging=debugging,
		IsForever=build >= 16001 and build < 20000,
		ReturnTrue=function() return true end, ReturnFalse=function() return false end,
		EmptyFunction=function() end, EmptyTable={}, wipearray=wipe,
		Modules={Color={Colorize=function(value) return tostring(value) end, GetCoordString=tostring, GetPatchString=tostring,
			GetProgressColorText=function(progress, total) return progress .. "/" .. total end},
			RetrievingData={IsRetrieving=function(value) return value == nil or value == "" end}},
		WOWAPI={GetItemInfo=function() end, GetItemCount=function() return 0 end,
			GetProfessionInfoByRecipeID=function() end, GetItemSpecInfo=function() end,
			GetSpellName=function() return "Fixture Spell" end, GetSpellIcon=function() end,
			GetTradeSkillDisplayName=function() end, IsQuestFlaggedCompletedOnAccount=function() return false end},
		Colors=setmetatable({}, {__index=function() return "ffffffff" end}),
		Sort=table.sort, SortDefaults={Values=function(a,b) return a < b end},
	}
	app.IsRetail = build >= 110000 or app.IsForever
	app.IsClassic = not app.IsRetail
	function app.AddEventHandler(event, handler)
		local handlers = fixture.handlers[event] or {}
		fixture.handlers[event] = handlers
		handlers[#handlers + 1] = handler
	end
	function app.HandleEvent(event, ...)
		for _,handler in ipairs(fixture.handlers[event] or {}) do handler(...) end
		if event == "Settings.OnSet" then fixture.writes[#fixture.writes + 1] = {...} end
	end
	app.CallbackHandlers = {DelayedCallback=function(fn, delay, ...)
		fixture.callbacks[#fixture.callbacks + 1] = {fn=fn, args={...}}
	end}
	app.WipeSearchCache = function() fixture.cacheWipes = fixture.cacheWipes + 1 end
	app.GetRelativeValue = function(reference, key)
		while reference do
			if reference[key] ~= nil then return reference[key] end
			reference = reference.parent
		end
	end
	app.CreateClass = function(_, key, fields, ...)
		local variants = {...}
		return function(id, data)
			data = data or {}
			data[key] = id
			local active = fields
			for index=1,#variants,3 do
				if variants[index + 2](data) then
					active = setmetatable(variants[index + 1], {__index=fields})
					break
				end
			end
			return setmetatable(data, {__index=function(object, field)
				local getter = active[field]
				if type(getter) == "function" then return getter(object) end
				return getter
			end})
		end
	end
	function settings:CreateOptionsPage() return page end
	function settings:Refresh()
		if not fixture.ready then return end
		page:OnRefresh()
		app.HandleEvent("OnSettingsRefreshed")
	end
	local env = setmetatable({
		_G=false, ALL="All", DEFAULT="Default", NONE="None", LEVEL="Level", RANK="Rank",
		GetRealmName=function() return "Fixture Realm" end,
		GetNormalizedRealmName=function() return "FixtureRealm" end,
		Enum={FlightPathFaction={Alliance=1,Horde=2}},
		wipe=wipe, tinsert=table.insert, tremove=table.remove,
	}, {__index=function(_, key)
		local value = _G[key]
		if value ~= nil then return value end
		if key:upper() == key then return key end
	end})
	env._G = env
	local scroller
	function env.CreateFrame(kind, name, parent, template)
		local frame = newFrame(kind, name, parent)
		if kind == "ScrollFrame" then
			scroller = frame
			local scrollbar = newFrame("Slider", name .. "ScrollBar", frame)
			if template == "UIPanelScrollFrameTemplate" then env[scrollbar.name] = scrollbar
			else frame.ScrollBar = scrollbar end
		end
		return frame
	end
	local configure = compile("local settings, app = ...; local RawSettings; local TooltipSettingsBase=" .. defaultsSource .. "\n" .. getterSource .. "\n" .. setterSource .. [[

return function(profile)
	profile.Tooltips = profile.Tooltips or {}
	setmetatable(profile.Tooltips, TooltipSettingsBase)
	RawSettings = profile
end, TooltipSettingsBase.__index
]], "actual-tooltip-settings", env)
	fixture.switchRaw, fixture.defaults = configure(settings, app)
	compile(pageSource, "actual-information-page", env)("AllTheThings", app)
	fixture.app, fixture.settings, fixture.page, fixture.env = app, settings, page, env
	fixture.content = scroller.scrollChild
	function fixture:Flush()
		local queued = self.callbacks
		self.callbacks = {}
		for _,entry in ipairs(queued) do entry.fn(unpack(entry.args)) end
	end
	function fixture:Initialize()
		self.profiles.A = {Tooltips={}}
		self.profiles.B = {Tooltips={}}
		self.switchRaw(self.profiles.A)
		local initialize = assert(settings.RefreshActiveInformationTypes)
		initialize()
		settings.RefreshActiveInformationTypes = nil -- Actual Settings.Initialize's one-shot entry point.
		self.ready = true
		settings:Refresh()
	end
	function fixture:Types()
		local types = {}
		for _,informationType in ipairs(settings.InformationTypes) do types[informationType.informationTypeID] = informationType end
		return types
	end
	function fixture:Headers()
		local headers = {}
		for _,widget in ipairs(self.content.children) do
			if widget.kind == "Button" and widget.group then headers[widget.group.key] = widget end
		end
		return headers
	end
	function fixture:Checkboxes()
		local boxes = {}
		for _,widget in ipairs(self.content.children) do
			if widget.kind == "CheckButton" and widget.informationType then boxes[#boxes + 1] = widget end
		end
		return boxes
	end
	function fixture:Controls()
		local controls, count = {}, 0
		for _,box in ipairs(self:Checkboxes()) do
			if box:IsVisible() then
				local key = box.informationType.informationTypeID
				check(not controls[key], "Duplicate checkbox: " .. key)
				controls[key] = box
				count = count + 1
			end
		end
		return controls, count
	end
	function fixture:SwitchProfile(name)
		self.switchRaw(assert(self.profiles[name]))
		settings:Refresh()
	end
	return fixture
end

local lateTypes = {
	{"src/Modules/Events.lua", "nextEvent"},
	{"src/Modules/Events.lua", "requireEvent"},
	{"src/Classes/Difficulty.lua", "locks"},
	{"src/Classes/Quests.lua", "Objectives"},
	{"src/Classes/BattlePet.lua", "Owned Pets", pets=true},
	{"src/Expansions/Warlords.lua", "missionID", minimum=60000},
	{"src/Expansions/Legion.lua", "ArtifactRelicCompletion", minimum=70000},
}
local function addLateTypes(fixture, omitPetStats)
	local expected = {}
	for _,entry in ipairs(lateTypes) do
		if (not entry.minimum or fixture.build >= entry.minimum)
			and (not entry.pets or (not omitPetStats and (fixture.build >= 50004 or fixture.app.IsForever))) then
			local pattern = 'app%.Settings%.CreateInformationType%("' .. entry[2] .. '",%s*(%b{})'
			local definition = assert(read(entry[1]):match(pattern), "Missing registration: " .. entry[2])
			local data = compile("local app, L = ...; return " .. definition, "actual-late-registration-" .. entry[2], fixture.env)(fixture.app, fixture.app.L)
			fixture.settings.CreateInformationType(entry[2], data)
			expected[entry[2]] = true
		end
	end
	return expected
end
local function verifyLayout(fixture)
	local controls, count = fixture:Controls()
	local positioned = 0
	for key,header in pairs(fixture:Headers()) do
		local types = header.CheckBox.types
		local collapsed = header.group.collapsed
		local rows = math.ceil(#types / 3)
		equal(#header.points, 1, "Single header anchor for " .. key)
		local anchor = header.points[1]
		equal(anchor[2], fixture.content, "Header is anchored to the scroll content")
		for index,informationType in ipairs(types) do
			local id = informationType.informationTypeID
			local box = controls[id]
			equal(box ~= nil, not collapsed, "Checkbox visibility for " .. id)
			if box then
				positioned = positioned + 1
				if index > 1 then
					check(types[index - 1].textLower <= informationType.textLower, "Options are sorted within " .. key)
				end
				equal(#box.points, 1, "Single checkbox anchor for " .. id)
				local point = box.points[1]
				equal(point[2], fixture.content, "Checkbox is anchored to the scroll content")
				equal(point[4], 20 + math.floor((index - 1) / rows) * 190, "Column offset for " .. id)
				equal(point[5], anchor[5] - 24 - ((index - 1) % rows) * 20, "Row offset for " .. id)
			end
		end
	end
	equal(positioned, count, "Every visible checkbox belongs to a group")
end
local function installProcessorProbes(fixture)
	local counts = {}
	for _,informationType in ipairs(fixture.settings.InformationTypes) do
		local key = informationType.informationTypeID
		informationType.Process = function() counts[key] = (counts[key] or 0) + 1 end
	end
	return counts
end
local function verifyEveryCheckbox(fixture, label)
	local types, controls, count = fixture:Types(), fixture:Controls()
	local probes = installProcessorProbes(fixture)
	for key,informationType in pairs(types) do
		local visible = not informationType.HideCheckBox and not informationType.ForceActive
		equal(controls[key] ~= nil, visible, label .. ": registration/control mismatch for " .. key)
	end
	for key,box in pairs(controls) do
		local informationType = types[key]
		for _,value in ipairs({false,true}) do
			local writes = #fixture.writes
			local cacheWipes = fixture.cacheWipes
			box:Click(value)
			equal(#fixture.writes, writes + 1, label .. ": one setting write for " .. key)
			local write = fixture.writes[#fixture.writes]
			equal(write[1], "Tooltips", "Setting container")
			equal(write[2], key, "Checkbox setting key")
			equal(write[3], value, "Checkbox setting value")
			equal(box:GetChecked(), value, "Checkbox refresh state")
			check(fixture.cacheWipes > cacheWipes, "Setting change must invalidate cached tooltip data")
			wipe(probes)
			fixture.app.ProcessInformationTypes({}, {})
			equal((probes[key] or 0) > 0, value and informationType.IsStandaloneProperty or false, "Internal processor gate: " .. key)
			wipe(probes)
			fixture.app.ProcessInformationTypesForExternalTooltips({}, {})
			equal((probes[key] or 0) > 0, value and informationType.IsStandaloneProperty and informationType.ShouldDisplayInExternalTooltips or false, "External processor gate: " .. key)
			fixture.app.ActiveRowReference = {}
			wipe(probes)
			fixture.app.ProcessInformationTypesForExternalTooltips({}, {})
			equal((probes[key] or 0) > 0, value and informationType.IsStandaloneProperty or false, "ATT-row tooltip gate: " .. key)
			fixture.app.ActiveRowReference = nil
		end
		inventory[#inventory + 1] = {label, fixture.build, fixture.debug, key, informationType.text,
			informationType.IsStandaloneProperty, informationType.ShouldDisplayInExternalTooltips, fixture.defaults[key], "pass"}
	end
	return count
end
local function verifyPresetsAndProfiles(fixture)
	local settings, controls = fixture.settings, fixture:Controls()
	local raw = fixture.profiles.A.Tooltips
	raw.CompletedBy, raw.UnsupportedFixtureKey = false, true
	for _,preset in ipairs({{"All",true}, {"None",false}, {"Default"}}) do
		fixture.writes = {}
		fixture.page.buttons[preset[1]]:Click()
		local seen = {}
		for _,write in ipairs(fixture.writes) do
			check(controls[write[2]] ~= nil, "Preset changed a hidden/unavailable setting: " .. write[2])
			check(not seen[write[2]], "Preset wrote the same setting twice")
			seen[write[2]] = true
		end
		for key,box in pairs(controls) do
			check(seen[key], "Preset skipped visible setting: " .. key)
			equal(rawget(raw,key), preset[2], "Preset override: " .. key)
			local effective = preset[2]
			if effective == nil then effective = fixture.defaults[key] end
			equal(settings:GetTooltipSetting(key), effective, "Preset effective value: " .. key)
			equal(box:GetChecked(), not not effective, "Preset checkbox state: " .. key)
		end
		equal(raw.CompletedBy, false, "Hidden override must be preserved")
		equal(raw.UnsupportedFixtureKey, true, "Unavailable override must be preserved")
	end
	controls.itemID:Click(false)
	fixture:SwitchProfile("B")
	equal(controls.itemID:GetChecked(), true, "New profile uses default itemID state")
	controls.itemID:Click(false)
	fixture.page.buttons.Default:Click()
	equal(rawget(fixture.profiles.B.Tooltips,"itemID"), nil, "Default clears only current profile override")
	fixture:SwitchProfile("A")
	equal(controls.itemID:GetChecked(), false, "Returning to profile preserves explicit false")
	equal(rawget(fixture.profiles.A.Tooltips,"itemID"), false, "Other profile remains unchanged")
end
local function verifyModifiers(fixture)
	local controls, settings = fixture:Controls(), fixture.settings
	local conversion = settings.InformationTypeConversionMethods.spellID
	controls.spellName:Click(false)
	equal(conversion(42,{}), "42", "Spell Name off")
	controls.spellName:Click(true)
	equal(conversion(42,{}), "42 (Fixture Spell)", "Spell Name on")
	local captured = {}
	local env = setmetatable({
		issecretvalue=function() return false end, InCombatLockdown=function() return false end,
		GetServerTime=function() return 8388708 end, date=function() return "Fixture date" end,
		bit={band=function(a,b) return a % (b + 1) end},
		GetPlayerInfoByGUID=function() end,
	}, {__index=fixture.env})
	fixture.app.PlayerProgressCacheByGUID = {["Player-fixture"]={3,10,"Fixture Player"}}
	local preamble = [[local app = ...; local L = app.L; local PLAYER_TOOLTIPS = {}; local ServerUID = "different";
local timeFormatter = {Format=function() return "Fixture age" end};
local AttachTypicalSearchResults = function() end;
]]
	local process = compile(preamble .. unitConsumerSource .. "\nreturn TryShowUnitTooltipInfo", "actual-unit-tooltip-modifier-consumer", env)(fixture.app)
	local tooltip = {AddDoubleLine=function(_,left,right) captured[left]=right end}
	local npcGUID = "Creature-0-123-4-55-66-000001"
	local npcModifiers = {"Alive","Spawned","Layer"}
	local modifiers = {"SocialProgress"}
	if fixture.app.IsForever then
		-- Older profiles can retain overrides for the NPC settings hidden on Forever.
		local types = fixture:Types()
		for _,key in ipairs(npcModifiers) do
			equal(types[key], nil, "Forever omits the " .. key .. " information type")
			equal(controls[key], nil, "Forever hides the " .. key .. " checkbox")
			settings:SetTooltipSetting(key, true)
		end
		process(tooltip, npcGUID)
		for _,key in ipairs(npcModifiers) do
			equal(captured[fixture.app.L[key:upper()]], nil, "Forever suppresses the " .. key .. " row")
		end
	else
		for _,key in ipairs(npcModifiers) do modifiers[#modifiers + 1] = key end
	end
	for _,key in ipairs(modifiers) do controls[key]:Click(false) end
	for _,key in ipairs(modifiers) do
		for _,value in ipairs({false,true}) do
			controls[key]:Click(value)
			wipe(captured)
			process(tooltip, key == "SocialProgress" and "Player-fixture" or npcGUID)
			local label = key == "SocialProgress" and "Fixture Player" or fixture.app.L[key:upper()]
			equal(captured[label] ~= nil, value, "Actual unit-tooltip consumer: " .. key
				.. " (build " .. fixture.app.GameBuildVersion .. ")")
		end
		controls[key]:Click(false)
	end
end

-- Timers can run before Settings.Initialize: registration must not read unloaded settings.
do
	local fixture = makeFixture(16001, false)
	fixture.settings.CreateInformationType("EarlyFixture", {text="Early Fixture"})
	fixture:Flush()
	equal(#fixture:Checkboxes(), 0, "Early callbacks must not initialize UI")
	fixture:Initialize()
	local controls = fixture:Controls()
	check(controls.EarlyFixture ~= nil, "Early registration must appear during initial UI build")
end

local profiles = {
	{"Vanilla",11509}, {"VanillaSOD",11509}, {"TBC",20506}, {"Wrath",38002},
	{"Mists",50504}, {"Forever",16001}, {"Standard",120105}, {"Retail PTR",120107},
}
for _,profile in ipairs(profiles) do
	for _,debugging in ipairs({false,true}) do
		local fixture = makeFixture(profile[2], debugging)
		fixture:Initialize()
		local initialCreated = #fixture:Checkboxes()
		fixture:Flush()
		equal(#fixture:Checkboxes(), initialCreated, "Repeated startup callbacks must reuse controls")
		equal(fixture:Controls().itemID, nil, "IDs start collapsed")
		fixture:Headers().IDs:Click()
		local late = addLateTypes(fixture)
		fixture:Flush()
		local controls = fixture:Controls()
		for key in pairs(late) do check(controls[key] ~= nil, "Late registration has no checkbox: " .. key) end
		local created = #fixture:Checkboxes()
		fixture:Flush()
		fixture.settings:Refresh()
		equal(#fixture:Checkboxes(), created, "Repeated refresh must not allocate duplicate frames")
		verifyLayout(fixture)
		verifyModifiers(fixture)
		local label = profile[1] .. (debugging and " debug" or " normal")
		local count = verifyEveryCheckbox(fixture, label)
		verifyPresetsAndProfiles(fixture)
		print(label .. ": " .. count .. " visible Information options passed")
	end
end

-- Missing optional pet-stat support leaves no phantom Owned Pets setting/control.
do
	local fixture = makeFixture(16001, false)
	fixture:Initialize()
	addLateTypes(fixture, true)
	fixture:Flush()
	check(not fixture:Controls()["Owned Pets"], "Missing optional API must not add Owned Pets")
end

-- A late option that needs another row reflows its group and reuses existing controls.
do
	local fixture = makeFixture(11509, false)
	fixture:Initialize()
	fixture.settings.CreateInformationType("LayoutFixture", {text="Layout Fixture", SettingsGroup="Other"})
	fixture:Flush()
	local otherHeader = fixture:Headers().Other
	local count = #otherHeader.CheckBox.types
	local padding = (3 - count % 3) % 3
	for index=1,padding do
		fixture.settings.CreateInformationType("LayoutFixture" .. index, {text="Layout Fixture " .. index, SettingsGroup="Other"})
	end
	fixture:Flush()
	equal(#otherHeader.CheckBox.types, count + padding, "Fill every column in the group")
	verifyLayout(fixture)
	local created = #fixture:Checkboxes()
	local height = fixture.content.height
	fixture.settings.CreateInformationType("LayoutFixtureNext", {text="Layout Fixture Next", SettingsGroup="Other"})
	fixture:Flush()
	equal(#fixture:Checkboxes(), created + 1, "Reflow adds only the new checkbox")
	equal(fixture.content.height, height + 20, "One additional row extends the scroll content")
	verifyLayout(fixture)
end

if reportPath then
	local file = assert(io.open(reportPath, "w"))
	file:write("profile,build,debug,key,label,standalone,external,default,result\n")
	for _,row in ipairs(inventory) do
		local cells = {}
		for index=1,9 do cells[index] = '"' .. tostring(row[index]):gsub('"','""') .. '"' end
		file:write(table.concat(cells, ","), "\n")
	end
	file:close()
end
string.split = previousSplit
print("Information settings tests passed: " .. assertions .. " assertions")
