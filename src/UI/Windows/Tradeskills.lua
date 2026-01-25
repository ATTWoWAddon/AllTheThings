-- App locals
local _, app = ...;
if app.IsRetail then return; end
local ExpandGroupsRecursively, ResolveSymbolicLink, SearchForFieldContainer
	= app.ExpandGroupsRecursively, app.ResolveSymbolicLink, app.SearchForFieldContainer;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;
local C_TradeSkillUI, GetCraftDisplaySkillLine, GetCraftInfo, GetCraftNumReagents, GetCraftReagentInfo, GetCraftReagentItemLink,
	GetNumCrafts, GetSkillLineInfo, GetTradeSkillLine, InCombatLockdown, IsSpellKnown, IsTradeSkillLinked =
	  C_TradeSkillUI, GetCraftDisplaySkillLine, GetCraftInfo, GetCraftNumReagents, GetCraftReagentInfo, GetCraftReagentItemLink,
	GetNumCrafts, GetSkillLineInfo, GetTradeSkillLine, InCombatLockdown, IsSpellKnown, IsTradeSkillLinked;
---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip;

-- WoW API Cache
local GetItemID = app.WOWAPI.GetItemID;
local GetSpellName = app.WOWAPI.GetSpellName;

local function RefreshSkills()
	-- Store Skill Data
	local activeSkills = app.CurrentCharacter.ActiveSkills;
	wipe(activeSkills);
	rawset(app.SpellNameToSpellID, 0, nil);
	app.GetSpellName(0);
	if GetSkillLineInfo then
		for index=GetNumSkillLines(),1,-1 do
			local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
				skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
				skillDescription = GetSkillLineInfo(index);
			if not header and skillName then
				local spellID = app.SpellNameToSpellID[skillName];
				if spellID then
					local spellName = GetSpellName(spellID);
					for skillID,sp in pairs(app.SkillDB.SkillToSpell) do
						if GetSpellName(sp) == spellName then
							spellID = sp;
							break;
						end
					end
					activeSkills[spellID] = { skillRank, skillMaxRank };
				else
					for skillID,sp in pairs(app.SkillDB.SkillToSpell) do
						if GetSpellName(sp) == skillName then
							spellID = sp;
							break;
						end
					end
					if spellID then
						activeSkills[spellID] = { skillRank, skillMaxRank };
					else
						--print(skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription);
					end
				end
			end
		end
	end

	-- Hunter Only
	if app.ClassIndex == 3 then
		activeSkills[5149] = { 1, 1 };
	end

	-- Clone the data for the specializations.
	for specID,spellID in pairs(app.SkillDB.SpecializationSpells) do
		local baseSpell = activeSkills[spellID];
		if baseSpell and (app.CurrentCharacter.Spells[specID] or IsSpellKnown(specID)) then
			activeSkills[specID] = baseSpell;
		end
	end
end
app.AddEventHandler("OnRefreshCollections", RefreshSkills);

