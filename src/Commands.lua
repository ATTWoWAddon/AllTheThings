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
function app:SetupReportDialog(id, reportMessage, text)
	-- Store some information for use by a report popup by id
	if not reports[id] then
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
function app:Linkify(text, color, operation)
	-- Turns a bit of text into a colored link which ATT will attempt to understand
	return "|Haddon:ATT:"..operation.."|h|c"..color.."["..text.."]|r|h";
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

-- Define Chat Commands handling
app.ChatCommands = { Help = {} }
local function ChatCommand_Add(cmd, func, help)
	app.ChatCommands[cmd:lower()] = func
	if help then
		if type(help) ~= "table" then
			app.print("Attempted to add a non-table Help for a Chat Command: "..cmd)
		else
			app.ChatCommands.Help[cmd:lower()] = help
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
	local allHelp = app.ChatCommands.Help;
	local help = cmd and allHelp[cmd:lower()]
	if help then
		for _,helpLine in ipairs(help) do
			app.print(helpLine)
		end
	elseif not cmd then
		local allCommands = {};
		for command,help in pairs(allHelp) do
			allCommands[#allCommands + 1] = command;
		end
		table.sort(allCommands);
		app.print("Full Command List:");
		for _,command in ipairs(allCommands) do
			print(" " .. command);
		end
	else
		app.print("No Help provided for command:",cmd)
	end
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

-- Allows adding a direct slash command(s) to the game
-- NOTE: This is not super desirable to add so many slash commands.
-- Please use app.ChatCommands.Add if possible to add a typical /att [command] [params] structured command with common handling
local function AddSlashCommands(commands, func)
	if not commands or type(commands) ~= "table" or not commands[1] then
		error("Cannot add Slash Command -- Invalid command alias array provided")
	end
	local commandRoot = "ATT"..commands[commands.RootCommandIndex or 1]:upper()
	if not func or type(func) ~= "function" then
		error(("Cannot add Slash Command for root %s -- Invalid call function provided"):format(tostring(commandRoot)))
	end
	-- Assign the function to the cmd list root
	SlashCmdList[commandRoot] = func
	-- Then assign the aliases
	local cmd
	for i=1,#commands do
		cmd = commands[i]:lower()
		commands[i] = cmd
		_G["SLASH_"..commandRoot..i] = "/"..cmd
	end
end
app.AddSlashCommands = AddSlashCommands



-- The below command handling is from Retail and is not currently synced with Classic
if app.IsClassic then return end



-- Copied from Retail ATT, eventually migrate to defining windows or other related sources and using app.ChatCommands.Add() instead

AddSlashCommands({"attwq"},
function() app:GetWindow("WorldQuests"):Toggle() end)

AddSlashCommands({"attharvest","attharvester"},
function(cmd)
	app.print("Force Debug Mode");
	app.Debugging = true
	app.Settings:ForceRefreshFromToggle();
	app.Settings:SetDebugMode(true);
	app.SetCustomWindowParam("list", "reset", true);
	app.SetCustomWindowParam("list", "type", "cache:item");
	app.SetCustomWindowParam("list", "harvesting", true);
	local args = { (","):split(cmd:lower()) };
	app.SetCustomWindowParam("list", "min", args[1]);
	app.SetCustomWindowParam("list", "limit", args[2] or 999999);
	-- reduce the re-try duration when harvesting
	app.SetCAN_RETRY_DURATION_SEC(1)
	app:GetWindow("list"):Toggle();
end)

local function ParseCommand(msg)
	local itemLinks = {}
	local function StoreLinks(link)
		itemLinks[#itemLinks + 1] = link
		return "\x1F" .. #itemLinks
	end

	-- Step 1: Replace links with tokens
	msg = msg:gsub("|c[%xnIQ:]+|H[a-z]+:%d+:.-|h%[.-%]|h|r", StoreLinks)
	-- app.PrintDebug("tokenized",msg)
	-- Step 2: Split by spaces
	local args = { (" "):split(msg) }

	-- Step 3: Replace tokens with original item links
	local index
	for i, v in ipairs(args) do
		index = tonumber(v:match("\x1F(%d+)"))
		if index then
			args[i] = itemLinks[index]
		end
	end

	return args
end

-- Performs a search for ATT content, then opens the single result in a new popout window
app.CreatePopoutForSearch = function(search)
	app.SetSkipLevel(2)
	local group = app.GetCachedSearchResults(app.SearchForLink, search, nil, {SkipFill=true,IgnoreCache=true})
	app.SetSkipLevel(0)
	-- make sure it's 'something' returned from the search before throwing it into a window
	if group then
		if group.criteriaID and not group.achievementID then
			app.print("Unsourced Criteria",group.criteriaID,"Use /att criteriaID:achievementID to view unsourced Criteria info")
			return true
		end
		if group.link or group.name or group.text or group.key then
			app:CreateMiniListForGroup(group)
			return true
		end
	end
end

-- Default /att support
AddSlashCommands({"allthethings","things","att"},
function(cmd)
	if cmd then
		-- app.PrintDebug(cmd)
		local args = ParseCommand(cmd)
		cmd = args[1];
		-- app.PrintTable(args)

		-- Eventually will migrate known Chat Commands to their respective creators
		local commandFunc = app.ChatCommands[cmd]
		if commandFunc then
			local help = args[2] == "help"
			if help then return app.ChatCommands.PrintHelp(cmd) end
			return commandFunc(args)
		elseif cmd == "help" then
			return app.ChatCommands.PrintHelp(args[2])
		end

		-- first arg is always the window/command to execute
		app.ResetCustomWindowParam(cmd);
		for k=2,#args do
			local customArg, customValue = args[k], nil;
			customArg, customValue = ("="):split(customArg);
			-- app.PrintDebug("Split custom arg:",customArg,customValue)
			app.SetCustomWindowParam(cmd, customArg, customValue or true);
		end

		if not cmd or cmd == "" or cmd == "main" or cmd == "mainlist" then
			app.ToggleMainList();
			return true;
		elseif cmd == "bounty" then
			app:GetWindow("Bounty"):Toggle();
			return true;
		elseif cmd == "debugger" then
			app.LoadDebugger();
			return true;
		elseif cmd == "filters" then
			app:GetWindow("ItemFilter"):Toggle();
			return true;
		elseif cmd == "finder" then
			app.SetCustomWindowParam("list", "type", "itemharvester");
			app.SetCustomWindowParam("list", "harvesting", true);
			app.SetCustomWindowParam("list", "limit", 225000);
			app:GetWindow("list"):Toggle();
			return true;
		elseif cmd == "ra" then
			app:GetWindow("RaidAssistant"):Toggle();
			return true;
		elseif cmd == "ran" or cmd == "rand" or cmd == "random" then
			app:GetWindow("Random"):Toggle();
			return true;
		elseif cmd == "list" then
			app:GetWindow("list"):Toggle();
			return true;
		elseif cmd == "nwp" then
			app:GetWindow("NWP"):Toggle();
			return true;
		elseif cmd == "awp" then
			--app:GetWindow("Added With Patch"):Hide();
			app.SetCustomWindowParam("Added With Patch", "reset", true);
			app:GetWindow("Added With Patch"):Toggle();
			return true;
		elseif cmd == "rwp" then
			app:GetWindow("Future Unobtainables"):Toggle();
			return true;
		elseif cmd == "wq" then
			app:GetWindow("WorldQuests"):Toggle();
			return true;
		elseif cmd == "unsorted" then
			app:GetWindow("Unsorted"):Toggle();
			return true;
		elseif cmd == "nyi" then
			app:GetWindow("NeverImplemented"):Toggle();
			return true;
		elseif cmd == "hat" then
			app:GetWindow("HiddenAchievementTriggers"):Toggle();
			return true;
		elseif cmd == "hct" then
			app:GetWindow("HiddenCurrencyTriggers"):Toggle();
			return true;
		elseif cmd == "hqt" then
			app:GetWindow("HiddenQuestTriggers"):Toggle();
			return true;
		elseif cmd == "sourceless" then
			app:GetWindow("Sourceless"):Toggle();
			return true;
		elseif cmd:sub(1, 4) == "mini" then
			app:ToggleMiniListForCurrentZone();
			return true;
		elseif cmd:sub(1, 6) == "mapid:" then
			app:GetWindow("MiniList"):SetMapID(tonumber(cmd:sub(7)), true);
			return true;
		else
			if cmd == "import" then
				app:GetWindow("Import"):Toggle();
				return true;
			end
		end

		-- Search for the Link in the database
		if app.CreatePopoutForSearch(cmd) then
			return true
		end
		app.print("Unknown Command: ", cmd);
	else
		-- Default command
		app.ToggleMainList();
	end
end)

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
