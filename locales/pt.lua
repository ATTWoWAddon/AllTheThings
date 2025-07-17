if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";



	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C para copiar o texto completo do report para sua área de transferência)";








	L.MINIMAP_SLIDER_TOOLTIP = 'Use isso para customizar o tamanho do Botão no Minimapa.\n\nPadrão: 36';

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	L.RACE_LOCKED = "Travado por raça";
	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Estes são desbloqueados por personagem e não são atualmente compartilhados pela conta. Se alguém da Blizzard está lendo isso, seria muito interessante se fizesse isso em toda a conta.\n\nVocê precisa manualmente atualizar o addon apertando "..SHIFT_KEY_TEXT.." e clicando no cabeçalho para isso ser detectado.";	--TODO
	end
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence





			L.TITLE_ACCOUNT = app.ccColors.Account .. "Conta|R ";
			L.TITLE_INSANE = app.ccColors.Insane.."Insano|R ";










local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, o Trono Ardente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Ny'alotha, a Cidade Desperta"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, o Mercado Oculto"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
			[-5202] = "Equilíbrio de poder",						-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({





		APPEARANCES_CHECKBOX = "Aparências";
		BATTLE_PETS_CHECKBOX = "Mascotes de Batalha";
		RECIPES_CHECKBOX = "Receitas";
		TITLES_CHECKBOX = "Títulos";

		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essências do Coração de Azeroth";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrito de Vigia-dracos";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguidores & Companheiros";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Poder de Runogravura";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conduítes";















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
