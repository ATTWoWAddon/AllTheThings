local _, app = ...;
if app.IsClassic then return; end	-- Classic uses its own windows... for now!
local L, settings = app.L, app.Settings;

-- Settings: Sync Page
local child = settings:CreateOptionsPage(L.SYNC_PAGE, L.FEATURES_PAGE)

-- CONTENT
local headerSync = child:CreateHeaderLabel(L.ACCOUNT_SYNCHRONIZATION)
if child.separator then
	headerSync:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerSync:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local checkboxAutoSync = child:CreateCheckBox(L.AUTO_SYNC_ACC_DATA_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:Sync"))
end,
function(self)
	local checked = self:GetChecked()
	settings:SetTooltipSetting("Auto:Sync", checked)
	if checked then app:Synchronize(true) end
end)
checkboxAutoSync:SetATTTooltip(L.AUTO_SYNC_ACC_DATA_TOOLTIP)
checkboxAutoSync:SetPoint("TOPLEFT", headerSync, "BOTTOMLEFT", 4, 0)

local function InitializeATTSyncWindow()
	local syncWindow = app:GetWindow("Account Management")
	child:RegisterObject(syncWindow)
	syncWindow.OnRefresh = function()
		syncWindow:SetVisible(true, true)
	end
	syncWindow.CloseButton:Disable()
	syncWindow:ClearAllPoints()
	syncWindow:SetPoint("LEFT", headerSync, 0, 0)
	syncWindow:SetPoint("RIGHT", headerSync, "LEFT", 300, 0)
	syncWindow:SetPoint("TOP", checkboxAutoSync, "BOTTOM", 0, 4)
	syncWindow:SetPoint("BOTTOM", child, "BOTTOM", 0, 4)
	syncWindow:SetClampedToScreen(false)
	pcall(syncWindow.SetUserPlaced, syncWindow, false)
	syncWindow:SetToplevel(false)
	syncWindow:SetMovable(false)
	syncWindow:SetResizable(false)
	syncWindow:SetParent(child)

	child:SetScript("OnShow", function()
		local function refresh()
			syncWindow:Update()
		end
		RunNextFrame(refresh)
	end)
end

function child:OnRefresh()
	if not self.InitializeATTSyncWindow then
		InitializeATTSyncWindow();
		self.InitializeATTSyncWindow = true;
	end
end
