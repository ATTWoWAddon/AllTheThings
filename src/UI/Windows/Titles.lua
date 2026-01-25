-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, tinsert, tremove =
	  ipairs, pairs, tinsert, tremove;

-- Implementation
app:CreateWindow("Titles", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "atttitles" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(PAPERDOLL_SIDEBAR_TITLES, {
			icon = app.asset("Category_Titles"),
			description = "This list shows you all of the titles that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				-- TODO
			end
		}));
	end,
});
