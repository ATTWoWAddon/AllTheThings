if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";


	L.PROGRESS = "Progresso";
	L.KNOWN_BY = "Conhecido como %s";

	L.VISIT_FLIGHT_MASTER = "Visite o Mestre de Voo para registrar.";
	L.PLEASE_REPORT_MESSAGE = "Por favor reporte isso no Discord do ATT em #retail-errors! Obrigado!";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C para copiar o texto completo do report para sua área de transferência)";
	L.ITEM_GIVES_REP = "Concede reputação com '";


	L.REQUIRES = "Requer";


	L.HEIRLOOM_TEXT = "Herança Desbloqueada";
	L.HEIRLOOM_TEXT_DESC = "Isso indica se já adquiriu ou não a Herança.";
	L.HEIRLOOMS_UPGRADES_DESC = "Isso indica se já atualizou ou não a herança para um certo nível.\n\nR.I.P. Gold.\n - Crieve";


	L.DESCRIPTIONS = "Descrições";
	L.LORE = "História";

	L.ADDITIONAL_LABEL = "Informações Adicionais";

	L.KEYBINDINGS = SETTINGS_KEYBINDINGS_LABEL;
	L.KEYBINDINGS_TEXT = "You can set keybindings for ATT in the game's options.";
	L.MINIMAP_BUTTON_CHECKBOX = "Mostrar Botão no Minimapa";
	L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Ative essa opção se você deseja ver o botão no minimapa. Esse botão permite que acesse rapidamente a Lista Principal, mostre a Visão Geral do Progresso da Coleção e acessar as Configurações clicando com o botão direito.\n\nAlgumas pessoas não gostam de desordem. Alternativamente, você pode acessar essas informações digitando '/att' no chat. Dalí, você pode clicar com o botão direito no cabeçalho (AllTheThings na primeira linha) para acessar as configurações.";
	L.MINIMAP_SLIDER = "Tamanho do botão do minimapa";
	L.MINIMAP_SLIDER_TOOLTIP = 'Use isso para customizar o tamanho do Botão no Minimapa.\n\nPadrão: 36';
	L.WORLDMAP_BUTTON_CHECKBOX = "Show the World Map Button";
	L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the ATT button on your world map. This button allows you to quickly access the Mini List for the currently displayed zone. Regularly, you'd need to physically travel to the zone in order to see the content on the mini list that you can access by typing '/att mini' in your chatbox.";

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	L.TRACKING_PROGRESS = "Rastreando Progresso";
	L.COLLECTED_STRING = " Coletado";
	L.COLLECTION_PROGRESS = "Progresso da Coleção";
	L.CONTAINS = "Contém:";
	L.FACTIONS = "Facções";
	L.COORDINATES = "Coordenadas";
	L.PLAYER_COORDINATES = "Coordenadas do Jogador";
	L.NO_COORDINATES_FORMAT = "Sem coordenadas conhecidas para %s";
	L.TOM_TOM_NOT_FOUND = "Você precisa ter TomTom instalado para exibir as coordenadas.";
	L.FLIGHT_PATHS = "Pontos de voo";
	L.RACE_LOCKED = "Travado por raça";
	L.NOT_AVAILABLE_IN_PL = "Não disponível para saque (loot) pessoal.";
	L.COST = "Custo";
	L.COST_DESC = "Aqui contém uma visão geral detalhada do que é necessário para obter ou comprar isso";
	L.COST_TOTAL = "Custo total";
	L.SOURCES = "Fonte(s)";
	L.SOURCES_DESC = "Mostra a Fonte dessa Cosia.\n\nParticularmente, um Vendedor específico/NPC, Quest, Boss, etc.";
	L.WRONG_FACTION = "Você precisa ser de outra facção para visualizar isso.";
	L.ARTIFACT_INTRO_REWARD = "Concedida por completar a missão introdutória para este Artefato.";
	L.FLIGHT_PATHS_DESC = "Pontos de voo são registrados quando você fala com um mestre de voo em cada continente.\n  - Crieve";
	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	L.FAILED_ITEM_INFO = "Falha ao adquirir informações sobre o item. O item pode ser inválido ou pode ainda não ter sido registrado em seu servidor.";
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Estes são desbloqueados por personagem e não são atualmente compartilhados pela conta. Se alguém da Blizzard está lendo isso, seria muito interessante se fizesse isso em toda a conta.\n\nVocê precisa manualmente atualizar o addon apertando "..SHIFT_KEY_TEXT.." e clicando no cabeçalho para isso ser detectado.";	--TODO
	end
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence

	L.TRADING_POST = "Posto Comercial";




			L.MODE = "Modo";
			L.TITLE_COMPLETIONIST = "Complecionista ";
			L.TITLE_UNIQUE_APPEARANCE = "Única ";
			L.TITLE_ACCOUNT = app.ccColors.Account .. "Conta|R ";
			L.TITLE_MAIN_ONLY = " (Apenas main)";
			L.TITLE_NONE_THINGS = "Nenhuma das Coisas ";
			L.TITLE_ONLY = " Apenas ";
			L.TITLE_INSANE = app.ccColors.Insane.."Insano|R ";
			L.TITLE_SOME_THINGS = "Alguams das Coisas ";
			L.TITLE_LEVEL = "Nível ";
			L.TITLE_SOLO = "Solo ";


		L.EXTRA_THINGS_LABEL = "Recursos Adicionais";
		L.CLICK_TO_CREATE_FORMAT = "Click to Create %s";








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
