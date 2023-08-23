-- App locals
local appName, app = ...;
local contains, MergeClone = app.contains, app.MergeClone;

-- Global locals
local ipairs, pairs, tinsert, tremove =
	  ipairs, pairs, tinsert, table.remove;

-- App locals
local GetRelativeValue = app.GetRelativeValue;

-- Implementation
app:GetWindow("Battle Pets", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTPETS1 = "/attpets";
		SLASH_ATTPETS2 = "/attbattlepets";
		SlashCmdList["ATTPETS"] = function(cmd)
			self:Toggle();
		end
		self.data = {
			text = AUCTION_CATEGORY_BATTLE_PETS,
			icon = app.asset("Category_PetJournal"),
			description = "This list shows you all of the battle pets that you can collect.",
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
					app.Sort(g, app.SortDefaults.Name, true);
				end
			end
		};
	end,
	OnLoad = function(self, settings)
		if settings.Progress then
			self.data.progress = settings.Progress;
			self.data.total = settings.Total;
		end
	end,
	OnSave = function(self, settings)
		settings.Progress = self.data.progress;
		settings.Total = self.data.total;
	end,
});