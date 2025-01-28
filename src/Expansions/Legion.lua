-- App locals
local appName,app = ...;

-- Check to see if Artifact APIs are available for Legion
local C_ArtifactUI = C_ArtifactUI;
if not C_ArtifactUI then
	-- Artifacts are not supported by this version of the game client.
	app.GetArtifactModItemID = app.EmptyFunction
	app.CreateArtifact = app.CreateUnimplementedClass("Artifact", "artifactID");
	return
end

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;

local CurrentArtifactRelicItemLevels = {}
local pairs, select, math_floor,tinsert,tremove
	= pairs, select, math.floor,tinsert,tremove
local L, ColorizeRGB, contains = app.L, app.Modules.Color.ColorizeRGB, app.contains
local GetRelativeField, GetRelativeValue = app.GetRelativeField, app.GetRelativeValue;
local GetDetailedItemLevelInfo, IsArtifactRelicItem = GetDetailedItemLevelInfo, IsArtifactRelicItem;
local C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance = C_TransmogCollection and C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance;

local function GetArtifactModItemID(itemID, artifactID, isOffHand)
	return itemID + (isOffHand and 0.0001 or 0) + (artifactID / 1000)
end
app.GetArtifactModItemID = GetArtifactModItemID

local KEY, CACHE, SETTING = "artifactID", "Artifacts", "Transmog"
local CLASSNAME = "Artifact"
-- Artifact Class
app.CreateArtifact = app.CreateClass(CLASSNAME, KEY, {
	artifactinfo = function(t)
		--[[
		local setID, appearanceID, appearanceName, displayIndex, appearanceUnlocked, unlockConditionText,
			uiCameraID, altHandUICameraID, swatchR, swatchG, swatchB,
			modelAlpha, modelDesaturation, suppressGlobalAnim = C_ArtifactUI.GetAppearanceInfoByID(t[KEY]);
		]]--
		local info = { C_ArtifactUI.GetAppearanceInfoByID(t[KEY]) };
		t.artifactinfo = info;
		return info;
	end,
	f = function(t) return 11; end,
	RefreshCollectionOnly = true,
	collectible = function(t) return app.Settings.Collectibles[SETTING]; end,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY], SETTING)
	end,
	name = function(t)
		local id = t.parent;
		id = id and id.headerID;
		-- Artifact listing in the Main item sets category just show 'Variant #' but elsewhere show the Item's name
		-- TODO: these will likely change to dynamic headers at some point, and need to check against HEADERS constants
		if id and -5205 <= id and id <= -5200 then
			return t.variantText;
		end
		return t.appearanceText;
	end,
	title = function(t)
		return t.variantText;
	end,
	variantText = function(t)
		local info = t.artifactinfo
		if not info[4] then return UNKNOWN end
		local text
		if info[9] > 0 and info[10] > 0 and info[11] > 0 then
			text = ColorizeRGB("Variant " .. info[4], info[9], info[10], info[11]);
		else
			text = ColorizeRGB("Variant " .. info[4], 1, 1, 1); -- Change from black to white, so it's readable
		end
		t.variantText = text;
		return text;
	end,
	appearanceText = function(t)
		local info = t.artifactinfo
		local text = "|cffe6cc80" .. (info[3] or UNKNOWN) .. "|r"
		t.appearanceText = text
		return text
	end,
	description = function(t)
		return t.artifactinfo[6] or L.ARTIFACT_INTRO_REWARD;
	end,
	atlas = function(t)
		return "Forge-ColorSwatchBorder";
	end,
	["atlas-background"] = function(t)
		return "Forge-ColorSwatchBackground";
	end,
	["atlas-border"] = function(t)
		return "Forge-ColorSwatch";
	end,
	["atlas-color"] = function(t)
		local info = t.artifactinfo
		return { info[9], info[10], info[11], 1.0 };
	end,
	model = function(t)
		return GetRelativeValue(t.parent, "model");
	end,
	modelScale = function(t)
		return GetRelativeValue(t.parent, "modelScale") or 0.95;
	end,
	modelRotation = function(t)
		return GetRelativeValue(t.parent, "modelRotation") or 45;
	end,
	silentLink = function(t)
		local itemID = t.itemID;
		if itemID then
			-- 1 -> Off-Hand Appearance
			-- 2 -> Main-Hand Appearance
			-- return select(2, GetItemInfo(("item:%d::::::::%d:::11:::8:%d:"):format(itemID, app.Level, t.artifactID)));
			local link = ("item:%d::::::::%d:::%s::1:8:%d:"):format(math_floor(itemID), app.Level, t.isOffHand and "" or "9", t.artifactID);
			-- app.PrintDebug("Artifact link",t.artifactID,itemID,link);
			local link = select(2, GetItemInfo(link));
			if not link then return end
			t.silentLink = link;
			return link;
		-- else app.PrintDebug("Artifact with no ItemID?",t.artifactID)
		end
	end,
	modItemID = function(t)
		-- Artifacts will use a fake modItemID by way of the ArtifactID and IsOffhand
		local modItemID = GetArtifactModItemID(t.itemID, t.artifactID, t.isOffHand)
		-- app.PrintDebug("artifact.modItemID",modItemID,t.itemID,t.artifactID,t.isOffHand)
		t.modItemID = modItemID;
		return modItemID;
	end,
	-- probably never used ever, but just in case an artifact somehow misses it's appearance...
	sourceID = function(t)
		local sourceID = t.silentLink;
		if sourceID then
			sourceID = app.GetSourceID(sourceID);
			-- app.PrintDebug("Artifact Source",sourceID,t.silentLink)
			if sourceID and sourceID > 0 then
				t.sourceID = sourceID;
				app.SaveHarvestSource(t)
				if app.IsAccountCached("Sources", sourceID) ~= 1 and C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance(sourceID) then
					-- print("Saved Known Source",sourceID)
					app.SetAccountCached("Sources", sourceID, 1)
				end
				return sourceID;
			end
		end
	end,
});
app.AddEventHandler("OnRefreshCollections", function()
	local object
	local saved, none = {}, {}
	for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
		object = app.SearchForObject(KEY, id, "field")
		-- This artifact is listed for the current class
		if not GetRelativeField(object, "nmc", true) then
			if object.artifactinfo[5] then
				saved[id] = true
			else
				none[id] = true
			end
		end
	end
	-- Character Cache
	app.SetBatchCached(CACHE, saved, 1)
	app.SetBatchCached(CACHE, none)
	-- Account Cache (removals handled by Sync)
	app.SetBatchAccountCached(CACHE, saved, 1)
end)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end);
app.AddSimpleCollectibleSwap(CLASSNAME, SETTING)

