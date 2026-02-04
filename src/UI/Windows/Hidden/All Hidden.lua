-- App locals
local _, app = ...;

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
	--ChatCommand = "all-hidden",
	HelpText = "Provides a single command to open all Hidden content in a single window",
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(app.Modules.Color.Colorize("All-Hidden", app.Colors.ChatLinkError), {
			icon = 132284,
			title = "All-Hidden`" .. app.Version,
			description = "All Hidden ATT Content",
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
							tinsert(g, clone);
						end
					end
					self:AssignChildren();
					t.OnUpdate = nil;
				end
			end,
		}));
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local state = app.Modules.Filter.Get.Unobtainable();
		app.Modules.Filter.Set.Unobtainable();
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Unobtainable(state);
		return true
	end
});