local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local pairs, ipairs, tonumber, math_floor, math_min, select, type, tostring, tinsert, tremove, RETRIEVING_DATA
	= pairs, ipairs, tonumber, math.floor, math.min, select, type, tostring, tinsert, tremove, RETRIEVING_DATA;
local Colorize = app.Modules.Color.Colorize;
local GetCoordString = app.Modules.Color.GetCoordString;
local GetPatchString = app.Modules.Color.GetPatchString;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local GetRelativeValue = app.GetRelativeValue;
local wipearray = app.wipearray
local GetRealmName = GetRealmName

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetItemSpecInfo = app.WOWAPI.GetItemSpecInfo;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetTradeSkillDisplayName = app.WOWAPI.GetTradeSkillDisplayName;
local IsQuestFlaggedCompletedOnAccount = app.WOWAPI.IsQuestFlaggedCompletedOnAccount;
local GetProfessionInfoByRecipeID = app.WOWAPI.GetProfessionInfoByRecipeID;

-- Settings: Interface Page
local child = settings:CreateOptionsPage(L.INFORMATION_PAGE, L.INTERFACE_PAGE)

-- Conversion Methods for specific formats for a given Information Type.
local DefaultConversionMethod = function(value)
	return value;
end
-- Handles checking the 'text' and assigning 'reference.working' if the text is in a 'retrieving' state
local function IsRetrievingConversionMethod(text, reference)
	if IsRetrieving(text, true) then
		reference.working = true
		text = RETRIEVING_DATA
	end
	return text
end
local BindTypes = {
	ITEM_BIND_ON_PICKUP,
	ITEM_BIND_ON_EQUIP,
	ITEM_BIND_ON_USE,
	ITEM_BIND_QUEST,
}
local ConversionMethods = setmetatable({
	filterID = function(val, reference)
		return L.FILTER_ID_TYPES[val]
	end,
	b = function(val)
		return BindTypes[val]
	end,
	questID = function(questID, reference)
		-- for questID, also check if there's an otherFactionQuestID (Bfa Warfront Rares)
		local otherFactionQuestID = reference.otherFactionQuestID;
		if otherFactionQuestID then
			return "["..(app.FactionID == Enum.FlightPathFaction.Alliance and FACTION_HORDE or FACTION_ALLIANCE).." "..otherFactionQuestID.."] "..questID
		end
		return questID
	end,
	awp = function(val) return Colorize(GetPatchString(val), app.Colors.AddedWithPatch) end,
	rwp = function(val) return Colorize(GetPatchString(val), app.Colors.RemovedWithPatch) end,
	spellID = function(spellID, reference)
		local name = tostring(spellID);
		if app.Settings:GetTooltipSetting("spellName") then
			name = name .. " (" .. (GetSpellName(spellID) or "??");
			if reference.rank then name = name .. " (" .. RANK .. " " .. reference.rank .. ")"; end
			name = name .. ")";
		end
		return name;
	end,
	spellIDAndIcon = function(spellID, reference)
		local name = tostring(spellID);
		if app.Settings:GetTooltipSetting("spellName") then
			name = name .. " (" .. (GetSpellName(spellID) or "??");
			if reference.rank then name = name .. " (" .. RANK .. " " .. reference.rank .. ")"; end
			name = name .. ")";
		end
		local icon = GetSpellIcon(spellID);
		if icon then
			name = "|T" .. icon .. ":0|t " .. name;
		end
		return name;
	end,
	creatureName = function(creatureID, reference)
		if app.Settings:GetTooltipSetting("creatureID") then
			return IsRetrievingConversionMethod(app.NPCNameFromID[creatureID], reference) .. " (" .. creatureID .. ")";
		else
			return IsRetrievingConversionMethod(app.NPCNameFromID[creatureID], reference)
		end
	end,
	itemName = function(itemID, reference)
		local item = app.SearchForObject("itemID", itemID, "field") or app.CreateItem(itemID)
		local link = item and item.link
		if IsRetrieving(link) then
			reference.working = true
			link = "Item: " .. RETRIEVING_DATA
		end
		if app.Settings:GetTooltipSetting("itemID") then
			return link .. " (" .. itemID .. ")"
		else
			return link
		end
	end,
	itemNameAndIcon = function(itemID, reference)
		local item = app.SearchForObject("itemID", itemID, "field") or app.CreateItem(itemID)
		local link = item and item.link
		if IsRetrieving(link) then
			reference.working = true
			link = "Item: " .. RETRIEVING_DATA
		end
		local icon = item and item.icon
		if icon then
			link = "|T" .. icon .. ":0|t " .. link
		end
		if app.Settings:GetTooltipSetting("itemID") then
			return link .. " (" .. itemID .. ")"
		else
			return link
		end
	end,
	objectName = function(objectID, reference)
		if app.Settings:GetTooltipSetting("objectID") then
			return IsRetrievingConversionMethod(app.ObjectNames[objectID], reference) .. " (" .. objectID .. ")";
		else
			return IsRetrievingConversionMethod(app.ObjectNames[objectID], reference)
		end
	end,
	professionName = function(skillID, reference)
		local skillName = GetTradeSkillDisplayName(skillID)
		if skillName then
			return skillName
		end
		return IsRetrievingConversionMethod(GetSpellName(app.SkillDB.SkillToSpell[skillID] or 0), reference)
	end,
	difficultyID = function(difficultyID, reference)
		if difficultyID and difficultyID > 0 then
			return difficultyID
		end
	end,
}, {
	__index = function(t, key)
		return DefaultConversionMethod;
	end
});
ConversionMethods.provider = function(provider, reference)
	local providerType = provider[1];
	local providerID = provider[2] or 0;
	if providerType == "o" then
		return ConversionMethods.objectName(providerID, reference);
	elseif providerType == "n" then
		return ConversionMethods.creatureName(providerID, reference);
	elseif providerType == "i" then
		return ConversionMethods.itemNameAndIcon(providerID, reference);
	elseif providerType == "s" then
		return ConversionMethods.spellIDAndIcon(providerID, reference);
	end
	return UNKNOWN;
end;
ConversionMethods.qs = ConversionMethods.itemNameAndIcon
settings.InformationTypeConversionMethods = ConversionMethods;

-- Class Template for creating an Information Type instance.
local function GetValueForInformationType(t, reference)
	local rowReference = app.ActiveRowReference
	local informationTypeID = t.informationTypeID
	return rowReference and rowReference[informationTypeID] or reference[informationTypeID]
end
local function GetRecursiveValueForInformationType(t, reference)
	local rowReference = app.ActiveRowReference
	local informationTypeID = t.informationTypeID
	-- prioritize sourceParent for recursive values, and only allow parent when not a sourceIgnored group
	local idealParent = (rowReference and rowReference.sourceParent)
					or reference.sourceParent
					or (not reference.sourceIgnored and reference.parent)
					or (rowReference and not rowReference.sourceIgnored and rowReference.parent)
					or nil
	-- app.PrintDebug("IT-recur",informationTypeID,rowReference,rowReference and rowReference[informationTypeID],
	-- 				reference,reference[informationTypeID],GetRelativeValue(rowReference or reference, informationTypeID),
	-- 				app:SearchLink(app.GetRelativeGroup(idealParent, informationTypeID)))
	return rowReference and rowReference[informationTypeID]
		or reference[informationTypeID]
		or GetRelativeValue(idealParent, informationTypeID)
end
local function ProcessInformationType(t, reference, tooltipInfo)
	local val = t.GetValue(t, reference);
	if val then
		local text = ConversionMethods[t.informationTypeID](val, reference)
		if text then
			tinsert(tooltipInfo, { left = t.text, right = text });
		end
	end
end
local CreateInformationType = app.CreateClass("InformationType", "informationTypeID", {
	textLower = function(t)
		if not t.text then
			print("TEXT MISSING FOR INFORMATION TYPE");
			for key,value in pairs(t) do
				print("  ", key, value);
			end
			t.text = "WTF";
		end
		local textLower = t.text:lower();
		t.textLower = textLower;
		return textLower;
	end,
	priority = function(t)
		return 100;
	end,
	GetValue = function()
		return GetValueForInformationType;
	end,
	Process = function()
		return ProcessInformationType;
	end,
	IsStandaloneProperty = app.ReturnTrue,
	ShouldDisplayInExternalTooltips = app.ReturnTrue,
},
"AsRecursive", {
	GetValue = function()
		return GetRecursiveValueForInformationType;
	end,
},
(function(t) return t.isRecursive; end));