-- External Functionality
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("ArtifactRelicCompletion", {
		priority = 10000,
		text = L.ARTIFACT_RELIC_COMPLETION,
		Process = function(t, reference, tooltipInfo)
			local itemID = reference.itemID
			if not itemID or not IsArtifactRelicItem(itemID) then return end
			-- If the item is a relic, then let's compare against equipped relics.
			if CurrentArtifactRelicItemLevels then
				local rawlink = reference.rawlink or reference.link
				local progress, total = 0, 0;
				local relicItemLevel = select(1, GetDetailedItemLevelInfo(rawlink)) or 0;
				local relicType = select(3, C_ArtifactUI.GetRelicInfoByItemID(itemID));
				for relicID,artifactData in pairs(CurrentArtifactRelicItemLevels) do
					local infoString;
					for relicSlotIndex,relicData in pairs(artifactData) do
						if relicData.relicType == relicType then
							if infoString then
								infoString = infoString .. " | " .. relicData.iLvl;
							else
								infoString = relicData.iLvl;
							end
							total = total + 1;
							if relicData.iLvl >= relicItemLevel then
								progress = progress + 1;
								infoString = infoString .. " " .. app.GetCompletionIcon(1);
							else
								infoString = infoString .. " " .. app.GetCompletionIcon();
							end
						end
					end
					if infoString then
						local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(relicID);
						tinsert(tooltipInfo, 1, {
							left = link and ("   " .. ((icon and ("|T" .. icon .. ":0|t ") or "") .. link)) or RETRIEVING_DATA,
							right = L.ITEM_LEVEL .. " " .. infoString,
						});
					end
				end
				if total > 0 then
					tinsert(tooltipInfo, 1, { left = L.ARTIFACT_RELIC_COMPLETION, right = L[progress == total and "TRADEABLE" or "NOT_TRADEABLE"] });
				end
			else
				tinsert(tooltipInfo, 1, { left = L.ARTIFACT_RELIC_CACHE, wrap = true, color = app.Colors.TooltipDescription });
			end
		end
	})
