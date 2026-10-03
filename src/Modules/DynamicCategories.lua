-- Contains logic for injection of various 'dynamic' groups into the Main ATT list
local _, app = ...
local L = app.L


-- Returns {name,icon} for a known HeaderConstants NPCID
local function SimpleHeaderGroup(npcID, t)
	if t then
		t.name = L.HEADER_NAMES[npcID]
		t.icon = L.HEADER_ICONS[npcID]
		if t.suffix then
			t.name = t.name .. " (".. t.suffix ..")"
			t.suffix = nil
		end
	else
		t = {
				name = L.HEADER_NAMES[npcID],
				icon = L.HEADER_ICONS[npcID]
			}
	end
	return t
end


-- General Dynamic Categories (Retail only -- Classic uses Dynamic Window injection where certain Windows are directly added & loaded immediately)
if app.IsRetail and app.GameBuildVersion > 70000 then
	app.AddEventHandler("OnLoad", function()
	-- CRIEVE NOTE: This needs to be versioned at the very least before it can be enabled in classic land
	-- Create Dynamic Groups Button
	local dynamicHeader = app.CreateRawText(L.CLICK_TO_CREATE_FORMAT:format(L.DYNAMIC_CATEGORY_LABEL), {
		icon = app.asset("Interface_CreateDynamic"),
		OnUpdate = app.AlwaysShowUpdate,
		SortPriority = 1000,
		sourceIgnored = true,
		-- ["OnClick"] = function(row, button)
			-- could implement logic to auto-populate all dynamic groups like before... will see if people complain about individual generation
		-- end,
		-- Top-Level Dynamic Categories
		g = {
			-- Future Unobtainable
			app.CreateDynamicHeader("rwp", {
				dynamic_withsubgroups = true,
				dynamic_value = app.GameBuildVersion,
				dynamic_searchcriteria = {
					SearchValueCriteria = {
						-- only include 'rwp' search results where the value is >= the current game version
						function(o,field,value)
							local rwp = o[field]
							if not rwp then return end
							return rwp >= value
						end
					}
				},
				name = L.FUTURE_UNOBTAINABLE,
				description = L.FUTURE_UNOBTAINABLE_TOOLTIP,
				icon = app.asset("Interface_Future_Unobtainable")
			}),

			-- Recently Added
			app.CreateDynamicHeader("awp", {
				dynamic_value = app.GameBuildVersion,
				dynamic_withsubgroups = true,
				name = L.NEW_WITH_PATCH,
				description = L.NEW_WITH_PATCH_TOOLTIP,
				icon = app.asset("Interface_Newly_Added")
			}),

			-- Achievements
			app.CreateDynamicHeader("achievementID", SimpleHeaderGroup(app.HeaderConstants.ACHIEVEMENTS, {
				dynamic_searchcriteria = {
					SearchCriteria = {
						-- don't include Criteria
						function(o) return not o.criteriaID end
					}
				},
			})),

			-- Artifacts
			app.CreateDynamicHeader("artifactID", SimpleHeaderGroup(app.HeaderConstants.ARTIFACTS)),

			-- Azerite Essences
			app.CreateDynamicHeader("azeriteessenceID", SimpleHeaderGroup(app.HeaderConstants.AZERITE_ESSENCES)),

			-- Battle Pets
			app.CreateDynamicHeader("speciesID", {
				name = AUCTION_CATEGORY_BATTLE_PETS,
				icon = app.asset("Category_PetJournal")
			}),

			-- Buildings
			app.CreateDynamicHeader("garrisonbuildingID", SimpleHeaderGroup(app.HeaderConstants.BUILDINGS)),

			-- Campsites
			app.CreateDynamicHeader("campsiteID", {
				name = WARBAND_SCENES,
				icon = app.asset("Category_Campsites")
			}),

			-- Character Unlocks
			app.CreateDynamicHeader("characterUnlock", {
				name = L.CHARACTERUNLOCKS_CHECKBOX,
				icon = app.asset("Category_ItemSets")
			}),

			-- Conduits
			app.CreateDynamicHeader("conduitID", SimpleHeaderGroup(app.HeaderConstants.CONDUITS, {suffix=EXPANSION_NAME8})),

			-- Currencies
			app.CreateDynamicHeaderByValue("currencyID", {
				dynamic_withsubgroups = true,
				name = CURRENCY,
				icon = app.asset("Interface_Vendor")
			}),

			-- Decor
			app.CreateDynamicHeader("decorID", {
				name = CATALOG_SHOP_TYPE_DECOR,
				icon = app.asset("Category_Housing")
			}),

			-- Factions
			app.CreateDynamicHeaderByValue("factionID", {
				dynamic_withsubgroups = true,
				name = L.FACTIONS,
				icon = app.asset("Category_Factions")
			}),

			-- First Crafts
			app.CreateDynamicHeader("firstcraftID", {
				name = L.FIRST_CRAFTS_CHECKBOX,
				icon = app.asset("Category_Professions")	-- TODO: Make a new icon
			}),

			-- Flight Paths
			app.CreateDynamicHeader("flightpathID", {
				name = L.FLIGHT_PATHS,
				icon = app.asset("Category_FlightPaths")
			}),

			-- Followers
			app.CreateDynamicHeader("followerID", SimpleHeaderGroup(app.HeaderConstants.FOLLOWERS)),

			-- Heirlooms
			app.CreateDynamicHeader("heirloomID", SimpleHeaderGroup(app.HeaderConstants.HEIRLOOMS)),

			-- Illusions
			app.CreateDynamicHeader("illusionID", {
				name = L.FILTER_ID_TYPES[103],
				icon = app.asset("Category_Illusions")
			}),

			-- Mounts
			app.CreateDynamicHeader("mountID", {
				name = MOUNTS,
				icon = app.asset("Category_Mounts")
			}),

			-- Mount Mods
			app.CreateDynamicHeader("mountmodID", SimpleHeaderGroup(app.HeaderConstants.MOUNT_MODS)),

			-- Pet Battles
			app.CreateDynamicHeader("pb", SimpleHeaderGroup(app.HeaderConstants.PET_BATTLES, {dynamic_withsubgroups = true})),

			-- Professions
			app.CreateDynamicHeaderByValue("professionID", {
				dynamic_withsubgroups = true,
				dynamic_valueField = "requireSkill",
				name = TRADE_SKILLS,
				icon = app.asset("Category_Professions")
			}),

			-- Profession Nodes
			app.CreateDynamicHeader("professionnodeID", {
				name = L.PROFESSION_NODES_CHECKBOX,
				icon = app.asset("Category_Professions")	-- TODO: Make a new icon
			}),

			-- Runeforge Powers
			app.CreateDynamicHeader("runeforgepowerID", SimpleHeaderGroup(app.HeaderConstants.LEGENDARIES, {suffix=EXPANSION_NAME8})),

			-- Titles
			app.CreateDynamicHeader("titleID", {
				name = PAPERDOLL_SIDEBAR_TITLES,
				icon = app.asset("Category_Titles")
			}),

			-- Toys
			app.CreateDynamicHeader("toyID", {
				name = TOY_BOX,
				icon = app.asset("Category_ToyBox")
			}),

			-- Various Quest groups
			app.CreateCustomHeader(app.HeaderConstants.QUESTS, {
				visible = true,
				OnUpdate = app.AlwaysShowUpdate,
				g = {
					-- Breadcrumbs
					app.CreateDynamicHeader("isBreadcrumb", {
						name = L.BREADCRUMBS,
						icon = 134051
					}),

					-- Dailies
					app.CreateDynamicHeader("isDaily", {
						name = DAILY,
						icon = app.asset("Interface_Questd")
					}),

					-- Weeklies
					app.CreateDynamicHeader("isWeekly", {
						name = CALENDAR_REPEAT_WEEKLY,
						icon = app.asset("Interface_Questw")
					}),

					-- HQTs
					app.CreateDynamicHeader("isHQT", {
						name = MINIMAP_TRACKING_HIDDEN_QUESTS,
						icon = app.asset("Interface_Quest"),
					}),

					-- All Quests
					-- this works but..... bad idea instead use /att list type=quest limit=79000
					-- app.CreateDynamicHeaderByValue("questID", {
					-- 	dynamic_withsubgroups = true,
					-- 	name = QUESTS_LABEL,
					-- 	icon = app.asset("Interface_Quest_header")
					-- }),
				}
			}),

		},
	});
	local rootData = app.GetDatabaseRoot()
	app.NestObject(rootData, dynamicHeader)
	dynamicHeader.parent = rootData;
	app.AssignChildren(dynamicHeader);
	end)
