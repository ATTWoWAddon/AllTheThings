local _, app = ...;
local L, settings = app.L.SETTINGS_MENU, app.Settings;

-- Global locals
local pairs, ipairs, tonumber, math_floor, select, tostring, tinsert, RETRIEVING_DATA
	= pairs, ipairs, tonumber, math.floor, select, tostring, tinsert, RETRIEVING_DATA;
local Colorize = app.Modules.Color.Colorize;
local GetNumberWithZeros = app.Modules.Color.GetNumberWithZeros;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local GetRelativeValue = app.GetRelativeValue;
local GetRealmName = GetRealmName

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local IsQuestFlaggedCompletedOnAccount = app.WOWAPI.IsQuestFlaggedCompletedOnAccount;

-- Settings: Interface Page
local child = settings:CreateOptionsPage("Information", L.INTERFACE_PAGE)

-- Conversion Methods for specific formats for a given Information Type.
local function GetCoordString(x, y)
	return GetNumberWithZeros(app.round(x, 1), 1) .. ", " .. GetNumberWithZeros(app.round(y, 1), 1);
end
local function GetPatchString(patch)
	patch = tonumber(patch)
	return patch and (math_floor(patch / 10000) .. "." .. (math_floor(patch / 100) % 100) .. "." .. (patch % 10))
end
local DefaultConversionMethod = function(value)
	return value;
end
-- Handles checking the 'text' and assigning 'reference.working' if the text is in a 'retrieving' state
local function IsRetrievingConversionMethod(text, reference)
	if IsRetrieving(text) then
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
		if app.Settings:GetTooltipSetting("spellName") then
			return tostring(spellID) .. " (" .. (app.GetSpellName(spellID, reference.rank) or "??") .. ")";
		else
			return tostring(spellID);
		end
	end,
	creatureName = function(creatureID, reference)
		if app.Settings:GetTooltipSetting("creatureID") then
			return IsRetrievingConversionMethod(app.NPCNameFromID[creatureID], reference) .. " (" .. creatureID .. ")";
		else
			return IsRetrievingConversionMethod(app.NPCNameFromID[creatureID], reference)
		end
	end,
	itemName = function(itemID, reference)
		local name = select(2, GetItemInfo(itemID));
		if IsRetrieving(name) then
			reference.working = true
			name = "Item: " .. RETRIEVING_DATA;
		end
		if app.Settings:GetTooltipSetting("itemID") then
			return name .. " (" .. itemID .. ")";
		else
			return name;
		end
	end,
	itemNameAndIcon = function(itemID, reference)
		local _,name,_,_,_,_,_,_,_,icon = GetItemInfo(itemID);
		if IsRetrieving(name) then
			reference.working = true
			name = "Item: " .. RETRIEVING_DATA;
		end
		if icon then
			name = "|T" .. icon .. ":0|t" .. name;
		end
		if app.Settings:GetTooltipSetting("itemID") then
			return name .. " (" .. itemID .. ")";
		else
			return name;
		end
	end,
	objectName = function(objectID, reference)
		if app.Settings:GetTooltipSetting("objectID") then
			return IsRetrievingConversionMethod(app.ObjectNames[objectID], reference) .. " (" .. objectID .. ")";
		else
			return IsRetrievingConversionMethod(app.ObjectNames[objectID], reference)
		end
	end,
	professionName = function(spellID, reference)
		return IsRetrievingConversionMethod(GetSpellName(app.SkillIDToSpellID[spellID] or 0), reference)
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
		return ConversionMethods.spellID(providerID, reference);
	end
	return UNKNOWN;
end;
settings.InformationTypeConversionMethods = ConversionMethods;

-- Class Template for creating an Information Type instance.
local function GetValueForInformationType(t, reference)
	return reference[t.informationTypeID];
end
local function GetRecursiveValueForInformationType(t, reference)
	local informationTypeID = t.informationTypeID;
	return reference[informationTypeID] or GetRelativeValue(reference, informationTypeID);
