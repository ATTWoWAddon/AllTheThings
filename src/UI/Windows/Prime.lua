-- App locals
local _, app = ...;

local ipairs,tonumber
	= ipairs,tonumber
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

-- Implementation
app:CreateWindow("Prime", {
	AllowCompleteSound = true,
	SettingsName = "Main List",
	Preload = true,
	IsTopLevel = true,
	Defaults = {
		["y"] = 20,
		["x"] = 0,
		["scale"] = 1.2,
		["width"] = 360,
		["height"] = 600,
		["visible"] = false,
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
	},
	Commands = {
		"allthethings",
		"att",
		"attc",
	},
	OnCommand = function(self, cmd)
		if cmd and cmd:len() > 0 then
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
				return false;
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
				app.ToggleMiniListForCurrentZone(tonumber(cmd:sub(7)), true)
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
		end
	end,
	OnInit = function(self)
		app.ToggleMainList = function()
			self:Toggle();
		end
		self:SetData(app:GetDataCache());
	end,
	OnUpdate = function(self, ...)
		self:DefaultUpdate(...);

		-- Write the current character's progress.
		local rootData = self.data;
		if rootData and rootData.total and rootData.total > 0 then
			app.CurrentCharacter.PrimeData = {
				progress = rootData.progress,
				total = rootData.total,
				modeString = rootData.modeString,
			};
		end
		return true
	end
});
