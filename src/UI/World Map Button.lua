-- App locals
local appName, app = ...;
local L, GameTooltip = app.L, GameTooltip;
local C_Map_GetMapInfo = C_Map.GetMapInfo;

-- World Map Button
local XShift = app.IsRetail and -1 or 0
local YShift = app.IsRetail and -65 or -32
local WorldMapButton;
local function CreateWorldMapButton()
	-- wonder if there's other special world map button addons we need to worry about... thanks Blizzard for no common API for a feature you added
	local KrowiWorldMapButtons = LibStub and LibStub("Krowi_WorldMapButtons-1.4", true)
	local button
	if KrowiWorldMapButtons then
		button = KrowiWorldMapButtons:Add(nil, "BUTTON")
		-- this is a non-standard function that Krowi uses when the world map changes to sync updates to the button. it errors if not existing
		button.Refresh = app.EmptyFunction
	else
		button = CreateFrame("BUTTON", appName .. "-WorldMap", WorldMapFrame:GetCanvasContainer());
		button:SetPoint("TOPRIGHT", XShift, YShift);
	end
	button:SetFrameStrata("HIGH");
	button:SetHighlightTexture(app.asset("MinimapHighlight_64x64"));
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	button:EnableMouse(true);
	button:SetSize(36, 36);
	WorldMapButton = button;

	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetTexture(app.asset("Discord_2_64"));
	texture:SetAllPoints();
	texture:Show();
	button.texture = texture;

	local minilist = app:GetWindow(app.IsClassic and "MiniList" or "CurrentInstance");
	button:SetScript("OnEnter", function(self)
		local mapID = WorldMapFrame:GetMapID();
		self.mapID = mapID;
		if mapID then
			local mapInfo = C_Map_GetMapInfo(mapID);
			if mapInfo then
				GameTooltip:SetOwner(self, "ANCHOR_LEFT");
				GameTooltip:ClearLines();
				GameTooltip:AddLine(L["OPEN_MINILIST_FOR"] .. mapInfo.name);
				GameTooltip:Show();
				return;
			end
		end
		GameTooltip:SetOwner(self, "ANCHOR_LEFT");
		GameTooltip:ClearLines();
		GameTooltip:AddLine("Invalid mapID detected, unable to assign map to ATT.");
		GameTooltip:Show();
	end);
	button:SetScript("OnLeave", function()
		GameTooltip:Hide();
		GameTooltip:ClearLines();
	end);
	button:SetScript("OnClick", function(self)
		local mapID = self.mapID;
		if mapID and mapID > 0 then
			minilist:SetMapID(mapID, true);
		end
	end);
	return button;
end

app.SetWorldMapButtonSettings = function(visible)
	if visible then
		(WorldMapButton or CreateWorldMapButton()):Show();
	elseif WorldMapButton then
		WorldMapButton:Hide();
	end
end