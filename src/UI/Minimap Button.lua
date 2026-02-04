-- App locals
local appName, app = ...;

-- App & Module locals
local DESCRIPTION_SEPARATOR, L = app.DESCRIPTION_SEPARATOR, app.L;

-- Global locals
local math_floor = math.floor;

---@class ATTGameTooltip
local GameTooltip = GameTooltip;

-- Minimap Button
local MinimapButton;
function AllTheThings_MinimapButtonOnClick(self, button)
	if button == "RightButton" then
		-- Right Button opens the Options menu.
		app.Settings:Open();
	else
		-- Left Button
		if IsShiftKeyDown() then
			app.RefreshCollections();
		elseif app.ToggleMiniListForCurrentZone and (IsAltKeyDown() or IsControlKeyDown()) then
			app.ToggleMiniListForCurrentZone();
		else
			app.ToggleMainList();
		end
	end
end
function AllTheThings_MinimapButtonOnEnter(self, button)
	GameTooltip:SetOwner(type(self) ~= "string" and self or button, "ANCHOR_LEFT");
	GameTooltip:ClearLines();
	GameTooltip:ClearATTReferenceTexture();
	local reference = app:GetDataCache();
	if reference then
		GameTooltip:SetATTReferenceForTexture(reference);

		local left, right = DESCRIPTION_SEPARATOR:split(reference.title);
		GameTooltip:AddDoubleLine(reference.text, reference.summaryText, 1, 1, 1);
		GameTooltip:AddDoubleLine(left, right, 1, 1, 1);

		local prime = app:GetWindow("Prime");
		if prime and (prime.HasPendingUpdate or (not prime.data or not prime.data.TLUG)) then
			GameTooltip:AddDoubleLine(L["UPDATES_PAUSED"], L["MAIN_LIST_REQUIRES_REFRESH"], 1, 0.4, 0.4);
		else
			GameTooltip:AddLine(reference.description, 0.4, 0.8, 1, 1);
		end
	else
		GameTooltip:AddDoubleLine(L["TITLE"], L["MAIN_LIST_REQUIRES_REFRESH"], 1, 1, 1);
	end
	GameTooltip:AddLine(L["MINIMAP_MOUSEOVER_TEXT"], 1, 1, 1);
	GameTooltip:Show();
end
function AllTheThings_MinimapButtonOnLeave()
	GameTooltip:Hide();
	GameTooltip:ClearATTReferenceTexture();
end
local function CreateMinimapButton()
	-- Create the Button for the Minimap frame. Create a local and non-local copy.
	---@class ATTMinimapButton: Button
	local button = CreateFrame("Button", appName .. "-Minimap", Minimap);
	button:SetHighlightTexture(app.asset("MinimapHighlight_64x64"));
	button:SetPoint("CENTER", 0, 0);
	button:SetFrameStrata("HIGH");
	button:SetMovable(true);
	button:EnableMouse(true);
	button:RegisterForDrag("LeftButton", "RightButton");
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	MinimapButton = button;

	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetTexture(app.asset("Discord_2_64"));
	texture:SetAllPoints();
	texture:Show();
	button.texture = texture;

	-- Button Configuration
	local rounding = 10;
	local position = AllTheThingsSavedVariables.MinimapButtonAngle or 193.47782;
	local MinimapShapes = {
		-- quadrant booleans (same order as SetTexCoord)
		-- {bottom-right, bottom-left, top-right, top-left}
		-- true = rounded, false = squared
		["ROUND"]			= {true,  true,  true,  true },
		["SQUARE"]			= {false, false, false, false},
		["CORNER-TOPLEFT"]		= {false, false, false, true },
		["CORNER-TOPRIGHT"]		= {false, false, true,  false},
		["CORNER-BOTTOMLEFT"]		= {false, true,  false, false},
		["CORNER-BOTTOMRIGHT"]		= {true,  false, false, false},
		["SIDE-LEFT"]			= {false, true,  false, true },
		["SIDE-RIGHT"]			= {true,  false, true,  false},
		["SIDE-TOP"]			= {false, false, true,  true },
		["SIDE-BOTTOM"]		= {true,  true,  false, false},
		["TRICORNER-TOPLEFT"]		= {false, true,  true,  true },
		["TRICORNER-TOPRIGHT"]		= {true,  false, true,  true },
		["TRICORNER-BOTTOMLEFT"]	= {true,  true,  false, true },
		["TRICORNER-BOTTOMRIGHT"]	= {true,  true,  true,  false},
	};
	button.update = function(self)
		local angle = math.rad(position)
		local x, y, q = math.cos(angle), math.sin(angle), 1;
		if x < 0 then q = q + 1; end
		if y > 0 then q = q + 2; end
		local radius = AllTheThingsSavedVariables.MinimapButtonRadius or 0;
		local width = (Minimap:GetWidth() * 0.5) + radius;
		local height = (Minimap:GetHeight() * 0.5) + radius;
		if MinimapShapes[GetMinimapShape and GetMinimapShape() or "ROUND"][q] then
			x, y = x * width, y * height;
		else
			x = math.max(-width, math.min(x*(math.sqrt(2*(width)^2)-rounding), width))
			y = math.max(-height, math.min(y*(math.sqrt(2*(height)^2)-rounding), height))
		end
		self:SetPoint("CENTER", "Minimap", "CENTER", math_floor(x), math_floor(y));
	end
	local update = function(self)
		local mx, my = Minimap:GetCenter();
		local px, py = GetCursorPosition();
		local scale = Minimap:GetEffectiveScale();
		---@diagnostic disable-next-line: deprecated
		position = math.deg(math.atan2((py / scale) - my, (px / scale) - mx)) % 360;
		AllTheThingsSavedVariables.MinimapButtonAngle = position;
		self:Raise();
		self:update();
	end

	-- Register for Frame Events
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", update);
	end);
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil);
	end);
	button:SetScript("OnEnter", AllTheThings_MinimapButtonOnEnter);
	button:SetScript("OnLeave", AllTheThings_MinimapButtonOnLeave);
	button:SetScript("OnClick", AllTheThings_MinimapButtonOnClick);
	button:SetScript("OnEvent", button.update);
	button:RegisterEvent("LOADING_SCREEN_DISABLED");
	button:update();
	button:Show();
	return button;
end
app.SetMinimapButtonRadius = function(radius)
	AllTheThingsSavedVariables.MinimapButtonRadius = type(radius) == "number" and radius or 0;
	if MinimapButton then MinimapButton:update(); end
end
app.SetMinimapButtonSettings = function(visible, size)
	if visible then
		(MinimapButton or CreateMinimapButton()):SetSize(size, size);
		MinimapButton:Show();
	elseif MinimapButton then
		MinimapButton:Hide();
	end
end

-- Register with the Data Broker
app.AddEventHandler("OnStartup", function()
	if not LibStub then return end

	local LDB = LibStub:GetLibrary("LibDataBroker-1.1", true)
	if not LDB then return end

	LDB:NewDataObject(L["TITLE"], {
		type = "launcher",
		icon = app.asset("logo_32x32"),
		OnClick = AllTheThings_MinimapButtonOnClick,
		OnEnter = AllTheThings_MinimapButtonOnEnter,
		OnLeave = AllTheThings_MinimapButtonOnLeave,
	});
end);