end
local function ProcessInformationType(t, reference, tooltipInfo)
	local val = t.GetValue(t, reference);
	if val then
		local text = ConversionMethods[t.informationTypeID](val, reference)
		if text then
			tinsert(tooltipInfo, { left = t.text, right = text});
		end
	end
end
local CreateInformationType = app.CreateClass("InformationType", "informationTypeID", {
	textLower = function(t)
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
local knownBy = {};
local function BuildKnownByInfoForKind(tooltipInfo, kind)
	if #knownBy > 0 and kind then
		app.Sort(knownBy, app.SortDefaults.name);
		local desc = "";
		for i,character in ipairs(knownBy) do
			if i > 1 then desc = desc .. ", "; end
			desc = desc .. (character.text or "???");
		end
		tinsert(tooltipInfo, { left = kind:format(desc:gsub("-" .. GetRealmName(), "")), wrap = true, color = app.Colors.TooltipDescription });
		wipe(knownBy);
	end
end
local function ProcessForCompletedBy(t, reference, tooltipInfo)
	-- If the item is a recipe, then show which characters know this recipe.
	if reference.objectiveID then return end

	-- Completed By for Quests
	local id = reference.questID;
	if id then
		-- Account-Wide Quests
		if app.AccountWideQuestsDB[id] then
			if IsQuestFlaggedCompletedOnAccount(id) then
				tinsert(knownBy, {text=ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE or "Account-Wide"});
			end
		else
			for _,character in pairs(ATTCharacterData) do
				if character.Quests and character.Quests[id] then
					tinsert(knownBy, character);
				end
			end
			if #knownBy == 0 and IsQuestFlaggedCompletedOnAccount(id) then
				tinsert(knownBy, {text=ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE or "Account-Wide"});
			end
		end
		BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
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
	end

	-- Pre-MOP Known By types
	if app.GameBuildVersion < 50000 then
		id = reference.achievementID;
		if id then
			-- Prior to Cata, Achievements were not tracked account wide
			for guid,character in pairs(ATTCharacterData) do
				if character.Achievements and character.Achievements[id] then
					tinsert(knownBy, character);
				end
			end
			BuildKnownByInfoForKind(tooltipInfo, L.COMPLETED_BY);
		end

		local itemID = reference.itemID;
		if itemID then
			local knownByGUID = {};

			-- Prior to Cata, transmog was not tracked account wide
			id = reference.sourceID;
			for guid,character in pairs(ATTCharacterData) do
				if character.Transmog and character.Transmog[id] then
					if ATTAccountWideData.Sources and ATTAccountWideData.Sources[id] then
						character.Transmog[id] = nil;
					else
						knownByGUID[guid] = character;
					end
				end
			end
			if app.GameBuildVersion < 30000 then
				-- Prior to Wrath, mounts, pets, and toys were not tracked account wide
				id = reference.spellID;
				if id and reference.filterID == 100 then	-- Mounts only!
					for guid,character in pairs(ATTCharacterData) do
						if character.Spells and character.Spells[id] then
							knownByGUID[guid] = character;
						end
					end
				end

				id = reference.speciesID;
				if id then
					for guid,character in pairs(ATTCharacterData) do
						if character.BattlePets and character.BattlePets[id] then
							knownByGUID[guid] = character;
						end
					end
				end

				if reference.toyID then
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
	if reference.illusionID then return; end
	if app.IsRetail then
		-- Classic can pre-emptively see 'fake' future achievements which are based on a spell
		if reference.achievementID then return end
	end

	-- This is to show which characters have this profession.
	local id = reference.spellID;
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
						left = ("  " .. (character and character.text or "???"):gsub("-" .. GetRealmName(), "")),
						right = data[2] .. " / " .. data[3],
					});
				end
				wipe(knownBy);
				return;
			end
		end

		-- If the item is a recipe, then show which characters know this recipe.
		if reference.filterID ~= 100 then
			for guid,character in pairs(ATTCharacterData) do
				if character.Spells and character.Spells[id] then
					tinsert(knownBy, character);
				end
			end
			BuildKnownByInfoForKind(tooltipInfo, L.KNOWN_BY);
		end
	end
end

