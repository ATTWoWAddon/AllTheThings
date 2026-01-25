-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, tremove =
	  ipairs, pairs, tremove;

-- Implementation
app:CreateWindow("Toys", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "atttoys" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(TOY_BOX, {
			icon = app.asset("Category_ToyBox"),
			description = "This list shows you all of the toys that you can collect.",
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
