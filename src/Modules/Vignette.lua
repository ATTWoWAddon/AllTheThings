local _, app = ...

-- Other Classes reference this, it must exist.
local ActiveVignettes = {};
app.ActiveVignettes = ActiveVignettes;

-- This functionality is only available if the VignetteInfo api is available.
if not C_VignetteInfo then
	-- Fallback for if the Vignette class isn't supported.
	setmetatable(ActiveVignettes, app.MetaTable.AutoTable);
	return
end

-- locals
local L = app.L;

-- Global locals
local rawset, tonumber, ipairs, pairs,wipe
	= rawset, tonumber, ipairs, pairs,wipe

-- Module locals
local FlashClientIcon = FlashClientIcon;
local C_VignetteInfo_GetVignetteInfo = C_VignetteInfo.GetVignetteInfo;
local C_VignetteInfo_GetVignettes = C_VignetteInfo.GetVignettes;
local C_VignetteInfo_GetVignettePosition = C_VignetteInfo.GetVignettePosition;
local Callback, DelayedCallback = app.CallbackHandlers.Callback, app.CallbackHandlers.DelayedCallback

-- Helper Functions
local SettingsCache = {}
local ActiveWaypointGUID;
local function PlotUserWaypoint(pos)
	C_SuperTrack.SetSuperTrackedUserWaypoint(false)
	C_Map.ClearUserWaypoint()
	C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(pos.mapID, pos.x, pos.y, pos.z))
	C_SuperTrack.SetSuperTrackedUserWaypoint(true)
	ActiveWaypointGUID = pos.guid
end
local function GetWaypointLink(guid, text)
	-- Generates a waypoint link with text (optional) inside the link should the vignette guid have a valid position.
	if guid and C_VignetteInfo_GetVignettePosition then
		local mapID = app.CurrentMapID;
		if mapID then
			local pos = C_VignetteInfo_GetVignettePosition(guid, mapID);
			if pos then
				if SettingsCache.PlotWaypoints then
					pos.mapID = mapID
					pos.guid = guid
					Callback(PlotUserWaypoint, pos)
					-- TODO: setting & logic here for incorporating into TomTom waypoints
				end
				return app:WaypointLink(mapID, pos.x, pos.y, text);
			end
		end
	end
end

