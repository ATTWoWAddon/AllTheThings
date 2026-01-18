-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, tinsert, tremove, tostring, math_floor
	= ipairs, pairs, tinsert, tremove, tostring, math.floor
local NestObjects
	= app.NestObjects
local Callback = app.CallbackHandlers.Callback;
local GetSpellName = app.WOWAPI.GetSpellName;

-- Implementation
app.AddCustomWindowOnUpdate("Added With Patch", function(self, force)	-- TODO: Change this to remember window data of each expansion (param) and dont make new windows infinitely
	-- Patch Interface Build tables
	local CLASSIC = {10100,10200,10300,10400,10500,10600,10700,10800,10900,10903,11000,11100,11101,11102,11200,11201}
	-- Classic was using different build numbers originally, so these are made up to make a correct timeline search
	local TBC = {20000,20001,20003,20005,20006,20007,20008,20010,20012,20100,20101,
	20102,20103,20200,20202,20203,20300,20302,20303,20400,20401,20402,20403}
	-- TBC Patch 2.0.10 and 2.0.12 did not have a valid build numbers, so these are made up to make a correct timeline search
	local WRATH = {30002,30003,30008,30100,30101,30102,30103,30200,30202,30300,30302,30303,30305}
	local CATA = {40001,40003,40006,40100,40200,40202,40300,40302}
	local MOP = {50004,50100,50200,50300,50400,50402,50407}
	local WOD = {60002,60003,60100,60102,60200,60202,60203,60204}
	local LEGION = {70003,70100,70105,70200,70205,70300,70302,70305}
	local BFA = {80001,80100,80105,80200,80205,80300,80307}
	local SL = {90001,90002,90005,90100,90105,90200,90205,90207}
	local DF = {100000,100002,100005,100007,100100,100105,100107,100200,100205,100206,100207}
	local TWW = {110000,110002,110005,110007,110100,110105,110107,110200,110205,110207}

	-- Locals
	local param = {}
	local foundExpansion = false
	local expansionHeader, patchString, majorVersion, middleDigits, lastDigits, formattedPatch

	-- Table to map expansion shortcuts to their respective parameters and headers
	local expansions = {
		classic = {param = CLASSIC, header = 1},
		tbc = {param = TBC, header = 2},
		wotlk = {param = WRATH, header = 3},
		cata = {param = CATA, header = 4},
		mop = {param = MOP, header = 5},
		wod = {param = WOD, header = 6},
		legion = {param = LEGION, header = 7},
		bfa = {param = BFA, header = 8},
		sl = {param = SL, header = 9},
		df = {param = DF, header = 10},
		tww = {param = TWW, header = 11}
	}

	-- Function for dynamic groups
	local function GetSearchCriteriaForPatch(patch)
		local dynamic_searchcriteria = {
			SearchValueCriteria = {
				-- Only include 'awp' search results where the value is equal to the patch
				function(o, field, value)
					local awp = o[field]
					if not awp then return end
					return (app.GetRelativeValue(o, "awp") or 0) == patch
				end
			},
		}
		return dynamic_searchcriteria
	end


	-- Iterate over the expansions and check for the selected one
	for k, v in pairs(expansions) do
		if app.GetCustomWindowParam("Added With Patch", k) == true or app.GetCustomWindowParam("awp", k) == true then
			param = v.param
			expansionHeader = v.header
			foundExpansion = true
			break
		end
	end

	-- If no expansion was found, print an error message
	if foundExpansion == false then
		app.print("Unknown expansion shortcut.")
		self:Hide();
	elseif not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		local TypeGroupOverrides = {
			visible = true
		}
		local function OnUpdate_RemoveEmptyDynamic(t)
			-- nothing to show so don't be visible
			if not t.g or #t.g == 0 then
				return
			end
			local o
			for i=#t.g,1,-1 do
				o = t.g[i]
				if o.__empty then
					tremove(t.g, i)
				end
			end
			if #t.g == 0 then
				return
			end
			t.visible = true
			return true
		end
		local function CreateTypeGroupsForHeader(header, searchResults)
			-- TODO: professions would be more complex since it's so many sub-groups to organize
			-- maybe just simpler to look for the 'requireSkill' field and put all those results into one 'Professions' group?
			-- app.PrintDebug("Creating type group header",header.name, header.id, searchResults and #searchResults)
			local typeGroup = app.CreateRawText(header.name, header)
			local headerDataWithinPatch = app:BuildTargettedSearchResponse(searchResults, header.id, nil, {g=true})
			-- app.PrintDebug("Found",#headerDataWithinPatch,"search groups for",header.id)
			NestObjects(typeGroup, headerDataWithinPatch)
			-- did we populate nothing?
			if not typeGroup.g or #typeGroup.g == 0 then
				typeGroup.__empty = true
			else
				app.AssignChildren(typeGroup)
			end
			Callback(app.DirectGroupUpdate, typeGroup.parent)
			return typeGroup
		end
		local function CreatePatches(patchTable)
			local patchBuild = {}
			for _, patch in ipairs(patchTable) do
				patchString = tostring(patch)
				if math_floor(patch / 10000) < 10 then	-- Before Dragonflight
					majorVersion = patchString:sub(1, 1)  -- "7"	-- Patch 7.x.x
					middleDigits = patchString:sub(2, 3)  -- "02"	-- Patch x.2.x
				else	-- After Dragonflight
					majorVersion = patchString:sub(1, 2)  -- "10"	-- Patch 10.x.x
					middleDigits = patchString:sub(3, 4)  -- "02"	-- Patch x.2.x
				end
				lastDigits = patchString:sub(-2)  -- "02"	-- Patch x.x.2
				formattedPatch = majorVersion .. "." .. middleDigits .. lastDigits

				-- Create the patch header
				local patchHeader = app.CreateExpansion(formattedPatch, {g={}})

				-- Fetch search results
				local searchResults = app:BuildSearchResponse("awp", patch)
				NestObjects(patchHeader, searchResults)

				-- Create the dynamic category
				local dynamicCategory = app.CreateRawText(L.CLICK_TO_CREATE_FORMAT:format(L.DYNAMIC_CATEGORY_LABEL), {
					icon = app.asset("Interface_CreateDynamic"),
					OnUpdate = OnUpdate_RemoveEmptyDynamic,
					g = {}
				})

				-- Dynamic category headers
				-- TODO: If possible, change the creation of names and icons to SimpleHeaderGroup to take the localized names
				local headers = {
					{ id = "achievementID", name = ACHIEVEMENTS, icon = app.asset("Category_Achievements") },
					{ id = "sourceID", name = "Appearances", icon = 135276 },
					{ id = "artifactID", name = ITEM_QUALITY6_DESC, icon = app.asset("Weapon_Type_Artifact") },
					{ id = "azeriteessenceID", name = SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE2_TITLE, icon = app.asset("Category_AzeriteEssences") },
					{ id = "speciesID", name = AUCTION_CATEGORY_BATTLE_PETS, icon = app.asset("Category_PetJournal") },
					{ id = "campsiteID", name = WARBAND_SCENES, icon = app.asset("Category_Campsites") },
					{ id = "characterUnlock", name = CHARACTER .. " " .. UNLOCK .. "s", icon = app.asset("Category_ItemSets") },
					{ id = "conduitID", name = GetSpellName(348869) .. " (" .. EXPANSION_NAME8 .. ")", icon = 3601566 },
					{ id = "currencyID", name = CURRENCY, icon = app.asset("Interface_Vendor") },
					{ id = "decorID", name = CATALOG_SHOP_TYPE_DECOR, icon = app.asset("Category_Housing") },
					{ id = "explorationID", name = "Exploration", icon = app.asset("Category_Exploration") },
					{ id = "factionID", name = L.FACTIONS, icon = app.asset("Category_Factions") },
					{ id = "flightpathID", name = L.FLIGHT_PATHS, icon = app.asset("Category_FlightPaths") },
					{ id = "followerID", name = GARRISON_FOLLOWERS, icon = app.asset("Category_Followers") },
					{ id = "heirloomID", name = HEIRLOOMS, icon = app.asset("Weapon_Type_Heirloom") },
					{ id = "illusionID", name = L.FILTER_ID_TYPES[103], icon = app.asset("Category_Illusions") },
					{ id = "mountID", name = MOUNTS, icon = app.asset("Category_Mounts") },
					{ id = "mountmodID", name = "Mount Mods", icon = 975744 },
					-- TODO: Add professions here using the byValue probably
					{ id = "questID", name = TRACKER_HEADER_QUESTS, icon = app.asset("Interface_Quest_header") },
					{ id = "runeforgepowerID", name = LOOT_JOURNAL_LEGENDARIES .. " (" .. EXPANSION_NAME8 .. ")", icon = app.asset("Weapon_Type_Legendary") },
					{ id = "titleID", name = PAPERDOLL_SIDEBAR_TITLES, icon = app.asset("Category_Titles") },
					{ id = "toyID", name = TOY_BOX, icon = app.asset("Category_ToyBox") },
				}

				-- Loop through the dynamic headers and insert them into the "g" field of dynamic category
				for _, header in ipairs(headers) do
					header.parent = dynamicCategory
					dynamicCategory.g[#dynamicCategory.g + 1] = app.DelayLoadedObject(CreateTypeGroupsForHeader, "text", TypeGroupOverrides, header, searchResults)
				end

				-- Merge patchHeaders and searchResults with dynamicCategory
				tinsert(patchHeader.g, dynamicCategory)

				-- Insert the final merged patchHeader into patchBuild
				tinsert(patchBuild, patchHeader)
			end
			return patchBuild
		end
		local AWPwindow = app.CreateRawText(L.ADDED_WITH_PATCH, {
			icon = app.asset("Interface_Newly_Added"),
			description = L.ADDED_WITH_PATCH_TOOLTIP,
			visible = true,
			back = 1,
			g = {
				app.CreateExpansion(expansionHeader, {
					expanded=true,
					g = CreatePatches(param),
				}),
			},
		})
		self:SetData(AWPwindow);
		self:BuildData();
	end
	if self:IsVisible() then
		self:DefaultUpdate(force);
	end
end)