-- The post processor uses a dynamic list to append additional entries as needed.
local AppendedInformationTextEntries = {};
local PostProcessor = CreateInformationType("__postprocessor", {
	priority = 99999999,
	Process = function(t, reference, tooltipInfo)
		if #AppendedInformationTextEntries > 0 then
			for i,entry in ipairs(AppendedInformationTextEntries) do
				tinsert(tooltipInfo, entry);
			end
			wipe(AppendedInformationTextEntries);
		end
	end,
});
local function AppendInformationTextEntry(entry)
	-- You should call this from within the Process function of an information text object.
	tinsert(AppendedInformationTextEntries, entry);
end
settings.AppendInformationTextEntry = AppendInformationTextEntry;

-- All of the Default Information Types.
local InformationTypes = {
	-- Only displayed in NPC Tooltips that are alive and exist in the world.
	CreateInformationType("Alive", { text = L.ALIVE, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Spawned", { text = L.SPAWNED, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Layer", { text = L.LAYER, priority = 1, IsStandaloneProperty = false }),

	-- Progress Fields (top most)
	CreateInformationType("Progress", { text = L.SOCIAL_PROGRESS, priority = 1, HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			local progressText = app.GetProgressTextForTooltip(reference);
			if progressText then
				tinsert(tooltipInfo, { progress = progressText });
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

	-- Quest Fields
	CreateInformationType("providers", { text = L.PROVIDERS, priority = 2.05, ShouldDisplayInExternalTooltips = false,
		limit = 25,
		Process = function(t, reference, tooltipInfo)
			local providers = t.GetValue(t, reference);
			if providers then
				local limit = t.limit
				for i,provider in ipairs(providers) do
					tinsert(tooltipInfo, {
						left = (i == 1 and "Provider(s)"),
						right = ConversionMethods.provider(provider, reference),
					});
					limit = limit - 1
					if limit <= 0 then
						tinsert(tooltipInfo, {
							right =  LFG_LIST_AND_MORE:format(#reference.providers - t.limit),
						});
						break
					end
				end
			end
		end,
	}),
	CreateInformationType("coords", { text = L.COORDINATES, priority = 2.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local coords = reference.coords;
			if not coords then
				coords = reference.coord;
				if not coords then return; end
				coords = { coords };
			end

			local coordCount = #coords;
			if coordCount < 1 then return; end

			local maxCoords = 10;
			local currentMapID, j = app.CurrentMapID, 0
			local othercoords
			for i,coord in ipairs(coords) do
				local mapID = coord[3] or currentMapID;
				if mapID ~= currentMapID then
					if not othercoords then othercoords = { coord }
					else othercoords[#othercoords + 1] = coord end
				else
					local x, y = coord[1], coord[2];
					tinsert(tooltipInfo, {
						left = j == 0 and t.text,
						right = GetCoordString(x, y),
						r = 1, g = 1, b = 1
					});
					j = j + 1;
					if j >= maxCoords then
						tinsert(tooltipInfo, {
							right = (L.AND_MORE):format(coordCount - maxCoords),
							r = 1, g = 1, b = 1
						});
						break;
					end
				end
			end
			-- include coords from other maps if any and not at the limit
			if othercoords and j < maxCoords then
				local str
				local showMapID = app.Settings:GetTooltipSetting("mapID");
				for i,coord in ipairs(othercoords) do
					local x, y = coord[1], coord[2];
					local mapID = coord[3] or currentMapID;
					str = app.GetMapName(mapID);
					if showMapID then
						str = str .. " (" .. mapID .. ")";
					end
					str = str .. ": ";
					tinsert(tooltipInfo, {
						left = j == 0 and t.text,
						right = str .. GetCoordString(x, y),
						r = 1, g = 1, b = 1
					});
					j = j + 1;
					if j >= maxCoords then
						tinsert(tooltipInfo, {
							right = (L.AND_MORE):format(coordCount - maxCoords),
							r = 1, g = 1, b = 1
						});
						break;
					end
				end
			end
		end,
	}),
	CreateInformationType("playerCoord", { text = L.PLAYER_COORDINATES, priority = 2.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local coord = reference.playerCoord;
			if coord then
				tinsert(tooltipInfo, {
					left = t.text,
					right = GetCoordString(coord[1], coord[2]),
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
			local description = reference.description
				or GetRelativeValue(reference, "sharedDescription")
				-- duplicated search results loose their parent references in order to prevent issues in filtering/tooltips
				-- so also check the active row reference for accuracy if the tooltip is in context of a row
				or GetRelativeValue(app.ActiveRowReference, "sharedDescription")
			if description then
				tinsert(tooltipInfo, {
					left = description,
					color = app.Colors.TooltipDescription,
					wrap = true,
				});
			end
		end,
	}),
	CreateInformationType("maps", { text = L.MAPS, priority = 2.6,
		Process = function(t, reference, tooltipInfo)
			local maps = reference.maps;
			if maps and #maps > 0 then
				local currentMapID = app.CurrentMapID;
				local mapNames,uniques,name = {},{},nil;
				local rootMapID = reference.mapID;
				if rootMapID then uniques[app.GetMapName(rootMapID) or rootMapID] = true; end
				for i,mapID in ipairs(maps) do
					if mapID ~= currentMapID then
						name = app.GetMapName(mapID);
						if name and not uniques[name] then
							uniques[name] = true;
							tinsert(mapNames, name);
						end
					end
				end
				if #mapNames > 0 then
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
				local formatter = L.WAS_ADDED_WITH_PATCH_CLASSIC_FORMAT;
				if awp > app.GameBuildVersion then
					-- Current build is before the awp.
					local rwp = reference.rwp;
					formatter = (rwp and rwp < awp and L.READDED_WITH_PATCH_CLASSIC_FORMAT) or L.ADDED_WITH_PATCH_CLASSIC_FORMAT;
				end
				tinsert(tooltipInfo, { left = Colorize(formatter:format(GetPatchString(awp)), app.Colors.AddedWithPatch)});
			end
		end,
	}),
	CreateInformationType("rwp", { text = L.REMOVED_WITH_PATCH, isRecursive = true, priority = 3,
		-- CRIEVE NOTE: Recursive is actually not true, some items get new sources later. The distinction for pre-Cata being non-recursive might be necessary, but since we're overriding the process function it should be fine this way.
		Process = app.IsRetail and ProcessInformationType or function(t, reference, tooltipInfo)
			local rwp = reference.rwp;	-- NOTE: For Retail, namely pre-Cata, this can't be recursive!
			if rwp then
				tinsert(tooltipInfo, { left = Colorize(L.REMOVED_WITH_PATCH_CLASSIC_FORMAT:format(GetPatchString(rwp)), app.Colors.RemovedWithPatch)});
			end
		end,
	}),
	CreateInformationType("filterID", { text = L.FILTER_ID, priority = 4,
		Process = function(t, reference, tooltipInfo)
			local f = reference.filterID or reference.f;
			if f then
				local filterForRWP = reference.filterForRWP;
				if filterForRWP then
					tinsert(tooltipInfo, {
						left = t.text,
						right = ConversionMethods.filterID(f, reference) .. " -> " .. ConversionMethods.filterID(filterForRWP, reference),
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

	CreateInformationType("questID", { text = L.QUEST_ID, priority = 8 }),
	CreateInformationType("qgs", { text = L.QUEST_GIVERS, priority = 8,
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
	CreateInformationType("criteriaID", { text = "Criteria ID" }),
	CreateInformationType("currencyID", { text = "Currency ID" }),
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
			local requireSkill, learnedAt = reference.requireSkill, reference.learnedAt;
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

	-- Summary Information Types
	CreateInformationType("Repeatables", { text = "Repeatables", priority = 10999, ShouldDisplayInExternalTooltips = false,
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
	CreateInformationType("extraInfo", { text = "extraInfo", priority = 2.51, HideCheckBox = true, ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local itemID = reference.itemID
			if itemID then
				-- an item used for a faction which is repeatable
				if reference.factionID and reference.repeatable then
					tinsert(tooltipInfo, {
						left = L.ITEM_GIVES_REP .. (app.WOWAPI.GetFactionName(reference.factionID) or ("Faction #" .. tostring(reference.factionID))) .. "'",
						wrap = true,
						color = app.Colors.TooltipDescription });
				end
				-- Holiday drop description
				if app.GameBuildVersion >= 100500 then	-- Dragonflight 10.0.5
					if itemID == 54537 or		-- Heart-Shaped Box [Love is in the Air]
						itemID == 117393 or		-- Keg-Shaped Treasure Chest [Brewfest]
						itemID == 117394 or		-- Satchel of Chilled Goods [Midsummer Fire Festival]
						--itemID == 209024 or		-- Loot-Filled Pumpkin [Hallow's End] (Blizz is inconsistent, big mad.)
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
					if reference.u == app.PhaseConstants.REMOVED_FROM_GAME and not app.IsBoP(reference) and (reference.bonusID or 3524) ~= 3524 then
						tinsert(tooltipInfo, { left = L.RECENTLY_MADE_OBTAINABLE });
					end
				end
			end

			-- Limited availability
			if reference.isLimited then
				tinsert(tooltipInfo, 1, { left = L.LIMITED_QUANTITY, wrap = false, color = app.Colors.TooltipDescription });
			end
		end,
	}),

	CreateInformationType("SpecializationRequirements", {
		priority = 9002,
		text = "SpecializationRequirements",
		Process = function(t, reference, tooltipInfo)
			local itemID = reference.itemID
			-- Currently excluded for Classic versions
			if not itemID or not app.IsRetail then return end
			local specs = app.GetFixedItemSpecInfo(itemID);
			-- specs is already filtered/sorted to only current class
			if specs and #specs > 0 then
				tinsert(tooltipInfo, { right = app.GetSpecsString(specs, true, true) });
			elseif reference.sourceID then
				tinsert(tooltipInfo, { right = L.NOT_AVAILABLE_IN_PL });
			end
		end,
	});

	-- We want this after most of the regular fields.
	CreateInformationType("OnTooltip", {
		priority = 10000,
		text = "OnTooltip",
		ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local OnTooltip = reference.OnTooltip;
			if OnTooltip then OnTooltip(reference, tooltipInfo); end
		end,
	});
};
settings.InformationTypes = InformationTypes;

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
	wipe(ActiveInformationTypesForExternalTooltips);
	wipe(ActiveInformationTypes);

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
	wipe(SortedInformationTypes);
	wipe(SortedInformationTypesByName);
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
	for _,informationType in ipairs(app.ActiveRowReference and ActiveInformationTypes or ActiveInformationTypesForExternalTooltips) do
		informationType:Process(reference, tooltipInfo);
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
	if totalTypes > 75 then
		offset = 225;
		scale = 0.7;
		perRow = 28;
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
settings.CreateInformationType("LinkSourceID", {
	priority = 99999,
	text = "DEBUG: Link SourceID",
	HideCheckBox = not app.Debugging,
	Process = function(t, data, tooltipInfo)
		local link, source = data.link or data.silentLink, data.sourceID;
		if not link then return; end
		local itemName = GetItemInfo(link)
		-- If it doesn't, the source ID will need to be harvested.
		local sourceID, success = app.GetSourceID(link);
		-- app.PrintDebug("SourceIDs",data.modItemID,source,sourceID,success,link)
		if sourceID and sourceID > 0 then
			-- only save the source if it is different than what we already have, or being forced
			if not source or source < 1 or source ~= sourceID then
				-- app.print("SourceID Update",link,data.modItemID,source,"=>",sourceID);
				-- print(GetItemInfo(text))
				app.SaveHarvestSource(data);
			end
		end
		tinsert(tooltipInfo, {
			left = Colorize("Link Source", success and app.Colors.ChatLinkHQT or app.Colors.ChatLinkError).." / "
				..Colorize("Item Info", itemName and app.Colors.ChatLinkHQT or app.Colors.ChatLinkError),
			right = "Sourced:"..(source or "?").." / Checked:"..(sourceID or "?")
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