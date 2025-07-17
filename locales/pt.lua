if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;


if app.IsRetail then
end
if app.IsRetail then
end
L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence

			
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
