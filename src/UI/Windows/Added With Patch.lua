-- App locals
local _, app = ...;
local L = app.L;
local tinsert, math_floor
	= tinsert, math.floor;
local Colorize = app.Modules.Color.Colorize;

-- Local functions
local MinPatch, MaxPatch;
local FilteredPatches = {};
local ExpansionKeywords = {
	all = { 0, 14 },
	classic = { 0, 2 },
	tbc = { 2, 3 },
	wrath = { 3, 4 },
	wotlk = { 3, 4 },
	cata = { 4, 5 },
	mop = { 5, 6 },
	wod = { 6, 7 },
	legion = { 7, 8 },
	bfa = { 8, 9 },
	shadowlands = { 9, 10 },
	sl = { 9, 10 },
	dragonflight = { 10, 11 },
	df = { 10, 11 },
	tww = { 11, 12 },
	midnight = { 12, 13 },
	tlt = { 13, 14 },
};
function AddedWithPatchFilter(group)
	if group.awp and group.awp == MinPatch then
		return true;
	end
end
function AddedWithPatchFilterMinMax(group)
	if group.awp and group.awp >= MinPatch and group.awp < MaxPatch then
		FilteredPatches[group.awp] = 1;
		return true;
	end
end
local function GetPatchString(patch)
	patch = tonumber(patch)
	return patch and (math_floor(patch / 10000) .. "." .. (math_floor(patch / 100) % 100) .. "." .. (patch % 10))
end
local function ParsePatch(cmd)
	local expansionKey = ExpansionKeywords[cmd];
	if expansionKey then
		return expansionKey[1] * 10000, expansionKey[2] * 10000;
	else
		local patch = 0;
		local major, minor, build = ("."):split(cmd);
		if minor then
			if build then patch = patch + tonumber(build); end
			patch = patch + (tonumber(minor) * 100);
			patch = patch + (tonumber(major) * 10000);
		else
			patch = tonumber(major);
		end
		if patch and patch > 0 then
			while patch < 10000 do patch = patch * 10; end
		end
		return patch;
	end
end
local function ParseCommand(self, cmd)
	if cmd and cmd ~= "" then
		cmd = cmd:lower();
		local a,b = ("-"):split(cmd);
		local patch,final = ParsePatch(a);
		if b then final = ParsePatch(b); end
		local dirty;
		if MinPatch ~= patch then
			MinPatch = patch;
			dirty = true;
		end
		if MaxPatch ~= final then
			MaxPatch = final;
			dirty = true;
		end
		if dirty then
			wipe(self.data.g);
			collectgarbage();
			self:Rebuild();
		end
	end
end

--[[
-- Dynamic category headers
-- CRIEVE NOTE: I stole this from the Retail version of this window. I'd like to have a toggle to switch between display modes and this would be pretty cool to have.
-- It was the only difference in the file, really. The rest was the same.
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
]]--

-- Implementation
app:CreateWindow("Added With Patch", {
	Commands = { "attawp" },
	OnCommand = function(self, cmd)
		if cmd and cmd ~= "" then
			ParseCommand(self, cmd);
			if self:IsShown() then
				return true;
			end
		end
	end,
	OnLoad = function(self, settings)
		MaxPatch = settings.MaxPatch;
		MinPatch = settings.MinPatch;
	end,
	OnSave = function(self, settings)
		settings.MaxPatch = MaxPatch;
		settings.MinPatch = MinPatch;
	end,
	OnInit = function(self, handlers)
		local options = {
			app.CreateRawText(RETRIEVING_DATA, {	-- Patch
				prefix = "Patch: ",
				icon = 134941,
				description = "Press this button to change the patch.\n\nChanging this value will filter out items that get added during the given patch.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					local str;
					if MinPatch and MinPatch > 0 then
						str = GetPatchString(MinPatch);
					end
					if MaxPatch and MaxPatch > 0 then
						if str then
							str = str .. "-" .. GetPatchString(MaxPatch);
						else
							str = "0-" .. GetPatchString(MaxPatch);
						end
					end
					app:ShowPopupDialogWithEditBox("Please enter a new patch", str or app.GameBuildVersion, function(cmd)
						ParseCommand(self, cmd);
					end);
					return true;
				end,
				OnUpdate = function(data)
					local str;
					if MinPatch and MinPatch > 0 then
						str = GetPatchString(MinPatch);
					end
					if MaxPatch and MaxPatch > 0 then
						if str then
							str = str .. " - " .. GetPatchString(MaxPatch);
						else
							str = "< " .. GetPatchString(MaxPatch);
						end
					end
					if str then
						data.strKey = data.prefix .. Colorize(str, app.Colors.AddedWithPatch);
					else
						data.strKey = data.prefix;
					end
					return app.AlwaysShowUpdate(data);
				end,
			}),
		};
		self.data = app.CreateRawText(L.ADDED_WITH_PATCH, {
			icon = app.asset("Interface_Newly_Added"),
			description = L.ADDED_WITH_PATCH_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = data;
						tinsert(g, option);
					end
					wipe(FilteredPatches);
					local results = app:BuildSearchFilteredResponse(app:GetDataCache().g, MaxPatch and AddedWithPatchFilterMinMax or AddedWithPatchFilter);
					if results and #results > 0 then
						if MaxPatch then
							local patchList = {};
							for key,_ in pairs(FilteredPatches) do
								tinsert(patchList, key);
							end
							table.sort(patchList);
							for i,patch in ipairs(patchList) do
								local cache = app:BuildSearchFilteredResponse(results, function(group)
									if group.awp and group.awp == patch then
										return true;
									end
								end);
								if cache and #cache > 0 then
									tinsert(g, app.CreateExpansion(patch * 0.0001, {g=cache}));
								end
							end
						else
							for i,result in ipairs(results) do
								tinsert(g, result);
							end
						end
						self:AssignChildren();
					end
				end
			end,
		});
	end,
});