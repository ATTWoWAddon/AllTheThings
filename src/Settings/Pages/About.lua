local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs = ipairs;

-- Settings: About Page
local child = settings:CreateOptionsPage(appName)

local ACTIVE_CONTRIBUTORS = {
	"AlexSoft",
	"Braghe",
	"Danny Donkey",
	"Darkal",
	"DeadSerious",
	"Eremeir",
	"Exodius",
	"Gold",
	"Jenstonedart",
	"Jezartroz",
	"Molkree",
	"Myrhial",
	"Pr3vention",
	"Runawaynow",
	"Sanctuari",
	"ShadowBrooks",
	"Tag",
};
local HALL_OF_FAME = {
	"Aiue",
	"Avella",
	"BigBlaris",
	"Blueyleader",
	"Boohyaka",
	"Daktar",
	"Eckhardt",
	"Eiltherune",
	"Heallie",
	"Iyanden",
	"Lucetia",
	"Mogwai",
	"Oiche",
	"Oxlotus",
	"Sadidorf",
	"Silly",
	"Slumber",
	"Talonzor",
};

local Links = {
	{ text = L.CURSEFORGE_BUTTON_LABEL, tooltip = L.CURSEFORGE_BUTTON_TOOLTIP, copypasta = "https://www.curseforge.com/wow/addons/all-the-things" },
	{ text = L.DISCORD_BUTTON_LABEL, tooltip = L.DISCORD_BUTTON_TOOLTIP, copypasta = "discord.gg/allthethings" },
	{ text = L.GITHUB_BUTTON_LABEL, tooltip = L.GITHUB_BUTTON_TOOLTIP, copypasta = "https://github.com/ATTWoWAddon/AllTheThings" },
	{ text = L.MERCH_BUTTON_LABEL, tooltip = L.MERCH_BUTTON_TOOLTIP, copypasta = "designbyhumans.com/shop/allthethings" },
	{ text = L.PATREON_BUTTON_LABEL, tooltip = L.PATREON_BUTTON_TOOLTIP, copypasta = "patreon.com/allthethings" },
	{ text = L.TWITCH_BUTTON_LABEL, tooltip = L.TWITCH_BUTTON_TOOLTIP, copypasta = "twitch.tv/crieve" },
	{ text = L.WAGO_BUTTON_LABEL, tooltip = L.WAGO_BUTTON_TOOLTIP, copypasta = "https://addons.wago.io/addons/allthethings" },
};

local content = settings.CreatePageColumn(child, 0, 656)
local y = -4
local function AddText(text)
	local label = content:CreateTextLabel(text)
	label:SetWidth(content.SectionWidth - 16)
	label:SetWordWrap(true)
	label:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y - 4)
	y = y - label:GetStringHeight() - 16
end
AddText(L.TITLE .. L.ABOUT_TOP)

y = y - settings.CreatePageSectionHeader(content, L.SETTINGS_LINKS, y)
local x = 8
for _,link in ipairs(Links) do
	local button = content:CreateButton({ text = link.text, tooltip = link.tooltip, }, {
		OnClick = function()
			app:ShowPopupDialogWithEditBox(L.CLIPBOARDCOPYPASTE, link.copypasta, nil, 10)
		end,
	})
	if x + button:GetWidth() > content.SectionWidth then
		x = 8
		y = y - 26
	end
	button:SetPoint("TOPLEFT", content, "TOPLEFT", x, y - 4)
	x = x + button:GetWidth() + 4
end
y = y - 40

y = y - settings.CreatePageSectionHeader(content, CREDITS or "Credits", y)
AddText(L.ABOUT_BOTTOM:format(
	app.TableConcat(ACTIVE_CONTRIBUTORS, nil, nil, ", "),
	app.TableConcat(HALL_OF_FAME, nil, nil, ", "),
	L.COLLECTED_ICON, L.COLLECTED_APPEARANCE_ICON, L.NOT_COLLECTED_ICON))
content:SetHeight(-y)
