-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, floor, tinsert
	= ipairs, pairs, floor, tinsert

-- App locals
local GetRelativeValue, GetDeepestRelativeFunc = app.GetRelativeValue, app.GetDeepestRelativeFunc;

-- Implementation
function app:CreateDynamicProfessionCategory(name, commands, professionID, specializationProfessionIDs)
	app:CreateWindow("Recipes: " .. name, {
		AllowCompleteSound = true,
		IsDynamicCategory = true,
		DynamicCategoryHeader = app.HeaderConstants.PROFESSIONS,
		DynamicProfessionID = professionID,
		Commands = commands,
		OnInit = function(self, handlers)
			local function ProfessionFilter(group)
				local v = group.requireSkill;
				if v and (v == professionID or app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == professionID) and group.spellID and not group.g and (not group.f or group.f == 200) then
					return true;
				end
			end
			self.data = app.CreateProfession(professionID, {
				description = "This list shows you all of the recipes you can collect for your profession.",
				requireSkill = professionID,
				visible = true,
				expanded = true,
				back = 1,
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						local results = {};
						app:BuildFlatSearchFilteredResponse(app:GetDataCache().g, ProfessionFilter, results);
						if #results > 0 then
							-- Find all associated spellIDs
							local associatedSpellIDs = {};
							for i,result in ipairs(results) do
								if result.spellID then
									associatedSpellIDs[result.spellID] = true;
								end
							end

							-- Build specialization headers
							local specializations = {};
							if specializationProfessionIDs then
								for i,spellID in ipairs(specializationProfessionIDs) do
									local specialization = app.CreateProfession(spellID);
									specialization.SortType = "name";
									specialization.parent = data;
									specialization.g = {};
									tinsert(data.g, specialization);
									specializations[spellID] = specialization;
								end
							end

							local expansions, events = {}, {};
							for expansionID,_ in pairs(app.SearchForFieldContainer("expansionID")) do
								expansionID = floor(expansionID);
								if not expansions[expansionID] then
									local expansion = app.CreateExpansion(expansionID);
									expansions[expansionID] = expansion;
									expansion.SortType = "name";
									expansion.parent = data;
									expansion.g = {};
								end
							end



							local recipes = {};
							for spellID,sources in pairs(app.SearchForFieldContainer("spellID")) do
								if associatedSpellIDs[spellID] and not recipes[spellID] then
									local count = #sources;
									if count > 0 then
										if count > 1 then
											-- Find the most accessible version of the thing.
											app.Sort(sources, app.SortDefaults.Accessibility);
										end
										local mostAccessibleSource = sources[1];
										if not mostAccessibleSource.u or mostAccessibleSource.u ~= 1 then
											local recipe = app.CreateRecipe(tonumber(spellID));
											recipe.sourceParent = mostAccessibleSource;
											local u = GetRelativeValue(mostAccessibleSource, "u");
											if u then recipe.u = u; end
											local e = GetRelativeValue(mostAccessibleSource, "e");
											if e then recipe.e = e; end
											local awp = GetRelativeValue(mostAccessibleSource, "awp");
											if awp then recipe.awp = awp; end
											local rwp = GetRelativeValue(mostAccessibleSource, "rwp");
											if rwp then recipe.rwp = rwp; end
											local r = GetRelativeValue(mostAccessibleSource, "r");
											if r then recipe.r = r; end
											local c = GetRelativeValue(mostAccessibleSource, "c");
											if c then recipe.c = c; end
											for key,value in pairs(mostAccessibleSource) do
												recipe[key] = value;
											end
											recipe.progress = nil;
											recipe.total = nil;
											recipe.itemID = nil;
											recipe.cost = nil;
											recipe.g = nil;
											local specialization = recipe.requireSkill or professionID;
											recipe.requireSkill = specialization;
											if specialization ~= professionID then
												recipe.parent = specializations[specialization];
												if not recipe.parent then
													recipe.parent = data;
												end
											else
												if not awp then awp = 10000 end;
												for i=2,#sources,1 do
													local sourceAWP = GetRelativeValue(sources[i], "awp") or 10000;
													if sourceAWP < awp then
														awp = sourceAWP;
													end
												end
												recipe.parent = expansions[floor(awp / 10000)] or data;

												if e then
													local headerID = GetDeepestRelativeFunc(mostAccessibleSource.parent, function(group)
														if group.e == e and group.headerID then
															return group.headerID;
														end
													end);
													if headerID then
														local event = events[e];
														if not event then
															event = app.CreateCustomHeader(headerID);
															events[e] = event;
															event.SortType = "name";
															event.parent = data;
															event.e = e;
															event.g = {};
															tinsert(data.g, event);
														end
														recipe.parent = event;
													end
												end
											end
											tinsert(recipe.parent.g, recipe);
											recipes[spellID] = recipe;
										end
									end
								end
							end

							for expansionID,expansion in pairs(expansions) do
								if #expansion.g > 0 then
									tinsert(data.g, expansion);
								end
							end

							data.OnUpdate = nil;
							self:AssignChildren();
						end
					end
				end
			});
		end,
	});
end

app:CreateDynamicProfessionCategory("Alchemy", { "attalch" }, 171);
app:CreateDynamicProfessionCategory("Blacksmithing", { "attbs" }, 164, { 9788, 9787, 17039, 17040, 17041 });
app:CreateDynamicProfessionCategory("Cooking", { "attcook" }, 185);
app:CreateDynamicProfessionCategory("Enchanting", { "attench" }, 333);
app:CreateDynamicProfessionCategory("Engineering", { "atteng" }, 202, { 20222, 20219 });
app:CreateDynamicProfessionCategory("First Aid", { "attaid" }, 129);
app:CreateDynamicProfessionCategory("Fishing", { "attfish" }, 356);
app:CreateDynamicProfessionCategory("Herbalism", { "attherb" }, 182);
if app.GameBuildVersion > 30000 then
	-- Inscription came out with Wrath
	app:CreateDynamicProfessionCategory("Inscription", { "attscribe" }, 773);
end
if app.GameBuildVersion > 20000 then
	-- Jewelcrafting came out with TBC
	app:CreateDynamicProfessionCategory("Jewelcrafting", { "attjc" }, 755);
end
app:CreateDynamicProfessionCategory("Leatherworking", { "attlw" }, 165, { 10656, 10658, 10660 });
app:CreateDynamicProfessionCategory("Mining", { "attmining" }, 186);
app:CreateDynamicProfessionCategory("Skinning", { "attskinning" }, 393);
app:CreateDynamicProfessionCategory("Tailoring", { "atttailoring" }, 197, { 26798, 26801, 26797 });
