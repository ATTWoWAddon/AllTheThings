local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: About Page
local child = settings:CreateOptionsPage(appName)

local textAbout = child:CreateTextLabel(L.TITLE .. L.ABOUT_TOP)
if child.separator then
	textAbout:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	textAbout:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local SocialButtonEvents = {
	OnClick = function(self)
		app:ShowPopupDialogWithEditBox(L.CLIPBOARDCOPYPASTE, self.copypasta or self:GetText(), nil, 10)
	end,
};

local buttonCurseForge = child:CreateButton(
{ text = L.CURSEFORGE_BUTTON_LABEL, tooltip = L.CURSEFORGE_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonCurseForge:SetPoint("BOTTOMLEFT", child, 0, 10)
buttonCurseForge.copypasta = "https://www.curseforge.com/wow/addons/all-the-things";

local buttonDiscord = child:CreateButton(
{ text = L.DISCORD_BUTTON_LABEL, tooltip = L.DISCORD_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonDiscord:SetPoint("TOPLEFT", buttonCurseForge, "TOPRIGHT", 4, 0)
buttonDiscord.copypasta = "discord.gg/allthethings";

local buttonGitHub = child:CreateButton(
{ text = L.GITHUB_BUTTON_LABEL, tooltip = L.GITHUB_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonGitHub:SetPoint("TOPLEFT", buttonDiscord, "TOPRIGHT", 4, 0)
buttonGitHub.copypasta = "https://github.com/ATTWoWAddon/AllTheThings";

local buttonMerch = child:CreateButton(
{ text = L.MERCH_BUTTON_LABEL, tooltip = L.MERCH_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonMerch:SetPoint("TOPLEFT", buttonGitHub, "TOPRIGHT", 4, 0)
buttonMerch.copypasta = "designbyhumans.com/shop/allthethings";

local buttonPatreon = child:CreateButton(
{ text = L.PATREON_BUTTON_LABEL, tooltip = L.PATREON_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonPatreon:SetPoint("TOPLEFT", buttonMerch, "TOPRIGHT", 4, 0)
buttonPatreon.copypasta = "patreon.com/allthethings";

local buttonTwitch = child:CreateButton(
{ text = L.TWITCH_BUTTON_LABEL, tooltip = L.TWITCH_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonTwitch:SetPoint("TOPLEFT", buttonPatreon, "TOPRIGHT", 4, 0)
buttonTwitch.copypasta = "twitch.tv/crieve";

local buttonWago = child:CreateButton(
{ text = L.WAGO_BUTTON_LABEL, tooltip = L.WAGO_BUTTON_TOOLTIP, }, SocialButtonEvents)
buttonWago:SetPoint("TOPLEFT", buttonTwitch, "TOPRIGHT", 4, 0)
buttonWago.copypasta = "https://addons.wago.io/addons/allthethings";

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

local textShoutout = child:CreateTextLabel(L.ABOUT_BOTTOM:format(
	app.TableConcat(ACTIVE_CONTRIBUTORS, nil, nil, ", "),
	app.TableConcat(HALL_OF_FAME, nil, nil, ", "),
	L.COLLECTED_ICON, L.COLLECTED_APPEARANCE_ICON, L.NOT_COLLECTED_ICON))
textShoutout:SetPoint("BOTTOMLEFT", buttonCurseForge, "TOPLEFT", 0, 20)