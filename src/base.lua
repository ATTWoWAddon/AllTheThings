--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--            Copyright 2017-2025 Dylan Fortune (Crieve-Sargeras)             --
--------------------------------------------------------------------------------
local rawget, pairs, tinsert, tremove, setmetatable, print,math_sqrt,math_floor,getmetatable
	= rawget, pairs, tinsert, tremove, setmetatable, print,math.sqrt,math.floor,getmetatable
-- This is a hidden frame that intercepts all of the event notifications that we have registered for.
local appName, app = ...;
app.Categories = {};

-- Hey Blizzard, stop that. Thanks.
SetCVar("taintLog","0");

-- Generate the version identifier.
---@diagnostic disable-next-line: deprecated
local v = (C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata)(appName, "Version");
if v:match("version") then
	app.Version = "[Git]";
	app.IsGit = true;
else
	app.Version = "" .. v;
end
app.DESCRIPTION_SEPARATOR = "`"

-- ReloadUI slash command (for ease of use)
SLASH_RELOADUI1 = "/reloadui";
SLASH_RELOADUI2 = "/rl";
SlashCmdList.RELOADUI = ReloadUI;

local assetRootPath = "interface/Addons\\" .. appName .. "\\assets\\";
app.asset = function(path)
	return assetRootPath .. path;
end
app.AlwaysShowUpdate = function(data) data.visible = true; return true; end
app.AlwaysShowUpdateWithoutReturn = function(data) data.visible = true; end
-- Does not omit the UpdateGroup handling but will persist showing the data
app.ForceShowUpdate = function(data) data.forceShow = true end
app.ReturnTrue = function() return true; end
app.ReturnFalse = function() return false; end

-- Faction Specific Data
local HORDE_FACTION_ID = Enum.FlightPathFaction.Horde;
app.ResolveQuestData = function(t)
	local aqd, hqd = t.aqd, t.hqd;
	if aqd and hqd then
		t.aqd = nil; t.hqd = nil;
		local questData, otherQuestData;
		if app.FactionID == HORDE_FACTION_ID then
			questData = hqd;
			otherQuestData = aqd;
		else
			questData = aqd;
			otherQuestData = hqd;
		end

		-- Move over the quest data's groups. (This is never used...)
		if questData.g then
			-- app.PrintDebug("move quest groups",t.hash,questData.hash)
			local g = t.g;
			if g then
				local qdg = questData.g
				for i=1,#qdg do
					tinsert(g, 1, qdg[i]);
				end
				questData.g = g;
				t.g = nil;
			end
		end

		-- Apply the common data to the faction group
		for key,value in pairs(t) do
			if not questData[key] then
				questData[key] = value;
			end
		end

		-- we know nmr based on matching faction
		questData.nmr = false

		-- Link some other data if the other data is a real Type that someone might search/tooltip directly in-game
		if otherQuestData.__type then
			otherQuestData.nmr = true
			otherQuestData.g = questData.g
			-- force faction associations
			aqd.r = 2
			hqd.r = 1
			-- this is a bit weird, but we otherwise have no 'nice' way to hook our Typed-group into the
			-- actual Main list via parent hierarchy since it is being created and just orphaned within the context
			-- of the current faction data Type
			otherQuestData.parent = questData
		end
		questData.otherQuestData = otherQuestData

		return questData;
	else
		error("Missing AQD / HQD: " .. (aqd and 1 or 0) .. " " .. (hqd and 1 or 0));
	end
	return t;
end

-- External API
-- TODO: We will use a common API eventually.
if not _G.ATTC then
	_G.ATTC = app;
end
if not _G.AllTheThings then
	_G.AllTheThings = app;
end

-- API Functions
local function AssignChildren(parent)
	local g = parent.g;
	if g then
		-- Iterate through the groups
		local group;
		for i=1,#g,1 do
			-- Set the group's parent
			group = g[i];
			group.parent = parent;
			AssignChildren(group);
		end
	end
