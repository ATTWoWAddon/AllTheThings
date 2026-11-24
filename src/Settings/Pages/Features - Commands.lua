local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, math, table = ipairs, math, table;

-- Settings: Commands Page
local child = settings:CreateOptionsPage(L.COMMANDS_PAGE, L.FEATURES_PAGE)

local stringsOne = {
	{ title = L.ACHIEVEMENT, command = "achievement" },
	{ minBuild = 80200, title = L.AZERITE_ESSENCE, command = "azeriteessence" },
	{ title = L.BATTLE_PET, command = "battlepet" },
	{ title = L.CATEGORY, command = "category" },
	{ title = L.CLASSES, command = "class" },
	{ minBuild = 90000, title = L.CONDUIT, command = "conduit" },
	{ title = L.CREATURE, command = "creature" },
	{ title = L.CRITERIA, command = "criteriaid" },
	{ title = L.CURRENCY, command = "currency" },
	{ minBuild = 110207, title = L.DECOR, command = "decor" },
	{ title = L.DIFFICULTY, command = "difficulty" },
	{ title = L.ENCOUNTER, command = "encounter" },
	{ title = L.EXPLORATION, command = "exploration" },
	{ title = L.FACTION, command = "faction" },
	{ title = L.FLIGHT_PATHS, command = "flightpath" },
	{ minBuild = 60000, title = L.FOLLOWER, command = "follower" },
}
if app.GameBuildVersion >= 70000 then
	table.insert(stringsOne, 2, { title = L.ARTIFACT, command = "artifact" });
end
local stringsTwo = {
	{ title = L.HEADER, command = "header" },
	{ minBuild = 30000, title = L.HEIRLOOM, command = "heirloomid" },
	{ minBuild = 70000, title = L.ILLUSION, command = "illusion" },
	{ title = L.ITEM, command = "item" },
	{ title = L.MAP, command = "map" },
	{ title = L.MOUNT_SPELL, command = "mount" },
	{ title = "Npc", command = "npc" },
	{ title = L.OBJECT, command = "object" },
	{ title = L.PROFESSION, command = "profession" },
	{ title = L.QUEST, command = "quest" },
	{ title = L.RECIPE_SPELL, command = "recipe" },
	{ minBuild = 90000, title = L.RUNECARVING_POWER, command = "runeforgepower" },
	{ title = L.SOURCES, command = "source" },
	{ title = L.SPELL, command = "spell" },
	{ title = L.TITLE_COMMANDS_UI, command = "title" },
	{ title = L.TOY_ITEM, command = "toy" },
}


local content = settings.CreatePageColumn(child, 0, 656)
local y = -4
local function AddText(text)
	local label = content:CreateTextLabel(text)
	label:SetFontObject(GameFontNormalSmall)
	label:SetWidth(content.SectionWidth - 16)
	label:SetWordWrap(true)
	label:SetSpacing(2)
	label:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y - 2)
	y = y - label:GetStringHeight() - 8
end

-- Commands which view any Thing
y = y - settings.CreatePageSectionHeader(content, L.COMMANDS_HEADER_LABEL, y)
AddText(L.COMMANDS_PART_1)
-- The example was added during Warlords
if app.GameBuildVersion >= 60000 then AddText(L.COMMANDS_PART_2) end
local ROW_HEIGHT, COLUMN_WIDTH, COMMAND_X = 16, 312, 140
local function AddColumn(commands, x)
	local count = 0
	for _,command in ipairs(commands) do
		if not command.minBuild or app.GameBuildVersion >= command.minBuild then
			local title = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
			title:SetPoint("TOPLEFT", content, "TOPLEFT", x, y - count * ROW_HEIGHT)
			title:SetText(command.title)
			local text = content:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
			text:SetPoint("TOPLEFT", content, "TOPLEFT", x + COMMAND_X, y - count * ROW_HEIGHT)
			text:SetText("|cff00FF98/att " .. command.command .. ":ID|r")
			count = count + 1
		end
	end
	return count
end
local rows = math.max(AddColumn(stringsOne, 8), AddColumn(stringsTwo, 8 + COLUMN_WIDTH))
y = y - rows * ROW_HEIGHT - 12