end

-- Current Season M+ Dynamic Category (Retail only -- Classic has no M+ (yet))
if app.IsRetail and app.GameBuildVersion > 70000 then
	-- Search Info
	local SearchInfo = {
		field = "InRetailSeason",
		value = true,
		-- drops = {},
		searchcriteria = {
			SearchValueCriteria = {
				-- only care that the field value is not nil since it's an array of variable data
				function(o,field,value) return o[field] ~= nil end,
			},
			RecursiveFilterCriteria = {
				-- Only certain difficulty headers should be retained in the search results
				function(o)
					-- VisualHeader groups are used for shared hierarchy
					if o.__type == "VisualHeader" or o.InRetailSeason then return true end

					local difficultyID = o.difficultyID
					local inseason = o.parent.InRetailSeason
					if inseason and difficultyID then
						return app.contains(inseason, difficultyID)
					end

					if app.GetRelativeValue(o,"difficultyID") then return true end
				end
			},
		},
	}

	app.AddEventHandler("OnLoad", function()
		-- Find the D&R category
		local rootData = app.GetDatabaseRoot()
		local drcat
		local drheaderID = app.HeaderConstants.DUNGEONS_AND_RAIDS
		local rootg = rootData.g
		for i=1,#rootg do
			drcat = rootg[i]
			if drcat.headerID == drheaderID then
				break
			end
			drcat = nil
		end

		-- TODO: maybe an option to trim headers from the search, i.e. the D&R group here
		local dynamicHeader = app.CreateDynamicHeader(SearchInfo.field, SimpleHeaderGroup(app.HeaderConstants.CURRENT_SEASON, {
			dynamic_value = SearchInfo.value,
			dynamic_withsubgroups = true,
			dynamic_searchcriteria = SearchInfo.searchcriteria,
			OnUpdate = app.AlwaysShowUpdate,
			SortPriority = 1000,
			sourceIgnored = true,
		}))
		app.NestObject(drcat, dynamicHeader)
		dynamicHeader.parent = drcat
		app.AssignChildren(dynamicHeader)
	end)
end