-- Known By / Completed By
-- Types which have an ID which can be 'known' or 'completed' but is typically spammy to show when account-wide
local KnownByIgnoredTypes = {
	Achievement = true,
	BattlePet = true,
	BattlePetWithItem = true,
	Illusion = true,
	IllusionWithItem = true,
	Mount = true,
	MountWithItem = true,
}
local knownBy = {};
local function GetCharacterDisplayName(character, stripRealm)
	local text = character.text or character.name or "???";
	local realm;
	if stripRealm then realm = character.realm; else realm = GetRealmName(); end
	if realm and realm ~= "" then
		-- Remove only the exact realm suffix, preserving class colors and Owned By quantities.
		local quantity = text:match(" %(x%d+%)$") or "";
		local suffixEnd = #text - #quantity;
		if text:sub(suffixEnd - 1, suffixEnd) == "|r" then suffixEnd = suffixEnd - 2; end
		local suffix = "-" .. realm;
		local suffixStart = suffixEnd - #suffix + 1;
		if suffixStart > 0 and text:sub(suffixStart, suffixEnd) == suffix then
			text = text:sub(1, suffixStart - 1) .. text:sub(suffixEnd + 1);
		end
	end
	return text;
end
local function GetCharacterFactionName(character)
	if character.factionID == Enum.FlightPathFaction.Horde then return FACTION_HORDE; end
	if character.factionID == Enum.FlightPathFaction.Alliance then return FACTION_ALLIANCE; end
	return UNKNOWN;
end
local function SortCharactersByRealmAndFaction(a, b)
	local realmA, realmB = a.realm or "", b.realm or "";
	if realmA ~= realmB then return realmA < realmB; end
	local factionA, factionB = a.factionID or 0, b.factionID or 0;
	if factionA ~= factionB then return factionA < factionB; end
	local nameA = a.name or (a.text or ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "");
	local nameB = b.name or (b.text or ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "");
	return nameA < nameB;
