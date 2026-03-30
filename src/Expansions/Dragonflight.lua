
-- App locals
local _, app = ...;

if app.GameBuildVersion < 100000 then
	app.CreateMountMod = app.CreateUnimplementedClass("MountMod", "mountmodID");
	app.CreateFirstCraft = app.CreateUnimplementedClass("FirstCraft", "firstcraftID");
	app.CreateProfessionNode = app.CreateUnimplementedClass("ProfessionNode", "professionnodeID");
	return
end

-- Global locals
local ipairs, pairs, table_concat
	= ipairs, pairs, table.concat

local C_TradeSkillUI_IsRecipeFirstCraft, C_TradeSkillUI_GetRecipeInfo
	= C_TradeSkillUI.IsRecipeFirstCraft, C_TradeSkillUI.GetRecipeInfo

-- Mount Mod Lib
do
	local CACHE = "MountMods"
	local CLASSNAME = "MountMod"
	app.CreateMountMod = app.ExtendClass("Item", CLASSNAME, "mountmodID", {
		RefreshCollectionOnly = true,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t) return app.IsAccountCached("Quests", t.questID) and 1 end,
		itemID = function(t) return t.mountmodID; end,
	});
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)

	app.AddEventHandler("OnLoad", function()
		app.AddDynamicCategoryHeader({ id = "mountmodID", name = "Mount Mods", icon = 975744 });
	end);
end

-- First Craft Lib
do
	local CACHE = "FirstCrafts"
	local CLASSNAME = "FirstCraft"
	local KEY = "firstcraftID"

	local FirstCraftInfoMeta = setmetatable({}, {
		__index = function(t, id)
			if not id then return app.EmptyTable end
			local info = C_TradeSkillUI_GetRecipeInfo(id) or app.EmptyTable
			t[id] = info
			return info
		end
	})

	app.CreateFirstCraft = app.CreateClass(CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		name = function(t)
			local info = FirstCraftInfoMeta[t[KEY]]
			return info.name
		end,
		icon = function(t)
			local info = FirstCraftInfoMeta[t[KEY]]
			return info.icon
		end,
		collectible = function(t)
			return app.Settings.Collectibles[CACHE]
		end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		saved = function(t)
			return not C_TradeSkillUI_IsRecipeFirstCraft(t[KEY])
		end,
	},
	"WithQuest", {
		ImportFrom = "Quest",
		ImportFields = { "repeatable", "trackable", "saved" },
	},
	function(t) return t.questID end)
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddGenericFieldConverter(KEY);
	app.AddEventHandler("OnRefreshCollections", function()
		local saved, none = {}, {}
		local o
		for id,cache in pairs(app.GetRawFieldContainer(KEY)) do
			o = cache[1]
			-- If saved, then the FC is cached
			if o.saved then
				saved[id] = true
			else
				none[id] = true
			end
		end

		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		app.SetBatchCached(CACHE, none)
	end)
end