end
local function AssignFieldValue(group, field, value)
	if group then
		group[field] = value;
		local g = group.g
		if g then
			for i=1,#g do
				AssignFieldValue(g[i], field, value)
			end
		end
	end
end
local function CloneArray(arr, clone)
	local clone = clone or {}
	for i=1,#arr do
		clone[#clone + 1] = arr[i]
	end
	return clone
end
local function CloneDictionary(data, clone)
	if clone and getmetatable(clone) then
		for key,value in pairs(data) do
			if rawget(clone, key) == nil then
				clone[key] = value
			end
		end
		return clone
	else
		clone = clone or {}
		for key,value in pairs(data) do
			if clone[key] == nil then
				clone[key] = value
			end
		end
		return clone
	end
end
app.distance = function( x1, y1, x2, y2 )
	return math_sqrt( (x2-x1)^2 + (y2-y1)^2 )
end
-- from http://lua-users.org/wiki/SimpleRound
app.round = function(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math_floor(num * mult + 0.5) / mult
end
-- Returns the best mapID for a group based on that group's coordinate and map data. If the current mapID is included in any of those fields, it will return that. This is used exclusively within tooltips and does not need to reference the source parent.
local function GetBestMapForGroup(group, currentMapID)
	if group then
		local mapID = group.mapID;
		if mapID and mapID == currentMapID then
			return mapID;
		end

		local coords = group.coords;
		if coords then
			for i=1,#coords do
				mapID = coords[i][3];
				if mapID == currentMapID then
					return mapID;
				end
			end
		end
		local maps = group.maps;
		if maps then
			for i=1,#maps do
				mapID = maps[i];
				if mapID == currentMapID then
					return mapID;
				end
			end
		end

		return mapID or GetBestMapForGroup(group.parent, currentMapID);
	end
end
-- Returns the first matching relative value from the "oldest" parent in the hierarchy where you need to go recursively deeper in the hierarchy to find the value from the top down. (meaning if you're 4 headerIDs deep and looking for "headerID", it'll return the root category's headerID rather than the immediate parent or grandparent's headerID)
local function GetDeepestRelativeValue(group, field)
	if group then
		return GetDeepestRelativeValue(group.sourceParent or group.parent, field) or group[field];
	end
end
local function GetDeepestRelativeFunc(group, func)
	if group then
		return GetDeepestRelativeFunc(group.sourceParent or group.parent, func) or func(group);
	end
end
local function GetRelativeField(group, field, value)
	if group then
		return group[field] == value or GetRelativeField(group.sourceParent or group.parent, field, value);
	end
end
local function GetRawRelativeField(group, field, value)
	if group then
		return group[field] == value or GetRawRelativeField(rawget(group, "parent"), field, value)
	end
end
-- Returns the first encountered group's value tracing upwards in parent hierarchy which has a value for the provided field
-- Prioritizes sourceParent before parent
local function GetRelativeValue(group, field)
	if group then
		return group[field] or GetRelativeValue(group.sourceParent or group.parent, field);
	end
end
-- Returns the first encountered group tracing upwards in parent hierarchy which has a value for the provided field.
-- Specify 'followSource' to prioritize the Source Parent of a group over the direct Parent
local function GetRelativeGroup(group, field, followSource)
	if group then
		return (group[field] and group) or GetRelativeGroup(followSource and group.sourceParent or group.parent, field);
	end
end
app.GetRelativeGroup = GetRelativeGroup;
-- Returns the first encountered group tracing upwards in direct parent hierarchy which has a value for the provided field
local function GetRelativeRawWithField(group, field)
	if group then
		return group[field] or GetRelativeRawWithField(rawget(group, "parent"), field);
	end
end
app.GetRelativeRawWithField = GetRelativeRawWithField;
-- Returns the first encountered group tracing upwards in direct parent hierarchy which returns a value from when passed into the provided function
local function GetRelativeByFunc(group, func)
	if group then
		return func(group) or GetRelativeByFunc(group.sourceParent or group.parent, func)
	end
end
app.GetRelativeByFunc = GetRelativeByFunc;
app.AssignChildren = AssignChildren;
app.AssignFieldValue = AssignFieldValue;
app.CloneArray = CloneArray;
app.CloneDictionary = CloneDictionary;
app.GetBestMapForGroup = GetBestMapForGroup;
app.GetDeepestRelativeFunc = GetDeepestRelativeFunc;
app.GetDeepestRelativeValue = GetDeepestRelativeValue;
app.GetRelativeField = GetRelativeField;
app.GetRawRelativeField = GetRawRelativeField
app.GetRelativeValue = GetRelativeValue;
app.IsComplete = function(o)
	local total = o.total
	if total and total > 0 then return total == o.progress; end
	if o.collectible then return o.collected; end
	if o.trackable then return o.saved; end
	return true;
end

-- Potentially shared functions which aren't yet added to Classic
app.DirectGroupRefresh = app.EmptyFunction
app.DirectGroupUpdate = app.EmptyFunction

local GetItemIcon = app.WOWAPI.GetItemIcon;
app.GetIconFromProviders = function(group)
	local providers = group.providers
	if not providers or #providers == 0 then return end

	local icon, v
	for i=1,#providers do
		v = providers[i]
		if v[2] > 0 then
			if v[1] == "o" then
				icon = app.ObjectIcons[v[2]];
			elseif v[1] == "i" then
				icon = GetItemIcon(v[2]);
			end
			if icon then return icon; end
		end
	end
end;
local GetItemInfo = app.WOWAPI.GetItemInfo;
app.GetNameFromProviders = function(group)
	local providers = group.providers
	if not providers or #providers == 0 then return end

	local pt, id, name, v
	for i=1,#providers do
		v = providers[i]
		id = v[2]
		if id > 0 then
			pt = v[1]
			if pt == "o" then
				name = app.ObjectNames[id];
				break
			elseif pt == "i" then
				name = GetItemInfo(id);
				break
			elseif pt == "n" then
				name = app.NPCNameFromID[id];
				break
			elseif pt == "s" then
				name = app.GetSpellName(id)
				break
			end
		end
	end
	return name
end
-- Returns the 'name' of a provider based on a given 'providerType' and 'providerID'
app.GetNameFromProvider = function(pt, id)
	if not pt or not id or id < 1 then return end

	if pt == "o" then
		return app.ObjectNames[id];
	elseif pt == "i" then
		return GetItemInfo(id);
	elseif pt == "n" then
		return app.NPCNameFromID[id];
	elseif pt == "s" then
		return app.GetSpellName(id)
	end
end

-- Common Metatable Functions
do
local __MetaTable = {
	AutoTable = function()
		return { __index = function(t, key)
			if key == nil then return end
			local k = {}
			t[key] = k
			return k
		end}
	end,
}
if app.__perf then
	-- if tracking performance, we actually want each MetaTable reference to create a unique metatable so that performance stats are not shared
	-- between multiple tables
	app.MetaTable = setmetatable({__noperf=true}, { __index = function(t,key) return __MetaTable[key] and __MetaTable[key]() or nil end })
else
	app.MetaTable = {}
	app.MetaTable.AutoTable = __MetaTable.AutoTable()
end
end

-- Cache information about the player.
app.Gender = UnitSex("player");
app.GUID = UnitGUID("player");
app.Level = UnitLevel("player");

-- Determine the player's faction.
local factionGroup = UnitFactionGroup("player");
app.Faction = factionGroup;
if factionGroup == "Horde" then
	app.FactionID = Enum.FlightPathFaction.Horde;
elseif factionGroup == "Alliance" then
	app.FactionID = Enum.FlightPathFaction.Alliance;
else
	-- Neutral Pandaren or... something else. Scourge? Neat.
	app.FactionID = 0;
end

-- Determine the player's name and class information.
local name, realm = UnitName("player");
if not realm then realm = GetRealmName(); end
local className, classFile, classID = UnitClass("player");
local classColorPrefix = "|c".. (RAID_CLASS_COLORS[classFile].colorStr or "ff1eff00");
app.Me = classColorPrefix .. name .. "-" .. realm .. "|r";
app.ClassName = classColorPrefix..className.."|r";
app.ClassIndex = classID;
app.Class = classFile;

-- Determine the player's race information.
local _, race, raceID = UnitRace("player");
local raceIndex = app.RaceDB[race] or raceID;
app.RaceIndex = type(raceIndex) == "table" and raceIndex[factionGroup] or raceIndex;
app.RaceID = raceID;
app.Race = race;

-- Whether ATT should ignore saving data experienced during the play session
app.IgnoreDataCaching = function()
	-- This function currently returns false on Tournament realms. Very good. >_<
	if IsOnTournamentRealm() then
		app.print("Data will not be saved for this Realm");
		app.IgnoreDataCaching = app.ReturnTrue;
		return true;
	end
	local realmName = GetRealmName();
	if  realmName:find("Mythic Dungeons") or
		realmName:find("Arena Champions") or
		realmName:find("US") or
		realmName:find("AU") or
		realmName:find("EU")
		-- confirm realm tournament names elsewhere
		-- or realmName:find("CN")
		-- or realmName:find("TW")
	then
		app.print("Data will not be saved for this Realm");
		app.IgnoreDataCaching = app.ReturnTrue;
		return true;
	end
end
-- Returns the Global reference by name, or if not existing,
-- setting it to {} if 'init' is true, or the 'init' value itself
app.LocalizeGlobal = function(globalName, init)
	local val = _G[globalName]
	if not val then
		if init == true then
			val = {}
			_G[globalName] = val
		elseif init then
			val = init
			_G[globalName] = val
		end
	end
	-- app.PrintDebug("LocalizeGlobal",globalName,val)
	return val;
end
-- Returns the Global reference by name, setting it to the 'init' value if not already existing
-- ONLY if no value returned from app.IgnoreDataCaching(). Otherwise the captured Global reference will be
-- forced to an alternate value to prevent being captured into the Saved Variables when unloading
app.LocalizeGlobalIfAllowed = function(globalName, init)
	if app.IgnoreDataCaching() then
		globalName = globalName.."__NOSTORE";
	end
	return app.LocalizeGlobal(globalName, init);
end

if not app.Presets.ALL then app.Presets.ALL = setmetatable({}, {__index = app.ReturnTrue}) end

do
-- Extend the Frame Class and give them ATT-Style Coroutines and Tooltips!
local coroutineStack = {};
local frame, errorID = app.frame, 0;
local function OnCoroutineUpdate()
	for i=#coroutineStack,1,-1 do
		if not coroutineStack[i][3]() then
			tremove(coroutineStack, i);
			if #coroutineStack < 1 then
				frame:SetScript("OnUpdate", nil);
				--print("Coroutines Finished.");
			end
		--else
			--print(coroutineStack[i][1], coroutineStack[i][2]);
		end
	end
end
local function Push(self, name, method)
	if #coroutineStack < 1 then
		frame:SetScript("OnUpdate", OnCoroutineUpdate);
	end
	local owner = self.Suffix or (self.GetName and self:GetName()) or self.text;
	--print(owner, "Push ->", name);
	coroutineStack[#coroutineStack + 1] = { owner, name, method }
end
local function StartATTCoroutine(self, name, method)
	if method then
		local refreshing = self.__attActiveCoroutines;
		if not refreshing then
			refreshing = {};
			self.__attActiveCoroutines = refreshing;
		end
		if not refreshing[name] then
			refreshing[name] = true;
			local co = coroutine.create(method);
			Push(self, name, function()
				-- Check the status of the coroutine
				if co and coroutine.status(co) ~= "dead" then
					local ok, err = coroutine.resume(co, self);
					if ok then return true;	-- This means more work is required.
					else
						-- Show the error. Returning nothing is the same as canceling the work.
						errorID = errorID + 1;
						local title, popupID = "Stack Trace #" .. errorID, "error-" .. errorID;
						app:SetupReportDialog(popupID, title, {err, "", debugstack(co)});
						print("Error:", app:Linkify(title, app.Colors.ChatLinkError, "dialog:" .. popupID));
						error(err,2);
					end
				end
				refreshing[name] = nil;
			end);
		end
	end
end
local SetATTTooltip = function(self, text)
	self:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		if text then
			GameTooltip:SetText(text, nil, nil, nil, nil, true);
		else
			GameTooltip:ClearLines();
		end
		if self.OnTooltip then
			local tooltipInfo = {};
			self:OnTooltip(tooltipInfo);
			app.Modules.Tooltip.AttachTooltipInformation(GameTooltip, tooltipInfo);
		end
		GameTooltip:Show();
	end);
	self:SetScript("OnLeave", function(self)
		if GameTooltip:GetOwner() == self then
			GameTooltip:Hide();
		end
	end);
end

---@class ATTFrameClass: Frame
local frameClass = getmetatable(frame).__index;
frameClass.SetATTTooltip = SetATTTooltip;
frameClass.StartATTCoroutine = StartATTCoroutine;
if app.IsRetail then
	local StartCoroutine = app.StartCoroutine
	app.StartATTCoroutine = function(self, ...)
		StartCoroutine(...);
	end
else
	app.StartATTCoroutine = function(self, ...)
		StartATTCoroutine(frame, ...);
	end
end

local button = CreateFrame("Button", nil, frame);
---@class ATTButtonClass: Button
local buttonClass = getmetatable(button).__index;
buttonClass.StartATTCoroutine = StartATTCoroutine;
buttonClass.SetATTTooltip = SetATTTooltip;
button:Hide();

local checkbutton = CreateFrame("CheckButton", nil, frame);
---@class ATTCheckButtonClass: CheckButton
local checkButtonClass = getmetatable(checkbutton).__index;
checkButtonClass.SetATTTooltip = SetATTTooltip;
checkbutton:Hide();

local editbox = CreateFrame("EditBox", nil, frame);
---@class ATTEditBoxClass: EditBox
local editBoxClass = getmetatable(editbox).__index;
editBoxClass.SetATTTooltip = SetATTTooltip;
editbox:Hide();
end

function app:ShowPopupDialog(msg, callback)
	local popup = StaticPopupDialogs.ALL_THE_THINGS;
	if not popup then
		popup = {
			button1 = "Yes",
			button2 = "No",
			timeout = 0,
			showAlert = true,
			whileDead = true,
			hideOnEscape = true,
			enterClicksFirstButton = true,
			preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
		};
		StaticPopupDialogs.ALL_THE_THINGS = popup;
	end
	popup.text = msg or "Are you sure?";
	popup.OnAccept = callback or print;
	StaticPopup_Hide ("ALL_THE_THINGS");
	StaticPopup_Show ("ALL_THE_THINGS");
end
function app:ShowPopupDialogWithEditBox(msg, text, callback, timeout)
	local popup = StaticPopupDialogs.ALL_THE_THINGS_EDITBOX;
	if not popup then
		popup = {
			button1 = "Okay",
			timeout = timeout,
			showAlert = true,
			whileDead = true,
			hideOnEscape = true,
			enterClicksFirstButton = true,
			hasEditBox = true,
			OnAccept = function(self)
				if popup.callback and type(popup.callback) == "function" then
					local editBox = self.editBox or self.EditBox or (self.GetEditBox and self:GetEditBox())
					popup.callback(editBox:GetText());
				end
			end,
			preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
		};
		StaticPopupDialogs.ALL_THE_THINGS_EDITBOX = popup;
	end
	popup.OnShow = function (self, data)
		local editBox = self.editBox or self.EditBox or (self.GetEditBox and self:GetEditBox())
		editBox:SetText(text);
		editBox:SetJustifyH("CENTER");
		editBox:SetWidth(240);
		if editBox.HighlightText then
			editBox:HighlightText();
		end
	end;
	popup.text = msg or "";
	popup.callback = callback;
	StaticPopup_Hide ("ALL_THE_THINGS_EDITBOX");
	StaticPopup_Show ("ALL_THE_THINGS_EDITBOX");
end
function app:ShowPopupDialogWithMultiLineEditBox(text, onclick, label)
	local f = ATTEditBox;
	if not f then
		---@class ATTEditBox: BackdropTemplate, Frame
		f = CreateFrame("Frame", "ATTEditBox", UIParent, "DialogBoxFrame")
		f:SetPoint("CENTER")
		f:SetSize(600, 500)
		f:SetBackdrop({
			bgFile = 137056,
			edgeFile = 137057,
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 4, right = 4, top = 4, bottom = 4 }
		})
		f:SetBackdropColor(0, 0, 0, 1);
		f:SetMovable(true)
		f:SetClampedToScreen(true)
		f:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" then
				self:StartMoving()
			end
		end)
		f:SetScript("OnMouseUp", f.StopMovingOrSizing)

		-- ScrollFrame
		---@class ATTEditBoxScrollFrame: ScrollFrame
		local sf = CreateFrame("ScrollFrame", "ATTEditBoxScrollFrame", f, "UIPanelScrollFrameTemplate")
		---@diagnostic disable-next-line: undefined-field
		sf:SetPoint("BOTTOM", ATTEditBoxButton, "TOP", 0, 4)
		sf:SetPoint("LEFT", 16, 0)
		sf:SetPoint("RIGHT", -32, 0)
		f.ScrollFrame = sf;

		-- Label (conditionally create)
		if label then
			local l = f:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
			l:SetPoint("TOP", f, "TOP", 0, -3);
			l:SetJustifyH("CENTER");
			l:SetText(label or "");
			f.Label = l;
			sf:SetPoint("TOP", l, "BOTTOM", 0, -5)
		else
			sf:SetPoint("TOP", 0, -16);
		end

		-- EditBox
		---@class ATTEditBoxEditBox: EditBox
		local eb = CreateFrame("EditBox", "ATTEditBoxEditBox", sf)
		eb:SetSize(sf:GetSize())
		eb:SetMultiLine(true)
		eb:SetAutoFocus(false) -- dont automatically focus
		eb:SetFontObject("ChatFontNormal")
		eb:SetScript("OnEscapePressed", function() f:Hide() end)
		---@diagnostic disable-next-line: undefined-field
		ATTEditBoxButton:SetScript("OnClick", function (self, button, down)
			if self:GetParent().OnClick then
				self:GetParent().OnClick(eb:GetText());
			end
			self:GetParent():Hide();
		end);
		sf:SetScrollChild(eb)
		f.EditBox = eb;

		-- Resizable
		f:SetResizable(true)
		if f.SetResizeBounds then
			f:SetResizeBounds(150, 100, 600, 600);
		else
			---@diagnostic disable-next-line: undefined-field
			f:SetMinResize(150, 100);
		end

		local rb = CreateFrame("Button", "ATTEditBoxResizeButton", ATTEditBox)
		rb:SetPoint("BOTTOMRIGHT", -6, 7)
		rb:SetSize(16, 16)

		rb:SetNormalTexture(386864)
		rb:SetHighlightTexture(386863)
		rb:SetPushedTexture(386862)

		rb:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" then
				f:StartSizing("BOTTOMRIGHT")
				self:GetHighlightTexture():Hide() -- more noticeable
			end
		end)
		rb:SetScript("OnMouseUp", function(self, button)
			f:StopMovingOrSizing()
			self:GetHighlightTexture():Show()
			eb:SetWidth(sf:GetWidth())
		end)
		f:Show()
	end
	f.OnClick = onclick;
	f:Show()
	if text then
		if label then
			local l = f.Label;
			if l then l:SetText(label); end
		end
		f.EditBox:SetText(text)
		f.EditBox:HighlightText();
		f.EditBox:SetFocus();
	end
end
function app:ShowPopupDialogToReport(reportReason, text)
	app:ShowPopupDialogWithMultiLineEditBox(text, nil, (reportReason or "Missing Data").."\n"..app.L.PLEASE_REPORT_MESSAGE..app.L.REPORT_TIP);
end

-- Define Modules
app.Modules = {};

-- Global Variables
AllTheThingsSavedVariables = {};
