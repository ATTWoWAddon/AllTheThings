--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--            Copyright 2017-2023 Dylan Fortune (Crieve-Sargeras)             --
--------------------------------------------------------------------------------
-- This is a hidden frame that intercepts all of the event notifications that we have registered for.
local appName, app = ...;
app.EmptyTable = {};

-- Generate the version identifier.
app.Version = GetAddOnMetadata(appName, "Version");
if string.match(app.Version, "version") then
	app.Version = "[Git]";
else
	app.Version = "v" .. app.Version;
end

-- ReloadUI slash command (for ease of use)
SLASH_RELOADUI1 = "/reloadui";
SLASH_RELOADUI2 = "/rl";
SlashCmdList["RELOADUI"] = ReloadUI;

local assetRootPath = "Interface\\Addons\\" .. appName .. "\\assets\\";
app.asset = function(path)
	return assetRootPath .. path;
end

-- External API
-- TODO: We will use a common API eventually.
if not _G["ATTC"] then
	_G["ATTC"] = app;
end
if not _G["AllTheThings"] then
	_G["AllTheThings"] = app;
end

-- Debugging
-- app.Debugging = true;
-- app.DebuggingEvents = true;	-- Do not force debug prints to be linked to all the Event spam
-- app.DEBUG_PRINT = true;	-- TODO: Deprecate this variable and use the other one.

-- Consolidated debug-only print with preceding precise timestamp
local GetTimePreciseSec = GetTimePreciseSec;
local DEBUG_PRINT_LAST;
app.PrintDebug = function(...)
	DEBUG_PRINT_LAST = GetTimePreciseSec();
	if app.DEBUG_PRINT then print(DEBUG_PRINT_LAST,...) end
end
-- Consolidated debug-only print with precise frame duration since last successful print
app.PrintDebugPrior = function(...)
	if app.DEBUG_PRINT then
		local now = GetTimePreciseSec();
		if DEBUG_PRINT_LAST then
			local diff = now - DEBUG_PRINT_LAST;
			print(now,"<>",diff,"Stutter @", math.ceil(1 / diff), ...)
		else
			print(now,0,...)
		end
		DEBUG_PRINT_LAST = GetTimePreciseSec();
	end
end

-- API Functions
local function AssignFieldValue(group, field, value)
	if group then
		group[field] = value;
		if group.g then
			for i,o in ipairs(group.g) do
				AssignFieldValue(o, field, value)
			end
		end
	end
end
local function CloneArray(arr)
	local clone = {};
	for i,value in ipairs(arr) do
		tinsert(clone, value);
	end
	return clone;
end
local function CloneDictionary(data)
	local clone = {};
	for key,value in pairs(data) do
		clone[key] = value;
	end
	return clone;
end
local function CloneReference(group)
	local clone = {};
	if group.g then
		local g = {};
		for i,group in ipairs(group.g) do
			local child = CloneReference(group);
			child.parent = clone;
			tinsert(g, child);
		end
		clone.g = g;
	end
	return setmetatable(clone, { __index = group });
end
local function GetRelativeValue(group, field)
	if group then
		return group[field] or GetRelativeValue(group.sourceParent or group.parent, field);
	end
end
app.AssignFieldValue = AssignFieldValue;
app.CloneArray = CloneArray;
app.CloneDictionary = CloneDictionary;
app.CloneReference = CloneReference;
app.GetRelativeValue = GetRelativeValue;

-- Declare Event Handlers
app.EventHandlers = {
	OnRecalculate = {}
};

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
local raceName, race, raceID = UnitRace("player");
local raceIndex = app.RaceDB[race] or raceID;
app.RaceIndex = type(raceIndex) == "table" and raceIndex[factionGroup] or raceIndex;
app.RaceID = raceID;
app.Race = race;

-- Create an Event Processor.
local events = {};
local frame = CreateFrame("FRAME", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate");
frame.Suffix = "ATTFRAME";
if app.DebuggingEvents then
frame:SetScript("OnEvent", function(self, e, ...)
	app.PrintDebug(e,...);
	(events[e] or print)(...);
	app.PrintDebugPrior(e);
end);
else
frame:SetScript("OnEvent", function(self, e, ...) (events[e] or print)(...); end);
end
frame:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
frame:SetSize(1, 1);
frame:Show();
app.frame = frame;
app.events = events;
app.RegisterEvent = function(self, ...)
	frame:RegisterEvent(...);
end
app.UnregisterEvent = function(self, ...)
	frame:UnregisterEvent(...);
end
app.SetScript = function(self, ...)
	local scriptName, method = ...;
	if method then
		frame:SetScript(scriptName, function(...)
			method(app, ...);
		end);
	else
		frame:SetScript(scriptName, nil);
	end
end

(function()
-- Extend the Frame Class and give them ATT-Style Coroutines and Tooltips!
local coroutineStack = {};
local function OnCoroutineUpdate()
	for i=#coroutineStack,1,-1 do
		if not coroutineStack[i][3]() then
			table.remove(coroutineStack, i);
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
	table.insert(coroutineStack, { owner, name, method });
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
						print(debugstack(co));
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
		GameTooltip:SetText(text, nil, nil, nil, nil, true);
		if self.OnTooltip then self:OnTooltip(); end
		GameTooltip:Show();
	end);
	self:SetScript("OnLeave", function(self)
		if GameTooltip:GetOwner() == self then
			GameTooltip:Hide();
		end
	end);
end

local frameClass = getmetatable(frame).__index;
frameClass.SetATTTooltip = SetATTTooltip;
frameClass.StartATTCoroutine = StartATTCoroutine;
app.StartATTCoroutine = function(self, ...)
	StartATTCoroutine(frame, ...);
end

local button = CreateFrame("BUTTON", nil, frame);
local buttonClass = getmetatable(button).__index;
buttonClass.StartATTCoroutine = StartATTCoroutine;
buttonClass.SetATTTooltip = SetATTTooltip;
button:Hide();

local checkbutton = CreateFrame("CHECKBUTTON", nil, frame);
getmetatable(checkbutton).__index.SetATTTooltip = SetATTTooltip;
checkbutton:Hide();

local editbox = CreateFrame("EDITBOX", nil, frame);
getmetatable(editbox).__index.SetATTTooltip = SetATTTooltip;
editbox:Hide();
end)();

