if GetLocale() ~= "esES" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";
	L.DESCRIPTION = "\"Insensatamente has buscado tu propia muerte. Descaradamente has ignorado poderes que escapan a tu comprensión. Has luchado con ahínco para invadir el reino del Coleccionista. Ahora solo queda una salida: recorrer el solitario camino... de los condenados.\"";

	L.NEW_VERSION_FLAVORS = {
		"AllTheThings tiene hambre.",
		"o le daremos otro mechero a Sylvanas",
	 	"Alexstrasza está preocupada por ti",
	 	"e Invencible te caerá |cffffaaaasegurísimo|r la próxima vez",
	 	"fue solo un mero contratiempo",
		", Si, Chef",
	 	"y Crieve ayudará a una tortuga a llegar al agua.",
	 	"ADALIIID, LA AZERITAAA",
	};


	L.MINIMAP_MOUSEOVER_TEXT = "Clic derecho para cambiar ajustes.\nClic izquierdo para abrir la Lista Principal.\n"..CTRL_KEY_TEXT.." + clic para abrir la Mini Lista.\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones.";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ffClic izquierdo y arrastra para mover\nClic derecho para abrir el menú de ajustes\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones\n"..CTRL_KEY_TEXT.." + clic para Expandir/Contraer recursivamente\n"..SHIFT_KEY_TEXT.." + clic derecho para ordenar grupos o listas emergentes|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffClic izquierdo para Expandir/Contraer\nClic derecho para abrir una mini lista\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones\n"..CTRL_KEY_TEXT.." + clic para Expandir/Contraer recursivamente\n"..SHIFT_KEY_TEXT.." + clic derecho para ordenar grupos o listas emergentes\n"..ALT_KEY_TEXT.." + clic derecho para marcar puntos de referencia|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffClic izquierdo y arrastra para mover\nClic derecho para abrir el menú de ajustes\n"..SHIFT_KEY_TEXT.." + clic para buscar en la Casa de Subastas|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffClic izquierdo para Expandir/Contraer\nClic derecho para abrir una mini lista\n"..SHIFT_KEY_TEXT.." + clic para buscar en la Casa de Subastas|r";
	L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000Si conseguiste esto (cualquier sitio excepto de Cajones\nde objetos recuperados), por favor dí en nuestro Discord dónde lo conseguiste!|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000Cuanta más información, mejor. Gracias!|r";
	L.REQUIRES_PVP = "|CFF00FFDEEsta cosa requiere actividades Jugador contra Jugador o una divisa relacionada con esas actividades.|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDEEsta cosa requiere duelos de mascota.|r";
	L.REQUIRES_SKYRIDING = "|CFF00FFDE"..(SPELL_FAILED_CUSTOM_ERROR_1029 or "Requiere Surcacielos").."|r";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C para copiar un informe de varias líneas al portapapeles)";


	L.CRITERIA_FORMAT = "|cffffff00[Criterio: %s]|r";






	L.ICON_LEGEND_STATUS_TEXT = app.ccColors.White ..
			"|T" .. app.asset("status-unobtainable") .. ":0|t " .. "No conseguible" ..
			"\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "Conseguible solo con requisitos" ..
			"\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. "Contenido de temporada disponible" ..
			"\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. "Contenido de temporada no disponible" ..
			"\n|T374225:0|t " .. "No disponible en el personaje actual" ..
			"\n|T" .. app.asset("status-unsorted") .. ":0|t " .. "Sin listar en ATT";
	L.ICON_LEGEND_MISC_TEXT = app.ccColors.White ..
			"|T" .. app.asset("Currency") .. ":0|t " .. "Usado como una moneda" ..
			"\n|T" .. app.asset("Interface_Reagent") .. ":0|t " .. "Usado como un componente de fabricación" ..
			"\n|T" .. app.asset("Interface_Catalyst") .. ":0|t " .. "Convertible en el Catalyst para una nueva apariencia" ..
			"\n|T" .. app.asset("Interface_Upgrade") .. ":0|t " .. "Se puede mejorar para una nueva apariencia.";
	L.MINIMAP_SLIDER_TOOLTIP = 'Usa esto para personalizar el tamaño del botón del Minimapa.\n\nPredeterminado: 36';

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffAdquirido|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffAdquirido*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333No adquirido|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Completado|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Completado*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncompleto|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	L.AND_OTHER_SOURCES = "Y %s otras fuentes...";
	L.RACE_LOCKED = "Exclusivo de raza/facción";
	L.MARKS_OF_HONOR_DESC = "Las Marcas de Honor deben visualizarse en una ventana emergente para ver todo el contenido normal de \"Contiene\".\n(Escribe '/att ' en el chat entonces "..SHIFT_KEY_TEXT.." click para linkear el item)\n\n|cFFfe040fDespués de comprar y usar un conjunto, volver a iniciar sesión y realizar una actualización forzada de ATT (en este orden)\npuede ser necesario para registrar todos los artículos correctamente.|r";
	L.MOP_REMIX_BRONZE_DESC = "El bronce debe visualizarse en una ventana emergente para ver todo el contenido normal de \"Contiene\".\n(Escribe '/att ' en el chat entonces "..SHIFT_KEY_TEXT.." click para linkear la moneda)\n\n|cFFfe040fDespués de comprar y usar un conjunto, volver a iniciar sesión y realizar una actualización forzada de ATT (en este orden)\npuede ser necesario para registrar todos los artículos correctamente.|r";
	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Se pueden recopilar seguidores en toda la cuenta si habilita esta configuración en ATT.\n\nDebes actualizar manualmente el addon con "..SHIFT_KEY_TEXT.." clic en el encabezado para que esto se detecte.";
	end
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Estos se desbloquean por personaje y actualmente no se comparten entre cuentas. Si alguien de Blizzard está leyendo esto, sería genial que los hicieran accesibles para toda la cuenta.\n\nDebes actualizar manualmente el addon "..SHIFT_KEY_TEXT.." clic en el encabezado para que esto se detecte.";
	end
	L.EXPANSION_DATA[1].lore = "Cuatro años después de la batalla del Monte Hyjal, tensiones entre la Alianza y la Horda empiezan a surgir nuevamente. Con la intención de establecerse en la región árida de Durotar, la nueva Horda de Thrall expande sus miembros, invitando a los no muertos a unirse a orcos, tauren, y trols. Mientras tanto, enanos, gnomos y los ancestrales elfos de la noche prometieron su lealtad a una Alianza revitalizada, guiada por el reino humano de Ventormenta. Después de que el rey de Ventormenta Varian Wrynn misteriosamente desapareciera, el Alto Señor Bolvar Fordragon sirve como Regente pero Su servicio se vio empañado por las manipulaciones y el control mental de Onyxia, quien gobierna disfrazada como una humana de la nobleza. Mientras los héroes investigaban las manipulaciones de Onyxia, antiguos enemigos surgieron en tierras de todo el mundo para amenazar a la Horda y a la Alianza por igual.";
	L.EXPANSION_DATA[2].lore = "The Burning Crusade es la primera expansión. Sus principales características incluyen un aumento del nivel máximo a 70, la introducción de los elfos de sangre y los draenei como razas jugables, y la incorporación del mundo de Terrallende, junto con varias zonas, mazmorras, objetos, misiones y monstruos nuevos.";
	L.EXPANSION_DATA[3].lore = "Wrath of the Lich King es la segunda expansión. La mayor parte del contenido de la expansión se desarrolla en Rasganorte y se centra en los planes del Rey Exánime. Entre sus contenidos más destacados se incluyen el aumento del límite de nivel de 70 a 80, la introducción de la clase de héroe caballero de la Muerte y nuevo contenido JcJ/JcJ en el mundo.";
	L.EXPANSION_DATA[4].lore = "Cataclysm es la tercera expansión. Ambientada principalmente en un Kalimdor y los Reinos del Este dramáticamente reforjados en el mundo de Azeroth, la expansión sigue el regreso de Alamuerte, quien provoca una nueva ruptura al realizar su cataclísmica reentrada al mundo desde Infralar. Cataclismo devuelve a los jugadores a los dos continentes de Azeroth durante la mayor parte de su campaña, abriendo nuevas zonas como el Monte Hyjal, el mundo sumergido de Vashj'ir, Infralar, Uldum y las Tierras Altas Crepusculares. Incluye dos nuevas razas jugables: los huargen y los goblins. La expansión aumenta el nivel máximo a 85, añade la capacidad de volar en Kalimdor y los Reinos del Este, introduce la arqueología, la reforja y reestructura el mundo.";
	L.EXPANSION_DATA[5].lore = "Mists of Pandaria es la cuarta expansión. Esta expansión se centra principalmente en la guerra entre la Alianza y la Horda, tras el redescubrimiento accidental de Pandaria. Los aventureros redescubren al antiguo pueblo pandaren, cuya sabiduría los guiará hacia nuevos destinos; a los antiguos enemigos del Imperio Pandaren, los mántides; y a sus legendarios opresores, los enigmáticos mogu. La tierra cambia con el tiempo y el conflicto entre Varian Wrynn y Garrosh Grito Infernal se intensifica. Mientras la guerra civil azota a la Horda, la Alianza y las fuerzas de la Horda opuestas al violento levantamiento de Grito Infernal unen fuerzas para llevar la batalla directamente a Grito Infernal y sus aliados tocados por el Sha en Orgrimmar.";
	L.EXPANSION_DATA[6].lore = "Warlords of Draenor es la quinta expansión. A través de las junglas salvajes y las llanuras asoladas por la batalla de Draenor, los héroes de Azeroth se enfrentarán en un conflicto mítico que involucra a místicos campeones draenei y poderosos clanes orcos, y se enfrentarán con personajes como Grommash Grito Infernal, Puño Negro y Ner'zhul en la cúspide de su poder primigenio. Los jugadores deberán recorrer esta tierra hostil en busca de aliados que les ayuden a construir una defensa desesperada contra la formidable máquina de conquista de la antigua Horda, o verán cómo se repite la sangrienta y bélica historia de su propio mundo.";
	L.EXPANSION_DATA[7].lore = "Legion es la sexta expansión. Gul'dan es expulsado a Azeroth para reabrir la Tumba de Sargeras y la puerta a Argus, dando inicio a la tercera invasión de la Legión Ardiente. Tras la derrota en la Costa Abrupta, los defensores de Azeroth buscan los Pilares de la Creación, la única esperanza de Azeroth para cerrar el enorme portal demoníaco en el corazón de la Tumba. Sin embargo, las Islas Abruptas llegaron con sus propios peligros que superar, desde Xavius ​​hasta el Rey Dios Skovald, los nocheterna y la Señora de las Mareas Athissa. Khadgar trasladó Dalaran a las costas de esta tierra; la ciudad sirve como centro neurálgico para los héroes. Los caballeros de la Muerte de Acherus también llevaron su necrópolis flotante a las Islas. Los héroes de Azeroth buscaron armas artefacto legendarias para empuñar en batalla, pero también encontraron aliados inesperados en la forma de los Illidari. El conflicto en curso entre la Alianza y la Horda condujo a la formación de las órdenes de clases, con comandantes excepcionales que dejaron de lado la facción para liderar sus clases en la lucha contra la Legión.";
	L.EXPANSION_DATA[8].lore = "Battle for Azeroth es la séptima expansión. Azeroth pagó un precio terrible para poner fin a la marcha apocalíptica de la cruzada de la Legión; pero aunque las heridas del mundo se curen, la confianza rota entre la Alianza y la Horda podría ser la más difícil de sanar. En Battle for Azeroth, la caída de la Legión Ardiente desencadena una serie de incidentes desastrosos que reavivan el conflicto central de la saga de Warcraft. Con el inicio de una nueva era bélica, los héroes de Azeroth deben emprender un viaje para reclutar nuevos aliados, competir por los recursos más poderosos del mundo y luchar en varios frentes para determinar si la Horda o la Alianza liderarán Azeroth hacia su incierto futuro.";
	L.EXPANSION_DATA[9].lore = "Shadowlands es la octava expansión. ¿Qué hay más allá del mundo que conoces? Las Tierras Sombrías, lugar de descanso para cada alma mortal, virtuosa o vil, que haya existido jamás.";
	L.EXPANSION_DATA[10].lore = "Dragonflight es la novena expansión. Los Vuelos de Azeroth han regresado, llamados a defender su ancestral hogar, las Islas Dragón. Rebosante de magia elemental y de las energías vitales de Azeroth, este archipiélago despierta de nuevo. Está en tus manos explorar sus maravillas primordiales y descubrir los olvidados secretos que oculta.";
	L.EXPANSION_DATA[11].lore = "The War Within es la décima expansión de World of Warcraft y el inicio de la Saga Alma del Mundo. Viaja a través de mundos subterráneos nunca antes vistos, repletos de maravillas ocultas y peligros acechantes, hasta las oscuras profundidades del imperio nerubiano, donde la maligna Presagista del Vacío reúne fuerzas arácnidas para doblegar a Azeroth.";
	L.EXPANSION_DATA[12].lore = "Midnight es la undécima expansión de World of Warcraft y la segunda entrega de la saga Alma del Mundo.";
	L.EXPANSION_DATA[13].lore = "The Last Titan es la duodécima expansión de World of Warcraft y la última entrega de la saga Alma del Mundo.";

	L.UNSORTED = "Sin clasificar";
	L.UNSORTED_DESC = "Esta cosa aún no ha sido añadida dentro de ATT " .. app.Version .. ".";
	L.UNSORTED_DESC_2 = "Los objetos aquí existen dentro del juego y pueden estar disponibles para los jugadores, pero aún no se han obtenido en la ubicación precisa en ATT.";
	L.NEVER_IMPLEMENTED = "Nunca Implementado";
	L.NEVER_IMPLEMENTED_DESC = "Los objetos aquí técnicamente existen dentro del juego, pero nunca han estado disponibles para los jugadores.";
	L.HIDDEN_QUEST_TRIGGERS = "Disparadores de misiones ocultas";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "Se trata de misiones que se han determinado manualmente para que se activen según criterios específicos y que el juego utiliza principalmente de forma interna con fines de seguimiento.";
	L.RESET_INSTANCES_DESC = "Haz clic aquí para reiniciar tus instancias.\n\n"..ALT_KEY_TEXT.." +`clic para activar el reinicio automático de tus instancias cuando salgas de una mazmorra.\n\nAVISO: TEN CUIDADO CON ESTO!";
	L.UPDATE_WORLD_QUESTS_DESC = "A veces la API de misiones de mundo es lenta o no devuelve nuevos datos. Si deseas forzar el refresco de los datos sin cambiar de zona, haz clic en este botón ahora!\n\n"..ALT_KEY_TEXT.." + clic para incluir cosas disponibles actualmente que puede que no estén limitadas en el tiempo";
	L.ADHOC_UNIQUE_COLLECTED_INFO = "Este objeto es Único-Coleccionado pero no se pudo detectar por falta de información de la API de Blizzard.\n\nSe arreglará después de un Refresco Forzado.";
	L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207Este grupo y su contenido no contribuyen al progreso de esta ventana porque sus fuentes estan en otra zona!|r";
	L.FORCE_REFRESH_REQUIRED = "Esto puede requerir un refresco forzado ("..SHIFT_KEY_TEXT.." + clic) para coleccionarlo correctamente.";


	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." + clic para bloquear esta ventana";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." + clic para desbloquear esta ventana";


			L.TITLE_DEBUG = app.ccColors.Red .. "Depuración|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account .. "Cuenta|R ";
			L.TITLE_INSANE = app.ccColors.Insane.."Demente|R ";
			L._BETA_LABEL = " |cff4AA7FF[Beta]|R";





		L.TOGGLE_ACCOUNT_MODE = "Activar Modo Cuenta";
		L.TOGGLE_COMPLETIONIST_MODE = "Activar Modo Completista";
		L.TOGGLE_DEBUG_MODE = "Activar Modo Depuración";
		L.TOGGLE_FACTION_MODE = "Activar Modo Facción";
		L.TOGGLE_COMPLETEDTHINGS = "Activar Cosas Completadas (Ambas)";
		L.TOGGLE_COMPLETEDGROUPS = "Activar Grupos Completados";
		L.TOGGLE_COLLECTEDTHINGS = "Activar Cosas Coleccionadas";
		L.TOGGLE_BOEITEMS = "Activar objetos BoE/BoA";
		L.TOGGLE_SOURCETEXT = "Activar fuentes / ubicaciones de procedencia";
		L.MODULES = "Módulos";
		L.TOGGLE_MAINLIST = "Activar Lista Principal ATT";
		L.TOGGLE_MINILIST = "Activar Mini Lista ATT";
		L.TOGGLE_PROFESSION_LIST = "Activar Lista de Profesiones ATT";
		L.TOGGLE_WORLD_QUESTS_LIST = "Activar Misiones de Mundo ATT";
		L.TOGGLE_RAID_ASSISTANT = "Activar Asistente de Banda ATT";
		L.TOGGLE_RANDOM = "Activar ATT Aleatorio";
		L.REROLL_RANDOM = "Repetir tirada de dados de la selección aleatoria";




		L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Conocido|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffDivisa|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, el Trono Ardiente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Expansion Pre"] = "Pre",
		["Expansion Features"] = "EF",
		[GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		["The Burning Crusade"] = "BC",
		["Burning Crusade"] = "BC",
		["The BC"] = "BC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclismo "] = "Cata ",
		["Las Tierras Sombrías"] = "SL",
		["Shadowlands"] = "SL",
		["Jugador contra Jugador"] = "JcJ",
		["Buscador de bandas"] = "LFR",
		["Normal"] = "N",
		["Heroica"] = "H",
		["Mítica"] = "M",
		["Ny'alotha, Ciudad del Despertar"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, el Mercado Velado"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 jugadores"] = "10M",
		["10 jugadores (Heroico)"] = "10M (H)",
		["25 jugadores"] = "25M",
		["25 jugadores (Heroico)"] = "25M (H)",
		[TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		["Curia:"] = "Curia:",
})
do a[key] = value; end

