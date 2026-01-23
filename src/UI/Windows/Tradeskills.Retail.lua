-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local coroutine, ipairs, pairs, select, wipe
	= coroutine, ipairs, pairs, select, wipe
local C_TradeSkillUI, InCombatLockdown = C_TradeSkillUI, InCombatLockdown;
local C_TradeSkillUI_GetCategories, C_TradeSkillUI_GetCategoryInfo, C_TradeSkillUI_GetRecipeInfo
	= C_TradeSkillUI.GetCategories, C_TradeSkillUI.GetCategoryInfo, C_TradeSkillUI.GetRecipeInfo;
local C_TradeSkillUI_GetRecipeSchematic, C_TradeSkillUI_GetTradeSkillLineForRecipe
	= C_TradeSkillUI.GetRecipeSchematic, C_TradeSkillUI.GetTradeSkillLineForRecipe;

-- Implementation
do -- TradeSkill Functionality
local GetProfessionInfo, C_TradeSkillUI_GetBaseProfessionInfo
	= GetProfessionInfo, C_TradeSkillUI.GetBaseProfessionInfo
local GetTradeSkillTexture = app.WOWAPI.GetTradeSkillTexture;
local GetSpellName = app.WOWAPI.GetSpellName;
local tradeSkillSpecializationMap = app.SkillDB.Specializations
local specializationTradeSkillMap = app.SkillDB.BaseSkills
local tradeSkillMap = app.SkillDB.Conversion
local function GetBaseTradeSkillID(skillID)
	return tradeSkillMap[skillID] or skillID;
end
local function GetTradeSkillSpecialization(skillID)
	return tradeSkillSpecializationMap[skillID];
end
app.GetTradeSkillLine = function()
	local profInfo = C_TradeSkillUI_GetBaseProfessionInfo();
	return GetBaseTradeSkillID(profInfo.professionID);
end
app.GetSpecializationBaseTradeSkill = function(specializationID)
	return specializationTradeSkillMap[specializationID];
end
-- Refreshes the known Trade Skills/Professions of the current character (app.CurrentCharacter.Professions)
local function RefreshTradeSkillCache()
	local cache = app.CurrentCharacter.Professions;
	wipe(cache);
	-- "Professions" that anyone can "know"
	for _,skillID in ipairs(app.SkillDB.AlwaysAvailable) do
		cache[skillID] = true
	end
	-- app.PrintDebug("RefreshTradeSkillCache");
	local prof1, prof2, archaeology, fishing, cooking, firstAid = GetProfessions();
	for i,j in ipairs({prof1 or 0, prof2 or 0, archaeology or 0, fishing or 0, cooking or 0, firstAid or 0}) do
		if j ~= 0 then
			local prof = select(7, GetProfessionInfo(j));
			cache[GetBaseTradeSkillID(prof)] = true;
			-- app.PrintDebug("KnownProfession",j,GetProfessionInfo(j));
			local specializations = GetTradeSkillSpecialization(prof);
			if specializations ~= nil then
				for _,spellID in pairs(specializations) do
					if spellID and app.IsSpellKnownHelper(spellID) then
						cache[spellID] = true;
					end
				end
			end
		end
	end
end
app.AddEventHandler("OnStartup", RefreshTradeSkillCache)
app.AddEventHandler("OnStartup", function()
	local conversions = app.Settings.InformationTypeConversionMethods;
	conversions.professionName = function(skillID)
		local texture = GetTradeSkillTexture(skillID or 0)
		local name = GetSpellName(app.SkillDB.SkillToSpell[skillID] or 0) or C_TradeSkillUI.GetTradeSkillDisplayName(skillID) or RETRIEVING_DATA
		return texture and "|T"..texture..":0|t "..name or name
	end;
end);
app.AddEventRegistration("SKILL_LINES_CHANGED", function()
	-- app.PrintDebug("SKILL_LINES_CHANGED")
	-- seems to be a reliable way to notice a player has changed professions? not sure how else often it actually triggers... hopefully not too excessive...
	app.CallbackHandlers.DelayedCallback(RefreshTradeSkillCache, 2);
end)
end -- TradeSkill Functionality


