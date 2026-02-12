-- App locals
local _, app = ...;
local L = app.L;

-- This window is not currently supported by Classic!
if not app.IsRetail then return; end

-- Global locals
local ipairs, setmetatable, tonumber, tinsert, wipe
	= ipairs, setmetatable, tonumber, tinsert, wipe

-- Implementation
app:CreateWindow("Import", {
	OnInit = function(self, handlers)
		local SearchForObject = app.SearchForObject

		function self:ClearResults()
			local fixed = {}
			for _, row in ipairs(self.data.g) do
				if row.isButton then
					fixed[#fixed + 1] = row
				end
			end
			wipe(self.data.g)
			app.ArrayAppend(self.data.g, fixed)
		end

		local function ParseIDs(str)
			local ids = {}
			for id in str:gmatch("%d+") do
				id = tonumber(id)
				if id then
					ids[#ids + 1] = id
				end
			end
			if #ids > 0 then return ids end

			-- if there were no raw ids parsed from the input, try to use the string as a global table reference :O
			local keychain = {("."):split(str)}
			local i = 1
			local t
			while i <= #keychain do
				t = (t and t[keychain[i]]) or _G[keychain[i]]
				i = i + 1
			end
			if t then
				for id in pairs(t) do
					id = tonumber(id)
					if id then
						ids[#ids + 1] = id
					end
				end
			end
			return ids
		end

		local function SearchTypeObject(typeKey, id)
			local o = setmetatable({ OnUpdate = app.ForceShowUpdate }, {
					__index = id and (SearchForObject(typeKey, id, "key")
									or SearchForObject(typeKey, id, "field")
									or app.__CreateObject({[typeKey]=id}))
								or setmetatable({name=EMPTY}, app.BaseClass)
				})
			-- app.PrintDebug("Created", typeKey, id, "->", o.name or "???")
			-- app.PrintTable(o)
			return o
		end

		function self:Import(typeKey, input)
			local ids = ParseIDs(input)
			self:ClearResults()
			if not ids then return false end

			-- app.PrintDebug("Importing", #ids, typeKey)

			local objs = {}
			for _, id in ipairs(ids) do
				objs[#objs + 1] = SearchTypeObject(typeKey, id)
			end

			-- Merge all the search results into the list, ensure to clone
			app.NestObjects(self.data, objs, true)
		end

		local initialButtons = {
			{ id = "achievementID", name = ACHIEVEMENTS, icon = app.asset("Category_Achievements") },
			{ id = "sourceID", name = WARDROBE, icon = 135276 },
			{ id = "artifactID", name = ITEM_QUALITY6_DESC, icon = app.asset("Weapon_Type_Artifact") },
			{ id = "azeriteessenceID", name = SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE2_TITLE, icon = app.asset("Category_AzeriteEssences") },
			{ id = "speciesID", name = AUCTION_CATEGORY_BATTLE_PETS, icon = app.asset("Category_PetJournal") },
			{ id = "campsiteID", name = WARBAND_SCENES, icon = app.asset("Category_Campsites") },
			{ id = "currencyID", name = CURRENCY, icon = app.asset("Interface_Vendor") },
			{ id = "decorID", name = CATALOG_SHOP_TYPE_DECOR, icon = app.asset("Category_Housing") },
			{ id = "explorationID", name = "Exploration", icon = app.asset("Category_Exploration") },
			{ id = "factionID", name = L.FACTIONS, icon = app.asset("Category_Factions") },
			{ id = "flightpathID", name = L.FLIGHT_PATHS, icon = app.asset("Category_FlightPaths") },
			{ id = "followerID", name = GARRISON_FOLLOWERS, icon = app.asset("Category_Followers") },
			{ id = "illusionID", name = L.FILTER_ID_TYPES[103], icon = app.asset("Category_Illusions") },
			{ id = "itemID", name = ITEMS, icon = 135276 },
			{ id = "questID", name = TRACKER_HEADER_QUESTS, icon = app.asset("Interface_Quest_header") },
			{ id = "spellID", name = SPELLS, icon = 135736 },
			{ id = "titleID", name = PAPERDOLL_SIDEBAR_TITLES, icon = app.asset("Category_Titles") },
		}

		local function ImportButton(typeKey, label, icon)
			return app.CreateRawText(label, {
				icon = icon,
				visible = true,
				isButton = true,
				OnUpdate = app.AlwaysShowUpdate,
				OnClick = function()
					app:ShowPopupDialogWithEditBox(
						"Paste " .. label .. " IDs or Global Reference [ATTC.CurrentCharacter.Quests] etc.",
						"",
						function(input)
							if not input or input:match("^%s*$") then
								return
							end

							self:Import(typeKey, input)
							self:ShowResetButton()
							self:Rebuild()
						end
					)
					return true
				end,
			})
		end

		function self:ResetToInitialButtons()
			wipe(self.data.g)
			for _, b in ipairs(initialButtons) do
				tinsert(self.data.g, ImportButton(b.id, b.name, b.icon))
			end
			self:Rebuild()
		end

		function self:ShowResetButton()
			local importedRows = {}
			for _, row in ipairs(self.data.g) do
				if not row.isButton then
					tinsert(importedRows, row)
				end
			end
			wipe(self.data.g)

			local resetButton = app.CreateRawText("Reset Import", {
				icon = app.asset("unknown"),
				visible = true,
				isButton = true,
				OnUpdate = app.AlwaysShowUpdate,
				SortPriority = -1,
				OnClick = function()
					self:ResetToInitialButtons()
					return true
				end,
			})
			tinsert(self.data.g, resetButton)
			app.ArrayAppend(self.data.g, importedRows)
			self:Rebuild()
		end

		self:SetData(app.CreateRawText("Import", {
			icon = app.asset("logo_32x32"),
			description = "Import objects using their IDs, separated by commas.",
			visible = true,
			back = 1,
			g = {}
		}))

		self:ResetToInitialButtons()
	end,
});