local GetProgressColorText = app.Modules.Color.GetProgressColorText;
local ReportedVignettes = {};
local Ignored = setmetatable({
	npc = {
		[198464] = true,	-- Rostrum of Transformation
		[223728] = true,	-- Auditor Balwurz [Renown Quartermaster - Council of Dornogal]
		[221390] = true,	-- Waxmonger Squick [Renown Quartermaster - The Assembly of the Deeps]
		[213145] = true,	-- Auralia Steelstrike [Renown Quartermaster - Hallowfall Arathi]
		[220867] = true,	-- Y'tekhi [Renown Quartermaster - The Severed Threads]
		[231409] = true,	-- Smaks Topskimmer [Renown Quartermaster - The Cartels of Undermine]
		[235252] = true,	-- Om'sirik [Renown Quartermaster - The K'aresh Trust]
		[245344] = true,	-- Zo'turu [Renown Quartermaster - Manaforge Vandals]
		[250243] = true,	-- Timewarped Essence of Wyrmtongue
	},
	object = {
		[503267] = true,	-- Phase Conduit [K'aresh Teleport Node]
		[516991] = true,	-- Phase Conduit [K'aresh Teleport Node]
		[527623] = true,	-- Phase Conduit [K'aresh Teleport Node]
	},
},{ __index = function() return app.EmptyTable end })
local function AlertForVignetteInfo(info)
	local type = info.SearchType
	local id = info.ID
	-- if we want to Ignore reporting this vignette, then pretend we alerted it
	if Ignored[type][id] then return true end

	local link = type .. ":" .. id;
	app.SetSkipLevel(1)
	local group = app.GetCachedSearchResults(app.SearchForLink, link);
	app.SetSkipLevel(0)
	if group.total == 0 then
		if SettingsCache.IncludeUnknown and group._missing then
			link = app:Linkify(info.name or id, app.Colors.SourceIgnored, "search:" .. link)
		else
			return true
		end
	elseif not SettingsCache.IncludeCompleted and (not group.visible or app.IsComplete(group)) then
		return false
	else
		local summaryText = group.summaryText
			or GetProgressColorText(group.progress or 0, group.total or 0)
			or (group.collectible and app.GetCollectionIcon(group.collected))
			or (group.trackable and app.GetCompletionIcon(group.saved))
		link = app:Linkify(info.name or id, app.Colors.ChatLink, "search:" .. link) .. " " .. summaryText
	end
	-- app.PrintDebug("Vignette.Alert",link)

	local waypointLink = GetWaypointLink(info.vignetteGUID);
	if waypointLink then link = waypointLink .. " " .. link; end
	app.print(L.NEARBY, link);
	app.Audio:PlayRareFindSound();
	if FlashClientIcon and SettingsCache.FlashTheTaskbar then FlashClientIcon(); end
	return true;
end
local AlertMeta = {
	__newindex = function(t, key, info)
		if info then
			if not SettingsCache.ReportContent then return end

			local guid = info.objectGUID;
			if not guid or ReportedVignettes[guid] then return end

			-- if we encounter situations where a ton of vignettes all attempt to load in a single frame
			-- each one processing fresh search results, we may want to easily split that reporting into
			-- multiple frames to remove the lag spike potential
			if AlertForVignetteInfo(info) then
				-- If someone has completed turned off
				ReportedVignettes[guid] = true;
				rawset(t, key, info);
			end
		else
			rawset(t, key, info);
		end
	end
};
setmetatable(ActiveVignettes, {
	__index = function(t, key)
		local data = setmetatable({}, AlertMeta);
		t[key] = data;
		return data;
	end
});

-- Event Handling
local VignetteSearchTypes = setmetatable({
	Creature = "npc",
	GameObject = "object",
	Vehicle = "npc",
}, {
	__index = function(t, vignetteType)
		app.PrintDebug("Unhandled Vignette Type", vignetteType);
		return "npc";
	end
});
local CachedVignetteInfo = setmetatable({}, {
	__index = function(t, guid)
		local vignetteInfo = C_VignetteInfo_GetVignetteInfo(guid)
		if vignetteInfo and not vignetteInfo.isDead and vignetteInfo.objectGUID then
			local type, _, _, _, _, id, _ = ("-"):split(vignetteInfo.objectGUID)
			id = id and tonumber(id)
			if id then
				local searchType = VignetteSearchTypes[type]
				if SettingsCache[searchType] then
					vignetteInfo.SearchType = searchType
					vignetteInfo.ID = id
					-- app.PrintDebug("CachedVignetteInfo",searchType,id,guid)
					rawset(t, guid, vignetteInfo)
					return vignetteInfo
				end
			end
		end
	end,
})
local function ClearVignette(guid)
	if not guid then return end

	local vignetteInfo = CachedVignetteInfo[guid]
	if not vignetteInfo then return end

	-- app.PrintDebug("Vignette.Clear",vignetteInfo.SearchType,vignetteInfo.ID,guid);
	ActiveVignettes[vignetteInfo.SearchType][vignetteInfo.ID] = nil
	CachedVignetteInfo[guid] = nil
	if ActiveWaypointGUID == guid and SettingsCache.ClearWaypoints then
		C_Map.ClearUserWaypoint()
		ActiveWaypointGUID = nil
	end
end
local vignettesByGUID = {}
local function UpdateVignette(guid)
	if not guid then return end

	vignettesByGUID[guid] = true
	local vignetteInfo = CachedVignetteInfo[guid]
	if vignetteInfo then
		-- app.PrintDebug("Vignette.Update",vignetteInfo.SearchType,vignetteInfo.ID,guid);
		ActiveVignettes[vignetteInfo.SearchType][vignetteInfo.ID] = vignetteInfo
	end
end
app.AddEventRegistration("VIGNETTE_MINIMAP_UPDATED", UpdateVignette);
local function Event_VIGNETTES_UPDATED()
	local vignettes = C_VignetteInfo_GetVignettes();
	-- app.PrintDebug("Current Vignettes:",vignettes and #vignettes)
	wipe(vignettesByGUID)
	if vignettes then
		for v=1,#vignettes do
			UpdateVignette(vignettes[v])
		end
	end
	for guid,_ in pairs(CachedVignetteInfo) do
		if not vignettesByGUID[guid] then
			ClearVignette(guid);
		end
	end
end
app.AddEventRegistration("VIGNETTES_UPDATED", Event_VIGNETTES_UPDATED);
local function CacheVignetteSettings()
	local settings = app.Settings
	SettingsCache.IncludeCompleted = settings:GetTooltipSetting("Nearby:IncludeCompleted")
	SettingsCache.IncludeUnknown = settings:GetTooltipSetting("Nearby:IncludeUnknown")
	SettingsCache.FlashTheTaskbar = settings:GetTooltipSetting("Nearby:FlashTheTaskbar")
	SettingsCache.ReportContent = settings:GetTooltipSetting("Nearby:ReportContent")
	SettingsCache.PlotWaypoints = settings:GetTooltipSetting("Nearby:PlotWaypoints")
	SettingsCache.ClearWaypoints = settings:GetTooltipSetting("Nearby:ClearWaypoints")
	for searchType,search in pairs(VignetteSearchTypes) do
		SettingsCache[search] = settings:GetTooltipSetting("Nearby:Type:" .. search)
	end
end
local function InitialVignetteScan()
	CacheVignetteSettings()
	DelayedCallback(Event_VIGNETTES_UPDATED, 0.1)
	-- clean up the 1 time function, needs to be callback since it's removing within the same event
	Callback(app.RemoveEventHandler, InitialVignetteScan)
end
app.AddEventHandler("OnRefreshCollectionsDone", InitialVignetteScan)
app.AddEventHandler("Settings.OnSet", function(containerKey, key, value)
	if containerKey ~= "Tooltips" then return end

	local type, _ = (":"):split(key)
	if type ~= "Nearby" then return end

	CacheVignetteSettings()
	DelayedCallback(Event_VIGNETTES_UPDATED, 0.1)
end)

-- Allows a user to use /att reset-vignettes
-- to enable Debug Printing of any PrintDebug messages
app.ChatCommands.Add("reset-vignettes", function(args)
	wipe(ReportedVignettes)
	for guid,_ in pairs(CachedVignetteInfo) do
		ClearVignette(guid)
	end
	DelayedCallback(Event_VIGNETTES_UPDATED, 0.1)
	app.print("Vignette Caches reset!")
	return true
end, {
	"Usage : /att reset-vignettes",
	"Allows resetting the Vignette cache such that Vignettes can be reported again in chat",
})