-- Implementation
app:CreateWindow("Tradeskills", {
	Commands = { "attskills" },
	AllowCompleteSound = true,
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self, handlers)
		self:SetMovable(false);
		self:SetClampedToScreen(false);
		self.wait = 5;
		self.cache = {};
		self.header = app.CreateRawText("Profession List", {
			['icon'] = 134940,
			["description"] = "Open your professions to cache them.",
			['visible'] = true,
			['expanded'] = true,
			["indent"] = 0,
			['back'] = 1,
			['g'] = { },
		});
		self.data = self.header;
		self.previousCraftSkillID = 0;
		self.previousTradeSkillID = 0;
		self.CacheRecipes = function(self)
			-- If it's not yours, don't take credit for it.
			if IsTradeSkillLinked and IsTradeSkillLinked() then
				return;
			end
			if C_TradeSkillUI then
				if (C_TradeSkillUI.IsTradeSkillLinked and C_TradeSkillUI.IsTradeSkillLinked())
				or (C_TradeSkillUI.IsTradeSkillGuild and C_TradeSkillUI.IsTradeSkillGuild()) then
					return;
				end
			end

			-- Cache Learned Spells
			local skillCache = SearchForFieldContainer("spellID");
			if skillCache then
				-- Cache learned recipes and reagents
				local reagentCache = AllTheThingsAD.Reagents;
				if not reagentCache then
					reagentCache = {};
					AllTheThingsAD.Reagents = reagentCache;
				end

				local learned, craftSkillID, tradeSkillID, shouldShowSpellRanks = 0, 0, 0, nil;
				rawset(app.SpellNameToSpellID, 0, nil);
				app.GetSpellName(0);

				if CraftFrame and CraftFrame:IsVisible() then
					-- Crafting Skills (Enchanting and Beast Training Only)
					local craftSkillName, craftSkillLevel, craftSkillMaxLevel = GetCraftDisplaySkillLine();
					if craftSkillName and craftSkillName ~= "UNKNOWN" then
						shouldShowSpellRanks = craftSkillLevel and craftSkillLevel ~= math.max(300, craftSkillMaxLevel);
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					elseif CraftFrameTitleText then
						craftSkillName = CraftFrameTitleText:GetText();
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						craftSkillID = 0;
					end
				end

				if TradeSkillFrame and TradeSkillFrame:IsVisible() then
					-- Trade Skills (Non-Enchanting)
					local tradeSkillName, tradeSkillLevel, tradeSkillMaxLevel = GetTradeSkillLine();
					if tradeSkillName and tradeSkillName ~= "UNKNOWN" then
						shouldShowSpellRanks = tradeSkillLevel and tradeSkillLevel ~= math.max(300, tradeSkillMaxLevel);
						tradeSkillID = app.SpellNameToSpellID[tradeSkillName] or 0;
						if tradeSkillID == 2656 then	-- Smelting, point this to Mining.
							tradeSkillID = 2575;
						elseif tradeSkillID == 0 then
							app.print("Could not find spellID for", tradeSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						tradeSkillID = 0;
					end
				end

				if Skillet and Skillet.currentTrade and tradeSkillID == 0 and craftSkillID == 0 then
					if Skillet.isCraft then
						craftSkillID = Skillet.currentTrade;
					else
						tradeSkillID = Skillet.currentTrade;
					end
				end

				if craftSkillID ~= 0 then
					local spellName = GetSpellName(craftSkillID);
					for skillID,spellID in pairs(app.SkillDB.SkillToSpell) do
						if GetSpellName(spellID) == spellName then
							craftSkillID = spellID;
							break;
						end
					end

					local numberOfCrafts, spellID = GetNumCrafts();
					for craftIndex = 1,numberOfCrafts do
						spellID = 0;
						local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
						if craftType == "optimal" or craftType == "medium" or craftType == "easy" or craftType == "trivial" or craftType == "used" or craftType == "none" then
							spellID = craftSubSpellName and (select(7, GetSpellInfo(craftName, craftSubSpellName)) or app.SpellNameToSpellID[craftName .. " (" .. craftSubSpellName .. ")"]) or app.SpellNameToSpellID[craftName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(craftType) or nil;
								if not app.CurrentCharacter.Spells[spellID] then
									app.SetThingCollected("spellID", spellID, false, true);
									learned = learned + 1;
								end
								if not skillCache[spellID] then
									app.print("Missing " .. craftName .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. craftName .. " spellID in ATT Database. Please report it!");
							end

							if craftType ~= "none" then
								-- Attempt to harvest the item associated with this craft.
								---@diagnostic disable-next-line: undefined-field
								GameTooltip.SetCraftSpell(ATTCNPCHarvester, craftIndex);
								local link, craftedItemID = select(2, ATTCNPCHarvester:GetItem());
								if link then craftedItemID = GetItemID(link); end

								-- Cache the Reagents used to make this item.
								for i=1,GetCraftNumReagents(craftIndex) do
									local itemID = GetItemID(GetCraftReagentItemLink(craftIndex, i));
									if itemID then
										-- Make sure a cache table exists for this item.
										local _, _, reagentCount = GetCraftReagentInfo(craftIndex, i);
										if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end

										-- Index 1: The Recipe Skill IDs
										if spellID then reagentCache[itemID][1][spellID] = reagentCount; end

										-- Index 2: The Crafted Item IDs
										if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
									end
								end
							end
						end
					end
				end

				if tradeSkillID ~= 0 then
					local spellName = GetSpellName(tradeSkillID);
					for skillID,spellID in pairs(app.SkillDB.SkillToSpell) do
						if GetSpellName(spellID) == spellName then
							tradeSkillID = spellID;
							break;
						end
					end
					local numTradeSkills = GetNumTradeSkills();
					for skillIndex = 1,numTradeSkills do
						local skillName, skillType = GetTradeSkillInfo(skillIndex);
						if skillType == "optimal" or skillType == "medium" or skillType == "easy" or skillType == "trivial" or skillType == "used" or skillType == "none" then
							local spellID = app.SpellNameToSpellID[skillName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 61451 then spellID = 60969;	-- Fix the Flying Carpet spellID.
								elseif spellID == 61309 then spellID = 60971;	-- Fix the Magnificent Flying Carpet spellID.
								elseif spellID == 75596 then spellID = 75597;	-- Fix the Frosty Flying Carpet spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(skillType) or nil;
								if not app.CurrentCharacter.Spells[spellID] then
									app.SetThingCollected("spellID", spellID, false, true);
									learned = learned + 1;
								end

								if not skillCache[spellID] then
									app.print("Missing " .. (skillName or "[??]") .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. (skillName or "[??]") .. " spellID in ATT Database. Please report it!");
							end

							-- Cache the Reagents used to make this item.
							local tradeSkillItemLink = GetTradeSkillItemLink(skillIndex);
							if tradeSkillItemLink then
								local craftedItemID = GetItemID(tradeSkillItemLink);
								for i=1,GetTradeSkillNumReagents(skillIndex) do
									local reagentCount = select(3, GetTradeSkillReagentInfo(skillIndex, i));
									local itemID = GetItemID(GetTradeSkillReagentItemLink(skillIndex, i));

									-- Make sure a cache table exists for this item.
									-- Index 1: The Recipe Skill IDs
									-- Index 2: The Crafted Item IDs
									if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end
									if spellID then reagentCache[itemID][1][spellID] = reagentCount; end
									if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
								end
							end
						end
					end
				end

				-- Open the Tradeskill list for this Profession
				if app.Categories.Professions and (craftSkillID ~= 0 or tradeSkillID ~= 0)
					and (craftSkillID ~= self.previousCraftSkillID or tradeSkillID ~= self.previousTradeSkillID) then
					self.previousCraftSkillID = craftSkillID;
					self.previousTradeSkillID = tradeSkillID;
					local g = {};
					for i,group in ipairs(app.Categories.Professions) do
						if group.spellID == craftSkillID or group.spellID == tradeSkillID then
							local cache = self.cache[group.spellID];
							if not cache then
								cache = app.CloneClassInstance(group);
								self.cache[group.spellID] = cache;
								local searchResults = ResolveSymbolicLink(group);
								if searchResults and #searchResults then
									for j,o in ipairs(searchResults) do
										tinsert(cache.g, o);
									end
								end
							end
							tinsert(g, cache);
						end
					end
					if #g > 0 then
						if #g == 1 then
							self.data = g[1];
						else
							self.data = self.header;
							self.data.g = g;
							for i,entry in ipairs(g) do
								entry.indent = nil;
							end
						end
						self.data.indent = 0;
						self.data.visible = true;
						if not self.data.expanded then
							self.data.expanded = true;
							ExpandGroupsRecursively(self.data, true);
						end
						self:Rebuild();
					end
				end

				-- If something new was "learned", then refresh the data.
				if learned > 0 then
					app.print("Cached " .. learned .. " known recipes!");
					app.HandleEvent("OnUpdateWindows", true)
				end
			end
		end
		self.RefreshRecipes = function(self)
			if app.Settings.Collectibles.Recipes then
				self.wait = 5;
				app:StartATTCoroutine("RefreshingRecipes", function()
					while self.wait > 0 do
						self.wait = self.wait - 1;
						coroutine.yield();
					end
					while not self:IsVisible() do
						coroutine.yield();
					end

					app.WipeSearchCache();
					self:CacheRecipes();
				end);
			end
		end

		-- Skillet support.
		self.SkilletSupported = nil;

		-- TSM Shenanigans
		self.TSMCraftingVisible = nil;
		self.SetTSMCraftingVisible = function(self, visible)
			visible = not not visible;
			if visible == self.TSMCraftingVisible then
				return;
			end
			self.TSMCraftingVisible = visible;
			self:UpdateFrameVisibility();
			app:StartATTCoroutine("UpdateTradeSkills", function()
				while InCombatLockdown() do coroutine.yield(); end
				coroutine.yield();
				self:Update();
			end);
		end
		self.UpdateDefaultFrameVisibility = function(self)
			-- Skillet compatibility
			if SkilletFrame then
				if not self.SkilletSupported then
					Skillet["ATTC"] = { ["Update"] = function() self:Update(); end };
					Skillet:RegisterUpdatePlugin("ATTC");
					self.SkilletSupported = true;
				end
				self:SetParent(SkilletFrame);
				self:SetPoint("TOPLEFT", SkilletFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", SkilletFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
				return true;
			elseif CraftFrame and CraftFrame:IsVisible() then
				-- Default Alignment on the Craft UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", CraftFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", CraftFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			elseif TradeSkillFrame and TradeSkillFrame:IsVisible() then
				-- Default Alignment on the TradeSkill UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", TradeSkillFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			end
		end
		self.UpdateFrameVisibility = function(self)
			self:SetMovable(true);
			self:ClearAllPoints();
			if self.TSMCraftingVisible and self.cachedTSMFrame then
				if self.cachedTSMFrame.queue and self.cachedTSMFrame.queue:IsShown() then
					self:SetPoint("TOPLEFT", self.cachedTSMFrame.queue, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame.queue, "BOTTOMRIGHT", 0, 0);
				else
					self:SetPoint("TOPLEFT", self.cachedTSMFrame, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame, "BOTTOMRIGHT", 0, 0);
				end
				self:SetMovable(false);
				return true;
			elseif self:UpdateDefaultFrameVisibility() then
				return true;
			else
				self:SetMovable(false);
				app:StartATTCoroutine("TSMWHY", function()
					while InCombatLockdown() or not TradeSkillFrame do coroutine.yield(); end
					app:StartATTCoroutine("TSMWHYPT2", function()
						local thing = self.TSMCraftingVisible;
						self.TSMCraftingVisible = nil;
						self:SetTSMCraftingVisible(thing);
					end);
				end);
			end
		end

		-- Setup Event Handlers and register for events
		local updateTradeSkill = function()
			-- If it's not yours, don't take credit for it.
			if IsTradeSkillLinked and IsTradeSkillLinked() then
				return;
			end
			if C_TradeSkillUI then
				if (C_TradeSkillUI.IsTradeSkillLinked and C_TradeSkillUI.IsTradeSkillLinked())
				or (C_TradeSkillUI.IsTradeSkillGuild and C_TradeSkillUI.IsTradeSkillGuild()) then
					return;
				end
			end
			if self.TSMCraftingVisible == nil then
				self:SetTSMCraftingVisible(false);
			end
			self:UpdateFrameVisibility();
			if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
				self:SetVisible(true);
			end
			RefreshSkills();
			self:RefreshRecipes();
		end
		handlers.CRAFT_SHOW = updateTradeSkill;
		handlers.TRADE_SKILL_SHOW = updateTradeSkill;
		pcall(self.RegisterEvent, self, "CRAFT_SHOW");
		self:RegisterEvent("TRADE_SKILL_SHOW");

		local tradeSkillClose = function()
			app:StartATTCoroutine("TSMWHY3", function()
				self:RefreshRecipes();
				if not self:UpdateFrameVisibility() then
					self:SetVisible(false);
				end
			end);
		end
		handlers.CRAFT_CLOSE = tradeSkillClose;
		handlers.TRADE_SKILL_CLOSE = tradeSkillClose;
		pcall(self.RegisterEvent, self, "CRAFT_CLOSE");
		self:RegisterEvent("TRADE_SKILL_CLOSE");

		local newSpellLearned = function(self, spellID)
			if spellID then
				app.SetThingCollected("spellID", spellID, false, true);
			end
		end
		handlers.NEW_RECIPE_LEARNED = newSpellLearned;
		handlers.LEARNED_SPELL_IN_TAB = newSpellLearned;
		pcall(self.RegisterEvent, self, "LEARNED_SPELL_IN_TAB");
		self:RegisterEvent("NEW_RECIPE_LEARNED");

		-- Default Update refreshes
		pcall(self.RegisterEvent, self, "CRAFT_UPDATE");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("SKILL_LINES_CHANGED");
	end,
	OnUpdate = function(self, ...)
		if TSM_API and TSMAPI_FOUR then
			if not self.cachedTSMFrame then
				for _,child in ipairs({UIParent:GetChildren()}) do
					---@class ATTFrameEnumerator: Frame
					local f = child;
					---@diagnostic disable-next-line: undefined-field
					if f.headerBgCenter then
						self.cachedTSMFrame = f;
						local oldSetVisible = f.SetVisible;
						local oldShow = f.Show;
						local oldHide = f.Hide;
						f.SetVisible = function(frame, visible)
							oldSetVisible(frame, visible);
							self:SetTSMCraftingVisible(visible);
						end
						f.Hide = function(frame)
							oldHide(frame);
							self:SetTSMCraftingVisible(false);
						end
						f.Show = function(frame)
							oldShow(frame);
							self:SetTSMCraftingVisible(true);
						end
						if self.gettinMadAtDumbNamingConventions then
							TSMAPI_FOUR.UI.NewElement = self.OldNewElement;
							self.gettinMadAtDumbNamingConventions = nil;
							self.OldNewElement = nil;
						end
						self:SetTSMCraftingVisible(f:IsShown());
						return;
					end
				end
				if not self.gettinMadAtDumbNamingConventions then
					self.gettinMadAtDumbNamingConventions = true;
					self.OldNewElement = TSMAPI_FOUR.UI.NewElement;
					---@diagnostic disable-next-line: duplicate-set-field
					TSMAPI_FOUR.UI.NewElement = function(...)
						app:StartATTCoroutine("UpdateTradeSkills", function()
							while InCombatLockdown() do coroutine.yield(); end
							coroutine.yield();
							self:Update();
						end);
						return self.OldNewElement(...);
					end
				end
			end
		elseif TSMCraftingTradeSkillFrame then
			if not self.cachedTSMFrame then
				local f = TSMCraftingTradeSkillFrame;
				self.cachedTSMFrame = f;
				local oldSetVisible = f.SetVisible;
				local oldShow = f.Show;
				local oldHide = f.Hide;
				f.SetVisible = function(frame, visible)
					oldSetVisible(frame, visible);
					self:SetTSMCraftingVisible(visible);
				end
				f.Hide = function(frame)
					oldHide(frame);
					self:SetTSMCraftingVisible(false);
				end
				f.Show = function(frame)
					oldShow(frame);
					self:SetTSMCraftingVisible(true);
				end
				if f.queueBtn then
					local setScript = f.queueBtn.SetScript;
					f.queueBtn.SetScript = function(frame, e, callback)
						if e == "OnClick" then
							setScript(frame, e, function(...)
								if callback then callback(...); end

								local thing = self.TSMCraftingVisible;
								self.TSMCraftingVisible = nil;
								self:SetTSMCraftingVisible(thing);
							end);
						else
							setScript(frame, e, callback);
						end
					end
					f.queueBtn:SetScript("OnClick", f.queueBtn:GetScript("OnClick"));
				end
				self:SetTSMCraftingVisible(f:IsShown());
				return;
			end
		end
		self:DefaultUpdate(...);
	end,
});
