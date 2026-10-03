-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
local HiddenWindowSuffixes = {
	"Hidden Achievement Triggers",
	"Hidden Currency Triggers",
	"Hidden Quest Triggers",
	"Never Implemented",
	"Sourceless",
	"Unsorted",
};
app:CreateWindow("All-Hidden", {
	AllowCompleteSound = true,
	Commands = { "atthidden" },
	RootCommands = { "hidden" },
	--ChatCommand = "all-hidden",
	HelpText = L.HELP_TEXT,
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(app.Modules.Color.Colorize(L.ALL_HIDDEN, app.Colors.ChatLinkError), {
			icon = 132284,
			title = L.ALL_HIDDEN .. app.Version,
			description = L.HELP_TEXT_TOOLTIP,
			font = "GameFontNormalLarge",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = {},
			OnUpdate = function(t)
				local g = t.g;
				if g and #g < 1 then
					for i,suffix in ipairs(HiddenWindowSuffixes) do
						local window = app:GetWindow(suffix);
						if window and window.data then
							local clone = app.CloneClassInstance(window.data);
							clone.expanded = false;
							clone.font = nil
							tinsert(g, clone);
						end
					end
					self:AssignChildren();
					t.OnUpdate = nil;
				end
			end,
		}));
	end,
	VisibilityFilter = app.ReturnTrue,
});
