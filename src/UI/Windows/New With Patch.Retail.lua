-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, tinsert, tremove
	= ipairs, tinsert, tremove
local NestObjects
	= app.NestObjects
local Callback = app.CallbackHandlers.Callback;
local GetSpellName = app.WOWAPI.GetSpellName;

-- Implementation
app.AddCustomWindowOnUpdate("NWP", function(self, force)
	if not self.initialized then
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
		local function CreateNWPWindow()
			-- Fetch search results
			local searchResults = app:BuildSearchResponseRetailStyle("awp", app.GameBuildVersion)

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

			-- Merge searchResults with dynamicCategory
			tinsert(searchResults, dynamicCategory)

			return searchResults
		end
		local NWPwindow = app.CreateRawText(L.NEW_WITH_PATCH, {
			icon = app.asset("Interface_Newly_Added"),
			description = L.NEW_WITH_PATCH_TOOLTIP,
			visible = true,
			back = 1,
			g = CreateNWPWindow(),
		})
		self:SetData(NWPwindow);
		self:AssignChildren();
	end
	if self:IsVisible() then
		self:DefaultUpdate(force);
	end
end)