end)

-- Resolve Functionality
local RelicTypeNameByKey = setmetatable({}, {
	__index = function(t, key)
		--[[
		RELIC_SLOT_TYPE_ARCANE = "Arcane";
		RELIC_SLOT_TYPE_BLOOD = "Blood";
		RELIC_SLOT_TYPE_FEL = "Fel";
		RELIC_SLOT_TYPE_FIRE = "Fire";
		RELIC_SLOT_TYPE_FROST = "Frost";
		RELIC_SLOT_TYPE_HOLY = "Holy";
		RELIC_SLOT_TYPE_IRON = "Iron";
		RELIC_SLOT_TYPE_LIFE = "Life";
		RELIC_SLOT_TYPE_SHADOW = "Shadow";
		RELIC_SLOT_TYPE_WATER = "Water";
		RELIC_SLOT_TYPE_WIND = "Storm";
		]]--
		local name = _G["RELIC_SLOT_TYPE_" .. key:upper()];
		t[key] = name;
		return name;
	end
});

-- Symlink Resolve Functions
-- Instruction to include only search results where an item is of a specific relic type
local function ResolveRelicType(finalized, searchResults, o, cmd, ...)
	local vals = select("#", ...);
	if vals < 1 then
		app.print("'",cmd,"' had empty value set")
		return;
	end

	local types = {...};
	-- replace the short constant values with in-game localized values
	for i=#types,1,-1 do
		types[i] = RelicTypeNameByKey[types[i]];
	end
	local result, itemID;
	for k=#searchResults,1,-1 do
		result = searchResults[k];
		itemID = result.itemID;
		if itemID and IsArtifactRelicItem(itemID) and contains(types, select(3, C_ArtifactUI.GetRelicInfoByItemID(itemID))) then
			-- We're good.
		else
			tremove(searchResults, k);
		end
	end
end;

