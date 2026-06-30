---
--- Contains functionality to handle how slash/chat commands/links are implemented for ATT
--- Dependencies:
---

local _, app = ...

local ipairs,math_floor
	= ipairs,math.floor

-- Give a safe way to use HandleModifiedItemClick since Blizzard made it unsafe in 11.1.5
-- HandleModifiedItemClick now throws a Lua error when the link is not perfectly-handled
-- by LinkUtil.ExtractLink, so we need to test if that will break internally
app.HandleModifiedItemClick = function(link)
	if link then
		local _, linkOptions, _ = LinkUtil.ExtractLink(link)
		if linkOptions and HandleModifiedItemClick(link) then
			return true
		end
	end
end

-- Clickable ATT Chat Link Handling
local reports = {};
function app:SetupReportDialog(id, reportMessage, text, replace)
	-- Store some information for use by a report popup by id
	if not reports[id] or replace then
		-- print("Setup Report", id, reportMessage)
		reports[id] = {
			msg = reportMessage,
			text = (type(text) == "table" and app.TableConcat(text, nil, "", "\n") or text)
		};
		return true;
	end
end
hooksecurefunc("SetItemRef", function(link, text)
	-- print("Chat Link Click",link,text:gsub("\|", "&"));
	-- if IsShiftKeyDown() then
	-- 	ChatEdit_InsertLink(text);
	-- else
	local type, info, data1, data2, data3 = (":"):split(link);
	-- print(type, info, data1, data2, data3)
	if type == "addon" and info == "ATT" then
		-- local op = link:sub(17)
		-- print("ATT Link",op)
		-- local type, paramA, paramB = (":"):split(data);
		-- print(type,paramA,paramB)
		if data1 == "search" then
			local cmd = data2 .. ":" .. data3;
			app.SetSkipLevel(2);
			local group = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {IgnoreCache=true})
			app.SetSkipLevel(0);

			if IsShiftKeyDown() then
				-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
				local link = group.link or group.silentLink;
				if (app.HandleModifiedItemClick(link)) or ChatEdit_InsertLink(link) then return true; end
			end

			app:CreateMiniListForGroup(group);
			return true;
		elseif data1 == "dialog" then
			-- Retrieves stored information for a report dialog and attempts to display the dialog if possible
			local popup = reports[data2];
			if popup then
				app:ShowPopupDialogToReport(popup.msg, popup.text);
				return true;
			end
		end
	end
end);

-- Chat Links
do
local LeftClickAtlas = CreateAtlasMarkup('NPE_LeftClick', 14, 13)
function app:Linkify(text, color, operation)
	-- Turns a bit of text into a colored link which ATT will attempt to understand
	return LeftClickAtlas.."|Haddon:ATT:"..operation.."|h|c"..color.."["..text.."]|r|h";
end
end
function app:SearchLink(group)
	if not group then return end
	return app:Linkify(group.text or group.hash or UNKNOWN, app.Colors.ChatLink, "search:"..(group.searchKey or group.key or "?")..":"..(group[group.key] or "?"))
end
function app:RawSearchLink(field,id)
	return app:SearchLink(app.SearchForObject(field, id, "field"))
end
function app:WaypointLink(mapID, x, y, text)
	return "|cffffff00|Hworldmap:" .. mapID .. ":" .. math_floor(x * 10000) .. ":" .. math_floor(y * 10000)
		.. "|h[|A:Waypoint-MapPin-ChatIcon:13:13:0:0|a" .. (text or "") .. "]|h|r";
end
-- Add a simple way for other addons to pull a standalone ATT group derived from a link
app.GetLinkReference = function(link)
	-- don't try searching for an invalid link
	if app.Modules.RetrievingData.IsRetrieving(link) then
		return
	end
	-- Search for the Link in the database
	app.SetSkipLevel(2)
	local group = app.GetCachedSearchResults(app.SearchForLink, link, nil, {ShortCache=true})
	app.SetSkipLevel(0)
	return group
end