if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	[-5202] = "Equilibrio de poderes",						-- Balance of Power
})
do a[key] = value; end
end

		SKIP_AUTO_REFRESH_TOOLTIP = "Por defecto (desactivado), cualquier cambio de Ajustes que pueda afectar los datos visibles causará un refresco automático.\n\nActivando esta opción, los cambios de Ajustes no tendrán efecto hasta que el Usuario ejecute un Refresco Completo con "..SHIFT_KEY_TEXT.." + clic en una ventana de ATT.";

		ABOUT_TOP = " |CFFFFFFFF es un addon de rastreo de colecciones que te muestra dónde y cómo conseguirlo tódo en el juego! Tenemos una gran comunidad de usuarios en nuestro Discord (enlace el final) donde puedes preguntar, enviar sugerencias y también reportar errores o objetos que falten. Si encuentras algún coleccionable que no está documentado, puedes decirnoslo en el Discord, o para los que tengan más conocimiento técnico, tenemos un Git donde puedes contribuir directamente.\n\nSi bien nos esforzamos mucho por el completado, hay muchas cosas que se añaden al juego en cada parche, así que si nos dejamos algo, por favor entiende que somos un equipo pequeño intentando seguir el ritmo de cambios e intentando coleccionar cosas nosotros también. :D\n\nPuedes preguntarme dudas cuando esté haciendo directos e intentaré responderte lo mejor que pueda, incluso si no está relacionado directamente con ATT (programación de addons del WoW también).\n\n- |r|Cffff8000Crieve|r";

		DEBUG_MODE = app.ccColors.Red.."Modo Depuración|r (Muestra todo)";
		ACCOUNT_MODE = app.ccColors.Account.."Modo Cuenta";
		MODE_EXPLAIN_LABEL = "|cffFFFFFFLo que coleccionas se resume en un modo específico. Activa todas las opciones " .. app.ccColors.Insane .. "coloreadas|cffFFFFFF para desbloquear el ".. app.ccColors.Insane .. "Modo Demente|cffFFFFFF.";


		ACC_WIDE_DEFAULT = "Rastreado ".. app.ccColors.Account .. "Para toda la cuenta|R por defecto.";
		TRACK_ACC_WIDE = app.ccColors.Account .. "Rastrear para toda la cuenta|R";


		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Esencias del Corazón de Azeroth";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrito de dracovigía";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear Manuscrito de dracovigía de Dragonflight";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguidores y Campeones";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Poder de talla de runas";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conductos";



		ITEM_EXPLAIN_LABEL = "|cffFFFFFFEste contenido se muestra siempre si estás en "..app.ccColors.Account.."Modo Cuenta|cffFFFFFF.|r";


		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFEste contenido siempre está visible si está disponible para tu personaje actual o si estás en "..app.ccColors.Account.."Modo Cuenta|cffFFFFFF.|r";

		CONTAINS_SLIDER_TOOLTIP = 'Usa esto para personalizar el número de cosas resumidas a mostrar en la ventana emergente.\n\nPor defecto: 25';
		LOCATIONS_SLIDER_TOOLTIP = 'Usa esto para personalizar el numero de ubicaciones de origen a mostrar en la ventana emergente.\n\nNOTA: También mostrará "X" numero de otras opciones basándose en cuántas, si el total es equivalente al número total de elementos mostrados, sino simplemente mostrará la última fuente.\n\nPor defecto: 5';

		MAIN_LIST_SCALE_TOOLTIP = 'Usa esto para personalizar la escala de la Lista Principal.\n\nPor defecto: 1';
		MINI_LIST_SCALE_TOOLTIP = 'Usa esto para personalizar la escala de todas las Mini Listas.\n\nPor defecto: 1';
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres la operación de 'Ordenar' ("..SHIFT_KEY_TEXT.." + clic derecho) para ordenar sobre el total de progreso de cada grupo (en vez de por nombre)";
		PRECISION_SLIDER_TOOLTIP = 'Usa esto para personalizar el nivel de precisión deseado en los cálculos de porcentajes.\n\nPor defecto: 2';








		PROFILE_INITIALIZE_TOOLTIP = "Esto permite que ATT admita y guarde la información del Perfil en las Saved Variables. Tus ajustes actuales y la información de la ventana van a ser copiadas en el perfil '"..DEFAULT.."', que no puede ser borrado, pero podría ser modificado y será usado como el Perfil inicial para todos los personajes.\n\nAsegúrate de informar de cualquier comportamiento inesperado o error con los Perfiles en el Discord de ATT!";
		PROFILE_SWITCH_TOOLTIP = "Establece el Perfil seleccionado como el Perfil actual\n\nUn Perfil también puede ser clicado con "..SHIFT_KEY_TEXT.." para cambiar a él";

if app.IsRetail then

local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "Experiencia de los jugadores nuevos", desc = "Sólo un personaje nuevo puede coleccionar esto." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Hilos del destino", desc = "Sólo un personaje que elige saltarse la historia de las Tierras Sombrías puede coleccionar esto." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Sólo un personaje que ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Sólo un personaje que |cffff0000no|r ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto." },
})
do a[key] = value; end
end