-- Subroutines
local function legion_relinquished_base(ResolveFunctions)
	local select, pop, where, is, finalize, merge, extract = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.where, ResolveFunctions.is, ResolveFunctions.finalize, ResolveFunctions.merge, ResolveFunctions.extract;
	return function(finalized, searchResults, o)
		-- Legion Legendaries
		--[[
		{"select", "npcID", 106655},	-- Arcanomancer Vridiel
		{"pop"},	-- Remove Arcanomancer Vridiel and push his children into the processing queue.
		{ "exclude", "itemID", 154879, 157796 },	-- Exclude the Purified Titan Essence and the Awoken Titan Essence
		{"pop"},	-- Remove the Legendary Tokens and push the children into the processing queue.
		{"finalize"},	-- Push the items to the finalized list.
		]]--

		-- PVP Gear
		--[[
		-- Demonic Combatant & Gladiator Season 7 Gear
		{"select", "headerID", -688},	-- Demonic Gladiator Season 7
		{"pop"},	-- Remove Season Header and push the children into the processing queue.
		{"pop"},	-- Remove Faction Header and push the children into the processing queue.
		{"contains", "headerID", app.HeaderConstants.PVP_COMBATANT, app.HeaderConstants.PVP_GLADIATOR},	-- Select only the Aspirant / Combatant Gear & Gladiator Headers.
		{"pop"},	-- Remove Aspirant / Combatant Gear Header and push the children into the processing queue.
		{"pop"},	-- Remove Class / Armor Header and push the children into the processing queue.
		{"finalize"},	-- Push the items to the finalized list.
		]]--

		-- Unsullied Gear
		select(finalized, searchResults, o, "select", "itemID",
			152740,	-- Unsullied Cloak
			152738,	-- Unsullied Cloth Cap
			152734,	-- Unsullied Cloth Mantle
			153135,	-- Unsullied Cloth Robes
			152742,	-- Unsullied Cloth Cuffs
			153141,	-- Unsullied Cloth Mitts
			153156,	-- Unsullied Cloth Sash
			153154,	-- Unsullied Cloth Leggings
			153144,	-- Unsullied Cloth Slippers
			153139,	-- Unsullied Leather Headgear
			153145,	-- Unsullied Leather Spaulders
			153151,	-- Unsullied Leather Tunic
			153142,	-- Unsullied Leather Armbands
			152739,	-- Unsullied Leather Grips
			153148,	-- Unsullied Leather Belt
			152737,	-- Unsullied Leather Trousers
			153136,	-- Unsullied Leather Treads
			153147,	-- Unsullied Mail Coif
			153137,	-- Unsullied Mail Spaulders
			152741,	-- Unsullied Mail Chestguard
			153158,	-- Unsullied Mail Bracers
			153149,	-- Unsullied Mail Gloves
			152744,	-- Unsullied Mail Girdle
			153138,	-- Unsullied Mail Legguards
			153152,	-- Unsullied Mail Boots
			153155,	-- Unsullied Plate Helmet
			153153,	-- Unsullied Plate Pauldrons
			153143,	-- Unsullied Plate Breasplate
			153150,	-- Unsullied Plate Vambraces
			153157,	-- Unsullied Plate Gauntlets
			153140,	-- Unsullied Plate Waistplate
			153146,	-- Unsullied Plate Greaves
			152743,	-- Unsullied Plate Sabatons
			152736,	-- Unsullied Necklace
			152735,	-- Unsullied Ring
			152733,	-- Unsullied Trinket
			152799	-- Unsullied Relic
		);
		pop(finalized, searchResults);	-- Remove the Unsullied Tokens and push the children into the processing queue.
		finalize(finalized, searchResults);	-- Push the Unsullied items to the finalized list.

		-- World Bosses
		select(finalized, searchResults, o, "select", "encounterID",
			1790,	-- Ana-Mouz
			1956,	-- Apocron
			1883,	-- Brutallus
			1774,	-- Calamir
			1789,	-- Drugon the Frostblood
			1795,	-- Flotsam
			1770,	-- Humongris
			1769,	-- Levantus
			1884,	-- Malificus
			1783,	-- Na'zak the Fiend
			1749,	-- Nithogg
			1763,	-- Shar'thos
			1885,	-- Si'vash
			1756,	-- The Soultakers
			1796	-- Withered J'im
		);
		finalize(finalized, searchResults);	-- Push the unprocessed Bosses to the finalized list.

		-- Raids
		select(finalized, searchResults, o, "select", "instanceID",
			768,	-- Emerald Nightmare
			861,	-- Trial of Valor
			786,	-- The Nighthold
			875		-- Tomb of Sargeras
		);

		-- Process the Raids, Normal Mode Only Loot for bosses
		pop(finalized, searchResults);	-- Discard the Instance Headers and acquire all of their children.
		where(finalized, searchResults, o, "where", "difficultyID", 14);	-- Select only the Normal Difficulty Headers.
		pop(finalized, searchResults);	-- Discard the Difficulty Headers and acquire all of their children.
		is(finalized, searchResults, o, "is", "encounterID");	-- Only use the encounters themselves, no zone drops.
		finalize(finalized, searchResults);	-- Push the unprocessed Bosses to the finalized list.

		-- Dungeons
		select(finalized, searchResults, o, "select", "instanceID",
			777,	-- Assault on Violet Hold
			740,	-- Blackrook Hold
			900,	-- Cathedral of Eternal Night
			800,	-- Court of Stars
			762,	-- Darkheart Thicket
			716,	-- Eye of Azshara
			721,	-- Halls of Valor
			727,	-- Maw of Souls
			767,	-- Neltharion's Lair
			860,	-- Return to Karazhan
			945,	-- Seat of the Triumvirate
			749,	-- The Arcway
			707		-- Vault of the Wardens
		);

		-- Process the Dungeons, Mythic Mode Only Loot for bosses
		pop(finalized, searchResults);	-- Discard the Instance Headers and acquire all of their children.
		where(finalized, searchResults, o, "where", "difficultyID", 23);	-- Select only the Mythic Difficulty Headers.
		pop(finalized, searchResults);	-- Discard the Difficulty Headers and acquire all of their children.
		finalize(finalized, searchResults);	-- Push the unprocessed Bosses to the finalized list.

		-- World Quest Rewards
		select(finalized, searchResults, o, "select", "mapID",
			905,	-- Argus
			630,	-- Azsuna
			646,	-- Broken Shore
			650,	-- Highmountain
			634,	-- Stormheim
			680,	-- Suramar
			641		-- Val'sharah
		);

		-- Process the World Quest Rewards
		pop(finalized, searchResults);	-- Discard the Map Headers and acquire all of their children.
		where(finalized, searchResults, o, "where", "headerID", app.HeaderConstants.WORLD_QUESTS);	-- Select only the World Quest Headers
		pop(finalized, searchResults);	-- Discard the World Quest Headers and acquire all of their children.
		is(finalized, searchResults, o, "is", "headerID");	-- Only use the item sets themselves, no zone drops.
		finalize(finalized, searchResults);	-- Push the unprocessed Headers to the finalized list.

		merge(finalized, searchResults);	-- Merge the finalized Groups back into the processing queue.
		extract(finalized, searchResults, o, "extract", "itemID");	-- Extract all Items
	end