-- Profession Nodes Lib
do
	local CACHE = "ProfessionNodes"
	local CLASSNAME = "ProfessionNode"
	local KEY = "professionnodeID"

	local C_ProfSpecs_GetSpecTabIDsForSkillLine = C_ProfSpecs.GetSpecTabIDsForSkillLine
	local C_ProfSpecs_GetRootPathForTab = C_ProfSpecs.GetRootPathForTab
	local C_ProfSpecs_GetChildrenForPath = C_ProfSpecs.GetChildrenForPath
	local C_ProfSpecs_GetPerksForPath = C_ProfSpecs.GetPerksForPath
	local C_ProfSpecs_GetDescriptionForPerk = C_ProfSpecs.GetDescriptionForPerk
	local C_ProfSpecs_GetStateForPath = C_ProfSpecs.GetStateForPath
	local C_Traits_GetNodeInfo = C_Traits.GetNodeInfo
	local C_Traits_GetEntryInfo = C_Traits.GetEntryInfo
	local C_Traits_GetDefinitionInfo = C_Traits.GetDefinitionInfo
	local C_TradeSkillUI_GetAllProfessionTradeSkillLines = C_TradeSkillUI.GetAllProfessionTradeSkillLines

	local PROFESSION_CONFIGS = {
		-- /dump C_ProfSpecs.GetConfigIDForSkillLine(skillLineID)
		[2823] = 6245516,	-- Dragon Isles Alchemy
		[2822] = 7394486,	-- Dragon Isles Blacksmithing
		[2825] = 6242413,	-- Dragon Isles Enchanting
		[2827] = 7394543,	-- Dragon Isles Engineering
		[2832] = 7504756,	-- Dragon Isles Herbalism
		[2828] = 7506369,	-- Dragon Isles Inscription
		[2829] = 7506146,	-- Dragon Isles Jewelcrafting
		[2830] = 7482558,	-- Dragon Isles Leatherworking
		[2833] = 7504772,	-- Dragon Isles Mining
		[2834] = 7482532,	-- Dragon Isles Skinning
		[2831] = 7502531,	-- Dragon Isles Tailoring
		[2871] = 49821319,	-- Khaz Algar Alchemy
		[2872] = 53234328,	-- Khaz Algar Blacksmithing
		[2874] = 49821129,	-- Khaz Algar Enchanting
		[2875] = 53234066,	-- Khaz Algar Engineering
		[2877] = 51575851,	-- Khaz Algar Herbalism
		[2878] = 53298521,	-- Khaz Algar Inscription
		[2879] = 53298900,	-- Khaz Algar Jewelcrafting
		[2880] = 53638479,	-- Khaz Algar Leatherworking
		[2881] = 51576185,	-- Khaz Algar Mining
		[2882] = 53638451,	-- Khaz Algar Skinning
		[2883] = 53209291,	-- Khaz Algar Tailoring
		[2906] = 99469361,	-- Midnight Alchemy
		[2907] = 100893235,	-- Midnight Blacksmithing
		[2909] = 99469489,	-- Midnight Enchanting
		[2910] = 100893266,	-- Midnight Engineering
		[2912] = 100481094,	-- Midnight Herbalism
		[2913] = 100688108,	-- Midnight Inscription
		[2914] = 100688072,	-- Midnight Jewelcrafting
		[2915] = 100891138,	-- Midnight Leatherworking
		[2916] = 100481136,	-- Midnight Mining
		[2917] = 100891127,	-- Midnight Skinning
		[2918] = 100149496,	-- Midnight Tailoring
	}

	-- Recursive helper
	local function CollectChildPaths(t, pathID)
		t[pathID] = true
		for _, childID in ipairs(C_ProfSpecs_GetChildrenForPath(pathID)) do
			CollectChildPaths(t, childID)
		end
	end

	local ProfessionNodeInfoMeta = setmetatable({}, app.MetaTable.AutoTable);

	app.CreateProfessionNode = app.CreateClass(CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		name = function(t)
			local info = app.ProfessionNodeDB and app.ProfessionNodeDB[t[KEY]]
			return info.name
		end,
		icon = function(t)
			local info = app.ProfessionNodeDB and app.ProfessionNodeDB[t[KEY]]
			return info.icon
		end,
		description = function(t)
			local info = ProfessionNodeInfoMeta[t[KEY]]
			return info.description or ""
		end,
		collectible = function(t)
			return app.Settings.Collectibles[CACHE]
		end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		saved = function(t)
			-- character saved
			if app.IsCached(CACHE, t[KEY]) then return 1 end
		end,
	})
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddGenericFieldConverter(KEY);
	app.AddEventHandler("OnRefreshCollections", function()
		local saved, none = {}, {}
		for _, skillLineID in ipairs(C_TradeSkillUI_GetAllProfessionTradeSkillLines()) do
			local configID = PROFESSION_CONFIGS[skillLineID]
			if configID and configID ~= 0 then
				for _, tabID in ipairs(C_ProfSpecs_GetSpecTabIDsForSkillLine(skillLineID) or {}) do
					local rootPath = C_ProfSpecs_GetRootPathForTab(tabID)
					if rootPath then
						local pathIDs = {}
						CollectChildPaths(pathIDs, rootPath)

						for pathID in pairs(pathIDs) do
							local info = ProfessionNodeInfoMeta[pathID]

							-- We could store localized names in the user's cache
							-- so when they load a profession it will have proper language values
							-- Something similar to Flight Paths
							-- local nodeInfo = C_Traits_GetNodeInfo(configID, pathID)
							-- local chosenEntryID = nodeInfo
							-- 	and (nodeInfo.entryIDsWithCommittedRanks and nodeInfo.entryIDsWithCommittedRanks[1]
							-- 	or nodeInfo.entryIDs and nodeInfo.entryIDs[1]
							-- 	or nodeInfo.activeEntry and nodeInfo.activeEntry.entryID)

							-- local name, icon
							-- if chosenEntryID then
							-- 	local entryInfo = C_Traits_GetEntryInfo(configID, chosenEntryID)
							-- 	local def = entryInfo and entryInfo.definitionID and C_Traits_GetDefinitionInfo(entryInfo.definitionID)

							-- 	if def then
							-- 		if def.overrideName and def.overrideName ~= "" then
							-- 			name = def.overrideName
							-- 		end
							-- 		if def.overrideIcon and def.overrideIcon ~= 0 then
							-- 			icon = def.overrideIcon
							-- 		end
							-- 	end
							-- end

							-- info.name = name
							-- info.icon = icon

							local perks = C_ProfSpecs_GetPerksForPath(pathID) or {}
							local desc = {}
							for _, perk in ipairs(perks) do
								local d = C_ProfSpecs_GetDescriptionForPerk(perk.perkID)
								if d and d ~= "" then
									desc[#desc+1] = d
								end
							end
							info.description = table_concat(desc, "\n\n")

							local state = C_ProfSpecs_GetStateForPath(pathID, configID)
							if state == 2 then
								saved[pathID] = true
							else
								none[pathID] = true
							end
						end
					end
				end
			end
		end

		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		app.SetBatchCached(CACHE, none)
	end)

	-- Debug code to get new Profession Nodes for ProfessionNodeDB
	local DB = {}
	local CONFIG_ID_TO_NAME = {
		[6245516] = "Dragon Isles Alchemy",
		[7394486] = "Dragon Isles Blacksmithing",
		[6242413] = "Dragon Isles Enchanting",
		[7394543] = "Dragon Isles Engineering",
		[7504756] = "Dragon Isles Herbalism",
		[7506369] = "Dragon Isles Inscription",
		[7506146] = "Dragon Isles Jewelcrafting",
		[7482558] = "Dragon Isles Leatherworking",
		[7504772] = "Dragon Isles Mining",
		[7482532] = "Dragon Isles Skinning",
		[7502531] = "Dragon Isles Tailoring",

		[49821319] = "Khaz Algar Alchemy",
		[53234328] = "Khaz Algar Blacksmithing",
		[49821129] = "Khaz Algar Enchanting",
		[53234066] = "Khaz Algar Engineering",
		[51575851] = "Khaz Algar Herbalism",
		[53298521] = "Khaz Algar Inscription",
		[53298900] = "Khaz Algar Jewelcrafting",
		[53638479] = "Khaz Algar Leatherworking",
		[51576185] = "Khaz Algar Mining",
		[53638451] = "Khaz Algar Skinning",
		[53209291] = "Khaz Algar Tailoring",

		[99469361] = "Midnight Alchemy",
		[100893235] = "Midnight Blacksmithing",
		[99469489] = "Midnight Enchanting",
		[100893266] = "Midnight Engineering",
		[100481094] = "Midnight Herbalism",
		[100688108] = "Midnight Inscription",
		[100688072] = "Midnight Jewelcrafting",
		[100891138] = "Midnight Leatherworking",
		[100481136] = "Midnight Mining",
		[100891127] = "Midnight Skinning",
		[100149496] = "Midnight Tailoring",
	}
	local function PrintProfessionNodeSummary()
		local nodes = {}

		for nodeID, data in pairs(DB) do
			nodes[#nodes + 1] = { id = nodeID, data = data }
		end

		if #nodes == 0 then return end

		app.Sort(nodes, function(a, b)
			local function getConfigID(d)
				return d.configID or math.huge
			end

			local aMin = getConfigID(a.data)
			local bMin = getConfigID(b.data)

			if aMin ~= bMin then
				return aMin < bMin
			end

			return (a.data.name or "") < (b.data.name or "")
		end)

		local info = {
			"### Profession Node Harvest",
		}

		for _, entry in ipairs(nodes) do
			local id = entry.id
			local d = entry.data

			if d.name and d.icon then
				local name = '"' .. d.name:gsub('"', '\\"') .. '"'
				local icon = d.icon

				local cid = d.configID
				local professionName = CONFIG_ID_TO_NAME[cid]

				local line = "AssignProfessionNode(" .. id .. ", " .. name .. ", " .. icon .. ") -- " .. professionName

				tinsert(info, line)
			end
		end

		local popupID, text = "profession-node-harvest", "Profession Nodes DB"
		app:SetupReportDialog(popupID, text, info)

		app.print("Profession Nodes:",
			app:Linkify(text, app.Colors.ChatLinkError, "dialog:" .. popupID)
		)
	end
	local function DebugHarvestProfessionNodes()
		for _, skillLineID in ipairs(C_TradeSkillUI_GetAllProfessionTradeSkillLines()) do
			local configID = PROFESSION_CONFIGS[skillLineID]
			if configID and configID ~= 0 then
				for _, tabID in ipairs(C_ProfSpecs_GetSpecTabIDsForSkillLine(skillLineID) or {}) do
					local rootPath = C_ProfSpecs_GetRootPathForTab(tabID)
					if rootPath then
						local pathIDs = {}
						CollectChildPaths(pathIDs, rootPath)

						for pathID in pairs(pathIDs) do
							local nodeInfo = C_Traits_GetNodeInfo(configID, pathID)
							local chosenEntryID = nodeInfo
								and (nodeInfo.entryIDsWithCommittedRanks and nodeInfo.entryIDsWithCommittedRanks[1]
								or nodeInfo.entryIDs and nodeInfo.entryIDs[1]
								or nodeInfo.activeEntry and nodeInfo.activeEntry.entryID)

							local name, icon
							if chosenEntryID then
								local entryInfo = C_Traits_GetEntryInfo(configID, chosenEntryID)
								local def = entryInfo and entryInfo.definitionID and C_Traits_GetDefinitionInfo(entryInfo.definitionID)

								if def then
									if def.overrideName and def.overrideName ~= "" then
										name = def.overrideName
									end
									if def.overrideIcon and def.overrideIcon ~= 0 then
										icon = def.overrideIcon
									end
								end
							end

							-- Only store valid data
							if name and icon then
								if not DB[pathID] then
									DB[pathID] = {
										name = name,
										icon = icon,
										configID = configID,
									}
								end
							end
						end
					end
				end
			end
		end

		local total = 0
		for _ in pairs(DB) do total = total + 1 end

		app.print("ProfessionNodes Harvest Complete:",
			"Total:", total
		)

		PrintProfessionNodeSummary()
	end
	--DebugHarvestProfessionNodes()
end