app:CreateWindow("Tradeskills", {
	Commands = { "attskills" },
	AllowCompleteSound = true,
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self, handlers)
		local C_TradeSkillUI_IsTradeSkillLinked, C_TradeSkillUI_IsTradeSkillGuild
			= C_TradeSkillUI.IsTradeSkillLinked, C_TradeSkillUI.IsTradeSkillGuild
		self.SkillsInit = {};
		self.force = true;
		self:SetMovable(false);
		self:SetClampedToScreen(false);
		self:SetData(app.CreateRawText(L.PROFESSION_LIST, {
			icon = 134940,
			description = L.PROFESSION_LIST_DESC,
			visible = true,
			indent = 0,
			back = 1,
			g = { },
		}))

		local MissingRecipes = {}
		-- Adds the pertinent information about a given recipeID to the reagentcache
		local function CacheRecipeSchematic(recipeID)
			local schematic = C_TradeSkillUI_GetRecipeSchematic(recipeID, false);
			local craftedItemID = schematic.outputItemID;
			if not craftedItemID then return end
			local cachedRecipe = app.SearchForObject("recipeID",recipeID,"key")
			local recipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeID)
			if not cachedRecipe then
				local tradeSkillID, skillLineName, parentTradeSkillID = C_TradeSkillUI_GetTradeSkillLineForRecipe(recipeID)
				local missing = app.TableConcat({"Missing Recipe:",recipeID,skillLineName,tradeSkillID,"=>",parentTradeSkillID}, nil, nil, " ")
				-- app.PrintDebug(missing)
				MissingRecipes[#MissingRecipes + 1] = missing
			elseif cachedRecipe.u == app.PhaseConstants.NEVER_IMPLEMENTED then
				-- learned NYI recipe?
				if recipeInfo and recipeInfo.learned then
					-- known NYI recipes
					app.PrintDebug("Learned NYI Recipe",app:SearchLink(cachedRecipe))
				else
					-- don't cache reagents for unknown NYI recipes
					-- app.PrintDebug("Skip NYI Recipe",app:SearchLink(cachedRecipe))
					return
				end
			end

			local reagentCache = app.ReagentsDB
			local itemRecipes, reagentCount, reagentItemID;

			-- handle other types of recipes maybe
			if recipeInfo then
				if recipeInfo.craftable then
					-- Salvage Recipe harvest
					if recipeInfo.isSalvageRecipe then
						-- craftedItemID from salvage...
						-- in some cases this is the 'actual' ouput of the salvage (TWW Cooking)
						-- but in many other cases this is a 'fake item' representing 'multiple possible item outputs'
						-- theoretically we could list this 'fake item' under Profession > Crafted > with all possible outputs
						-- to allow driving crafting chains

						-- Not really a great way to utilize this output currently, since typically the input drives the output through
						-- the same Recipe, and it can be variable depending on skill or reagent qualities
						-- local salvageItems = C_TradeSkillUI_GetSalvagableItemIDs(recipeID)
						-- for _,salvageItemID in ipairs(salvageItems) do
						-- 	reagentItemID = salvageItemID
						-- 	-- only requirement is Reagent -> Recipe -> Crafted | Reagent Count
						-- 	-- Minimum Structure
						-- 	-- reagentCache[reagentItemID][<recipeID>] = { craftedItemID, reagentCount }
						-- 	if reagentItemID then
						-- 		itemRecipes = reagentCache[reagentItemID];
						-- 		if not itemRecipes then
						-- 			itemRecipes = { };
						-- 			reagentCache[reagentItemID] = itemRecipes;
						-- 		end
						-- 		-- app.PrintDebug("Reagent",reagentItemID,"x 5 =>",craftedItemID,"via",app:SearchLink(cachedRecipe))
						-- 		-- Salvage recipes are always '5' per
						-- 		itemRecipes[recipeID] = { craftedItemID, 5 };
						-- 	end
						-- end
						return
					end
				end
			end
			-- app.PrintDebug("Recipe",recipeID,"==>",craftedItemID)
			-- Recipes now have Slots for available Regeants...
			if #schematic.reagentSlotSchematics == 0 and schematic.hasCraftingOperationInfo then
				-- Milling Recipes...
				app.PrintDebug("EMPTY SCHEMATICS",app:SearchLink(cachedRecipe or app.__CreateObject({recipeID=recipeID})))
				return;
			end

			-- Typical Recipe harvest
			for _,reagentSlot in ipairs(schematic.reagentSlotSchematics) do
				-- reagentType: 0 = sparks?, 1 = required, 2 = optional
				if reagentSlot.required then
					reagentCount = reagentSlot.quantityRequired;
					-- Each available Reagent for the Slot can be associated to the Recipe/Output Item
					for _,reagentSlotSchematic in ipairs(reagentSlot.reagents) do
						reagentItemID = reagentSlotSchematic.itemID;
						-- only requirement is Reagent -> Recipe -> Crafted | Reagent Count
						-- Minimum Structure
						-- reagentCache[reagentItemID][<recipeID>] = { craftedItemID, reagentCount }
						if reagentItemID then
							itemRecipes = reagentCache[reagentItemID];
							if not itemRecipes then
								itemRecipes = { };
								reagentCache[reagentItemID] = itemRecipes;
							end
							-- app.PrintDebug("Reagent",reagentItemID,"x",reagentCount,"=>",craftedItemID,"via",recipeID)
							itemRecipes[recipeID] = { craftedItemID, reagentCount };
						end
					end
				end
			end
		end
		app.HarvestRecipes = function()
			local reagentsDB = app.LocalizeGlobal("AllTheThingsHarvestItems", true)
			reagentsDB.ReagentsDB = app.ReagentsDB
			local Runner = self:GetRunner()
			Runner.SetPerFrame(100);
			local Run = Runner.Run;
			for spellID,data in pairs(app.SearchForFieldContainer("spellID")) do
				Run(CacheRecipeSchematic, spellID);
			end
			Runner.OnEnd(function()
				app.print("Harvested all Sourced Recipes & Reagents => [Reagents]")
			end);
		end
		local function UpdateLocalizedCategories(self, updates)
			if not updates.Categories then
				-- app.PrintDebug("UpdateLocalizedCategories",self.lastTradeSkillID)
				local categories = AllTheThingsAD.LocalizedCategoryNames;
				updates.Categories = true;
				local currentCategoryID;
				local categoryData = {};
				local categoryIDs = { C_TradeSkillUI_GetCategories() };
				for i = 1,#categoryIDs do
					currentCategoryID = categoryIDs[i];
					if not categories[currentCategoryID] then
						C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
						if categoryData.name then
							categories[currentCategoryID] = categoryData.name;
						end
					end
				end
			end
		end
		local function UpdateLearnedRecipes(self, updates)
			-- Cache learned recipes
			if not updates.Recipes then
				-- app.PrintDebug("UpdateLearnedRecipes",self.lastTradeSkillID)
				if app.Debugging then
					local reagentsDB = app.LocalizeGlobal("AllTheThingsHarvestItems", true)
					reagentsDB.ReagentsDB = app.ReagentsDB
				end
				updates.Recipes = true;
				wipe(MissingRecipes)
				local categoryData = {};
				local learned, recipeID = {}, nil;
				local recipeIDs = C_TradeSkillUI.GetAllRecipeIDs();
				local acctSpells, charSpells = ATTAccountWideData.Spells, app.CurrentCharacter.Spells;
				local spellRecipeInfo, currentCategoryID;
				local categories = AllTheThingsAD.LocalizedCategoryNames;
				-- app.PrintDebug("Scanning recipes",#recipeIDs)
				for i = 1,#recipeIDs do
					spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeIDs[i]);
					-- app.PrintDebug("Recipe",recipeIDs[i])
					if spellRecipeInfo then
						recipeID = spellRecipeInfo.recipeID;
						local cachedRecipe = app.SearchForObject("recipeID",recipeID,"key")
						currentCategoryID = spellRecipeInfo.categoryID;
						if not categories[currentCategoryID] then
							C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
							if categoryData.name then
								categories[currentCategoryID] = categoryData.name;
							end
						end
						-- recipe is learned, so cache that it's learned regardless of being craftable
						if spellRecipeInfo.learned then
							-- Shadowlands recipes are weird...
							local rank = spellRecipeInfo.unlockedRecipeLevel or 0;
							if rank > 0 then
								-- when the recipeID specifically is available, it will show as available for ALL possible ranks
								-- so we can check if the next known rank is also considered available for this recipeID
								spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeID, rank + 1);
								-- app.PrintDebug("NextRankCheck",recipeID,rank + 1, spellRecipeInfo.learned)
							end
						end
						-- recipe is learned, so cache that it's learned regardless of being craftable
						if spellRecipeInfo and spellRecipeInfo.learned then
							-- only disabled & enable-type recipes should be un-cached when considered learned
							if spellRecipeInfo.disabled and cachedRecipe and cachedRecipe.isEnableTypeRecipe then
								-- disabled learned enable-type recipes shouldn't be marked as known by the character (they require an 'unlock' typically to become usable)
								if charSpells[recipeID] then
									charSpells[recipeID] = nil;
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:recipeID:"..recipeID);
									-- app.PrintDebug("Unlearned Disabled Recipe", link);
								end
							else
								charSpells[recipeID] = 1;
								if not acctSpells[recipeID] then
									acctSpells[recipeID] = 1;
									tinsert(learned, recipeID);
								end
							end
						else
							if spellRecipeInfo.disabled then
								-- disabled & unlearned recipes shouldn't be marked as known by the character
								if charSpells[recipeID] then
									charSpells[recipeID] = nil;
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:spellID:"..recipeID);
									-- app.PrintDebug("Unlearned Disabled Recipe", link);
								end
							else
								-- ignore removal of enable-type recipes when considered unlearned and not disabled
								if cachedRecipe and cachedRecipe.isEnableTypeRecipe then
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:recipeID:"..recipeID);
									-- app.PrintDebug("Unlearned Enable-Type Recipe", link);
								else
									-- non-disabled, unlearned recipes shouldn't be marked as known by the character
									if charSpells[recipeID] then
										charSpells[recipeID] = nil;
										-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:spellID:"..recipeID);
										-- app.PrintDebug("Unlearned Recipe", link);
									end
								end
							end
						end

						-- moved to stand-alone on-demand function across all known professions, or called if DEBUG_PRINT is enabled to harvest un-sourced recipes
						if app.Debugging then
							CacheRecipeSchematic(recipeID);
						end
					end
				end
				-- If something new was "learned", then refresh the data.
				-- app.PrintDebug("Done. learned",#learned)
				app.UpdateRawIDs("spellID", learned);
				if #learned > 0 then
					app.HandleEvent("OnThingCollected", "Recipes")
					self.force = true;
				end
				-- In Debugging, pop a dialog of all found missing recipes
				if app.Debugging then
					if #MissingRecipes > 0 then
						app:ShowPopupDialogWithMultiLineEditBox(app.TableConcat(MissingRecipes, nil, nil, "\n"), nil, "Missing Recipes")
					else
						app.PrintDebug("No Missing Recipes!")
					end
				end
			end
		end
		-- Custom SearchValueCriteria for requireSkill searches
		local criteria = {
			SearchValueCriteria = {
				-- Include if the field of the group matches the desired value (or via translated requireSkill value matches)
				-- and if it filters for the current character
				function(o, field, value)
					local v = o[field]
					return v and (v == value or app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value)
						and app.CurrentCharacterFilters(o)
				end
			}
		}
		local function UpdateData(self, updates)
			-- Open the Tradeskill list for this Profession
			local data = updates.Data;
			if not data then
				-- app.PrintDebug("UpdateData",self.lastTradeSkillID)
				data = app.CreateProfession(self.lastTradeSkillID);
				app.BuildSearchResponse_IgnoreUnavailableRecipes = true;
				app.NestObjects(data, app:BuildSearchResponseRetailStyle("requireSkill", data.requireSkill, nil, criteria));
				-- Profession headers use 'professionID' and don't actually convey a requirement on knowing the skill
				-- but in a Profession window for that skill it's nice to see what that skill can craft...
				app.NestObjects(data, app:BuildSearchResponseRetailStyle("professionID", data.requireSkill));
				app.BuildSearchResponse_IgnoreUnavailableRecipes = nil;
				data.indent = 0;
				data.visible = true;
				app.AssignChildren(data);
				updates.Data = data;
				-- only expand the list if this is the first time it is being generated
				self.ExpandInfo = { Expand = true };
				self.force = true;
			end
			self:SetData(data);
			self:Update(self.force);
		end
		-- Can trigger multiple times quickly, but will only run once per profession in a row
		self.RefreshRecipes = function(self, doUpdate)
			-- If it's not yours, don't take credit for it.
			if C_TradeSkillUI_IsTradeSkillLinked() or C_TradeSkillUI_IsTradeSkillGuild() then return; end

			if app.Settings.Collectibles.Recipes then
				-- app.PrintDebug("RefreshRecipes")
				-- Cache Learned Spells
				local skillCache = app.GetRawFieldContainer("spellID");
				if not skillCache then return; end

				local tradeSkillID = app.GetTradeSkillLine();
				self.lastTradeSkillID = tradeSkillID;
				local updates = self.SkillsInit[tradeSkillID] or {};
				self.SkillsInit[tradeSkillID] = updates;

				if doUpdate then
					-- allow re-scanning learned Recipes
					-- app.PrintDebug("Allow Rescan of Recipes")
					updates.Recipes = nil;
				end

				local Runner = self:GetRunner()
				Runner.Run(UpdateLocalizedCategories, self, updates);
				Runner.Run(UpdateLearnedRecipes, self, updates);
				Runner.Run(UpdateData, self, updates);
			end
		end

		-- TSM Shenanigans
		self.TSMCraftingVisible = nil;
		self.SetTSMCraftingVisible = function(self, visible)
			visible = not not visible;
			if visible == self.TSMCraftingVisible then
				return;
			end
			self.TSMCraftingVisible = visible;
			self:SetMovable(true);
			self:ClearAllPoints();
			if visible and self.cachedTSMFrame then
				---@diagnostic disable-next-line: undefined-field
				local queue = self.cachedTSMFrame.queue;
				if queue and queue:IsShown() then
					self:SetPoint("TOPLEFT", queue, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", queue, "BOTTOMRIGHT", 0, 0);
				else
					self:SetPoint("TOPLEFT", self.cachedTSMFrame, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame, "BOTTOMRIGHT", 0, 0);
				end
				self:SetMovable(false);
			-- Skillet compatibility
			elseif SkilletFrame then
				self:SetPoint("TOPLEFT", SkilletFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", SkilletFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(true);
			elseif TradeSkillFrame then
				-- Default Alignment on the WoW UI.
				self:SetPoint("TOPLEFT", TradeSkillFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
			elseif ProfessionsFrame then
				-- Default Alignment on the 10.0 WoW UI
				self:SetPoint("TOPLEFT", ProfessionsFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", ProfessionsFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
			else
				self:SetMovable(false);
				app.StartCoroutine("TSMWHY", function()
					while InCombatLockdown() or not TradeSkillFrame do coroutine.yield(); end
					app.StartCoroutine("TSMWHYPT2", function()
						local thing = self.TSMCraftingVisible;
						self.TSMCraftingVisible = nil;
						self:SetTSMCraftingVisible(thing);
					end);
				end);
				return;
			end
			app.CallbackHandlers.AfterCombatCallback(self.Update, self);
		end
		
		-- Setup Event Handlers and register for events
		self:RegisterEvent("TRADE_SKILL_SHOW");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("TRADE_SKILL_CLOSE");
		self:RegisterEvent("GARRISON_TRADESKILL_NPC_CLOSED");
		handlers.TRADE_SKILL_SHOW = function(self)
			-- If it's not yours, don't take credit for it.
			if C_TradeSkillUI_IsTradeSkillLinked() or C_TradeSkillUI_IsTradeSkillGuild() then
				self:SetVisible(false)
				return false
			end

			-- Check to see if ATT has information about this profession.
			local tradeSkillID = app.GetTradeSkillLine()
			if not tradeSkillID or #app.SearchForField("professionID", tradeSkillID) < 1 then
				self:SetVisible(false)
				return false
			end

			if self.TSMCraftingVisible == nil then
				self:SetTSMCraftingVisible(false)
			end
			if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
				self:SetVisible(true)
			end
			self:RefreshRecipes(true)
		end
		handlers.TRADE_SKILL_CLOSE = function(self)
			self:SetVisible(false)
		end
		handlers.GARRISON_TRADESKILL_NPC_CLOSED = handlers.TRADE_SKILL_CLOSE
	end,
	OnUpdate = function(self, ...)
		if TSM_API and TSMAPI_FOUR then
			if not self.cachedTSMFrame then
				for i,child in ipairs({UIParent:GetChildren()}) do
					---@class ATTChildFrameTemplate: Frame
					---@field headerBgCenter any
					local f = child;
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
						app.CallbackHandlers.AfterCombatCallback(self.Update, self);
						return self.OldNewElement(...);
					end
				end
			end
		elseif TSMCraftingTradeSkillFrame then
			-- print("TSMCraftingTradeSkillFrame")
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

		-- Update the window and all of its row data
		self:DefaultUpdate(force or self.force);
		self.force = nil;
	end,
});