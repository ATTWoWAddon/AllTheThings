-- App locals
local _, app = ...;
local containsValue = app.containsValue;
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Class Specific Things", {
	Commands = { "attclasses" },
	OnRebuild = function(self)
		if self.data then return true; end
		self.data = {
			text = "Class Specific Things",
			icon = app.asset("WindowIcon_RWP"),
			description = "This window shows you all of the class specific things for all classes.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for classID=1,13,1 do
						local classObject = app.CreateCharacterClass(classID);
						if classObject.isValid then
							tinsert(g, classObject);
							classObject.g = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
								if group.c and #group.c == 1 and containsValue(group.c, classID) then
									return true;
								end
							end);
						end
					end
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end,
		};
		return true;
	end,
});