end
local function BuildKnownByInfoForKind(tooltipInfo, kind)
	for i = #knownBy, 1, -1 do
		if knownBy[i].ignored then tremove(knownBy, i); end
	end
	if #knownBy > 0 and kind then
		if settings:GetTooltipSetting("GroupByRealm") then
			app.Sort(knownBy, SortCharactersByRealmAndFaction);
			local names, realm, faction, titleAdded = {}, nil, nil, nil;
			local function FlushGroup()
				if #names > 0 then
					tinsert(tooltipInfo, { left = "  " .. realm .. ", " .. faction .. " (" .. #names .. ")", r = 0.8, g = 0.8, b = 0.8 });
					tinsert(tooltipInfo, { left = "    " .. table.concat(names, ", "), wrap = true, color = app.Colors.TooltipDescription });
					wipearray(names);
				end
			end
			for _,character in ipairs(knownBy) do
				-- Account-wide completion notices are messages, rather than character records.
				if not (character.name or character.realm or character.guid or character.factionID) then
					tinsert(tooltipInfo, { left = kind:format(character.text or "???"), wrap = true, color = app.Colors.TooltipDescription });
				else
					if not titleAdded then
						tinsert(tooltipInfo, { left = kind:format(""), r = 1, g = 0.82, b = 0 });
						titleAdded = true;
					end
					local characterRealm = character.realm;
					if not characterRealm or characterRealm == "" then characterRealm = UNKNOWN; end
					local characterFaction = GetCharacterFactionName(character);
					if characterRealm ~= realm or characterFaction ~= faction then
						FlushGroup();
						realm, faction = characterRealm, characterFaction;
					end
					tinsert(names, GetCharacterDisplayName(character, true));
				end
			end
			FlushGroup();
		else
			app.Sort(knownBy, app.SortDefaults.name);
			local names = {};
			for _,character in ipairs(knownBy) do
				tinsert(names, GetCharacterDisplayName(character));
			end
			tinsert(tooltipInfo, { left = kind:format(table.concat(names, ", ")), wrap = true, color = app.Colors.TooltipDescription });
		end
		wipearray(knownBy);
	end
end
local function ProcessForCompletedBy(t, reference, tooltipInfo)
	-- If the item is a recipe, then show which characters know this recipe.
	if reference.objectiveID then return end

	-- Completed By for Quests
	local id =
		-- we now have Recipes which are linked to QuestID, so let's ignore showing questID completion for those since
		-- the Recipe is shown in 'Known by'
		not reference.recipeID
		and reference.questID
	if id and (not KnownByIgnoredTypes[reference.__type] or reference.perCharacter) then
		-- Account-Wide Quests
		if app.AccountWideQuestsDB[id] then
			if IsQuestFlaggedCompletedOnAccount(id) then
				tinsert(knownBy, {text=ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE or "Account-Wide"});
			end
		else
			for _,character in pairs(ATTCharacterData) do
				if not character.ignored and ((character.Quests and character.Quests[id])
					-- perhaps expand into a separate information type instead for previously-completed quests
					or (character.PriorQuests and character.PriorQuests[id])) then
					tinsert(knownBy, character);
				end
			end
			if #knownBy == 0 and IsQuestFlaggedCompletedOnAccount(id) then
				tinsert(knownBy, {text=ACCOUNT_COMPLETED_QUEST_NOTICE or "Previously completed on your Account"});
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
		return
	end

	-- Completed By for Exploration
	local id = reference.explorationID;
	if id then
		for _,character in pairs(ATTCharacterData) do
			if character.Exploration and character.Exploration[id] then
				tinsert(knownBy, character);
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
		return
	end

	-- Completed By for FirstCrafts
	local id = reference.firstcraftID;
	if id then
		for _,character in pairs(ATTCharacterData) do
			if character.FirstCrafts and character.FirstCrafts[id] then
				tinsert(knownBy, character);
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
		return
	end

	-- Completed By for ProfessionNodes
	local id = reference.professionnodeID;
	if id then
		for _,character in pairs(ATTCharacterData) do
			if character.ProfessionNodes and character.ProfessionNodes[id] then
				tinsert(knownBy, character);
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
		return
	end

	-- Pre-WOD Known By types
	if app.GameBuildVersion >= 60000 then
		return;
	end
	local key = reference.key;
	if not key then return; end
	id = reference[key];
	if not id then return; end
	
	if key == "achievementID" then
		-- Prior to Cata, Achievements were not tracked account wide
		for guid,character in pairs(ATTCharacterData) do
			if character.Achievements and character.Achievements[id] then
				tinsert(knownBy, character);
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
	else
		local itemID = reference.itemID;
		if itemID then
			local knownByGUID = {};
			if app.GameBuildVersion < 30000 and not app.IsForever then
				-- Prior to Wrath, mounts, pets, and toys were not tracked account wide
				if key == "mountID" then
					for guid,character in pairs(ATTCharacterData) do
						if character.Mounts and character.Mounts[id] then
							knownByGUID[guid] = character;
						end
					end
				elseif key == "speciesID" then
					for guid,character in pairs(ATTCharacterData) do
						if character.BattlePets and character.BattlePets[id] then
							knownByGUID[guid] = character;
						end
					end
				elseif key == "toyID" then
					for guid,character in pairs(ATTCharacterData) do
						if character.Toys and character.Toys[itemID] then
							knownByGUID[guid] = character;
						end
					end
				end
			end

			-- For the current character, count how many of the thing they own.
			local currentCharacter = knownByGUID[app.GUID];
			if currentCharacter then
				local text = currentCharacter.text or "???";
				local count = GetItemCount(itemID, true);
				if count and count > 1 then
					text = text .. " (x" .. count .. ")";
				end
				knownByGUID[app.GUID] = setmetatable({ text = text }, { __index = currentCharacter });
			end

			-- Convert the GUID dictionary to the knownBy list.
			for guid,character in pairs(knownByGUID) do
				tinsert(knownBy, character);
			end

			-- All of this can be stored together.
			BuildKnownByInfoForKind(tooltipInfo, L.OWNED_BY);
		end
	end
end
local function ProcessForKnownBy(t, reference, tooltipInfo)
	-- This is to show which characters have this profession.
	local id = reference.knownByID or reference.spellID
	if id then
		if reference.key == "professionID" and app.IsClassic then	-- Apparently Retail doesn't use ActiveSkills
			for _,character in pairs(ATTCharacterData) do
				if character.ActiveSkills and not character.ignored then
					local skills = character.ActiveSkills[id];
					if skills then tinsert(knownBy, { character, skills[1], skills[2] }); end
				end
			end
			if #knownBy > 0 then
				app.Sort(knownBy, function(a, b)
					return a[2] > b[2];
				end);
				tinsert(tooltipInfo, {
					left = L.KNOWN_BY:format(""),
					color = app.Colors.TooltipDescription,
				});
				for i,data in ipairs(knownBy) do
					local character = data[1];
					tinsert(tooltipInfo, {
						---@diagnostic disable-next-line: undefined-field
						left = "  " .. GetCharacterDisplayName(character),
						right = data[2] .. " / " .. data[3],
					});
				end
				wipearray(knownBy);
				return;
			end
		end

		-- If the Thing is not ignored, then show which characters know this Thing/Spell
		if not KnownByIgnoredTypes[reference.__type] or reference.perCharacter then
			local cacheName = reference.CACHE
			local knownByCache
			for guid,character in pairs(ATTCharacterData) do
				knownByCache = character[cacheName] or character.Spells
				if not character.ignored and knownByCache and knownByCache[id] then
					tinsert(knownBy, character);
				end
			end
			BuildKnownByInfoForKind(tooltipInfo, L.KNOWN_BY);
		end
	end
end

local function ProcessForUsefulFor(t, reference, tooltipInfo)
	-- Only actual recipes can be useful to a character; arbitrary item/spell IDs are not recipes.
	local recipe, recipeID = reference, reference.recipeID;
	if not recipeID then
		local id = reference.knownByID or reference.spellID;
		if not id then return; end
		recipe = app.SearchForObject("recipeID", id, "key");
		if not recipe then return; end
		recipeID = recipe.recipeID;
	end
	if not recipeID then return; end
	local skillID = reference.skillID or reference.requireSkill or recipe.skillID or GetRelativeValue(recipe, "requireSkill");
	if not skillID then return; end
	local learnedAt = reference.learnedAt or GetRelativeValue(recipe, "learnedAt") or 1;
	local skillDB = app.SkillDB;
	local specializationSpell = skillDB.SpecializationSpells[skillID];
	local baseSkillID = skillDB.SpellToSkill[specializationSpell or 0] or skillDB.Conversion[skillID] or skillID;
	local rankSkillID = skillID;
	if app.IsRetail then
		-- Retail skill levels belong to a particular expansion, not the base profession.
		local professionInfo = GetProfessionInfoByRecipeID(recipeID);
		if professionInfo and professionInfo.professionID and professionInfo.professionID > 0 then
			rankSkillID = professionInfo.professionID;
		elseif not app.IsForever and (not skillDB.Conversion[skillID] or skillDB.Conversion[skillID] == skillID) then
			-- A base profession rank cannot identify which Retail expansion a recipe belongs to.
			return;
		end
	end
	local professionSpellID = skillDB.SkillToSpell[skillID] or skillDB.SkillToSpell[baseSkillID];
	local faction = GetRelativeValue(recipe, "r");
	local classes = GetRelativeValue(recipe, "c");
	local races = GetRelativeValue(recipe, "races");
	for _,character in pairs(ATTCharacterData) do
		if not character.ignored
			and not (character.Spells and character.Spells[recipeID])
			and (not faction or faction == 0 or character.factionID == faction)
			and (not classes or app.contains(classes, character.classID))
			and (not races or app.contains(races, character.raceID)) then
			local rank;
			if app.IsRetail then
				local professions = character.Professions;
				if professions and professions[baseSkillID] and (not specializationSpell or professions[skillID]) then
					rank = character.ProfessionRanks and character.ProfessionRanks[rankSkillID];
				end
			else
				local skills = professionSpellID and character.ActiveSkills and character.ActiveSkills[professionSpellID];
				rank = skills and skills[1];
			end
			-- Missing cached rank data must not imply that a character can learn the recipe.
			if type(rank) == "number" and rank > 0 and rank >= learnedAt then
				tinsert(knownBy, character);
			end
		end
	end
	BuildKnownByInfoForKind(tooltipInfo, L.USEFUL_FOR);
end

-- Specialization Requirements
local GetNumSpecializations, GetSpecializationInfo, GetSpecializationInfoByID
	= GetNumSpecializations, GetSpecializationInfo, GetSpecializationInfoByID
-- Filters a specs table to only those which the current Character class can choose
local function FilterSpecs(specs)
	if specs and #specs > 0 then
		local name, class, _;
		for i=#specs,1,-1 do
			_, name, _, _, _, class = GetSpecializationInfoByID(specs[i]);
			if class ~= app.Class or not name or name == "" then
				tremove(specs, i);
			end
		end
		app.Sort(specs, app.SortDefaults.Values);
	end
end
local GetFixedItemSpecInfo = GetSpecializationInfo and function(itemID)
	if itemID then
		local specs = GetItemSpecInfo(itemID);
		if not specs or #specs < 1 then
			specs = {};
			-- Starting with Legion items, the API seems to return no spec information when the item is in fact lootable by ANY spec
			local _, _, _, _, _, _, _, _, itemEquipLoc, _, _, itemClassID, _, _, expacID, _, _ = GetItemInfo(itemID);
			-- only Armor items
			if itemClassID and itemClassID == 4 then
				-- unable to distinguish between Trinkets usable by all specs (Font of Power) and Role-Specific trinkets which do not apply to any Role of the current Character
				if expacID >= 6 and (itemEquipLoc == "INVTYPE_NECK" or itemEquipLoc == "INVTYPE_FINGER") then
					local numSpecializations = GetNumSpecializations();
					if numSpecializations and numSpecializations > 0 then
						for i=1,numSpecializations,1 do
							local specID = GetSpecializationInfo(i);
							tinsert(specs, specID);
						end
					end
				end
			end
			app.Sort(specs, app.SortDefaults.Values);
		else
			FilterSpecs(specs);
		end
		if #specs > 0 then
			return specs;
		end
	end
end or function(itemID)
	if itemID then
		local specs = GetItemSpecInfo(itemID);
		if specs then
			FilterSpecs(specs);
		else
			return;
		end
		if #specs > 0 then
			return specs;
		end
	end
end
app.GetFixedItemSpecInfo = GetFixedItemSpecInfo
-- Returns a string containing the spec icons, followed by their respective names if desired
local function GetSpecsString(specs, includeNames, trim)
	local icons, name, icon, _ = {}, nil, nil, nil;
	if includeNames then
		for i=#specs,1,-1 do
			_, name, _, icon, _, _ = GetSpecializationInfoByID(specs[i]);
			icons[i * 4 - 3] = "  |T";
			icons[i * 4 - 2] = icon;
			icons[i * 4 - 1] = ":0|t ";
			icons[i * 4] = name;
		end
	else
		for i=#specs,1,-1 do
			_, _, _, icon, _, _ = GetSpecializationInfoByID(specs[i]);
			icons[i * 3 - 2] = "|T";
			icons[i * 3 - 1] = icon;
			icons[i * 3] = ":0|t ";
		end
	end
	if trim then
		return app.TableConcat(icons):match('^%s*(.*%S)');
	end
	return app.TableConcat(icons);
end
app.GetSpecsString = GetSpecsString

-- Cost Helper Functions
local function formatNumericWithCommas(amount)
	local k
	while true do
		amount, k = tostring(amount):gsub("^(-?%d+)(%d%d%d)", '%1,%2')
		if k == 0 then
			break
		end
	end
	return amount
end
app.formatNumericWithCommas = formatNumericWithCommas
local function GetMoneyString(amount)
	if amount > 0 then
		local formatted
		local gold, silver, copper = math_floor(amount / 100 / 100), math_floor((amount / 100) % 100),
			math_floor(amount % 100)
		if gold > 0 then
			formatted = formatNumericWithCommas(gold) .. "|T237618:0|t"
		end
		if silver > 0 then
			formatted = (formatted or "") .. silver .. "|T237620:0|t"
		end
		if copper > 0 then
			formatted = (formatted or "") .. copper .. "|T237617:0|t"
		end
		return formatted
	end
	return amount
end
local CostCurrencyCache = setmetatable({}, {
	__index = function(t, id)
		local o = app.CreateCurrencyClass(id);
		t[id] = o;
		return o;
	end
});
local CostItemCache = setmetatable({}, {
	__index = function(t, id)
		local o = app.CreateItem(id);
		t[id] = o;
		return o;
	end
});

-- The post processor uses a dynamic list to append additional entries as needed.
local AppendedInformationTextEntries = {};
local PostProcessor = CreateInformationType("__postprocessor", {
	priority = 99999999,
	Process = function(t, reference, tooltipInfo)
		if #AppendedInformationTextEntries > 0 then
			for i,entry in ipairs(AppendedInformationTextEntries) do
				tinsert(tooltipInfo, entry);
			end
			wipearray(AppendedInformationTextEntries);
		end
	end,
});
local function AppendInformationTextEntry(entry)
	-- You should call this from within the Process function of an information text object.
	tinsert(AppendedInformationTextEntries, entry);
end
settings.AppendInformationTextEntry = AppendInformationTextEntry;
local AccountWideIcon = app.GameBuildVersion >= 110005 and "|T6124644:0:0:0:0:64:64:4:60:4:60|t " or "|T413589:0:0:0:0:64:64:4:60:4:60|t "

-- All of the Default Information Types.
local InformationTypes = {
	-- Only displayed in NPC Tooltips that are alive and exist in the world.
	CreateInformationType("Alive", { text = L.ALIVE, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Spawned", { text = L.SPAWNED, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Layer", { text = L.LAYER, priority = 1, IsStandaloneProperty = false }),

	-- Progress Fields (top most)
	CreateInformationType("Progress", { text = L.SOCIAL_PROGRESS, priority = 1, HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			local summaryText = app.GetProgressTextForTooltip(reference);
			if summaryText then
				tinsert(tooltipInfo, { summaryText = summaryText });
				--[[
				-- I don't remember what the original conditions for showing this were.
				-- For now just disable it.
				if reference.total and reference.total >= 2 then
					-- if collecting this reference type, then show Collection State
					if reference.collectible then
						tinsert(tooltipInfo, {
							left = L.COLLECTION_PROGRESS,
							right = app.GetCollectionText(reference.collected or reference.saved),
						});
					-- if completion/tracking is available, show Completion State
					elseif reference.trackable then
						tinsert(tooltipInfo, {
							left = L.TRACKING_PROGRESS,
							right = app.GetCompletionText(reference.saved),
						});
					end
				end
				]]--
			end
		end,
	}),
	CreateInformationType("SocialProgress", { text = L.SOCIAL_PROGRESS, priority = 1, IsStandaloneProperty = false }),

	CreateInformationType("title", {
		text = "Title",
		priority = 1.01,
		HideCheckBox = true,
		ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local title = reference.title;
			if title then
				local left, right = app.DESCRIPTION_SEPARATOR:split(title);
				if right then
					tooltipInfo[#tooltipInfo + 1] = {
						left = left,
						right = right,
						r = 1, g = 1, b = 1
					};
				else
					tooltipInfo[#tooltipInfo + 1] = {
						left = title,
						r = 1, g = 1, b = 1
					};
				end
			end
		end,
	}),

	-- Contextual fields
	CreateInformationType("parent", { text = "Parent", priority = 1.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			if not reference.itemID then
				local parent = reference.parent or reference.sourceParent;
				if parent then
					-- Only show this for 2 depth hierarchies and above.
					local grandparent = parent.parent or parent.sourceParent;
					if grandparent then
						local ptext, gptext =
							IsRetrievingConversionMethod(parent.text, reference),
							IsRetrievingConversionMethod(grandparent.text, reference)
						tinsert(tooltipInfo, {
							left = gptext,
							right = ptext
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("guid", { text = L.GUID, priority = 2 }),
	CreateInformationType("lvl", { text = LEVEL, priority = 2, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local lvl = reference.lvl;-- or GetRelativeValue(reference, "lvl");	-- TODO: Investigate if we want this.
			if lvl then
				local minlvl, maxlvl;
				if type(lvl) == "table" then
					minlvl = lvl[1] or 0;
					maxlvl = lvl[2] or 0;
				else
					minlvl = lvl;
				end
				-- i suppose a maxlvl of 1 might exist?
				if maxlvl and maxlvl > 0 then
					tinsert(tooltipInfo, {
						left = L.REQUIRES_LEVEL,
						right = tostring(minlvl) .. " to " .. tostring(maxlvl),
					});
				-- no point to show 'requires lvl 1'
				elseif minlvl and minlvl > 1 then
					tinsert(tooltipInfo, {
						left = L.REQUIRES_LEVEL,
						right = tostring(minlvl),
					});
				end
			end
		end,
	}),
	CreateInformationType("petBattleLvl", { text = LEVEL .. " (" .. L.PET_BATTLES .. ")", priority = 2.01, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local petBattleLvl = reference.petBattleLvl;
			if petBattleLvl then
				tinsert(tooltipInfo, {
					left = LEVEL .. " (" .. L.PET_BATTLES .. ")",
					right = tostring(petBattleLvl),
				});
			end
		end,
	}),

	-- Quest Fields
	CreateInformationType("qgs", { text = L.QUEST_GIVERS, priority = 2.05, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local qgs = reference.qgs;
			if qgs then
				for i,creatureID in ipairs(qgs) do
					tinsert(tooltipInfo, {
						left = (i == 1 and L.QUEST_GIVER),
						right = ConversionMethods.creatureName(creatureID, reference),
					});
				end
			end
		end,
	}),
	CreateInformationType("qis", { text = L.QUEST_ITEMS, priority = 2.06, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local qis = reference.qis
			if qis then
				for i=1,#qis do
					tinsert(tooltipInfo, {
						left = (i == 1 and L.QUEST_ITEMS),
						right = ConversionMethods.itemNameAndIcon(qis[i], reference),
					})
				end
			end
		end,
	}),
	CreateInformationType("coords", { text = L.COORDINATES, priority = 2.1, maxcoords = 10, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local coords = reference.coords;
			if coords then
				local coordList = {};
				local currentMapID = app.CurrentMapID;
				if coords[currentMapID] then
					for i,coord in ipairs(coords[currentMapID]) do
						tinsert(coordList, { right = GetCoordString(coord[1], coord[2]) });
					end
				end
				local showMapID = app.Settings:GetTooltipSetting("mapID");
				for mapID,coordsForMap in pairs(coords) do
					if mapID ~= currentMapID then
						for i,coord in ipairs(coordsForMap) do
							local str = app.GetMapName(mapID);
							if showMapID then str = str .. " (" .. mapID .. ")"; end
							tinsert(coordList, { right = str .. ": " .. GetCoordString(coord[1], coord[2]) });
						end
					end
				end

				local count = #coordList;
				if count > 0 then
					coordList[1].left = t.text;

					-- Force white string entries.
					for i=1,math_min(t.maxcoords, count) do
						local coord = coordList[i];
						coord.r = 1;
						coord.g = 1;
						coord.b = 1;
						tinsert(tooltipInfo, coord);
					end

					local remainingCoords = count - t.maxcoords;
					if remainingCoords > 0 then
						tinsert(tooltipInfo, {
							right = (L.AND_MORE):format(remainingCoords),
							r = 1, g = 1, b = 1
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("playerCoord", { text = L.PLAYER_COORDINATES, priority = 2.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local playerCoord = reference.playerCoord;
			if playerCoord then
				tinsert(tooltipInfo, {
					left = t.text,
					right = GetCoordString(playerCoord[1], playerCoord[2]),
					r = 1, g = 1, b = 1
				});
			end
		end,
	}),

	-- Description fields
	CreateInformationType("lore", { text = L.LORE, priority = 2.4,
		Process = function(t, reference, tooltipInfo)
			local lore = reference.lore;
			if lore then
				tinsert(tooltipInfo, {
					left = lore,
					color = app.Colors.TooltipLore,
					wrap = true,
				});
			end
		end,
	}),
	CreateInformationType("description", { text = L.DESCRIPTIONS, priority = 2.5,
		Process = function(t, reference, tooltipInfo)
			local description = (app.ActiveRowReference or reference).description
			local sharedDescription = GetRelativeValue(reference, "sharedDescription")
				-- duplicated search results loose their parent references in order to prevent issues in filtering/tooltips
				-- so also check the active row reference for accuracy if the tooltip is in context of a row
				or GetRelativeValue(app.ActiveRowReference, "sharedDescription")
			if description then
				if sharedDescription then
					tinsert(tooltipInfo, {
						left = description.."\n"..sharedDescription,
						color = app.Colors.TooltipDescription,
						wrap = true,
					});
				else
					tinsert(tooltipInfo, {
						left = description,
						color = app.Colors.TooltipDescription,
						wrap = true,
					});
				end
			elseif sharedDescription then
				tinsert(tooltipInfo, {
					left = sharedDescription,
					color = app.Colors.TooltipDescription,
					wrap = true,
				});
			end
		end,
	}),
	CreateInformationType("maps", {
		text = L.MAPS,
		priority = 2.6,
		ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local maps = reference.maps or reference.maps_disp
			if not maps or #maps == 0 then
				if reference.coords then
					maps = {}
					for mapID,_ in pairs(reference.coords) do
						maps[#maps + 1] = mapID;
					end
				end
			end
			if maps and #maps > 0 then
				local mapNames,uniques,name = {},{},nil;
				local rootMapID = reference.mapID
				local myRealMapID = app.RealMapID
				local onMyMap = myRealMapID and rootMapID == myRealMapID
				if rootMapID then uniques[app.GetMapName(rootMapID) or rootMapID] = true; end
				for i,mapID in ipairs(maps) do
					onMyMap = onMyMap or mapID == myRealMapID
					name = app.GetMapName(mapID);
					if name and not uniques[name] then
						uniques[name] = true;
						tinsert(mapNames, name);
					end
				end
				if #mapNames > 1 or (not onMyMap and #mapNames > 0) then
					-- If there's a description and it is visible, add some visual space.
					local description = reference.description;
					if description and app.Settings:GetTooltipSetting("description") then
						tinsert(tooltipInfo, {
							left = " ",
							color = app.Colors.TooltipDescription,
							wrap = true,
						});
					end
					tinsert(tooltipInfo, {
						left = t.text .. ": " .. app.TableConcat(mapNames, nil, nil, ", "),
						color = app.Colors.TooltipDescription,
						wrap = true,
					});
				end
			end
		end,
	}),
	CreateInformationType("pb", {
		priority = 2.7,
		isRecursive = true,
		text = L.PET_BATTLES,
		Process = function(t, reference, tooltipInfo)
			if t.GetValue(t, reference) then
				tinsert(tooltipInfo, {
					left = L.REQUIRES_PETBATTLES,
					wrap = true,
				});
			end
		end,
	});
	CreateInformationType("pvp", {
		priority = 2.7,
		isRecursive = true,
		text = PVP,
		Process = function(t, reference, tooltipInfo)
			if t.GetValue(t, reference) then
				tinsert(tooltipInfo, {
					left = L.REQUIRES_PVP,
					wrap = true,
				});
			end
		end,
	});
	CreateInformationType("sr", {
		priority = 2.7,
		isRecursive = true,
		text = L.SHOW_SKYRIDING_CHECKBOX,
		Process = function(t, reference, tooltipInfo)
			if t.GetValue(t, reference) then
				tinsert(tooltipInfo, {
					left = L.REQUIRES_SKYRIDING,
					wrap = true,
				});
			end
		end,
	});
	CreateInformationType("customCollect", {
		text = "Custom Collect Requirements",
		HideCheckBox = true,
		ForceActive = true,
		priority = 2.7,
		Process = function(t, reference, tooltipInfo)
			-- Show info about if this Thing cannot be collected due to a custom collectibility
			-- restriction on the Thing which this character does not meet
			local customCollect = reference.customCollect
			if customCollect then
				local customCollectEx, c
				local requires = L.REQUIRES;
				for i=1,#customCollect do
					c = customCollect[i]
					customCollectEx = L.CUSTOM_COLLECTS_REASONS[c];
					local icon_color_str = customCollectEx.icon.." |c"..customCollectEx.color..(customCollectEx.text or "[MISSING_LOCALE_KEY]");
					if not app.CurrentCharacter.CustomCollects[c] then
						tooltipInfo[#tooltipInfo + 1] = {
							left = Colorize(requires, app.Colors.LockedWarning) .. "  " .. icon_color_str,
							right = customCollectEx.desc or "",
						}
					else
						tooltipInfo[#tooltipInfo + 1] = {
							left = Colorize(requires, app.Colors.Time) .. "  " .. icon_color_str,
							right = customCollectEx.desc or "",
						}
					end
				end
			end
		end,
	}),
	CreateInformationType("u", {
		priority = 2.7,
		isRecursive = true,
		text = L.AVAILABILITY,
		Process = function(t, reference, tooltipInfo)
			local u = t.GetValue(t, reference);
			if u then
				local phase = L.PHASES[u];
				if phase then
					local buildVersion = phase.buildVersion;
					if not buildVersion or app.GameBuildVersion < buildVersion or app.MODE_DEBUG then
						tinsert(tooltipInfo, {
							left = phase.description,
							wrap = true,
						});
					end
				end
			end
		end,
	});
	CreateInformationType("sym", {
		priority = 2.8,
		text = "SymLink",
		ForceActive = true,
		ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			if reference.skipFill then
				tinsert(tooltipInfo, {
					left = L.SYM_ROW_SKIP_DESC,
					r = 0.8, g = 0.8, b = 1,
					wrap = true,
				});
			end
			if reference.sym then
				tinsert(tooltipInfo, {
					left = L.SYM_ROW_INFORMATION,
					r = 0.8, g = 0.8, b = 1,
					wrap = true,
				});
			end
		end,
	});

	-- Regular fields (sorted by priority for clarity of how it will appear in the tooltip)
	CreateInformationType("awp", { text = L.ADDED_WITH_PATCH, isRecursive = true, priority = 3,
		Process = app.IsRetail and ProcessInformationType or function(t, reference, tooltipInfo)
			local awp = t.GetValue(t, reference);
			if awp then
				if awp > app.GameBuildVersion then
					tinsert(tooltipInfo, { left = Colorize(L.READDED_WITH_PATCH_CLASSIC_FORMAT:format(GetPatchString(awp)), app.Colors.AddedWithPatch)});
				else
					tinsert(tooltipInfo, { left = t.text, right = Colorize(GetPatchString(awp), app.Colors.AddedWithPatch)});
				end
			end
		end,
	}),
	CreateInformationType("rwp", { text = L.REMOVED_WITH_PATCH, isRecursive = true, priority = 3,
		-- CRIEVE NOTE: Recursive is actually not true, some items get new sources later. The distinction for pre-Cata being non-recursive might be necessary, but since we're overriding the process function it should be fine this way.
		Process = app.IsRetail and ProcessInformationType or function(t, reference, tooltipInfo)
			local rwp = t.GetValue(t, reference);
			if rwp then
				if app.GameBuildVersion < rwp then
					tinsert(tooltipInfo, { left = Colorize(L.REMOVED_WITH_PATCH_CLASSIC_FORMAT:format(GetPatchString(rwp)), app.Colors.RemovedWithPatch)});
				else
					tinsert(tooltipInfo, { left = t.text, right = Colorize(GetPatchString(rwp), app.Colors.RemovedWithPatch)});
				end
			end
		end,
	}),
	CreateInformationType("filterID", { text = L.FILTER_ID, priority = 4,
		Process = function(t, reference, tooltipInfo)
			local f = reference.f
			if f then
				local locName = ConversionMethods.filterID(reference.loc, reference)
				if locName then
					tinsert(tooltipInfo, {
						left = t.text,
						right = ConversionMethods.filterID(f, reference) .. " / " .. locName,
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = ConversionMethods.filterID(f, reference),
					});
				end
			end
		end,
	}),
	CreateInformationType("itemString", { text = L.ITEM_STRING, priority = 4 }),
	CreateInformationType("itemID", { text = L.ITEM_ID, priority = 5 }),
	CreateInformationType("sourceID", { text = L.SOURCE_ID, priority = 5 }),
	CreateInformationType("bonusID", { text = L.BONUS_ID, priority = 6 }),
	CreateInformationType("modID", { text = L.MOD_ID, priority = 6 }),
	CreateInformationType("artID", { text = L.ART_ID, priority = 7 }),
	CreateInformationType("campsiteID", { text = L.CAMPSITE_ID, priority = 7 }),
	CreateInformationType("decorID", { text = L.DECOR_ID, priority = 7 }),
	CreateInformationType("professionnodeID", { text = L.PROFESSION_NODE_ID, priority = 7 }),
	CreateInformationType("iconPath", { text = L.ICON_PATH, ShouldDisplayInExternalTooltips = false, priority = 7 }),
	CreateInformationType("visualID", { text = L.VISUAL_ID, priority = 7 }),

	CreateInformationType("achievementID", { text = L.ACHIEVEMENT_ID, priority = 8,
		GetValue = app.GameBuildVersion >= 30000 and GetValueForInformationType or function(t, reference)
			local value = GetValueForInformationType(t, reference);
			if value then
				if reference.sourceQuests then
					AppendInformationTextEntry({
						left = L.ACHIEVEMENT_PRE_WRATH_SOURCE_QUEST_INFO,
						wrap = true,
						r = 0.4,
						g = 0.8,
						b = 1,
					});
				end
				return value;
			end
		end
	}),

	CreateInformationType("questID", { text = L.QUEST_ID, priority = 8,
		Process = function(t, reference, tooltipInfo)
			local questID = reference.questID
			if not questID then return end

			local account = app.AccountWideQuestsDB[questID]
			tinsert(tooltipInfo, {
				left = L.QUEST_ID,
				right = reference.questID.." "..(account and AccountWideIcon or "")..app.GetCompletionIcon(app.IsQuestFlaggedCompleted(questID)),
			});
		end
	}),
	CreateInformationType("factionID", { text = L.FACTION_ID, priority = 9 }),

	CreateInformationType("achievementCategoryID", { text = L.ACHIEVEMENT_CATEGORY_ID }),
	CreateInformationType("artifactID", { text = L.ARTIFACT_ID }),
	CreateInformationType("azeriteessenceID", { text = L.AZERITE_ESSENCE_ID }),
	CreateInformationType("conduitID", { text = L.CONDUIT_ID }),
	CreateInformationType("creatureID", { text = L.CREATURE_ID }),
	CreateInformationType("crs", { text = L.CREATURES_LIST, ShouldDisplayInExternalTooltips = false,
		limit = 25,
		Process = function(t, reference, tooltipInfo)
			local crs = reference.crs;
			if crs then
				-- extreme amounts of creatures tagged, then only list a summary of how many...
				if #crs > t.limit then
					tinsert(tooltipInfo, {
						left = CREATURE,
						right = L.CREATURES_COUNT:format(#crs),
					});
				else
					for i,creatureID in ipairs(crs) do
						tinsert(tooltipInfo, {
							left = (i == 1 and CREATURE),
							right = ConversionMethods.creatureName(creatureID, reference),
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("providers", { text = L.PROVIDERS, ShouldDisplayInExternalTooltips = false,
		limit = 25,
		Process = function(t, reference, tooltipInfo)
			local providers = t.GetValue(t, reference);
			if providers then
				local limit = t.limit
				for i,provider in ipairs(providers) do
					tinsert(tooltipInfo, {
						left = (i == 1 and L.PROVIDERS),
						right = ConversionMethods.provider(provider, reference),
					});
					limit = limit - 1
					if limit <= 0 then
						tinsert(tooltipInfo, {
							right =  LFG_LIST_AND_MORE:format(#providers - limit),
						});
						break
					end
				end
				return
			end
			local qss = reference.qss
			if qss then
				local limit = t.limit
				for i,qs in ipairs(qss) do
					tinsert(tooltipInfo, {
						left = (i == 1 and L.PROVIDERS),
						right = ConversionMethods.qs(qs, reference),
					});
					limit = limit - 1
					if limit <= 0 then
						tinsert(tooltipInfo, {
							right =  LFG_LIST_AND_MORE:format(#qss - limit),
						});
						break
					end
				end
			end
		end,
	}),
	CreateInformationType("criteriaID", { text = L.CRITERIA_ID }),
	CreateInformationType("currencyID", { text = L.CURRENCY_ID }),
	CreateInformationType("difficultyID", { text = L.DIFFICULTY_ID }),
	CreateInformationType("displayID", { text = L.DISPLAY_ID }),
	CreateInformationType("encounterID", { text = L.ENCOUNTER_ID }),
	CreateInformationType("expansionID", { text = L.EXPANSION_ID }),
	CreateInformationType("explorationID", { text = L.EXPLORATION_ID }),
	CreateInformationType("e", { text = L.EVENT_ID }),
	CreateInformationType("flightpathID", { text = L.FLIGHT_PATH_ID }),
	CreateInformationType("followerID", { text = L.FOLLOWER_ID }),
	CreateInformationType("headerID", { text = L.HEADER_ID }),
	CreateInformationType("illusionID", { text = L.ILLUSION_ID }),
	CreateInformationType("instanceID", { text = L.INSTANCE_ID }),
	CreateInformationType("mapID", { text = L.MAP_ID }),
	CreateInformationType("objectID", { text = L.OBJECT_ID }),
	CreateInformationType("raceID", { text = L.RACE_ID }),
	CreateInformationType("runeforgepowerID", { text = L.RUNEFORGE_POWER_ID }),
	CreateInformationType("savedInstanceID", { text = L.SAVED_INSTANCE_ID }),
	CreateInformationType("setID", { text = L.SET_ID }),
	CreateInformationType("speciesID", { text = L.SPECIES_ID }),
	CreateInformationType("spellID", { text = L.SPELL_ID }),
	CreateInformationType("spellName", { text = L.SPELL_NAME, IsStandaloneProperty = false }),	-- Included as a parameter for the spellID field.
	CreateInformationType("titleID", { text = L.TITLE_ID }),

	CreateInformationType("c", { text = L.CLASSES, priority = 8000, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local c = reference.c or reference.c_disp
			if c then
				local classes_tbl = {};
				for i,cl in ipairs(c) do
					local info = app.ClassInfoByID[cl];
					if info.isValid then classes_tbl[#classes_tbl + 1] = info.icontext; end
				end
				local str = app.TableConcat(classes_tbl, nil, nil, ", ")
				if #classes_tbl > 4 then
					tinsert(tooltipInfo, {
						left = t.text .. " " .. str,
						wrap = true,
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = str,
					});
				end
			end
		end,
	}),
	CreateInformationType("r", { text = RACES, priority = 8000, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local r = reference.r or reference.r_disp
			if r and r > 0 then
				local usecolors = app.Settings:GetTooltipSetting("UseMoreColors");
				if r == 2 then
					tinsert(tooltipInfo, {
						left = t.text,
						right = usecolors and Colorize(ITEM_REQ_ALLIANCE, app.Colors.Alliance) or ITEM_REQ_ALLIANCE
					});
				elseif r == 1 then
					tinsert(tooltipInfo, {
						left = t.text,
						right = usecolors and Colorize(ITEM_REQ_HORDE, app.Colors.Horde) or ITEM_REQ_HORDE
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = UNKNOWN
					});
				end
			else
				r = reference.races or reference.races_disp
				if r then
					local races_tbl = {}
					-- temp ref with .raceID of only a single race so we can simply use TryColorizeName
					local temp_ref, raceName = {}, nil
					local usecolors = app.Settings:GetTooltipSetting("UseMoreColors");
					for i,raceID in ipairs(r) do
						temp_ref.raceID = raceID
						raceName = app.GetRaceName(raceID);
						races_tbl[#races_tbl + 1] = usecolors and app.TryColorizeName(temp_ref, raceName) or raceName
					end
					local str = app.TableConcat(races_tbl, nil, nil, ", ")
					if #races_tbl > 4 then
						tinsert(tooltipInfo, {
							left = t.text .. " " .. str,
							wrap = true,
						});
					else
						tinsert(tooltipInfo, {
							left = t.text,
							right = str
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("requireSkill", { text = TRADE_SKILLS, priority = 8000,
		Process = function(t, reference, tooltipInfo)
			local requireSkill, learnedAt = reference.skillID or reference.requireSkill, reference.learnedAt;
			if requireSkill then
				local professionName = ConversionMethods.professionName(requireSkill, reference);
				if learnedAt then professionName = professionName .. " (" .. learnedAt .. ")"; end
				tinsert(tooltipInfo, {
					left = L.REQUIRES,
					right = professionName,
				});
			elseif learnedAt then
				tinsert(tooltipInfo, {
					left = L.REQUIRES,
					right = tostring(learnedAt),
				});
			end
		end,
	}),

	-- We want these last, usually.
	CreateInformationType("b", { text = L.BINDING, priority = 9000, ShouldDisplayInExternalTooltips = false, }),
	CreateInformationType("iLvl", { text = L.ITEM_LEVEL, priority = 9000 }),
	CreateInformationType("__type", { text = L.OBJECT_TYPE, priority = 9001, ShouldDisplayInExternalTooltips = false, }),
	CreateInformationType("Cost", { text = L.COST, priority = 9002,
		Process = function(t, reference, tooltipInfo)
			if reference.cost then
				if type(reference.cost) == "table" then
					local _, name, icon
					for k,v in pairs(reference.cost) do
						_ = v[1];
						if _ == "g" then
							tooltipInfo[#tooltipInfo + 1] = {
								left = (k == 1 and t.text),
								right = GetMoneyString(v[2]),
							};
						else
							if _ == "i" then
								local item = CostItemCache[v[2]];
								name = item.text;
								icon = item.icon;
							elseif _ == "c" then
								local currency = CostCurrencyCache[v[2]];
								name = currency.text;
								icon = currency.icon;
							end
							if not name then
								reference.working = true;
								name = RETRIEVING_DATA;
							end
							name = (icon and ("|T" .. icon .. ":0|t") or "") .. name;
							_ = (v[3] or 1);
							if _ > 0 then
								name = _ .. "x  " .. name;
							end
							tooltipInfo[#tooltipInfo + 1] = {
								left = (k == 1 and t.text),
								right = name,
							};
						end
					end
				else
					tooltipInfo[#tooltipInfo + 1] = {
						left = t.text,
						right = GetMoneyString(reference.cost),
					};
				end
			end
		end,
	});

	-- Summary Information Types
	CreateInformationType("Repeatables", { text = L.REPEATABLES_LABEL, priority = 10999, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			if reference.isWorldQuest then tinsert(tooltipInfo, { left = L.DURING_WQ_ONLY }); end
			if reference.isDaily then tinsert(tooltipInfo, { left = L.COMPLETED_DAILY });
			elseif reference.isWeekly then tinsert(tooltipInfo, { left = L.COMPLETED_WEEKLY });
			elseif reference.isMonthly then tinsert(tooltipInfo, { left = L.COMPLETED_MONTHLY });
			elseif reference.isYearly then tinsert(tooltipInfo, { left = L.COMPLETED_YEARLY });
			elseif reference.repeatable then tinsert(tooltipInfo, { left = L.COMPLETED_MULTIPLE }); end
		end,
	}),
	CreateInformationType("CompletedBy", { text = L.COMPLETED_BY:format(""), priority = 11000, HideCheckBox = true, Process = ProcessForCompletedBy });
	CreateInformationType("KnownBy", { text = L.KNOWN_BY:format(""), priority = 11000, HideCheckBox = true, Process = ProcessForKnownBy });
	CreateInformationType("UsefulFor", { text = L.USEFUL_FOR:format(""), priority = 11000, HideCheckBox = true, Process = ProcessForUsefulFor });
	CreateInformationType("extraInfo", { text = "extraInfo", priority = 2.51, HideCheckBox = true, ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local itemID = reference.itemID
			if itemID then
				-- an item used for a faction which is repeatable
				if reference.factionID and reference.repeatable then
					local faction = app.LookupFactionData(reference.factionID)
					tinsert(tooltipInfo, {
						left = L.ITEM_GIVES_REP .. faction.name.."'",
						wrap = true,
						color = app.Colors.TooltipDescription });
				end
				-- Holiday drop description
				if app.GameBuildVersion >= 100500 then	-- Dragonflight 10.0.5
					if itemID == 54537 or		-- Heart-Shaped Box [Love is in the Air]
						itemID == 117393 or		-- Keg-Shaped Treasure Chest [Brewfest]
						itemID == 117394 or		-- Satchel of Chilled Goods [Midsummer Fire Festival]
						-- itemID == 209024 or		-- Loot-Filled Pumpkin [Hallow's End] (Blizz is inconsistent, big mad.)
						itemID == 216874		-- Loot-Filled Basket [Noblegarden]
					then
						tinsert(tooltipInfo, 1, { left = L.HOLIDAY_DROP, wrap = true, color = app.Colors.TooltipDescription });
					end
				end
				-- TODO: maybe access 'SkipPurchases' directly via Module access to check
				-- all items/currencies which exclude filling in tooltips
				-- Mark of Honor
				if itemID == 137642 then
					if app.Settings:GetTooltipSetting("SummarizeThings") then
						tinsert(tooltipInfo, 1, { left = L.MARKS_OF_HONOR_DESC, color = app.Colors.SourceIgnored });
					end
				end
			end
			local currencyID = reference.currencyID
			if currencyID then
				-- Bronze [MoP Timerunning]
				if currencyID == 2778 then
					if app.Settings:GetTooltipSetting("SummarizeThings") then
						tinsert(tooltipInfo, 1, { left = L.MOP_REMIX_BRONZE_DESC, color = app.Colors.SourceIgnored });
					end
				end
			end

			-- Description for Unobtainable Things
			if reference.u and (not reference.crs or reference.itemID or reference.sourceID) then
				-- specifically-tagged NYI groups which are under 'Unsorted' should show a slightly different message
				if reference.u == app.PhaseConstants.NEVER_IMPLEMENTED and app.GetRelativeValue(reference, "_missing") then
					tinsert(tooltipInfo, { left = L.UNSORTED_DESC, wrap = true, color = app.Colors.ChatLinkError });
				else
					-- removed BoE seen with a non-generic BonusID, potentially a level-scaled drop made re-obtainable
					-- TODO: this is pretty out-dated, and should be revised for verbiage and qualification
					-- currently it shows on BoA items which come from removed sources
					-- if reference.u == app.PhaseConstants.REMOVED_FROM_GAME and not app.Modules.Filter.Filters.Bind(reference) and (reference.bonusID or 3524) ~= 3524 then
					-- 	tinsert(tooltipInfo, { left = L.RECENTLY_MADE_OBTAINABLE });
					-- end
				end
			end

			-- Limited availability
			if reference.isLimited then
				tinsert(tooltipInfo, 1, { left = L.LIMITED_QUANTITY, wrap = false, color = app.Colors.TooltipDescription });
			end
		end,
	}),
	CreateInformationType("sourceIgnored", { text = "sourceIgnored", priority = 11001, HideCheckBox = true, ForceActive = true, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			if reference.sourceIgnored then
				tinsert(tooltipInfo, { left = L.DOES_NOT_CONTRIBUTE_TO_PROGRESS, wrap = true });
			end
		end,
	}),

	CreateInformationType("SpecializationRequirements", {
		priority = 9003,
		text = L.SPEC_CHECKBOX,
		Process = app.GameBuildVersion >= 50000 and function(t, reference, tooltipInfo)
			local specs = reference.specs;
			if not specs then
				local itemID = reference.itemID
				if itemID then
					specs = app.GetFixedItemSpecInfo(itemID);
				else
					return;
				end
			end

			-- specs is already filtered/sorted to only current class
			if specs and #specs > 0 then
				tinsert(tooltipInfo, { right = app.GetSpecsString(specs, true, true) });
			elseif reference.sourceID then
				tinsert(tooltipInfo, { right = L.NOT_AVAILABLE_IN_PL });
			end
		end or function(t, reference, tooltipInfo)
			local specs = reference.specs;
			if specs and #specs > 0 then
				tinsert(tooltipInfo, { right = app.GetSpecsString(specs, true, true) });
			end
		end,
	}),

	-- We want this after most of the regular fields.
	CreateInformationType("OnTooltip", {
		priority = 10000,
		text = "OnTooltip",
		ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local OnTooltip = reference.OnTooltip;
			if OnTooltip then OnTooltip(reference, tooltipInfo); end
		end,
	}),
};
settings.InformationTypes = InformationTypes;

--[[
-- CreateInformationType stub for use in external calls
app.Settings.CreateInformationType("UniqueInformationTypeName", {
	text = "VisibleInformationTypeText", -- only used if HideCheck = false / using default Process
	priority = 9999,	-- default 100
	HideCheckBox = true,	-- false default
	ForceActive = true,	-- false default
	ShouldDisplayInExternalTooltips = false, -- true default
	IsStandaloneProperty = false, -- true default
	Process = function(t, reference, tooltipInfo)
	end,
})
]]

local ActiveInformationTypes, ActiveInformationTypesForExternalTooltips = {}, {};
local SortedInformationTypes, SortedInformationTypesByName, priorityA, priorityB = {}, {}, nil, nil;
local function SortInformationTypesByLocalizedName(a,b)
	return a.textLower < b.textLower;
end
local function SortInformationTypesByPriority(a,b)
	priorityA = a.priority;
	priorityB = b.priority;
	if priorityA == priorityB then
		return a.textLower < b.textLower;
	else
		return priorityA < priorityB;
	end
end
local function RefreshActiveInformationTypes()
	wipearray(ActiveInformationTypesForExternalTooltips);
	wipearray(ActiveInformationTypes);

	for _,informationType in ipairs(SortedInformationTypes) do
		if settings:GetTooltipSetting(informationType.informationTypeID) or informationType.ForceActive then
			if informationType.IsStandaloneProperty then
				ActiveInformationTypes[#ActiveInformationTypes + 1] = informationType;
				if informationType.ShouldDisplayInExternalTooltips then
					ActiveInformationTypesForExternalTooltips[#ActiveInformationTypesForExternalTooltips + 1] = informationType;
				end
			end
		end
	end

	-- Insert the Post Processor
	ActiveInformationTypesForExternalTooltips[#ActiveInformationTypesForExternalTooltips + 1] = PostProcessor;
	ActiveInformationTypes[#ActiveInformationTypes + 1] = PostProcessor;
end
-- other settings can control what information is displayed without themselves being an information type
app.AddEventHandler("OnSettingsRefreshed", RefreshActiveInformationTypes)
local function SortInformationTypes()
	wipearray(SortedInformationTypes);
	wipearray(SortedInformationTypesByName);
	for i,informationType in ipairs(InformationTypes) do
		SortedInformationTypes[#SortedInformationTypes + 1] = informationType;
		if not (informationType.ForceActive or informationType.HideCheckBox) then
			SortedInformationTypesByName[#SortedInformationTypesByName + 1] = informationType;
		end
	end
	table.sort(SortedInformationTypes, SortInformationTypesByPriority);
	table.sort(SortedInformationTypesByName, SortInformationTypesByLocalizedName);
end

app.ProcessInformationTypes = function(tooltipInfo, reference)
	for _,informationType in ipairs(ActiveInformationTypes) do
		informationType:Process(reference, tooltipInfo);
	end
end
app.ProcessInformationTypesForExternalTooltips = function(tooltipInfo, reference)
	-- app.PrintDebug("PITFET",#tooltipInfo,app.ActiveRowReference and true)
	-- local workingChanged
	for _,informationType in ipairs(app.ActiveRowReference and ActiveInformationTypes or ActiveInformationTypesForExternalTooltips) do
		informationType:Process(reference, tooltipInfo);
		-- if not workingChanged and reference.working then
		-- 	app.PrintDebug("PITFET.working.set",informationType.textLower)
		-- 	workingChanged = true
		-- end
	end
	-- app.PrintDebug("PITFET.Done",#tooltipInfo)
end

local function OnClickForInformationCheckBox(self)
	settings:SetTooltipSetting(self.informationTypeID, self:GetChecked())
	RefreshActiveInformationTypes()
	settings:Refresh()
end
local function OnRefreshForInformationCheckBox(self)
	self:SetChecked(settings:GetTooltipSetting(self.informationTypeID))
end
settings.RefreshActiveInformationTypes = function()
	SortInformationTypes()
	RefreshActiveInformationTypes();

	local last
	local totalTypes = #SortedInformationTypesByName;
	local perRow, offset, scale = 24, 250, 0.8;
	if totalTypes > 72 then
		scale = 0.75;
		perRow = 26;
	end
	local split1 = perRow
	local split2 = perRow * 2;
	local split3 = perRow * 3;
	for idNo,informationType in ipairs(SortedInformationTypesByName) do
		local filter = child:CreateCheckBox(informationType.text, OnRefreshForInformationCheckBox, OnClickForInformationCheckBox)
		filter.informationTypeID = informationType.informationTypeID;
		filter:SetScale(scale);
		-- Column 1
		if idNo == 1 then
			filter:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 0, 0)
		-- Column 2
		elseif idNo > split1 then
			filter:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", offset, 0)
			split1 = 999
		-- Column 3
		elseif idNo > split2 then
			filter:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", offset * 2, 0)
			split2 = 999
		-- Column 4
		elseif idNo > split3 then
			filter:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", offset * 3, 0)
			split3 = 999
		else
			filter:AlignBelow(last)
		end
		last = filter
	end
end

local function SetupInformationTypes()
	SortInformationTypes()
	RefreshActiveInformationTypes()
end
settings.CreateInformationType = function(key, t)
	local informationType = CreateInformationType(key, t);
	tinsert(InformationTypes, informationType);
	app.CallbackHandlers.DelayedCallback(SetupInformationTypes, 2)
	return informationType;
end

-- Debugging Information Types
settings.CreateInformationType("ExclusionFilters", {
	priority = 99999,
	text = "DEBUG: Exclusion Filters",
	HideCheckBox = not app.Debugging,
	Process = function(t, reference, tooltipInfo)
		local excludes = {}
		local Filter = app.Modules.Filter
		for filterName,filterFunc in pairs(Filter.Filters) do
			if not filterFunc(reference) then
				excludes[#excludes + 1] = Colorize(filterName, Filter.Get[filterName]() and app.Colors.ChatLinkError or app.Colors.RemovedWithPatch)
			else
				excludes[#excludes + 1] = Colorize(filterName, Filter.Get[filterName]() and app.Colors.Time or app.Colors.ChatLinkHQT)
			end
		end
		if #excludes > 0 then
			tinsert(tooltipInfo, {
				left = "Filter Checks",
			});
			tinsert(tooltipInfo, {
				left = app.TableConcat(excludes, nil, nil, ", "),
				wrap = true
			});
		end
	end
})
settings.CreateInformationType("ExclusionFiltersRow", {
	priority = 99999,
	text = "DEBUG: Exclusion Filters - Row",
	HideCheckBox = not app.Debugging,
	Process = function(t, reference, tooltipInfo)
		local ref = app.ActiveRowReference
		if not ref then return end

		local excludes = {}
		local Filter = app.Modules.Filter
		for filterName,filterFunc in pairs(Filter.Filters) do
			if not filterFunc(ref) then
				excludes[#excludes + 1] = Colorize(filterName, Filter.Get[filterName]() and app.Colors.ChatLinkError or app.Colors.RemovedWithPatch)
			else
				excludes[#excludes + 1] = Colorize(filterName, Filter.Get[filterName]() and app.Colors.Time or app.Colors.ChatLinkHQT)
			end
		end
		if #excludes > 0 then
			tinsert(tooltipInfo, {
				left = "Row Filter Checks",
			});
			tinsert(tooltipInfo, {
				left = app.TableConcat(excludes, nil, nil, ", "),
				wrap = true
			});
		end
	end
})
settings.CreateInformationType("LinkSourceID", {
	priority = 99999,
	text = "DEBUG: Link SourceID",
	HideCheckBox = not app.Debugging,
	Process = function(t, data, tooltipInfo)
		local link, source = data.link or data.silentLink or data.rawlink, data.sourceID
		local rowSource = app.ActiveRowReference and app.ActiveRowReference.sourceID
		if not link then return; end
		local itemName = GetItemInfo(link)
		-- If it doesn't, the source ID will need to be harvested.
		local sourceID, success = app.GetSourceID(link);
		-- app.PrintDebug("SourceIDs",data.modItemID,rowSource,source,sourceID,success,link)
		if sourceID and sourceID > 0 then
			-- only save the source if it is different than what we already have, or being forced
			if not source or source < 1 or source ~= sourceID then
				-- app.print("SourceID Update",link,data.modItemID,source,"=>",sourceID);
				-- print(GetItemInfo(text))
				app.SaveHarvestSource(data);
			end
		end
		local matchingSourceIDs = true
		if rowSource and source and sourceID then
			if rowSource ~= source or source ~= sourceID or rowSource ~= sourceID then
				matchingSourceIDs = false
			end
		end
		tinsert(tooltipInfo, {
			left = Colorize("Link Source", success and app.Colors.ChatLinkHQT or app.Colors.ChatLinkError).." / "
				..Colorize("Item Info", itemName and app.Colors.ChatLinkHQT or app.Colors.ChatLinkError),
			right = Colorize("RowSource:"..(rowSource or "?").." / Sourced:"..(source or "?").." / Checked:"..(sourceID or "?"),
				matchingSourceIDs and app.Colors.ChatLinkHQT or app.Colors.ChatLinkError)
		});
	end
})
settings.CreateInformationType("modItemID", {
	priority = 99999,
	text = "DEBUG: modItemID",
	HideCheckBox = not app.Debugging,
})
settings.CreateInformationType("hash", {
	priority = 99999,
	text = "DEBUG: hash",
	HideCheckBox = not app.Debugging,
})
settings.CreateInformationType("bonuses", {
	priority = 99999,
	text = "DEBUG: Item Bonuses",
	HideCheckBox = not app.Debugging,
	Process = function(t, data, tooltipInfo)
		local bonuses = data.bonuses
		if not bonuses or #bonuses < 1 then return end
		tinsert(tooltipInfo, {
			left = "Item Bonuses",
			right = app.TableConcat(bonuses, nil, nil, " | ")
		});
	end
})
settings.CreateInformationType("rawfields", {
	priority = 99999,
	text = "DEBUG: Raw Fields",
	HideCheckBox = not app.Debugging,
	Process = function(t, data, tooltipInfo)
			tinsert(tooltipInfo, {
				left = "---------- Tooltip Data ----------",
			});
		tinsert(tooltipInfo, {
			left = "Self:",
			right = tostring(data)
		});
		local link
		for k, v in pairs(data) do
			link = app:SearchLink(v)
			tinsert(tooltipInfo, {
				left = tostring(k),
				right = link and (link.." "..tostring(v)) or tostring(v)
			});
		end
	end
})
settings.CreateInformationType("rawfields-row", {
	priority = 99999,
	text = "DEBUG: Raw Row Fields",
	HideCheckBox = not app.Debugging,
	Process = function(t, data, tooltipInfo)
		if app.ActiveRowReference then
			tinsert(tooltipInfo, {
				left = "---------- Row Data ----------",
			});
			tinsert(tooltipInfo, {
				left = "Row:",
				right = tostring(app.ActiveRowReference)
			});
			local link
			for k, v in pairs(app.ActiveRowReference) do
				link = app:SearchLink(v)
				tinsert(tooltipInfo, {
					left = tostring(k),
					right = link and (link.." "..tostring(v)) or tostring(v)
				});
			end
		end
	end
})