-- Define Chat Commands handling
app.ChatCommands = { Help = {}, List = {}, Slash = {} }
local function ChatCommand_Add(cmd, func, help)
	cmd = cmd and cmd:lower()
	if not cmd then return end

	if app.ChatCommands[cmd] then
		app.print("Duplicate Command",cmd)
		return
	end
	app.ChatCommands[cmd] = func
	local list = app.ChatCommands.List
	list[#list + 1] = cmd
	if help then
		if type(help) ~= "table" then
			app.print("Attempted to add a non-table Help for a Chat Command:",cmd)
		else
			app.ChatCommands.Help[cmd] = help
		end
	end
end
-- Adds a handled chat command for ATT
-- cmd : The lowercase string to trigger the command handler
-- func : The function which is run with provided 'args' from chat input when 'cmd' is used
-- info : (optional, WIP) An Info table which defines helpful information about using the command
app.ChatCommands.Add = function(cmd, func, help)
	if not cmd or cmd == "" then error("Must supply an Add Chat Command name") end
	if type(func) ~= "function" then error("Attempted to add a non-function handler for a Chat Command: "..cmd) end
	if type(cmd) == "table" then
		for _,alias in ipairs(cmd) do
			ChatCommand_Add(alias, func, help)
		end
	else
		ChatCommand_Add(cmd, func, help)
	end
end
-- Removes a handled chat command for ATT
-- cmd : The lowercase string command whose handler will be removed
app.ChatCommands.Remove = function(cmd)
	if not cmd or cmd == "" then error("Must supply a Remove Chat Command name") end
	app.ChatCommands[cmd:lower()] = nil
	app.ChatCommands.Help[cmd:lower()] = nil
end
-- Prints the Help information for a given command
-- cmd : The command's Help to print
app.ChatCommands.PrintHelp = function(cmd)
	cmd = cmd and cmd:lower()
	if cmd then
		if not app.ChatCommands[cmd] then
			app.print("Unknown Command:",cmd)
			return true
		end
		local allHelp = app.ChatCommands.Help;
		local help = allHelp[cmd]
		if help then
			for _,helpLine in ipairs(help) do
				app.print(helpLine)
			end
		else
			app.print("No Help provided for Command:",cmd)
		end
		return true
	end

	-- TODO: revise this to actually combine commands which are identical in the chat output & move base /att help here
	-- local allCommands = app.ChatCommands.List
	-- table.sort(allCommands);
	-- local allSlash = app.ChatCommands.Slash
	-- table.sort(allSlash);
	-- app.print("Full Command List:");
	-- for _,slash in ipairs(allSlash) do
	-- 	print(slash);
	-- end
	-- for _,command in ipairs(allCommands) do
	-- 	print("/att " .. command);
	-- end
	return true
end

-- Allows a user to use /att report-reset
-- to clear all generated Report dialog IDs so that they may be re-generated within the same game session
app.ChatCommands.Add("report-reset", function(args)
	wipe(reports)
	app.HandleEvent("OnReportReset")
	return true
end, {
	"Usage : /att report-reset",
	"Allows resetting the tracking of displayed Dialog reports such that duplicate reports can be repeated in the same game session.",
})
-- Allows a user to use /att debug-print
-- to enable Debug Printing of any PrintDebug messages
app.ChatCommands.Add("debug-print", function(args)
	app.Debugging = not app.Debugging
	app.print("Debug Printing:",app.Debugging and "ACTIVE" or "OFF")
	return true
end, {
	"Usage : /att debug-print",
	"Allows toggling debug printing within ATT",
})
-- Allows a user to use /att debug-events
-- to enable Debug Printing of Event messages
app.ChatCommands.Add("debug-events", function(args)
	app.DebugEvents()
	app.print("Debug Events:",app.DebuggingEvents and "ACTIVE" or "OFF")
	-- debug prints may/not be toggled due to this, so print status anyway
	app.print("Debug Printing:",app.Debugging and "ACTIVE" or "OFF")
	return true
end, {
	"Usage : /att debug-events",
	"Allows toggling the debug printing and monitoring of all game events that ATT handles.",
})

-- Allows a user to open a popout window for their target via /att [t|target]
app.ChatCommands.Add({"t", "target"}, function(args)
	local guid = UnitGUID("target");
	if guid and not app.WOWAPI.issecretvalue(guid) then
		local npcID = select(6, ("-"):split(guid))
		if npcID then
			app.CreatePopoutForSearch("n:" .. npcID)
		end
	end

	return true
end, {
	"Usage : /att [t|target]",
	"Allows opening a popout window for your targeted NPC",
})

-- Allows adding a direct slash command(s) to the game
-- NOTE: This is not super desirable to add so many slash commands.
-- Please use app.ChatCommands.Add if possible to add a typical /att [command] [params] structured command with common handling
local function AddSlashCommands(commands, func)
	if not commands or type(commands) ~= "table" or not commands[1] then
		error("Cannot add Slash Command -- Invalid command alias array provided")
	end
	local commandRoot = "ATT"..commands[1]:upper()
	if not func or type(func) ~= "function" then
		error(("Cannot add Slash Command for root %s -- Invalid call function provided"):format(tostring(commandRoot)))
	end
	-- Assign the function to the cmd list root
	SlashCmdList[commandRoot] = func
	-- Then assign the aliases
	local cmd
	local slash = app.ChatCommands.Slash
	for i=1,#commands do
		cmd = commands[i]:lower()
		commands[i] = cmd
		_G["SLASH_"..commandRoot..i] = "/"..cmd
		slash[#slash + 1] = "/"..cmd
	end
end
app.AddSlashCommands = AddSlashCommands

do
	local __ItemLinkCache = {}
	local function StoreLinks(link)
		__ItemLinkCache[#__ItemLinkCache + 1] = link
		return "\x1F" .. #__ItemLinkCache
	end
	app.ParseCommandArgsAndParams = function(msg)
		wipe(__ItemLinkCache);

		-- Step 1: Replace links with tokens
		msg = msg:gsub("|c[%xnIQ:]+|H[a-z]+:%d+:.-|h%[.-%]|h|r", StoreLinks)
		-- app.PrintDebug("tokenized",msg)
		-- Step 2: Split by spaces
		local args = { (" "):split(msg) }

		-- Step 3: Replace tokens with original item links
		local customArg, customValue;
		local tonumber = tonumber
		for i, v in ipairs(args) do
			customArg = tonumber(v:match("\x1F(%d+)"))
			if customArg then
				args[i] = __ItemLinkCache[customArg];
			end
		end

		-- Step 4: Parse the Params
		-- The first arg is always the command
		local params = {};
		for i=1,#args do
			customArg, customValue = ("="):split(args[i]);
			params[customArg] = customValue or true;
		end
		return args, params;
	end
end

-- Allows a user to use /att [cmd]
-- This is the base Slash for all Commands!
AddSlashCommands({"att","allthethings","attc"}, function(cmd)
	-- app.PrintDebug("root command:",cmd)
	if cmd == "" then
		app:GetWindow("Prime"):Toggle();
		return true
	end

	local args,params = app.ParseCommandArgsAndParams(cmd)
	-- app.PrintTable(args)
	-- app.PrintTable(params)

	local cmd = args[1]:lower()
	-- Remove the first arg from args, within this context, it is the command and does not need to be passed to the Command itself
	tremove(args, 1)
	local commandFunc = app.ChatCommands[cmd]
	if commandFunc then
		local help = args[1] == "help"
		if help then return app.ChatCommands.PrintHelp(cmd) end
		return commandFunc(args, params)
	elseif cmd == "help" then
		return app.ChatCommands.PrintHelp(args[1])
	elseif cmd then
		-- Special case for rendering a custom mapID in the Minilist
		if cmd:sub(1, 6) == "mapid:" then
			app.ToggleMiniListForCurrentZone(tonumber(cmd:sub(7)))
			return true
		end
		-- Search for the Link in the database
		if app.CreatePopoutForSearch(cmd) then
			return true
		end
		app.print("Unknown Command: ", cmd, app.TableConcat(args, nil, "", " "));
		return
	end
end, {	-- TODO: currently this help is inaccessible. move it into the base help functionality eventually
	"Usage : /att [<CMD>] [help] [PARAM=VAL|...]",
	"Root slash command for ATT. Opens the Main list if no Command is provided",
})
