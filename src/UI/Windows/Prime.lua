-- App locals
local _, app = ...;
local ipairs, pairs, tremove
	= ipairs, pairs, tremove;

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
	ParseCommandArgsAndParams = true,
	OnCommand = function(self, args, params)
		if args then
			--[[
			print("args: ");
			for key,value in ipairs(args) do
				print(" ", key, value);
			end
			print("params: ");
			for key,value in pairs(params) do
				print(" ", key, value);
			end
			]]--

			-- Eventually will migrate known Chat Commands to their respective creators
			local cmd = args[1];
			local commandFunc = app.ChatCommands[cmd]
			if commandFunc then
				local help = args[2] == "help"
				if help then return app.ChatCommands.PrintHelp(cmd) end
				return commandFunc(args, params) or true
			elseif cmd == "help" then
				return app.ChatCommands.PrintHelp(args[2])
			end
			
			-- Remove the first arg from args, within this context, it is the command and does not need to be passed to the child popups
			tremove(args, 1);
			if cmd == "main" or cmd == "mainlist" then
				return false;
			elseif cmd == "bounty" then
				app:GetWindow("Bounty"):ProcessCommand(args, params);
				return true;
			elseif cmd == "debugger" then
				app:GetWindow("Debugger"):ProcessCommand(args, params);
				return true;
			elseif cmd == "filter" or cmd == "filters" then
				app:GetWindow("Item Filter"):ProcessCommand(args, params);
				return true;
			elseif cmd == "finder" then
				app:GetWindow("list"):ProcessCommand(args, params);
				return true;
			elseif cmd == "ra" then
				app:GetWindow("RaidAssistant"):ProcessCommand(args, params);
				return true;
			elseif cmd == "ran" or cmd == "rand" or cmd == "random" then
				app:GetWindow("Random"):ProcessCommand(args, params);
				return true;
			elseif cmd == "list" then
				app:GetWindow("list"):ProcessCommand(args, params);
				return true;
			elseif cmd == "nwp" then
				app:GetWindow("New With Patch"):ProcessCommand(args, params);
				return true;
			elseif cmd == "awp" then
				app:GetWindow("Added With Patch"):ProcessCommand(args, params);
				return true;
			elseif cmd == "rwp" then
				app:GetWindow("Future Unobtainables"):ProcessCommand(args, params);
				return true;
			elseif cmd == "wq" then
				app:GetWindow("WorldQuests"):ProcessCommand(args, params);
				return true;
			elseif cmd == "unsorted" then
				app:GetWindow("Unsorted"):ProcessCommand(args, params);
				return true;
			elseif cmd == "nyi" then
				app:GetWindow("Never Implemented"):ProcessCommand(args, params);
				return true;
			elseif cmd == "hat" then
				app:GetWindow("Hiddent Achievement Triggers"):ProcessCommand(args, params);
				return true;
			elseif cmd == "hct" then
				app:GetWindow("Hidden Currency Triggers"):ProcessCommand(args, params);
				return true;
			elseif cmd == "hqt" then
				app:GetWindow("Hidden Quest Triggers"):ProcessCommand(args, params);
				return true;
			elseif cmd == "sourceless" then
				app:GetWindow("Sourceless"):ProcessCommand(args, params);
				return true;
			elseif cmd:sub(1, 4) == "mini" then
				app:ToggleMiniListForCurrentZone();
				return true;
			elseif cmd:sub(1, 6) == "mapid:" then
				app.ToggleMiniListForCurrentZone(tonumber(cmd:sub(7)), true)
				return true;
			else
				if cmd == "import" then
					app:GetWindow("Import"):ProcessCommand(args, params);
					return true;
				end
			end

			-- Search for the Link in the database
			if app.CreatePopoutForSearch(cmd) then
				return true
			end
			app.print("Unknown Command: ", cmd, app.TableConcat(args, nil, "", " "));
		end
	end,
	OnInit = function(self)
		app.ToggleMainList = function()
			self:Toggle();
		end
	end,
	OnLoad = function(self)
		self:Rebuild();
	end,
	OnRebuild = function(self)
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
	end,
	EventHandlers = {
		["Settings.OnSet"] = function(self,container,setting,value)
			if container ~= "Tooltips" then return end

			if setting == "MainListScale" then
				self:SetScale(value)
			end
		end,
	}
});
