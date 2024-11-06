
-- Tooltip Module
local _, app = ...;
local L = app.L;

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemID = app.WOWAPI.GetItemID;

-- Concepts:
-- Encapsulates the functionality for interacting with and hooking into game Tooltips

-- Global locals
local ipairs, pairs, InCombatLockdown, pcall, tinsert, tostring, tonumber, math_sqrt, GameTooltip
	= ipairs, pairs, InCombatLockdown, pcall, tinsert, tostring, tonumber, math.sqrt, GameTooltip

local timeFormatter = CreateFromMixins(SecondsFormatterMixin);
timeFormatter:Init(1, SecondsFormatter.Abbreviation.Truncate);

-- App locals
local GetRelativeValue, SearchForField, SearchForObject = app.GetRelativeValue, app.SearchForField, app.SearchForObject
local distance = app.distance

-- Module locals (can be set via OnLoad if they do not change during Session but are not yet defined)
local SearchForLink, GetPlayerPosition

-- Object Name Lookups
local objectNamesToIDs = {};
local function OnLoad_CacheObjectNames()
	local o
	for objectID,name in pairs(app.ObjectNames) do
		o = objectNamesToIDs[name];
		if not o then
			o = { objectID };
			objectNamesToIDs[name] = o;
		else
			o[#o + 1] = objectID;
		end
	end
end
local GetBestObjectIDForName;
if app.IsRetail then
	local InGame = app.Modules.Filter.Filters.InGame
	GetBestObjectIDForName = function(name)
		-- Uses a provided 'name' and scans the ObjectDB to find potentially matching ObjectID's,
		-- then correlate those search results by closest distance to the player's current position
		local o = objectNamesToIDs[name];
		if o and #o > 0 then
			local mapID, px, py = GetPlayerPosition();
			-- if we don't know where the player is, we have literally no way to reduce the set of matching objects by name
			if not mapID then
				return o[1]
			end
			local closestDistance = 99999
			local closestObjectID, mappedObjectID, unmappedObjectID, dist, searchCoord
			-- app.PrintDebug("Checking objects",#o,mapID,px,py)
			for i,objectID in ipairs(o) do
				-- SFO includes baked-in accessibility filtering/prioritization of the results
				local searchResults = SearchForObject("objectID", objectID, "any", true);
				if searchResults and #searchResults > 0 then
					-- app.PrintDebug("Checking results",#searchResults,objectID)
					for j,searchResult in ipairs(searchResults) do
						if InGame(searchResult) then
							searchCoord = searchResult.coord;
							if searchCoord then
								if searchCoord[3] == mapID then
									dist = distance(px, py, searchCoord[1], searchCoord[2]);
									if dist and dist < closestDistance then
										closestDistance = dist;
										closestObjectID = objectID;
									end
								end
							elseif searchResult.coords then
								for k,coord in ipairs(searchResult.coords) do
									if coord[3] == mapID then
										dist = distance(px, py, coord[1], coord[2]);
										if dist and dist < closestDistance then
											closestDistance = dist;
											closestObjectID = objectID;
										end
									end
								end
							end
							-- if we haven't found any object by coord-distance, we can check the hierarchy for matching Location-based mapID
							if not closestObjectID and not mappedObjectID then
								-- check the parent hierarchy for a map or maps
								local hierarchyMaps
								local hierarchyMapID = app.GetRelativeValue(searchResult, "mapID")
								-- app.PrintDebug("Check hierarchy map",app:SearchLink(searchResult),hierarchyMapID)
								if hierarchyMapID == mapID then
									-- app.PrintDebug("Object by hierarchy map",app:SearchLink(searchResult),hierarchyMapID)
									mappedObjectID = objectID
								else
									hierarchyMaps = app.GetRelativeValue(searchResult, "maps")
									-- app.PrintDebug("Check hierarchy maps",app:SearchLink(searchResult),hierarchyMaps and #hierarchyMaps)
									if hierarchyMaps and app.contains(hierarchyMaps, mapID) then
										-- app.PrintDebug("Object by hierarchy maps",app:SearchLink(searchResult),hierarchyMapID)
										mappedObjectID = objectID
									end
								end
								-- if we also haven't found any map-based object, then this object is unmapped
								-- but only save as unmapped if the checked object also has no known map relationship
								if not hierarchyMaps and not hierarchyMapID then
									unmappedObjectID = objectID
								end
							end
						end
					end
				end
			end
			-- When player has a valid position, only return valid objects or if there's an unmapped object which matches
			-- app.PrintDebug(closestObjectID, mappedObjectID, unmappedObjectID)
			return closestObjectID or mappedObjectID or unmappedObjectID;
		end
	end
else
	GetBestObjectIDForName = function(name)
		-- Uses a provided 'name' and scans the ObjectDB to find potentially matching ObjectID's,
		-- then correlate those search results by closest distance to the player's current position
		--print("GetBestObjectIDForName:", "'" .. (name or RETRIEVING_DATA) .. "'");
		local o = objectNamesToIDs[name and name:trim()];
		if o and #o > 0 then
			local objects = {};
			local mapID, px, py = GetPlayerPosition();
			local closestDistance, closestInstance, dist, searchCoord, searchResults;
			for i,objectID in ipairs(o) do
				closestInstance = nil;
				closestDistance = 999999;
				searchResults = SearchForField("objectID", objectID);
				if searchResults and #searchResults > 0 then
					for j,searchResult in ipairs(searchResults) do
						searchCoord = searchResult.coord;
						if searchCoord and searchCoord[3] == mapID then
							dist = distance(px, py, searchCoord[1], searchCoord[2]);
							if dist and dist < closestDistance then
								closestDistance = dist;
								closestInstance = searchResult;
							end
						elseif searchResult.coords then
							for k,coord in ipairs(searchResult.coords) do
								if coord[3] == mapID then
									dist = distance(px, py, coord[1], coord[2]);
									if dist and dist < closestDistance then
										closestDistance = dist;
										closestInstance = searchResult;
									end
								end
							end
						end

						if searchResult.maps then
							for k,m in ipairs(searchResult.maps) do
								if m == mapID then
									dist = distance(px, py, 0.5, 0.5);
									if dist and dist < closestDistance then
										closestDistance = dist;
										closestInstance = searchResult;
									end
								end
							end
						end
						if GetRelativeValue(searchResult, "mapID") == mapID then
							dist = distance(px, py, 0.5, 0.5);
							if dist and dist < closestDistance then
								closestDistance = dist;
								closestInstance = searchResult;
							end
						end
						if closestInstance then
							tinsert(objects, {
								objectID = objectID,
								distance = closestDistance,
								AccessibilityScore = closestInstance.AccessibilityScore + closestDistance
							});
							closestInstance = nil;
							closestDistance = 999999;
						end
					end
				end
			end
			if #objects > 0 then
				app.Sort(objects, app.SortDefaults.Accessibility);
				--[[
				for i,o in ipairs(objects) do
					print(i, o.objectID, o.AccessibilityScore, o.distance);
				end
				]]--
				return objects[1].objectID;
			elseif #o == 1 then
				return o[1];
			end
		end
	end
end

-- Server GUID
local ServerUID = select(2, ("-"):split(app.GUID));

-- Player Tooltip Functions
local PLAYER_TOOLTIPS = {
	["Player-4647-031D0890"] = function(self, locClass, engClass, locRace, engRace, gender, name, server)
		local leftSide = _G[self:GetName() .. "TextLeft1"];
		if leftSide then leftSide:SetText("|cff665a2c" .. name .. " the Time-Loser|r"); end
		local rightSide = _G[self:GetName() .. "TextRight2"];
		if rightSide then rightSide:SetText(app.GetCollectionIcon(0)); end
		self:AddLine("This scumbag abused an auto-invite addon to steal the Time-Lost Proto Drake from a person that had them on their friends list. ATT has deemed this unacceptable behaviour and will forever stain this player's reputation so long as they remain on the server.", 0.4, 0.8, 1, true);
	end,
};

-- AUTHOR GUIDs
local AUTHOR_TEXT = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.RANKS.AUTHOR, app.Colors.White);
local AUTHOR_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_COMPLETIONIST, app.Colors.Raid);
local tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then
		leftSide:SetText(AUTHOR_TITLE:format(name));
	end
	local rightSide = _G[self:GetName() .. "TextRight2"];
	leftSide = _G[self:GetName() .. "TextLeft2"];
	if leftSide and rightSide and not ElvUI then
		leftSide:SetText(L.TITLE);
		leftSide:Show();
		rightSide:SetText(AUTHOR_TEXT);
		rightSide:Show();
	else
		self:AddDoubleLine(L.TITLE, AUTHOR_TEXT);
	end
end
for i,guid in ipairs({
	"Player-76-0895E23B",	-- Crieve-Sargeras
	"Player-4372-0000390A",	-- Crieve-Atiesh
	"Player-5813-01CEF978",	-- Crieve-Wild Growth (SOD)
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- CONTRIBUTOR GUIDS
local CONTRIBUTOR_TEXT = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.RANKS.CONTRIBUTOR, app.Colors.White);
local CONTRIBUTOR_TITLE = L.TOOLTIP_MODULE.TITLES.XX_THE_CONTRIBUTOR;
local ShouldKeepTitle = CONTRIBUTOR_TITLE == "%s";
CONTRIBUTOR_TITLE = app.Modules.Color.Colorize(CONTRIBUTOR_TITLE, "ffa335ee");
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then
		leftSide:SetText(CONTRIBUTOR_TITLE:format(ShouldKeepTitle and leftSide:GetText() or name));
	end
	local rightSide = _G[self:GetName() .. "TextRight2"];
	leftSide = _G[self:GetName() .. "TextLeft2"];
	if leftSide and rightSide and not ElvUI then
		leftSide:SetText(L.TITLE);
		leftSide:Show();
		rightSide:SetText(CONTRIBUTOR_TEXT);
		rightSide:Show();
	else
		self:AddDoubleLine(L.TITLE, CONTRIBUTOR_TEXT);
	end
end
for i,guid in ipairs({
	-- Want to add your character too? 	Type '/dump UnitGUID("player")' ingame and add the number you receive here.
	-- Crieve
	"Player-3683-0A7D919A",	-- Retrieve (Crieve's Alt for Testing) US
	-- Myrhial
	"Player-3702-0A145B62",	-- Xynara-ArgentDawn EU
	"Player-4454-039A32B4",	-- Myrhial-Mirage Raceway (Classic)
	"Player-5825-01FD365B",	-- Anysil-Wild Growth (SoD)
	-- Tag
	"Player-1091-04F6F553",	-- Tag-Bloodscalp EU
	"Player-1091-0A9BC8B5",	-- Teleportag-Bloodscalp EU
	"Player-1091-04FEE79B",	-- Tagalong-Bloodscalp EU
	"Player-1091-0772987D",	-- Tagimonde-Bloodscalp EU
	"Player-1091-079A210A",	-- Tageras-Bloodscalp EU
	"Player-1091-06DA8328",	-- Taggles-Bloodscalp EU
	"Player-1091-06D4E2FB",	-- Tagsenpai-Bloodscalp EU
	"Player-1091-04F9E1C9",	-- Tagu-Bloodscalp EU
	"Player-1091-0A81CBF8",	-- Taguise-Bloodscalp EU
	"Player-1091-04FEE745",	-- Tagarang-Bloodscalp EU
	"Player-1091-04FC9C87",	-- Tagelicious-Bloodscalp EU
	"Player-1091-06D4E4E5",	-- Tagov-Bloodscalp EU
	"Player-1091-04F9A20C",	-- Taggie-Bloodscalp EU
	"Player-1091-04FEE76F",	-- Taggieboy-Bloodscalp EU
	-- Darkal
	"Player-3391-0A512DEB",	-- Claella-Silvermoon EU
	"Player-3391-07DAA0FA",	-- Cresaida-Silvermoon EU
	"Player-3391-0CF60215",	-- Darkaldh-Silvermoon EU
	"Player-3391-07B0B708",	-- Darkas-Silvermoon EU
	"Player-3391-07DB0DD7",	-- Darkgrip-Silvermoon EU
	"Player-3391-08E7E3F5",	-- Delonna-Silvermoon EU
	"Player-3391-09E34204",	-- Kinquin-Silvermoon EU
	"Player-3391-0C5619B9",	-- Sarkoth-Silvermoon EU
	"Player-3391-07568D56",	-- Maylesa-Silvermoon EU
	"Player-3391-082E58AE",	-- Eliclia-Silvermoon EU
	"Player-3391-0CF60219",	-- Palach-Silvermoon EU
	"Player-3391-0757575C",	-- Sianor-Silvermoon EU
	"Player-3391-08D25BFA",	-- Smesue-Silvermoon EU
	-- Danny Donkey
	"Player-1402-0715EEC6", -- Skadefryden-Turalyon EU
	"Player-1402-098AE1CC", -- Pessitank-Turalyon EU
	"Player-1402-07F49282", -- Lommetjuven-Turalyon EU
	"Player-1402-0A173E4E", -- Vådeskyttarn-Turalyon EU
	"Player-1402-0A6F6AEF", -- Allianceelf-Turalyon EU
	"Player-1402-0A716C0D", -- Allianceorc-Turalyon EU
	"Player-1402-09D26257", -- Alliancetaur-Turalyon EU
	"Player-1402-0A72B31C", -- Alliancetusk-Turalyon EU
	"Player-1402-0A73A911", -- Alliancemate-Turalyon EU
	-- Dead Serious
	"Player-1305-08781C8A", -- Vultheus-Kazzak EU
	"Player-1305-07A1A502", -- Krulgore-Kazzak EU
	-- Molkree
	"Player-1396-08C42356", -- Molkree-AzjolNerub EU
	-- AlexSoft
	"Player-3391-0C397003", -- Solitudo-Silvermoon EU
	"Player-1614-09A3116A",	-- Бонпаль-Galakrond EU
	"Player-1602-0A45D435", -- Энисофт-Gordunni EU
	-- Gold
	"Player-3679-0B1F96DB",	-- Gold-Aegwynn EU
	"Player-1099-060EE8FF",	-- Saremy-Alleria EU
	"Player-1099-060ECE9F",	-- Kuscheln-Alleria EU
	"Player-1099-07F114C1",	-- Seramy-Alleria EU
	"Player-1099-0609FC3A",	-- Ymeras-Alleria EU
	"Player-1099-085BA2C7",	-- Auu-Alleria EU
	"Player-3679-0C2DEF7A",	-- Goldqt-Aegwynn EU
	"Player-1099-079DE2A4",	-- Au-Rexxar EU
	-- Jen
	"Player-71-08BBE4FE",	-- Jenstonedart-AlteracMountains US
	-- ShadowBrooks
	"Player-125-0456132C",	-- Shadowhunts-ShadowCouncil US
	"Player-125-0A2697D6",	-- ShadowBrooks-ShadowCouncil US
	-- Aldori
	"Player-3676-0E1027D9",	-- Àldori-Area52 US
	"Player-3676-0DC9ECFD",	-- Húlkstab-Area52 US
	-- Sanctuari
	"Player-63-08E17A71", -- Sanctuari-Ysera US
	-- Jez
	"Player-3676-0A6CC504",	-- Jezartroz-Area52 US
	-- rootkit1337
	"Player-3674-0B3F8DA8", -- Cerealm-TwistingNether EU
	-- Exodius
	"Player-1096-076FE799",	-- Felhaim-DefiasBrotherhood EU
	"Player-1096-076FE593",	-- Exodiüs-DefiasBrotherhood EU
	"Player-1096-0A7FACBF",	-- Thrëx-DefiasBrotherhood EU
	"Player-1096-0A57D3A7",	-- Kaala-DefiasBrotherhood EU
	"Player-1096-0A7FDD25",	-- Atröpos-DefiasBrotherhood EU
	-- Eremeir
	"Player-3675-06DC8D18",	-- Eremeir-MoonGuard US
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- EXTERMINATOR GUIDs
local EXTERMINATOR_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_EXTERMINATOR, "ffa335ee");
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(EXTERMINATOR_TITLE:format(name)); end
end
for i,guid in ipairs({
	"Player-4372-00B131BB",	-- Aivet
	"Player-4372-004A0418",	-- Jubilee
	"Player-4372-00273DCA",	-- Havadin
	"Player-4372-00DED426",	-- Krieve
	"Player-4372-00862D32",	-- Aethbric
	"Player-4372-0128B376",	-- Alizewsaur
	"Player-4372-012A730E",	-- Allysandra
	"Player-4372-00FE5CE7",	-- Amiera
	"Player-4372-0073B95B",	-- Amyralynn
	"Player-4372-0087049A",	-- Asandra
	"Player-4372-003159A9",	-- Astromarus
	"Player-4372-006A97BA",	-- Azwel
	"Player-4372-0014521D",	-- Bombeon
	"Player-4372-00E86132",	-- Borlemont
	"Player-4372-010B9178",	-- Braven
	"Player-4372-0063664F",	-- Brittbrat
	"Player-4372-001BA8B1",	-- Darkirontank
	"Player-4372-0100DF23",	-- Dizplaced
	"Player-4372-01230376",	-- Drixxtwo
	"Player-4372-002719C4",	-- Drunkninja
	"Player-4372-0124174F",	-- Dubsteve
	"Player-4372-00BD6CC7",	-- Enthira
	"Player-4372-00A3A0FD",	-- Fairplay
	"Player-4372-0046DDA0",	-- Firasia
	"Player-4372-004A7A3F",	-- Fortress
	"Player-4372-00CF7821",	-- Glas
	"Player-4372-00E7DEC4",	-- Gnubs
	"Player-4372-0108DCC1",	-- Grotesque
	"Player-4372-00E8CC3C",	-- Hairyplodder
	"Player-4372-00D38E94",	-- Havachant
	"Player-4372-00312AD9",	-- Hewn
	"Player-4372-0046F7E8",	-- Holochops
	"Player-4372-007AF4B7",	-- Intothefray
	"Player-4372-01125B10",	-- Jonaya
	"Player-4372-011C1FE9",	-- Katalysm
	"Player-4372-00EBCC07",	-- Lilithann
	"Player-4372-0075A187",	-- Loknido
	"Player-4372-01390D2A",	-- Manamontanna
	"Player-4372-00FE5DA2",	-- Mimico
	"Player-4372-00D7B345",	-- Narom
	"Player-4372-01353958",	-- Naromot
	"Player-4372-01294037",	-- Necrid
	"Player-4372-00793732",	-- Nirv
	"Player-4372-01250D6D",	-- Pewpeu
	"Player-4372-0008B144",	-- Pixl
	"Player-4372-00C2F945",	-- Rooni
	"Player-4372-0058A418",	-- Saitosan Druid]
	"Player-4372-0123A5BE",	-- Sheisskopf
	"Player-4372-00F82168",	-- Semiha
	"Player-4372-001F92DA",	-- Shadrac
	"Player-4372-00732218",	-- Solow
	"Player-4372-01091DE4",	-- Tacolock
	"Player-4372-00451B8E",	-- Tinybit
	"Player-4372-00E5AE25",	-- Villeinia
	"Player-4372-0066A25C",	-- Viran
	"Player-4372-00D96703",	-- Worfin
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- GOLD_TYCOON GUIDs
local GOLD_TYCOON_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_GOLD_TYCOON, app.Colors.Raid);
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(GOLD_TYCOON_TITLE:format(name)); end
end
for i,guid in ipairs({
	"Player-4372-014E6539",	-- Complaindept-Atiesh
	"Player-4372-004A0418",	-- Jubilee
	"Player-4372-00273DCA",	-- Havadin
	"Player-4372-0068D548",	-- Headphones
	"Player-4372-00F2D620",	-- Notloknido
	"Player-4372-00FF84F0",	-- Saitosan Priest
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- LORD_KING GUIDs
local LORD_KING_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_LORD_KING, "ffa335ee");
local LORD_QUEEN_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_LORD_QUEEN, "ffa335ee");
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(LORD_KING_TITLE:format(name)); end
end
for i,guid in ipairs({
	-- Boomps characters
	"Player-4372-000A8B35",	-- boomps
	"Player-4372-03A8F6D5",	-- boompsies
	"Player-4372-01101CF9",	-- clothboy
	"Player-4372-0101476E",	-- handydandy
	"Player-4372-01557AA9",	-- boompsy
	"Player-4372-007C1AA0",	-- toxotes
	"Player-4372-007C1DC4",	-- kaeos
	"Player-4372-015264D5",	-- lockerboy
	"Player-4372-03265218",	-- genkidama
	"Player-4372-01DEB35A",	-- purelights
	"Player-4372-02E4EC05",	-- pharika
	"Player-4372-02FD0FF7",	-- siguiente
	"Player-4372-0378220F",	-- boompsie
	"Player-4372-032CAB69",	-- kuchiki
	"Player-4372-03BD6D65",	-- notebooks
	"Player-4372-03C31D09",	-- boompie
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- LORD_QUEEN GUIDs
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(LORD_QUEEN_TITLE:format(name)); end
end
for i,guid in ipairs({
	-- Frax Characters
	"Player-4372-016C6143",	-- Arvensus
	"Player-4372-02039686",	-- Branchmanagr
	"Player-4372-012262B3",	-- Fraxinus
	"Player-4372-013722F",	-- Fraxitaxi
	"Player-4372-012CFF90",	-- Karagos
	"Player-4372-013FC6C0",	-- Ränger
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- Pinkey GUID
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(app.Modules.Color.Colorize(leftSide:GetText() or name, "ffF58CBA")); end
end
for i,guid in ipairs({
	"Player-4372-01D307D4",	-- Pinkey-Atiesh
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- SCARAB_LORD GUIDs
local SCARAB_LORD_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_SCARAB_LORD, app.Colors.Raid);
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText("|c" .. app.Colors.Raid .. "Scarab Lord " .. name .. "|r"); end
end
for i,guid in ipairs({
	"Player-4372-000B3C4D",	-- Congelatore
	"Player-4372-00A64EA0",	-- Macpayn
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- THE_HUGGLER GUIDs
local THE_HUGGLER_TITLE = app.Modules.Color.Colorize(L.TOOLTIP_MODULE.TITLES.XX_THE_HUGGLER, "ffF58CBA");
tooltipFunction = function(self, locClass, engClass, locRace, engRace, gender, name, server)
	local leftSide = _G[self:GetName() .. "TextLeft1"];
	if leftSide then leftSide:SetText(THE_HUGGLER_TITLE:format(name)); end
end
for i,guid in ipairs({
	"Player-4372-00006B41",	-- Tahiti-Atiesh
}) do
	PLAYER_TOOLTIPS[guid] = tooltipFunction;
end

-- We need to whitelist the actual in-game tooltips that ATT is allowed to hook
-- because all kinds of addons create their own tooltips and use them to do weird stuff behind the scenes
-- and there's no reason for ATT to care when it's not even visible to a player
local HookableTooltips = {
	["GameTooltip"]=1,
	["GameTooltipTooltip"]=1,
	["EmbeddedItemTooltipTooltip"]=1,
	["EmbeddedItemTooltip"]=1,	-- did blizz fix the name of this finally?
	["ItemRefTooltip"]=1,
	["ShoppingTooltip1"]=1,
	["ShoppingTooltip2"]=1,
	["PerksProgramTooltip"]=1,	-- tooltip used for items within the Trading Post UI
	["EncounterJournalTooltipItem1Tooltip"]=1,	-- various tooltips in Adventure Guide, some are actually useful to attach ATT data
	["GarrisonShipyardMapMissionTooltipTooltip"]=1,	-- tooltips of Navel missions from WoD Garrison
	-- other addons which create user-visible tooltips that ATT should attach into
	-- SilverDragon
	["SilverDragonLootTooltip"]=1,
	-- RareScanner
	["LootBarToolTip"]=1,
	["RSMapItemToolTip"]=1,
	-- Townlong Yak addons seem to use alternate, automatically appended tooltips now...
	["NotGameTooltip"]=1,
	["NotGameTooltip1"]=1,
	["NotGameTooltip2"]=1,
	["NotGameTooltip3"]=1,
	["NotGameTooltip4"]=1,
	["NotGameTooltip0"]=1,
	["NotGameTooltip01"]=1,
	["NotGameTooltip012"]=1,
	["NotGameTooltip0123"]=1,
};

-- Allows for toggling whether the skip should be used or not; call with no value to return the current value
local CurrentSkipLevel = 0;	-- Whether to skip certain cost items
app.GetSkipLevel = function()
	return CurrentSkipLevel;
end
app.SetSkipLevel = function(level)
	-- print("SkipPurchases exclusion",level)
	CurrentSkipLevel = level or 0;
end

-- ItemID's which should be skipped when filling purchases with certain levels of 'skippability'
local SkipPurchases = {
	-- 0 	- (default, never skipped)
	-- 1 	- (tooltip, skipped unless within tooltip/popout)
	-- 1.5	- (tooltip root, skipped unless tooltip root or within popout)
	-- 2 	- (popout, skipped unless within popout)
	-- 2.5 	- (popout root, skipped unless root of popout)
	itemID = {
		[137642] = 2.5,	-- Mark of Honor
		[21100] = 1,	-- Coin of Ancestry
		[23247] = 1,	-- Burning Blossom
		[33226] = 1,	-- Tricky Treat
		[37829] = 1,	-- Brewfest Prize Token
		[49927] = 1,	-- Love Token
	},
	currencyID = {
		[515] = 1,		-- Darkmoon Prize Ticket
		[1166] = 1,		-- Timewarped Badge
		[2778] = 2.5,		-- Bronze
	},
}
app.ShouldFillPurchases = function(group, FillData)
	local val
	for key,values in pairs(SkipPurchases) do
		val = group[key]
		if val then
			val = values[val]
			if not val then return true end
			if (FillData.SkipLevel or CurrentSkipLevel) < val - (group == FillData.Root and 0.5 or 0) then
				return false;
			end
		end
	end
	return true;
end

-- Shared Tooltip Functions
local left, right;
local function FindCommandEnd(txt, i, l)
	-- Make sure string is in bounds.
	local j = i + 1;
	if j > l then return false; end

	-- Check for a command character.
	local c = txt:sub(j,j);
	if not (c == "C" or c == "c" or c == "T") then
		return false;
	end
	for j=j+1,l,1 do
		c = txt:sub(j,j);
		if c == "|" then
			local k = j + 1;
			c = txt:sub(k,k);
			if c == "r" or c == "t" then
				return true, k;
			end
		end
	end
	return true, j;
end
local function StripColorAndTextureData(txt)
	local str, l, c, c2 = "", txt:len();
	local i = 1;
	while i < l do
		c = txt:sub(i,i);
		if c == "|" then
			local foundCommand, j = FindCommandEnd(txt, i, l)
			if foundCommand and j then
				i = j;
			else
				str = str .. "\\" .. c;
			end
		else
			str = str .. c;
		end
		i = i + 1;
	end;
	return str;
end
--[[
app.StripColorAndTextureData = function()
	return StripColorAndTextureData("|T237618:0|t2 |cffff0000GOLD|r Coins")
end;
]]--
local HexToARGB = app.Modules.Color.HexToARGB;
local function AttachTooltipInformationEntry(tooltip, entry)
	if entry.color then
		entry.a, entry.r, entry.g, entry.b = HexToARGB(entry.color);
		entry.color = nil;
	end

	left, right = entry.left, entry.right;
	if right then
		if entry.r2 then
			tooltip:AddDoubleLine(left or " ", right, entry.r, entry.g, entry.b, entry.r2, entry.g2, entry.b2);
		elseif entry.r then
			tooltip:AddDoubleLine(left or " ", right, entry.r, entry.g, entry.b, entry.r, entry.g, entry.b);
		else
			tooltip:AddDoubleLine(left or " ", right);
		end
	elseif left then
		if entry.r then
			if entry.wrap then
				tooltip:AddLine(left, entry.r, entry.g, entry.b, 1);
			else
				tooltip:AddLine(left, entry.r, entry.g, entry.b);
			end
		else
			if entry.wrap then
				tooltip:AddLine(left, nil, nil, nil, 1);
			else
				tooltip:AddLine(left);
			end
		end
	else
		local progressText = entry.progress;
		if progressText and progressText ~= "" and progressText ~= "---" then
			local prefix = tooltip:GetName() .. "Text";
			local leftText = _G[prefix .. "Left1"];
			if leftText then
				local rightText = _G[prefix .. "Right1"];
				if rightText then
					local strippedText = StripColorAndTextureData((leftText:GetText() or "  ") .. progressText);
					if strippedText:len() < app.Settings:GetTooltipSetting("MaxTooltipTopLineLength") then
						if tooltip.CloseButton then
							-- dont think the region for the rightText can be modified within the tooltip, so pad instead
							progressText = progressText .. "     ";
						end
						rightText:SetText(progressText);
						rightText:Show();
					else
						tooltip:AddDoubleLine(L.PROGRESS, progressText);
					end
				end
			end
		end
	end
end
local function AttachTooltipInformation(tooltip, tooltipInfo)
	if tooltipInfo and #tooltipInfo > 0 then
		-- app.PrintDebug("ATI",#tooltipInfo)
		-- app.PrintTable(tooltipInfo)
		for _,entry in ipairs(tooltipInfo) do
			AttachTooltipInformationEntry(tooltip, entry);
		end
	end
end
local CanAttachTooltips = app.EmptyFunction
app.AddEventHandler("OnReady", function()
	CanAttachTooltips = function()
		local settings = app.Settings
		-- Consolidated logic for whether a tooltip should include ATT information based on combat & user settings
		return (not InCombatLockdown() or settings:GetTooltipSetting("DisplayInCombat")) and settings:GetTooltipSettingWithMod("Enabled")
	end
end)
local function ClearTooltip(tooltip)
	-- app.PrintDebug("Clear Tooltip",tooltip:GetName());
	tooltip.AllTheThingsProcessing = nil;
	tooltip.ATT_AttachComplete = nil;
end

-- Stores a cache of the 'tooltipInfo' for a given group
-- TODO: this isnt too effective right now since we have to clear the search cache as well
-- basically constantly. some tooltip information types rely on the 'Update' outcome of a group
-- which is cached with the cached group
-- perhaps will need to link the Update logic separately from the Search logic and use that
-- when needing to re-render a tooltip for an existing Group
-- but otherwise, Search cache would only need to be cleared when changing something that affects Search
-- outcome, and Tooltip cache cleared when changing Tooltip-related settings
local TooltipInfoCache = setmetatable({}, { __mode = "kv", __index = function(t,group)
	-- We need to generate tooltip-only content for this group since it hasn't been cached
	-- Classic still has some tooltipInfo generated into the group directly
	local tooltipInfo = group.tooltipInfo
	if tooltipInfo then
		t[group] = tooltipInfo
		return tooltipInfo
	end
	tooltipInfo = {}
	group.working = nil
	-- app.PrintDebug("TIC.__index",app:SearchLink(group))
	app.ProcessInformationTypesForExternalTooltips(tooltipInfo, group)
	-- only save the cached tooltip info for this group if it is not working
	if not group.working then
		-- app.PrintDebug("TIC.__index.cached")
		t[group] = tooltipInfo
	end
	return tooltipInfo
end})
local function WipeTooltipInfoCache()
	wipe(TooltipInfoCache)
	-- app.PrintDebug("WipeTooltipInfoCache")
end
app.WipeTooltipInfoCache = WipeTooltipInfoCache
-- app.AddEventRegistration("PLAYER_DIFFICULTY_CHANGED", WipeTooltipInfoCache);
-- app.AddEventHandler("OnRefreshComplete", WipeTooltipInfoCache);
-- app.AddEventHandler("OnThingCollected", WipeTooltipInfoCache);
-- app.AddEventHandler("OnThingRemoved", WipeTooltipInfoCache);
-- app.AddEventHandler("OnSettingsRefreshed", WipeTooltipInfoCache);
-- TODO: remove second unused param...
local function AttachTooltipSearchResults(tooltip, _, method, ...)
	-- app.PrintDebug("AttachTooltipSearchResults",...)
	app.SetSkipLevel(1);
	local status, group, working = pcall(app.GetCachedSearchResults, method, ...)
	app.SetSkipLevel(0);
	if status then
		if group then
			-- If nothing was put into the tooltip initially, mark the text of the source.
			if tooltip:NumLines() == 0 then
				tooltip:AddDoubleLine(group.text, " ", 1, 1, 1, 1);
			end

			local tooltipInfo = TooltipInfoCache[group]

			-- If there was info text generated for this search result, then display that first.
			AttachTooltipInformation(tooltip, tooltipInfo);
		end
	else
		app.print(status, group);
		app.PrintDebug("pcall tooltip failed",group)
	end
	tooltip.ATT_AttachComplete = not (working or (group and group.working));
	-- app.PrintDebug("ATT_AttachComplete",tooltip.ATT_AttachComplete,working,group.working)
end

-- Battle Pet Tooltips
local function AttachBattlePetTooltip(tooltip, data, quantity, detail)
	if not data or data.att or not data.speciesID then return end
	data.att = 1;

	-- GameTooltip_ShowCompareItem
	-- local searchResults = SearchForField("speciesID", data.speciesID);
	local owned = C_PetJournal.GetOwnedBattlePetString(data.speciesID);
	tooltip.Owned:SetText(owned);
	if owned == nil then
		if tooltip.Delimiter then
			-- if .Delimiter is present it requires special handling (FloatingBattlePetTooltip)
			tooltip:SetSize(260,150 + h)
			tooltip.Delimiter:ClearAllPoints()
			tooltip.Delimiter:SetPoint("TOPLEFT",tooltip.SpeedTexture,"BOTTOMLEFT",-6,-5)
		else
			tooltip:SetSize(260,122)
		end
	else
		local h = tooltip.Owned:GetHeight() or 0;
		if tooltip.Delimiter then
			tooltip:SetSize(260,150 + h)
			tooltip.Delimiter:ClearAllPoints()
			tooltip.Delimiter:SetPoint("TOPLEFT",tooltip.SpeedTexture,"BOTTOMLEFT",-6,-(5 + h))
		else
			tooltip:SetSize(260,122 + h)
		end
	end
	tooltip:Show()
	return true;
end
--hooksecurefunc("BattlePetTooltipTemplate_SetBattlePet", AttachBattlePetTooltip); -- Not ready yet.

-- Tooltip API Differences between Modern and Legacy APIs.
if TooltipDataProcessor and app.GameBuildVersion > 50000 then
	-- 10.0.2
	-- https://wowpedia.fandom.com/wiki/Patch_10.0.2/API_changes#Tooltip_Changes
	-- many of these don't include an ID in-game so they don't attach results. maybe someday they will...
	---@diagnostic disable-next-line: deprecated
	local Enum_TooltipDataType, TooltipUtil = Enum.TooltipDataType, TooltipUtil;
	local TooltipTypes = {
		[Enum_TooltipDataType.Toy] = "itemID",
		[Enum_TooltipDataType.Item] = "itemID",
		-- [Enum_TooltipDataType.Spell] = "spellID",
		--[Enum_TooltipDataType.UnitAura] = "spellID",
		-- [Enum_TooltipDataType.Mount] = "spellID",	-- need special conversion
		--[Enum_TooltipDataType.Macro] = "spellID",	-- Possibly?
		[Enum_TooltipDataType.Achievement] = "achievementID",
		[Enum_TooltipDataType.Quest] = "questID",
		[Enum_TooltipDataType.QuestPartyProgress] = "questID",
		[Enum_TooltipDataType.BattlePet] = "speciesID",
		[Enum_TooltipDataType.CompanionPet] = "speciesID",
		[Enum_TooltipDataType.Currency] = "currencyID",
		[Enum_TooltipDataType.InstanceLock] = "instanceID",
	};
	-- Currently, ATT has no desired handling for these types, and most instances of them are already
	-- ignored via GetOwner() check. But we can avoid that sooner since the tooltip type is provided
	local IgnoredTypes = {
		-- Excluding spells also ignores chat-linked Recipe tooltips
		-- [Enum_TooltipDataType.Spell] = true,
		[Enum_TooltipDataType.UnitAura] = true,
	}
	--[[
	for key,id in pairs(Enum_TooltipDataType) do
		if not TooltipTypes[id] then
			print("Not handling Tooltip Type", key, id);
		end
	end
	]]--

	local function RerenderCurrency(self, currencyID)
		if self:IsVisible() then
			---@diagnostic disable-next-line: redundant-parameter
			GameTooltip.SetCurrencyByID(self, currencyID, 1);
		end
	end
	local function AttachTooltip(self, ttdata)
		if self.AllTheThingsIgnored or not CanAttachTooltips() then return; end

		local ttType, ttId = ttdata and ttdata.type, nil;
		if ttType then
			ttId = ttdata.id;
			-- Debugging without ATT exclusions
			-- app.PrintDebug("TT Type",ttType,ttId)
			-- app.PrintTable(ttdata)
			if IgnoredTypes[ttType] then
				return true
			end
		end

		-- Debug all of the available fields on the self.
		-- self:AddDoubleLine("Self", tostring(self:GetName()));
		-- for i,j in pairs(self) do
		-- 	self:AddDoubleLine(tostring(i), tostring(j));
		-- end
		-- self:Show();

		-- Does the tooltip have an owner?
		local owner = self:GetOwner();
		if owner then
			if owner.SpellHighlightTexture	-- Action bars
			or owner.TrainBook		-- Spellbook spell tooltips
			or owner.Caster			-- Retail Death recap spell tooltips
			or owner.numericValue	-- character 'Mastery' tooltip
			or owner.spendTextShadows	-- Retail Talents UI tooltips
			then
				return true;
			end
			-- this is already covered by a default in-game tooltip line:
			-- AUCTION_HOUSE_BUCKET_VARIATION_EQUIPMENT_TOOLTIP = "Items in this group may vary in stats and appearance. Check the auction's tooltip before buying.";
			-- if owner.useCircularIconBorder and not self.AllTheThingsProcessing then
			--	-- print("AH General Item Tooltip")
			--	-- Generalized tooltip hover of a selected Auction Item -- not always accurate to the actual Items for sale
			-- 	self:AddLine(L.AUCTION_GENERALIZED_ITEM_WARNING);
			-- end
			-- print("AttachTooltip-HasOwner");

			--[[--]
			-- Debug all of the available fields on the owner.
			self:AddDoubleLine("GetOwner", tostring(owner:GetName()));
			for i,j in pairs(owner) do
				self:AddDoubleLine(tostring(i), tostring(j));
			end
			self:Show();
			--]]--

			local encounterID = owner.encounterID;
			if encounterID and not owner.itemID then
				AttachTooltipSearchResults(self, 1, SearchForField, "encounterID", tonumber(encounterID));
				return true;
			end
		end

		local link, target, spellID, id, _;
		-- check what this tooltip is currently displaying, and keep that reference
		-- name, link, id
		_, link, id = TooltipUtil.GetDisplayedItem(self);
		if link and not link:find("%[]") then
			if self.AllTheThingsProcessing and self.AllTheThingsProcessing == link then
				return true;
			else
				self.AllTheThingsProcessing = link;
			end
		else
			-- name, type, UID
			target, _, id = TooltipUtil.GetDisplayedUnit(self);
			if target then
				if self.AllTheThingsProcessing and self.AllTheThingsProcessing == target then
					return true;
				else
					self.AllTheThingsProcessing = target;
				end
			elseif self:GetName() == "ItemRefTooltip" then
				-- only allow spell info to attach to chat-link standalone ItemRefTooltip
				-- name, spellID
				_, spellID = TooltipUtil.GetDisplayedSpell(self);
				if spellID then
					if self.AllTheThingsProcessing and self.AllTheThingsProcessing == spellID then
						return true;
					else
						self.AllTheThingsProcessing = spellID;
					end
				end
			end
		end

		-- app.PrintDebug(self:GetName(),link,target,spellID,id,ttType,ttId)
		-- app.PrintTable(ttdata)

		--[[--]
		-- Debug all of the available fields on the tooltip.
		app.PrintDebug("Tooltip Data")
		for i,j in pairs(self) do
			app.PrintDebug(i,type(j),j);
		end
		-- self:Show();
		--]]--

		-- Does this tooltip have an OnClear attached for ATT since it can handle content which ATT will attach to?
		if self.AllTheThingsProcessing and not self.AllTheThingsOnTooltipClearedHook then
			local tooltipName = self:GetName();
			if tooltipName and HookableTooltips[tooltipName] then
				-- app.PrintDebug("Hooking ClearTooltip",tooltipName)
				pcall(self.HookScript, self, "OnTooltipCleared", ClearTooltip)
				-- if pcall(self.HookScript, self, "OnTooltipCleared", ClearTooltip) then
				-- 	app.PrintDebug("Hooked")
				-- end
				self.AllTheThingsOnTooltipClearedHook = true;
			else
				app.PrintDebug("Ignoring Tooltip",tooltipName)
				-- otherwise mark them as ignored so ATT doesn't process them
				self.AllTheThingsIgnored = true;
			end
		end

		-- Does the tooltip have a target?
		if self.AllTheThingsProcessing and target and id then
			if app.Settings:GetTooltipSetting("guid") then self:AddDoubleLine(L.GUID, id) end
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(id);
			-- print(target, type, npc_id);
			if type == "Player" then
				local method = PLAYER_TOOLTIPS[id];
				if method then method(self, GetPlayerInfoByGUID(id)); end
				local version = app.PlayerProgressCacheByGUID[id];
				if version and app.Settings:GetTooltipSetting("SocialProgress") then
					self:AddDoubleLine(version[3], app.Modules.Color.GetProgressColorText(version[1],version[2]));
				end
			elseif type == "Creature" or type == "Vehicle" then
				if InCombatLockdown() and app.Settings:GetTooltipSetting("DisplayInCombatExceptNPCs") then return end
				if spawn_uid then
					local showAliveTime = app.Settings:GetTooltipSetting("Alive");
					local showSpawnTime = app.Settings:GetTooltipSetting("Spawned");
					if showAliveTime or showSpawnTime then
						local serverTime = GetServerTime();
						local spawnTime = (serverTime - (serverTime % 2^23)) + bit.band(tonumber(spawn_uid:sub(5), 16), 0x7fffff);
						if spawnTime > serverTime then spawnTime = spawnTime - ((2^23) - 1); end
						if showAliveTime then self:AddDoubleLine(L.ALIVE, app.Modules.Color.Colorize(timeFormatter:Format(serverTime - spawnTime), app.Colors.White)); end
						if showSpawnTime then self:AddDoubleLine(L.SPAWNED, app.Modules.Color.Colorize(date("%Y-%m-%d %H:%M:%S", spawnTime), app.Colors.White)); end
					end
				end
				if server_id and zone_uid and app.Settings:GetTooltipSetting("Layer") then
					self:AddDoubleLine(L.LAYER, app.Modules.Color.Colorize((ServerUID ~= server_id and (server_id .. "-") or "") .. zone_uid, app.Colors.White));
				end
				AttachTooltipSearchResults(self, 1, SearchForField, "creatureID", tonumber(npc_id));
			end
			return true;
		end

		-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
		if self.AllTheThingsProcessing and spellID then
			AttachTooltipSearchResults(self, 1, SearchForField, "spellID", spellID);
			return true;
		end

		-- Does the tooltip have an itemlink?
		if self.AllTheThingsProcessing and link then
			-- app.PrintDebug("Search Item",link,id,ttId);
			local itemID = GetItemID(link);
			-- TODO: review if Blizzard ever fixes their tooltips returning the wrong Item link when using TooltipUtil.GetDisplayedItem
			-- on Auction House tooltips (i.e. Recipes) where one Item is nested inside another Item
			if itemID ~= ttId then
				-- app.PrintDebug("Mismatch TT data!",link,itemID,ttId)
				-- fallout to the generalized Item search below
			else
				AttachTooltipSearchResults(self, 1, SearchForLink, link);
				return true;
			end
		end

		-- Check the extra data to see if there's an alternate search for the data
		if ttType then
			local knownSearchField = TooltipTypes[ttType];
			if not knownSearchField then
				-- other ways to search
				if ttId and app.ActiveRowReference and ttType == Enum_TooltipDataType.Spell then
					-- allow spell tooltip information when it's an ATT row
					knownSearchField = "spellID";
				end
				if ttType == Enum_TooltipDataType.Mount then
					knownSearchField = "spellID";
					ttId = select(2, C_MountJournal.GetMountInfoByID(ttId));
				end
				if ttType == Enum_TooltipDataType.Object then
					local objName = ttdata and ttdata.lines[1];
					objName = objName and objName.leftText;
					local objectID = GetBestObjectIDForName(objName);
					if objectID then
						knownSearchField = "objectID";
						ttId = objectID;
					end
				end
				if ttType == Enum_TooltipDataType.MinimapMouseover then
					local content = ttdata.lines;
					if content and #content > 0 then
						local text = content[1].leftText;
						local arr = { ("|"):split(text) };
						if #arr == 3 then text = arr[3]:sub(2); end
						local objectID = GetBestObjectIDForName(text);
						if objectID then
							knownSearchField = "objectID";
							ttId = objectID;
						end
					end
				end
			end
			if knownSearchField and ttId then
				-- app.PrintDebug("TT Search",knownSearchField,ttId)
				AttachTooltipSearchResults(self, 1, SearchForField, knownSearchField, tonumber(ttId));
				if knownSearchField == "currencyID" and self.ATT_AttachComplete == false then
					app.CallbackHandlers.DelayedCallback(RerenderCurrency, 0.05, self, ttId);
				end
				return true;
			end
		end
		-- app.PrintDebug("AttachTooltip-Return");
	end

	app.AddEventRegistration("TOOLTIP_DATA_UPDATE", function(...)
		if GameTooltip and GameTooltip:IsVisible() then
			-- app.PrintDebug("Auto-refresh tooltip")
			-- Make sure the tooltip will try to re-attach the data if it's from an ATT row
			---@diagnostic disable-next-line: inject-field
			GameTooltip.ATT_AttachComplete = nil;
			GameTooltip:Show();
		end
	end);
	app.AddEventHandler("OnReady", function()
		TooltipDataProcessor.AddTooltipPostCall(TooltipDataProcessor.AllTypes, AttachTooltip)
		-- TooltipDataProcessor.AddTooltipPostCall(Enum_TooltipDataType.Item, OnTooltipSetItem)
	end);
else
	-- Pre-10.0.2 (Legacy)
	local function AttachTooltip(self)
		if self.AllTheThingsIgnored or not CanAttachTooltips() then return; end
		if not self.AllTheThingsProcessing then
			self.AllTheThingsProcessing = true;

			-- Does this tooltip have an OnClear attached for ATT since it can handle content which ATT will attach to?
			if not self.AllTheThingsOnTooltipClearedHook then
				local tooltipName = self:GetName();
				if tooltipName and HookableTooltips[tooltipName] then
					-- app.PrintDebug("Hooking ClearTooltip",tooltipName)
					pcall(self.HookScript, self, "OnTooltipCleared", ClearTooltip)
					self.AllTheThingsOnTooltipClearedHook = true;
				else
					--app.PrintDebug("Ignoring Tooltip",tooltipName)
					-- otherwise mark them as ignored so ATT doesn't process them
					self.AllTheThingsIgnored = true;
					return;
				end
			end

			local numLines = self:NumLines();
			if numLines > 0 then
				--[[--
				-- Debug all of the available fields on the tooltip.
				for i,j in pairs(self) do
					self:AddDoubleLine(tostring(i), tostring(j));
				end
				self:Show();
				self:AddDoubleLine("GetItem", tostring(select(2, self:GetItem()) or "nil"));
				self:AddDoubleLine("GetSpell", tostring(select(2, self:GetSpell()) or "nil"));
				self:AddDoubleLine("GetUnit", tostring(select(2, self:GetUnit()) or "nil"));
				--]]--

				-- Does the tooltip have an owner?
				local owner = self:GetOwner();

				-- Does the tooltip have a target?
				local target = select(2, self:GetUnit());
				if target then
					-- Yes.
					local guid = UnitGUID(target);
					if guid then
						if app.Settings:GetTooltipSetting("guid") then self:AddDoubleLine(L.GUID, guid) end
						local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid);
						--print(guid, type, npcID);
						if type == "Player" then
							local method = PLAYER_TOOLTIPS[guid];
							if method then method(self, GetPlayerInfoByGUID(guid)); end
							local version = app.PlayerProgressCacheByGUID[guid];
							if version and app.Settings:GetTooltipSetting("SocialProgress") then
								self:AddDoubleLine(version[3], app.Modules.Color.GetProgressColorText(version[1],version[2]));
							end
						elseif type == "Creature" or type == "Vehicle" then
							if InCombatLockdown() and app.Settings:GetTooltipSetting("DisplayInCombatExceptNPCs") then return end
							if spawn_uid then
								local showAliveTime = app.Settings:GetTooltipSetting("Alive");
								local showSpawnTime = app.Settings:GetTooltipSetting("Spawned");
								if showAliveTime or showSpawnTime then
									local serverTime = GetServerTime();
									local spawnTime = (serverTime - (serverTime % 2^23)) + bit.band(tonumber(spawn_uid:sub(5), 16), 0x7fffff);
									if spawnTime > serverTime then spawnTime = spawnTime - ((2^23) - 1); end
									if showAliveTime then self:AddDoubleLine(L.ALIVE, app.Modules.Color.Colorize(timeFormatter:Format(serverTime - spawnTime), app.Colors.White)); end
									if showSpawnTime then self:AddDoubleLine(L.SPAWNED, app.Modules.Color.Colorize(date("%Y-%m-%d %H:%M:%S", spawnTime), app.Colors.White)); end
								end
							end
							if server_id and zone_uid and app.Settings:GetTooltipSetting("Layer") then
								self:AddDoubleLine(L.LAYER, app.Modules.Color.Colorize((ServerUID ~= server_id and (server_id .. "-") or "") .. zone_uid, app.Colors.White));
							end
							AttachTooltipSearchResults(self, 1, SearchForField, "creatureID", tonumber(npcID));
						end

						return true;
					end
				end

				-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
				local spellID = select(2, self:GetSpell());
				if spellID then
					if owner.SpellHighlightTexture then
						-- Actionbars, don't want that.
						return true;
					end
					AttachTooltipSearchResults(self, 1, SearchForField, "spellID", spellID);
					self:Show();
					return true;
				end

				-- Does the tooltip have an itemlink?
				local itemName, link = self:GetItem();
				if link then
					if owner and owner.cooldownWrapper then
						local parent = owner:GetParent();
						if parent then
							parent = parent:GetParent();
							if parent and parent.fanfareToys then
								-- Toy Box, it needs a Show call.
								-- Also the ToyBox UI is broken and returns the wrong item information when you look at any other item's tooltip before looking at the toybox.
								local leftSide = _G[self:GetName() .. "TextLeft1"]:GetText();
								if itemName ~= leftSide then link = select(2, GetItemInfo(leftSide)); end
								AttachTooltipSearchResults(self, 1, SearchForLink, link);
								self:Show();
								return true;
							end
						end
					end

					-- Normal item tooltip, not on the Toy Box.
					AttachTooltipSearchResults(self, 1, SearchForLink, link);
					if app.GameBuildVersion > 40000 then self:Show(); end
					return true;
				end

				-- If the owner has a ref, it's an ATT row. Ignore it.
				if owner and owner.ref then return true; end

				local objectID = GetBestObjectIDForName(_G[self:GetName() .. "TextLeft1"]:GetText());
				if objectID then
					AttachTooltipSearchResults(self, 1, SearchForField, "objectID", objectID);
					self:Show();
					return true;
				end
			end
		end
	end

	GameTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	GameTooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
	GameTooltip:HookScript("OnUpdate", AttachTooltip);	-- This was necessary for object tooltips in classic!
	ItemRefTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);

	GameTooltip:HookScript("OnShow", AttachTooltip);
	ItemRefTooltip:HookScript("OnShow", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);

	local WorldMapTooltip = WorldMapTooltip;
	if WorldMapTooltip then
		WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
		WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", AttachTooltip);
		WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
		WorldMapTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
		WorldMapTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
		WorldMapTooltip:HookScript("OnShow", AttachTooltip);
	end

	local GameTooltip_SetLFGDungeonReward = GameTooltip.SetLFGDungeonReward;
	if GameTooltip_SetLFGDungeonReward then
		---@diagnostic disable-next-line: duplicate-set-field
		GameTooltip.SetLFGDungeonReward = function(self, dungeonID, rewardIndex)
			GameTooltip_SetLFGDungeonReward(self, dungeonID, rewardIndex);
			if CanAttachTooltips() then
				local name, texturePath, quantity, isBonusReward, spec, itemID = GetLFGDungeonRewardInfo(dungeonID, rewardIndex);
				if itemID then
					if spec == "item" then
						AttachTooltipSearchResults(self, 1, SearchForField, "itemID", itemID);
						self:Show();
					elseif spec == "currency" then
						AttachTooltipSearchResults(self, 1, SearchForField, "currencyID", itemID);
						self:Show();
					end
				end
			end
		end
	end

	local GameTooltip_SetLFGDungeonShortageReward = GameTooltip.SetLFGDungeonShortageReward;
	if GameTooltip_SetLFGDungeonShortageReward then
		---@diagnostic disable-next-line: duplicate-set-field
		GameTooltip.SetLFGDungeonShortageReward = function(self, dungeonID, shortageSeverity, lootIndex)
			--app.PrintDebug("GameTooltip.SetLFGDungeonShortageReward",dungeonID, shortageSeverity, lootIndex );
			GameTooltip_SetLFGDungeonShortageReward(self, dungeonID, shortageSeverity, lootIndex);
			if CanAttachTooltips() then
				local name, texturePath, quantity, isBonusReward, spec, itemID = GetLFGDungeonShortageRewardInfo(dungeonID, shortageSeverity, lootIndex);
				if itemID then
					if spec == "item" then
						AttachTooltipSearchResults(self, 1, SearchForField, "itemID", itemID);
						self:Show();
					elseif spec == "currency" then
						AttachTooltipSearchResults(self, 1, SearchForField, "currencyID", itemID);
						self:Show();
					end
				end
			end
		end
	end

	local GameTooltip_SetCurrencyByID = GameTooltip.SetCurrencyByID;
	---@diagnostic disable-next-line: duplicate-set-field
	GameTooltip.SetCurrencyByID = function(self, currencyID, count)
		if GameTooltip_SetCurrencyByID then
			---@diagnostic disable-next-line: redundant-parameter
			GameTooltip_SetCurrencyByID(self, currencyID, count);
		end
		if CanAttachTooltips() then
			AttachTooltipSearchResults(self, 1, SearchForField, "currencyID", currencyID);
			self:Show();
		end
	end

	local GameTooltip_SetCurrencyToken = GameTooltip.SetCurrencyToken;
	if GameTooltip_SetCurrencyToken then
		---@diagnostic disable-next-line: undefined-global
		local GetCurrencyListInfo = GetCurrencyListInfo;
		---@diagnostic disable-next-line: duplicate-set-field
		GameTooltip.SetCurrencyToken = function(self, tokenID)
			GameTooltip_SetCurrencyToken(self, tokenID);
			if CanAttachTooltips() then
				-- Determine what kind of list data this is. (Blizzard is whack and using this API call for headers too...)
				local currencyID = select(12, GetCurrencyListInfo(tokenID));
				if currencyID then
					AttachTooltipSearchResults(self, 1, SearchForField, "currencyID", currencyID);
					self:Show();
				end
			end
		end
	end

	-- Wrath has a really dumb thing that pulses tooltip updates.
	if app.IsClassic and app.GameBuildVersion > 11403 then
		app:RegisterEvent("CURSOR_CHANGED");
		app.events.CURSOR_CHANGED = function()
			app:StartATTCoroutine("UpdateTooltip", function()
				while not GameTooltip:IsShown() do
					coroutine.yield();
				end
				AttachTooltip(GameTooltip);
			end);
		end
	end
end

-- Tooltip API Implementation
-- Access via AllTheThings.Modules.Tooltip
local api = {};
app.Modules.Tooltip = api;
api.AttachTooltipInformation = AttachTooltipInformation;
api.AttachTooltipInformationEntry = AttachTooltipInformationEntry;
api.AttachTooltipSearchResults = AttachTooltipSearchResults;
api.GetBestObjectIDForName = GetBestObjectIDForName;
app.AddEventHandler("OnLoad", function()
	SearchForLink = app.SearchForLink;
	GetPlayerPosition = app.GetPlayerPosition
	OnLoad_CacheObjectNames();
end);

-- TODO: This is referenced in addon database code in classic, refactor this.
-- Don't worry about optimizing it for now.
local function ShowItemCompareTooltips(...)
	local items = { ... };
	local count = #items;
	if count > 0 then
		for i,item in ipairs(items) do
			---@diagnostic disable-next-line: undefined-field
			local shoppingTooltip = GameTooltip.shoppingTooltips[i];
			if shoppingTooltip then
				shoppingTooltip.attItem = type(item) == "number" and select(2, GetItemInfo(item)) or item;
				pcall(shoppingTooltip.SetHyperlink, shoppingTooltip, shoppingTooltip.attItem);
			else
				break;
			end
		end

		-- Quick maths
		-- Taken from https://github.com/Ennie/wow-ui-source/blob/master/FrameXML/GameTooltip.lua
		---@diagnostic disable-next-line: undefined-field
		local shoppingTooltip1, shoppingTooltip2, shoppingTooltip3 = unpack(GameTooltip.shoppingTooltips);
		local leftPos, rightPos = (GameTooltip:GetLeft() or 0), (GameTooltip:GetRight() or 0);
		if GetScreenWidth() - rightPos < leftPos then
			side = "left";
		else
			side = "right";
		end

		-- see if we should slide the tooltip
		local anchorType = GameTooltip:GetAnchorType();
		if anchorType and anchorType ~= "ANCHOR_PRESERVE" then
			local totalWidth = shoppingTooltip1:GetWidth();
			if count > 1 then totalWidth = totalWidth + shoppingTooltip2:GetWidth(); end
			if count > 2 then totalWidth = totalWidth + shoppingTooltip3:GetWidth(); end
			if ( (side == "left") and (totalWidth > leftPos) ) then
				GameTooltip:SetAnchorType(anchorType, (totalWidth - leftPos), 0);
			elseif ( (side == "right") and (rightPos + totalWidth) > GetScreenWidth() ) then
				GameTooltip:SetAnchorType(anchorType, -((rightPos + totalWidth) - GetScreenWidth()), 0);
			end
		end

		-- anchor the compare tooltips
		if count > 2 then
			shoppingTooltip3:SetOwner(GameTooltip, "ANCHOR_NONE");
			shoppingTooltip3:ClearAllPoints();
			if side == "left" then
				shoppingTooltip3:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, -10);
			else
				shoppingTooltip3:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, -10);
			end
			pcall(shoppingTooltip3.SetHyperlink, shoppingTooltip3, shoppingTooltip3.attItem);
			shoppingTooltip3:Show();
			shoppingTooltip1:SetOwner(shoppingTooltip3, "ANCHOR_NONE");
		else
			shoppingTooltip1:SetOwner(GameTooltip, "ANCHOR_NONE");
		end
		shoppingTooltip1:ClearAllPoints();
		if side == "left" then
			if count > 2 then
				shoppingTooltip1:SetPoint("TOPRIGHT", shoppingTooltip3, "TOPLEFT", 0, 0);
			else
				shoppingTooltip1:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, -10);
			end
		else
			if count > 2 then
				shoppingTooltip1:SetPoint("TOPLEFT", shoppingTooltip3, "TOPRIGHT", 0, 0);
			else
				shoppingTooltip1:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, -10);
			end
		end
		pcall(shoppingTooltip1.SetHyperlink, shoppingTooltip1, shoppingTooltip1.attItem);
		shoppingTooltip1:Show();

		if count > 1 then
			shoppingTooltip2:SetOwner(shoppingTooltip1, "ANCHOR_NONE");
			shoppingTooltip2:ClearAllPoints();
			if side == "left" then
				shoppingTooltip2:SetPoint("TOPRIGHT", shoppingTooltip1, "TOPLEFT", 0, 0);
			else
				shoppingTooltip2:SetPoint("TOPLEFT", shoppingTooltip1, "TOPRIGHT", 0, 0);
			end
			pcall(shoppingTooltip2.SetHyperlink, shoppingTooltip2, shoppingTooltip2.attItem);
			shoppingTooltip2:Show();
		end

		return shoppingTooltip1, shoppingTooltip2, shoppingTooltip3;
	end
end
app.ShowItemCompareTooltips = ShowItemCompareTooltips;
