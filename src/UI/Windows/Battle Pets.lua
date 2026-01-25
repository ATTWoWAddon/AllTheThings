-- App locals
local _, app = ...;
local contains = app.contains;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- App locals
local CloneArray = app.CloneArray;
local GetRelativeValue = app.GetRelativeValue;

local function MergeClone(g, o)
	local clone = app.CloneClassInstance(o);
	local u = GetRelativeValue(o, "u");
	if u then clone.u = u; end
	local e = GetRelativeValue(o, "e");
	if e then clone.e = e; end
	local lvl = GetRelativeValue(o, "lvl");
	if lvl then clone.lvl = lvl; end
	if not o.itemID or o.b == 1 then
		local races = o.races;
		if races then
			clone.races = CloneArray(races);
		else
			local r = GetRelativeValue(o, "r");
			if r then
				clone.r = r;
				clone.races = nil;
			else
				races = GetRelativeValue(o, "races");
				if races then clone.races = CloneArray(races); end
			end
		end
		local c = GetRelativeValue(o, "c");
		if c then clone.c = CloneArray(c); end
	end
	return app.MergeObject(g, clone);
end

-- Implementation
app:CreateWindow("Battle Pets", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = {
		"attpets",
		"attbattlepets",
	},
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(AUCTION_CATEGORY_BATTLE_PETS, {
			icon = app.asset("Category_PetJournal"),
			description = "This list shows you all of the battle pets that you can collect listed by type.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local petTypes = {};
					for _,petTypeID in ipairs({9,8,5,2,7,3,1,6,10,4}) do
						local petType = app.CreatePetType(petTypeID, { g = {} });
						petTypes[petTypeID] = petType;
						petType.SortType = "name";
						petType.parent = data;
						tinsert(g, petType);
					end
					local battlepets = {};
					for i,_ in pairs(app.SearchForFieldContainer("speciesID")) do
						if not battlepets[i] then
							local battlepet = app.CreateSpecies(tonumber(i));
							local sources = {};
							for j,o in ipairs(_) do
								MergeClone(sources, o);
								local coords = GetRelativeValue(o, "coords");
								if coords then
									if not battlepet.coords then
										battlepet.coords = { unpack(coords) };
									elseif battlepet.coords ~= coords then
										for i,coord in ipairs(coords) do
											tinsert(battlepet.coords, coord);
										end
									end
								end
								if o.parent and not o.sourceQuests then
									local questID = GetRelativeValue(o, "questID");
									if questID then
										if not battlepet.sourceQuests then
											battlepet.sourceQuests = {};
										end
										if not contains(battlepet.sourceQuests, questID) then
											tinsert(battlepet.sourceQuests, questID);
										end
									else
										local sourceQuests = GetRelativeValue(o, "sourceQuests");
										if sourceQuests then
											if not battlepet.sourceQuests then
												battlepet.sourceQuests = {};
												for k,questID in ipairs(sourceQuests) do
													tinsert(battlepet.sourceQuests, questID);
												end
											else
												for k,questID in ipairs(sourceQuests) do
													if not contains(battlepet.sourceQuests, questID) then
														tinsert(battlepet.sourceQuests, questID);
													end
												end
											end
										end
									end
								end
							end
							local count = #sources;
							if count == 1 then
								for key,value in pairs(sources[1]) do
									battlepet[key] = value;
								end
							elseif count > 1 then
								-- Find the most accessible version of the thing.
								app.Sort(sources, app.SortDefaults.Accessibility);
								for key,value in pairs(sources[1]) do
									battlepet[key] = value;
								end
							end
							battlepets[i] = battlepet;
							battlepet.progress = nil;
							battlepet.total = nil;
							battlepet.g = nil;
							battlepet.parent = battlepet.petTypeID and petTypes[battlepet.petTypeID] or data;
							if not battlepet.u or battlepet.u ~= 1 then
								tinsert(battlepet.parent.g, battlepet);
							end
						end
					end
					data.SortType = "name";
				end
			end
		}));
	end,
});