end
local function legion_relinquished(ResolveFunctions)
	local sub, merge, invtype, contains, modID = ResolveFunctions.sub, ResolveFunctions.merge, ResolveFunctions.invtype, ResolveFunctions.contains, ResolveFunctions.modID;
	return function(finalized, searchResults, o, cmd, invtypes, ...)
		sub(finalized, searchResults, o, "sub", "legion_relinquished_base");	-- collect the base set of possible relinquished items
		merge(finalized, searchResults);	-- merge them back to be processed
		invtype(finalized, searchResults, o, "invtype", unpack(invtypes));	-- invtypes is a table of inventory slot strings to filter
		if select("#", ...) > 0 then
			contains(finalized, searchResults, o, "contains", "f", ...);	-- extra params are a set of allowed filterID (f) values
		end
		modID(finalized, searchResults, o, "modID", 43);	-- apply the relinquished modID
	end
end
local function legion_relinquished_relic(ResolveFunctions)
	local sub, merge, modID = ResolveFunctions.sub, ResolveFunctions.merge, ResolveFunctions.modID;
	return function(finalized, searchResults, o, cmd, ...)
		sub(finalized, searchResults, o, "sub", "legion_relinquished_base");	-- collect the base set of possible relinquished items
		merge(finalized, searchResults);	-- merge them back to be processed
		if select("#", ...) > 0 then
			ResolveRelicType(finalized, searchResults, o, "relictype", ...);	-- only specific relic type(s)
		end
		modID(finalized, searchResults, o, "modID", 43);	-- apply the relinquished modID
	end
end

-- Event Handling
app.AddEventRegistration("ARTIFACT_UPDATE", function(...)
	local itemID = C_ArtifactUI.GetArtifactInfo();
	if itemID then
		local count = C_ArtifactUI.GetNumRelicSlots();
		if count and count > 0 then
			local myArtifactData = CurrentArtifactRelicItemLevels[itemID];
			if not myArtifactData then
				myArtifactData = {};
				CurrentArtifactRelicItemLevels[itemID] = myArtifactData;
			end
			for relicSlotIndex=1,count,1 do
				local name, relicItemID, relicType, relicLink = C_ArtifactUI.GetRelicInfo(relicSlotIndex);
				myArtifactData[relicSlotIndex] = {
					relicType = relicType,
					iLvl = relicLink and select(1, GetDetailedItemLevelInfo(relicLink)) or 0,
				};
			end
		end
	end
end)
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkResolveFunction("relictype", ResolveRelicType);
	app.RegisterSymlinkSubroutine("legion_relinquished_base", legion_relinquished_base);
	app.RegisterSymlinkSubroutine("legion_relinquished", legion_relinquished);
	app.RegisterSymlinkSubroutine("legion_relinquished_relic", legion_relinquished_relic);
end);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	local characterData = currentCharacter.ArtifactRelicItemLevels;
	if characterData then
		CurrentArtifactRelicItemLevels = characterData;
	else
		currentCharacter.ArtifactRelicItemLevels = CurrentArtifactRelicItemLevels;
	end
end);