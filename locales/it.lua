if GetLocale() ~= "itIT" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";





	L.REQUIRES = "Richiede";






	L.KEYBINDINGS = SETTINGS_KEYBINDINGS_LABEL;

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "These are unlocked per-character and are not currently shared across your account. If someone at Blizzard is reading this, it would be really swell if you made these account wide.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. Gli Stormi dei Draghi di Azeroth sono tornati, richiamati a difendere la loro dimora ancestrale, le Isole dei Draghi. Ricche di magia elementale e delle energie vitali di Azeroth, le isole si sono risvegliate, e starà a te esplorare le loro meraviglie primordiali e i loro segreti dimenticati da tempo immemore.";	--TODO: First sentence

	L.TRADING_POST = "Emporio";















local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, il Trono Infuocato"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Ny'alotha, la Città Risvegliata"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, il Bazar Celato"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
			[-5202] = "Equilibrio di potere",						-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({





		APPEARANCES_CHECKBOX = "Aspetto";
		BATTLE_PETS_CHECKBOX = "Mascotte da combattimento";
		RECIPES_CHECKBOX = "Ricette";
		TITLES_CHECKBOX = "Titoli";

		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essenze del Cuore di Azeroth";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manoscritto del Guardadraghi";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguaci & Avventurieri";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Abilità dell'Incisione Runica";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Condotti";















})
do a[key] = value; end

if app.IsRetail then
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
})
do a[key] = value; end
end
