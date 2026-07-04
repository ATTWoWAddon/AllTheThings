-- App locals
local _, app = ...;
local L = app.L;

-- This window is not currently supported by Classic!
if not app.IsRetail then return; end

-- Global locals
local ipairs
	= ipairs

-- Implementation
app:CreateWindow("Commands", {
	Commands = { "attcommands", "atthelp" },
	RootCommands = { "commands", "help" },
	OnInit = function(self)

		local function GetCommandDescription(command)
			local help = app.ChatCommands.Help[command]

			if not help then
				return "|cffff8080No help provided.|r"
			end

			return table.concat(help, "\n")
		end

		local function BuildCommandList()
			local rows = {}

			local allCommands = {}
			for _, command in ipairs(app.ChatCommands.List) do
				allCommands[#allCommands + 1] = command
			end
			table.sort(allCommands)

			for _, command in ipairs(allCommands) do
				rows[#rows + 1] = app.CreateRawText("/att " .. command, {
					visible = true,
					description = GetCommandDescription(command:lower()),
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row)
						local cmd = command:lower()
						local handler = app.ChatCommands[cmd]
						if handler then
							handler({}, {})	-- Empty args and params
						end
						return true
					end,
				})
			end

			return rows
		end

		self:SetData(app.CreateRawText("Commands", {
			icon = app.asset("logo_32x32"),
			description = "List of all available ATT commands.",
			visible = true,
			back = 1,
			g = BuildCommandList(),
		}))
	end,
});