-- The commands which are registered, so new ones show up by themselves. Any time before the page
-- is shown or searched is too early, since every module adds its own.
local OpenChat = ChatFrameUtil and ChatFrameUtil.OpenChat or ChatFrame_OpenChat
local ROW_GAP, DESCRIPTION_X = 1, 300
local function CreateCommandRow(entry)
	local row = CreateFrame("Button", nil, content)
	row:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y)
	row:SetWidth(content.SectionWidth - 16)
	local highlight = row:CreateTexture(nil, "HIGHLIGHT")
	highlight:SetAllPoints()
	highlight:SetColorTexture(1, 1, 1, 0.08)
	local command = row:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	command:SetPoint("TOPLEFT", row, "TOPLEFT", 0, -2)
	command:SetWidth(DESCRIPTION_X - 10)
	command:SetJustifyH("LEFT")
	command:SetWordWrap(true)
	command:SetText(entry.text)
	local description = row:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	description:SetPoint("TOPLEFT", row, "TOPLEFT", DESCRIPTION_X, -2)
	description:SetWidth(content.SectionWidth - 16 - DESCRIPTION_X)
	description:SetJustifyH("LEFT")
	description:SetWordWrap(true)
	description:SetText(entry.description)
	row:SetHeight(math.max(command:GetStringHeight(), description:GetStringHeight()) + 4)
	-- Only put it in the chat box, since some commands do a lot
	row:SetScript("OnClick", function()
		if OpenChat then OpenChat(entry.command .. " ") end
	end)
	row.OnTooltip = function(self, tooltipInfo)
		tooltipInfo[#tooltipInfo + 1] = { left = entry.command }
		if entry.usage then tooltipInfo[#tooltipInfo + 1] = { left = entry.usage, wrap = true, r = 1, g = 1, b = 1 } end
		tooltipInfo[#tooltipInfo + 1] = { left = L.COMMANDS_CLICK, wrap = true, r = 0.6, g = 0.6, b = 0.6 }
	end
	row:SetATTTooltip()
	y = y - row:GetHeight() - ROW_GAP
	return row
end
local CommandOptions
local function BuildCommands()
	if CommandOptions then return end
	CommandOptions = {}
	local function AddSection(title, entries)
		if #entries == 0 then return end
		table.sort(entries, function(a, b) return a.text < b.text end)
		y = y - settings.CreatePageSectionHeader(content, title, y)
		for _,entry in ipairs(entries) do
			CommandOptions[#CommandOptions + 1] = {
				frame = CreateCommandRow(entry), page = child, text = entry.text, tooltip = entry.description,
			}
		end
		y = y - 8
	end

	-- The windows, with their direct commands
	local windows, isWindowCommand = {}, {}
	for _,definition in ipairs(app.ChatCommands.Windows) do
		local names = {}
		for _,command in ipairs(definition.RootCommands or app.EmptyTable) do
			command = command:lower()
			isWindowCommand[command] = true
			names[#names + 1] = "/att " .. command
		end
		for _,command in ipairs(definition.Commands or app.EmptyTable) do
			names[#names + 1] = "/" .. command:lower()
		end
		if #names > 0 then
			windows[#windows + 1] = {
				command = names[1], text = table.concat(names, ", "),
				description = definition.HelpText or L.COMMANDS_TOGGLES:format(definition.Title or definition.SettingsName or definition.Suffix),
				usage = definition.UsageText,
			}
		end
	end
	-- Everything else. Aliases share their help.
	local others, entryByHelp = {}, {}
	for _,command in ipairs(app.ChatCommands.List) do
		if not isWindowCommand[command] and app.ChatCommands[command] then
			local help = app.ChatCommands.Help[command]
			local entry = help and entryByHelp[help]
			if entry then
				entry.text = entry.text .. ", /att " .. command
			else
				entry = { command = "/att " .. command, text = "/att " .. command }
				if help then
					entryByHelp[help] = entry
					entry.usage = #help > 1 and help[1] or nil
					entry.description = table.concat(help, "\n", #help > 1 and 2 or 1)
				else
					entry.description = "|cff808080" .. L.COMMANDS_NO_HELP .. "|r"
				end
				others[#others + 1] = entry
			end
		end
	end
	AddSection(L.CHAT_COMMANDS_LABEL, {
		{ command = "/att", text = "/att, /allthethings", description = L.COMMANDS_MAIN_LIST },
		{ command = "/att item:", text = "/att [" .. L.ITEM .. "]", description = L.COMMANDS_LINK },
		{ command = "/rl", text = "/rl", description = RELOADUI or "Reload UI" },
	})
	AddSection(L.WINDOWS_PAGE, windows)
	AddSection(L.COMMANDS_OTHER, others)
	content:SetHeight(-y)
end
content:SetHeight(-y)
child:HookScript("OnShow", BuildCommands)
settings.AddOptionProvider(function(add)
	BuildCommands()
	for _,option in ipairs(CommandOptions) do add(option) end
end)