function app:ShowPopupDialog(msg, callback)
	local popup = StaticPopupDialogs["ALL_THE_THINGS"];
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
		StaticPopupDialogs["ALL_THE_THINGS"] = popup;
	end
	popup.text = msg or "Are you sure?";
	popup.OnAccept = callback or print;
	StaticPopup_Hide ("ALL_THE_THINGS");
	StaticPopup_Show ("ALL_THE_THINGS");
end
function app:ShowPopupDialogWithEditBox(msg, text, callback, timeout)
	local popup = StaticPopupDialogs["ALL_THE_THINGS_EDITBOX"];
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
					popup.callback(self.editBox:GetText());
				end
			end,
			preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
		};
		StaticPopupDialogs["ALL_THE_THINGS_EDITBOX"] = popup;
	end
	popup.OnShow = function (self, data)
		self.editBox:SetText(text);
		self.editBox:SetJustifyH("CENTER");
		self.editBox:SetWidth(240);
		if self.editBox.HighlightText then
			self.editBox:HighlightText();
		end
	end;
	popup.text = msg or "";
	popup.callback = callback;
	StaticPopup_Hide ("ALL_THE_THINGS_EDITBOX");
	StaticPopup_Show ("ALL_THE_THINGS_EDITBOX");
end
function app:ShowPopupDialogWithMultiLineEditBox(text, onclick, label)
	if not ATTEditBox then
		local f = CreateFrame("Frame", "ATTEditBox", UIParent, "DialogBoxFrame")
		f:SetPoint("CENTER")
		f:SetSize(600, 500)
		f:SetBackdrop({
			bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
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
		local sf = CreateFrame("ScrollFrame", "ATTEditBoxScrollFrame", ATTEditBox, "UIPanelScrollFrameTemplate")
		sf:SetPoint("LEFT", 16, 0)
		sf:SetPoint("RIGHT", -32, 0)
		sf:SetPoint("BOTTOM", ATTEditBoxButton, "TOP", 0, 0)
		
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
		local eb = CreateFrame("EditBox", "ATTEditBoxEditBox", ATTEditBoxScrollFrame)
		eb:SetSize(sf:GetSize())
		eb:SetMultiLine(true)
		eb:SetAutoFocus(false) -- dont automatically focus
		eb:SetFontObject("ChatFontNormal")
		eb:SetScript("OnEscapePressed", function() f:Hide() end)
		ATTEditBoxButton:SetScript("OnClick", function (self, button, down)
			if self:GetParent().OnClick then
				self:GetParent().OnClick(ATTEditBoxEditBox:GetText());
			end
			self:GetParent():Hide();
		end);
		sf:SetScrollChild(eb)
		
		-- Resizable
		f:SetResizable(true)
		if f.SetResizeBounds then
			f:SetResizeBounds(150, 100, 600, 600);
		else
			f:SetMinResize(150, 100);
		end
		
		local rb = CreateFrame("Button", "ATTEditBoxResizeButton", ATTEditBox)
		rb:SetPoint("BOTTOMRIGHT", -6, 7)
		rb:SetSize(16, 16)
		
		rb:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
		rb:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
		rb:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
		
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
	ATTEditBox.OnClick = onclick;
	if text then
		ATTEditBoxEditBox:SetText(text)
		ATTEditBoxEditBox:HighlightText();
		ATTEditBoxEditBox:SetFocus();
	end
	ATTEditBox:Show()
end
function app:ShowPopupDialogToReport(reportReason, text)
	app:ShowPopupDialogWithMultiLineEditBox(text, nil, (reportReason or "Missing Data").."\n"..app.L["PLEASE_REPORT_MESSAGE"]..app.L["REPORT_TIP"]);
end

-- Define Modules
if app.__perf then
	local perf = app.__perf
	app.Modules = setmetatable({}, perf.MetaCapture)
else
	app.Modules = {};
end

-- Global Variables
AllTheThingsSavedVariables = {};