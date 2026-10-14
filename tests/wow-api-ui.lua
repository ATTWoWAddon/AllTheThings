-- Run from the repository root with Lua 5.1: lua tests/wow-api-ui.lua
-- Exercises the full wrapper module and actual sound-pack settings page.
-- Client XML/mixin availability and protected actions still need in-game validation.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local worktree = arg[1] or "."
local wrapperFile = worktree .. "/src/WoW API Wrappers.lua"
local testCount = 0
local function expect(value, message)
	assert(value, message)
	testCount = testCount + 1
end
local function runUIFixture(modern)
	local lib, dropdown, legacyButtons, registrations, opened = {}, nil, {}, {}, nil
	local env = setmetatable({ lib = lib, tinsert = table.insert }, { __index = _G })
	local function genericFrame()
		return setmetatable({}, { __index = function(self, key)
			if key == "__ATTModernDropdown" then return nil end
			if key == "CreateCheckBox" or key == "CreateHeaderLabel" or key == "CreateTextLabel" then
				return function() return genericFrame() end
			elseif key == "GetUnboundedStringWidth" then
				return function() return 100 end
			elseif key == "SetPoint" then
				return function(self, ...) self.point = {...} end
			elseif key == "SetWidth" then
				return function(self, width) self.width = width end
			end
			return function() end
		end })
	end
	local function generate(dropdown)
		dropdown.entries = {}
		local root = {}
		function root:CreateRadio(text, isSelected, onSelect, data)
			dropdown.entries[#dropdown.entries+1] = {
				text = text, checked = function() return isSelected(data) end,
				select = function() onSelect(data) end,
			}
		end
		dropdown.generator(dropdown, root)
	end
	env.CreateFrame = function(frameType, name, parent, template)
		if name == "dropdownSoundpack" then
			dropdown = genericFrame()
			dropdown.frameType, dropdown.template = frameType, template
			if modern then
				function dropdown:SetupMenu(generator) self.generator = generator; generate(self) end
				function dropdown:OverrideText(text) self.text = text end
				function dropdown:IsMenuOpen() return self.open end
				function dropdown:GenerateMenu() generate(self) end
			end
			return dropdown
		end
		return genericFrame()
	end
	local function rejectLegacy() error("Legacy dropdown API used despite modern framework") end
	if modern then
		env.DropdownButtonMixin = { SetupMenu = function() end }
		env.WowStyle1DropdownMixin = {}
		env.UIDropDownMenu_SetWidth = rejectLegacy
		env.UIDropDownMenu_SetText = rejectLegacy
		env.UIDropDownMenu_CreateInfo = rejectLegacy
		env.UIDropDownMenu_AddButton = rejectLegacy
		env.UIDropDownMenu_Initialize = rejectLegacy
	else
		env.UIDropDownMenu_SetWidth = function(frame, width) frame.width = width end
		env.UIDropDownMenu_SetText = function(frame, text) frame.text = text end
		env.UIDropDownMenu_CreateInfo = function() return {} end
		env.UIDropDownMenu_AddButton = function(info) legacyButtons[#legacyButtons+1] = info end
		env.UIDropDownMenu_Initialize = function(frame, generator) frame.generator = generator end
	end
	if modern then
		env.Settings = {
			OpenToCategory = function(id) opened = id end,
			RegisterCanvasLayoutCategory = function(frame, name)
				registrations[#registrations+1] = "root:" .. name
				return { ID = 10 }
			end,
			RegisterAddOnCategory = function(category)
				expect(category.ID == 10, "root AddOn registration must use returned category")
				registrations[#registrations+1] = "addon"
			end,
			RegisterCanvasLayoutSubcategory = function(parent, frame, name)
				expect(parent.ID == 10, "subcategory parent must be actual category")
				registrations[#registrations+1] = "child:" .. name
				return { ID = 11 }
			end,
		}
		env.InterfaceOptionsFrame_OpenToCategory = function() error("legacy options opened") end
		env.InterfaceOptions_AddCategory = function() error("legacy category registered") end
	else
		env.InterfaceOptionsFrame_OpenToCategory = function(id) opened = id end
		env.InterfaceOptions_AddCategory = function(frame)
			registrations[#registrations+1] = frame.name
		end
	end
	env.GetBuildInfo = function() return "fixture", "fixture", "fixture", modern and 120105 or 11509 end
	env._G = env
	local wrapperApp = {print = function() end}
	local chunk = assert(loadfile(wrapperFile))
	setfenv(chunk, env)
	chunk("ATT", wrapperApp)
	lib = wrapperApp.WOWAPI

	-- Category identifiers and root-before-child registration survive either UI.
	local rootFrame, childFrame = {}, {}
	local rootCategory, rootID = lib.RegisterOptionsCategory(rootFrame, "ATT")
	local childCategory, childID = lib.RegisterOptionsCategory(childFrame, "Audio", rootCategory, "ATT")
	if modern then
		expect(rootID == 10 and childID == 11, "modern category IDs not preserved")
		expect(table.concat(registrations, ",") == "root:ATT,addon,child:Audio", "modern category registration order changed")
	else
		expect(rootCategory == nil and childCategory == nil, "legacy registration fabricated modern category")
		expect(rootID == "ATT" and childID == "Audio", "legacy category identifiers not preserved")
		expect(childFrame.parent == "ATT", "legacy parent category name lost")
		expect(table.concat(registrations, ",") == "ATT,Audio", "legacy category order changed")
	end
	lib.OpenOptionsCategory(childID)
	expect(opened == childID, "opening options category changed its ID")

	-- Run the actual Audio settings page, including selection and event handlers.
	local handlers, packs, current, persisted, fanfares = {}, {
		Zulu = {name="Zulu"}, Default = {name="Default"}, Alpha = {name="Alpha"},
	}, "Default", nil, 0
	local audio = {}
	function audio:GetAllSoundPacks() return packs end
	function audio:GetActiveSoundPack() return packs[current] end
	function audio:RegisterForSoundPackEvents(handler) handlers[#handlers+1] = handler end
	function audio:ActivateSoundPack(name)
		current, persisted = name, name
		for _, handler in ipairs(handlers) do handler("Activated", packs[name]) end
	end
	function audio:PlayFanfare() fanfares = fanfares + 1 end
	local app = {
		WOWAPI = lib, Audio = audio,
		L = setmetatable({}, {__index=function(_, key) return key end}),
		Settings = {CreateOptionsPage=function() return genericFrame() end},
	}
	local audioChunk = assert(loadfile(worktree .. "/src/Settings/Pages/Features - Audio.lua"))
	setfenv(audioChunk, env)
	audioChunk("ATT", app)
	expect(dropdown.width == 270, "sound-pack width changed")
	expect(dropdown.point[4] == (modern and 0 or -15), "sound-pack horizontal alignment changed")
	expect(dropdown.text == "Default", "initial active sound-pack text absent")
	local function openMenu()
		if modern then
			dropdown.open = true
			dropdown:GenerateMenu()
		else
			legacyButtons = {}
			dropdown.generator(dropdown, 1)
		end
	end
	local function entries()
		if modern then return dropdown.entries end
		local result = {}
		for _, info in ipairs(legacyButtons) do
			result[#result+1] = {
				text = info.text, checked = function() return info.checked end,
				select = function() info.func({}, info.arg1) end,
			}
		end
		return result
	end
	openMenu()
	local options = entries()
	expect(#options == 3 and options[1].text == "Alpha" and options[2].text == "Default" and options[3].text == "Zulu", "sound-packs not sorted")
	expect(options[2].checked() and not options[1].checked(), "current sound-pack selection absent")
	options[1].select()
	expect(current == "Alpha" and persisted == "Alpha", "selection did not activate and save sound-pack")
	expect(dropdown.text == "Alpha", "activation event did not update dropdown text")
	expect(fanfares == 1, "selection did not play one fanfare")
	openMenu()
	options = entries()
	expect(options[1].checked() and not options[2].checked(), "selection marker did not refresh")
	audio:ActivateSoundPack("Zulu")
	expect(dropdown.text == "Zulu", "external activation did not update text")
	packs.Beta = {name="Beta"}
	for _, handler in ipairs(handlers) do handler("Created", packs.Beta) end
	openMenu()
	options = entries()
	expect(#options == 4 and options[2].text == "Beta", "new sound-pack absent when menu reopened")
	expect(options[4].checked(), "external activation did not refresh selected marker")
end
runUIFixture(true)
runUIFixture(false)
print("UI wrapper fixtures passed: " .. testCount .. " assertions")
