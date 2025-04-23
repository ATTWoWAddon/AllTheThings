-- Localization for Spanish (Spain) Clients.
if GetLocale() ~= "esES" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	L.DESCRIPTION = "\"Insensatamente has buscado tu propia muerte. Descaradamente has ignorado poderes que escapan a tu comprensión. Has luchado con ahínco para invadir el reino del Coleccionista. Ahora solo queda una salida: recorrer el solitario camino... de los condenados.\"";
	L.THINGS_UNTIL = " COSAS HASTA ";
	L.THING_UNTIL = " COSAS HASTA ";
	L.YOU_DID_IT = "¡LO LOGRASTE! ";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "Progreso";
	L.TRACKING_PROGRESS = "Rastreando progreso";
	L.COLLECTED_STRING = " Recolectado";
	L.PROVIDERS = "Proveedor(es)";
	L.COLLECTION_PROGRESS = "Progreso de la colección";
	L.CONTAINS = "Contiene:";
	L.FACTIONS = "Reputaciones";
	L.COORDINATES = "Coordenadas";
	L.AND_MORE = "Y %s más...";
	L.AND_OTHER_SOURCES = "Y %s otras fuentes...";
	L.PLAYER_COORDINATES = "Coordenadas del jugador";
	L.NO_COORDINATES_FORMAT = "No hay coordenadas conocidas para %s";
	L.TOM_TOM_NOT_FOUND = "Debe tener instalado TomTom para poder seguir coordenadas.";
	L.FLIGHT_PATHS = "Rutas de vuelo";
	L.KNOWN_BY = "Conocido por %s";
	L.REQUIRES = "Requiere";
	L.RACE_LOCKED = "Exclusivo de raza/facción";
	L.PLEASE_REPORT_MESSAGE = "¡Por favor, reporte esto al Discord de ATT en #retail-errors! ¡gracias!";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C para copiar un informe de varias líneas al portapapeles)";
	L.NOT_AVAILABLE_IN_PL = "No disponible en botín personal.";
	L.MARKS_OF_HONOR_DESC = "Las Marcas de Honor deben visualizarse en una ventana emergente para ver todo el contenido normal de \"Contiene\".\n(Escribe '/att ' en el chat entonces "..SHIFT_KEY_TEXT.." click para linkear el item)\n\n|cFFfe040fDespués de comprar y usar un conjunto, volver a iniciar sesión y realizar una actualización forzada de ATT (en este orden)\npuede ser necesario para registrar todos los artículos correctamente.|r";
	L.MOP_REMIX_BRONZE_DESC = "El bronce debe visualizarse en una ventana emergente para ver todo el contenido normal de \"Contiene\".\n(Escribe '/att ' en el chat entonces "..SHIFT_KEY_TEXT.." click para linkear la moneda)\n\n|cFFfe040fDespués de comprar y usar un conjunto, volver a iniciar sesión y realizar una actualización forzada de ATT (en este orden)\npuede ser necesario para registrar todos los artículos correctamente.|r";
	L.ITEM_GIVES_REP = "Provee reputación con '";
	L.COST = "Coste";
	L.COST_DESC = "Esto contiene el desglose visual de lo que se requiere para obtener o comprar esta cosa.";
	L.COST_TOTAL = "Coste total";
	L.COST_TOTAL_DESC = "Esto contiene el desglose visual de lo que se requiere para obtener o comprar todas las cosas dentro del grupo de nivel superior.\n\nNota: ¡Actualmente no incluye los requisitos de materiales/recetas!";
	L.SOURCES = "Fuente(s)";
	L.SOURCES_DESC = "Muestra la fuente de esta cosa.\n\nEn particular, un vendedor/NPC específico, una misión, un encuentro, etc.";
	L.WRONG_FACTION = "Quizás necesites estar en la otra facción para ver esto.";
	L.ARTIFACT_INTRO_REWARD = "Se otorga por completar la misión introductoria de este artefacto.";
	L.VISIT_FLIGHT_MASTER = "Visita al maestro de vuelo para detectarlo";
	L.FLIGHT_PATHS_DESC = "Las rutas de vuelo son detectadas cuando hablas con un maestro de vuelo de cada continente.\n  - Crieve";
	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Se pueden recopilar seguidores en toda la cuenta si habilita esta configuración en ATT.\n\nDebes actualizar manualmente el addon con "..SHIFT_KEY_TEXT.." clic en el encabezado para que esto se detecte.";
	end
	L.HEIRLOOM_TEXT = "Reliquias desbloqueadas";
	L.HEIRLOOM_TEXT_DESC = "Esto indica si ya ha adquirido o comprado la reliquia.";
	L.FAILED_ITEM_INFO = "No se pudo obtener la información del objeto. Es posible que el objeto no sea válido o que aún no se haya almacenado en caché en el servidor.";
	L.HEIRLOOMS_UPGRADES_DESC = "Esto indica si has mejorado o no la reliquia a un cierto nivel.\n\nR.I.P. Oro.\n - Crieve";
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Estos se desbloquean por personaje y actualmente no se comparten entre cuentas. Si alguien de Blizzard está leyendo esto, sería genial que los hicieran accesibles para toda la cuenta.\n\nDebes actualizar manualmente el addon "..SHIFT_KEY_TEXT.." clic en el encabezado para que esto se detecte.";
	end
	L.MUSIC_ROLLS_DESC_2 = "\n\nPrimero debes desbloquear los Rollos de música completando la misión Que vuelva la música en tu ciudadela para que aparezca este objeto.\n\nSelfies requieren el juguete S.E.L.F.I.E.";
	L.OPPOSITE_FACTION_EQ = "Equivalente en la facción contraria: ";
	L.SELFIE_DESC = "Toma un selfie usando tu ";
	L.SELFIE_DESC_2 = " con |cffff8000";
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
	L.TITLES_DESC = "Los títulos se rastrean en toda tu cuenta, sin embargo, tu personaje individual debe calificar para ciertos títulos para poder usarse en ese personaje.";
	L.UPON_COMPLETION = "Al finalizar";
	L.UPON_COMPLETION_DESC = "Las misiones anteriores deben completarse antes de poder completar las cosas que se enumeran a continuación.";
	L.QUEST_CHAIN_REQ = "Requisitos de la cadena de misiones";
	L.QUEST_CHAIN_REQ_DESC = "Las siguientes misiones deben completarse antes de poder completar la misión final.";
	L.AH_SEARCH_NO_ITEMS_FOUND = "No se encontraron objetos en caché en la búsqueda. Expande el grupo, visualiza los objetos para guardar los nombres en caché e inténtalo de nuevo. Solo se encontrarán objetos ligados al equipar con esta búsqueda.";
	L.AH_SEARCH_BOE_ONLY = "Solo se buscaran objetos ligados al equipar con esta búsqueda.";
	L.TSM_WARNING_1 = "Ejecutar este comando puede destruir potencialmente su configuración TSM existente al reasignar elementos a la ";
	L.TSM_WARNING_2 = " preestablecido.\n\nLe recomendamos que utilice un perfil diferente al usar esta función.\n\n¿Desea continuar de todos modos?";
	L.PRESET_UPDATE_SUCCESS = "Se actualizó el ajuste preestablecido con éxito.";
	L.SHOPPING_OP_MISSING_1 = "Falta en el ajuste preestablecido una asignación de operación "Compras".";
	L.SHOPPING_OP_MISSING_2 = "Escribe '/tsm operations' para crear o asignar uno.";
	L.AUCTIONATOR_GROUPS = "Las búsquedas basadas en grupos solo se admiten mediante Auctionator.";
	L.TSM4_ERROR = "TSM4 aún no es compatible con ATT. Si sabes cómo crear presets como en TSM3, ¡Susurrale a Crieve en Discord!";
	L.QUEST_MAY_BE_REMOVED = "No se pudo obtener información. Es posible que esta misión haya sido eliminada del juego. ";

	L.FACTION_SPECIFIC_REP = "No se pueden ver todas las reputaciones de un mismo personaje. Por ejemplo, los jugadores de la Alianza no pueden ver a los Escoltas Grito de Guerra, y los de la Horda no pueden ver a los Centinelas Ala de Plata.";
	L.MINUMUM_STANDING_WITH_FACTION = "Requiere un nivel mínimo de %s con %s.";
	L.MAXIMUM_STANDING_WITH_FACTION = "Requiere un nivel menor de %s con %s.";
	L.MIN_MAX_STANDING_WITH_FACTION = "Requiere un nivel entre %s y %s con %s.";

	L.ADDED_WITH_PATCH = "Agregado en el parche";
	L.REMOVED_WITH_PATCH = "Eliminado en el Parche";
	L.ALIVE = "Vivo";
	L.SPAWNED = "Hace aparición";
	L.OBJECT_TYPE = "Tipo de objeto";
	L.OBJECTIVES = "Objetivos";
	L.QUEST_GIVERS = "Asignadores de misiones";
	L.DURING_WQ_ONLY = "Esto se puede completar cuando la misión de mundo está activa.";
	L.COMPLETED_DAILY = "Esto se puede completar diariamente.";
	L.COMPLETED_WEEKLY = "Esto se puede completar semanalmente.";
	L.COMPLETED_MONTHLY = "Esto se puede completar mensualmente.";
	L.COMPLETED_YEARLY = "Esto se puede completar anualmente.";
	L.COMPLETED_MULTIPLE = "Esto se puede completar múltiples veces.";
	L.CRITERIA_FOR = "Criterio para";
	L.CURRENCY_FOR = "Moneda para";
	L.LOOT_TABLE_CHANCE = "Probabilidad de la tabla de botín";
	L.BEST_BONUS_ROLL_CHANCE = "Mejor oportunidad de tirada de bonificación";
	L.BEST_PERSONAL_LOOT_CHANCE = "Mejor posibilidad de botín personal";
	L.PREREQUISITE_QUESTS = "Hay misiones previas requeridas que deben completarse antes de poder conseguir esto:";
	L.BREADCRUMBS = "Cadena";
	L.BREADCRUMBS_WARNING = "Hay una cadena de misiones que no puedan conseguirse después de completar esto:";
	L.THIS_IS_BREADCRUMB = "Esto es una cadena de misiones.";
	L.BREADCRUMB_PARTYSYNC = "Es posible que no se pueda completar sin Sincronización de Grupo si completas alguna de estas misiones antes:";
	L.BREADCRUMB_PARTYSYNC_2 = "Esto puede ser obtenido a través de Sincronización de Grupo con otro personaje que no haya completado ninguna de estas misiones:";
	L.BREADCRUMB_PARTYSYNC_3 = "Esto puede ser obtenido a través de Sincronización de Grupo con un personaje que pueda aceptar esta misión.";
	L.BREADCRUMB_PARTYSYNC_4 = "Por favor, haznos saber tus resultados en Discord si intentas obtener esta misión a través de Sincronización de Grupo!";
	L.DISABLE_PARTYSYNC = "Es posible que no se pueda completar con este personaje aunque uses Sincronización de Grupo. Si lo consigues, háznoslo saber en Discord!";
	L.UNAVAILABLE_WARNING_FORMAT = "Se vuelve no disponible si se cumplen %d de los siguientes:";
	L.NO_ENTRIES = "No se encontraron entradas que coincidan con tus filtros.";
	L.NO_ENTRIES_DESC = "Si crees que esto es un error, intenta activar el 'Modo Debug'. Uno de tus filtros puede estar restringiendo la visibilidad del grupo.";
	L.DEBUG_LOGIN = "Otorgado por entrar en el juego.\n\nBuen trabajo! LO HICISTE!\n\nSólo es visible en el Modo Debug.";
	L.UNSORTED = "Desordenado";
	L.UNSORTED_DESC = "Esta cosa aún no ha sido añadida en la versión " .. app.Version .. " de ATT.";
	L.NEVER_IMPLEMENTED = "Nunca implementado";
	L.NEVER_IMPLEMENTED_DESC = "Los objectos aqui técnicamente existen en el juego pero nunca han estado disponibles para los jugadores";
	L.HIDDEN_QUEST_TRIGGERS = "Disparadores de misión escondidos";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "Son misiones que se han determinado manualmente para activar en base a criterios específicos y son usadas principalmente de forma interna por el juego con el objectivo de rastrear progresos";
	L.UNSORTED_DESC_2 = "Los objetos de aquí existen en el juego y puede que esten disponibles para los jugadores, pero aun no se ha obtenido una ubicación precisa en ATT";
	L.OPEN_AUTOMATICALLY = "Abrir automáticamente";
	L.OPEN_AUTOMATICALLY_DESC = "Si no eres un desarrollador de Blizzard, puede ser buena idea que desactives esto. Esto se hizo para forzar a Blizzard a arreglar y/o conocer algunos bug.";
	L.MINI_LIST = "Mini Lista";
	L.MINI_LIST_DESC = "Esta lista contiene información relevante sobre la zona actual en la que estás, que no puede encontrarse en la base de datos de ATT";
	L.UPDATE_LOCATION_NOW = "Actualizar localización ahora";
	L.UPDATE_LOCATION_NOW_DESC = "Si quiere forzar el refresco de la información del mapa actual, haz clic en este botón ahora!";
	L.PERSONAL_LOOT_DESC = "Cada jugador tiene una probabilidad independiente de despojar un objeto útil para su clase...\n\n... O inútil como los anillos.\n\nHaz clic dos veces para crear un grupo automáticamente si estás sólo.";
	L.RAID_ASSISTANT = "Asistente de Banda";
	L.RAID_ASSISTANT_DESC = "Nunca entres a una instancia con los ajustes incorrectos! Verifica que todo está como debería!";
	L.LOOT_SPEC_UNKNOWN = "Especialización de botín desconocida";
	L.LOOT_SPEC = "Especialización de botín";
	L.LOOT_SPEC_DESC = "En mazmorras, bandas o encuentros de mundo con botín personal, este ajuste decidirá qué objetos estan disponibles para tí.\n\nHaz clic aquí para cambiarla ahora!";
	L.DUNGEON_DIFF = "Dificultad de mazmorra";
	L.DUNGEON_DIFF_DESC = "Ajuste de dificultad para mazmorras.\n\nHaz clic aquí para cambiarla ahora!";
	L.RAID_DIFF = "Dificultad de banda";
	L.RAID_DIFF_DESC = "Ajuste de dificultad para bandas.\n\nHaz clic aquí para cambiarla ahora!";
	L.LEGACY_RAID_DIFF = "Dificultad de banda antigua";
	L.LEGACY_RAID_DIFF_DESC = "Ajuste de dificultad para bandas antiguas.\n\nHaz clic aquí para cambiarla ahora!";
	L.TELEPORT_TO_FROM_DUNGEON = "Teletransporte a/desde la mazmorra";
	L.TELEPORT_TO_FROM_DUNGEON_DESC = "Haz clic aquí para teletransportarte a/desde tu instancia actual.\n\nPuedes utilizar los escenarios de Mist of Pandaria para teletransportarte fuera de la instancia en la que te encuentras.";
	L.RESET_INSTANCES = "Reiniciar instancias";
	L.RESET_INSTANCES_DESC = "Haz clic aquí para reiniciar tus instancias.\n\n"..ALT_KEY_TEXT.." +`clic para activar el reinicio automático de tus instancias cuando salgas de una mazmorra.\n\nAVISO: TEN CUIDADO CON ESTO!";
	L.DELIST_GROUP = "Quitar Grupo";
	L.DELIST_GROUP_DESC = "Haz clic aquí para quitar el grupo. Si estás sólo, saldrá sutilmente del grupo sin teletransportarte fuera de la instancia en la que estás.";
	L.LEAVE_GROUP = "Salir del grupo";
	L.LEAVE_GROUP_DESC = "Haz clic aquí para salir del grupo. En la mayoría de instancias, esto también te transportará al cementerio más cercano pasados 60 segundos.\n\nNOTA: Sólo funciona si estás en grupo o si el juego piensa que estás en grupo.";
	L.LOOT_SPEC_DESC_2 = "En mazmorras, bandas o encuentros de mundo con botín personal, este ajuste decidirá qué objetos estan disponibles para tí.\n\nHaz clic en esta línea para volver al Asistente de Banda.";
	L.CURRENT_SPEC = "Especialización actual";
	L.CURRENT_SPEC_DESC = "Si cambias tus talentos, tu especialización de despojo también cambia contigo.";
	L.DUNGEON_DIFF_DESC_2 = "Este ajuste te permite personalizar la dificultad de una mazmorra.\n\nHaz clic en esta línea para volver al Asistente de Banda.";
	L.CLICK_TO_CHANGE = "Haz clic para cambiar ahora. (si está disponible)";
	L.RAID_DIFF_DESC_2 = "Este ajuste te permite personalizar la dificultad de una banda.\n\nHaz clic en esta línea para volver al Asistente de Banda.";
	L.LEGACY_RAID_DIFF_DESC_2 = "Este ajuste te permite personalizar la dificultad de una banda antigua. (Pre-Asalto de Orgrimmar)\n\nHaz clic en esta línea para volver al Asistente de Banda.";
	L.REROLL = "Volver a tirar";
	L.REROLL_DESC = "Haz clic en este botón para volver a tirar usando el filtro activo.";
	L.APPLY_SEARCH_FILTER = "Aplica un filtro de búsqueda";
	L.APPLY_SEARCH_FILTER_DESC = "Por favor selecciona una opción de filtro de búsqueda.";
	L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "Haz clic en este botón para buscar...TODO.";
	L.ACHIEVEMENT_DESC = "Haz clic en este botón para seleccionar un logro aleatorio basado en lo que te falta.";
	L.ITEM_DESC = "Haz clic en este botón para seleccionar un objeto aleatorio basado en lo que te falta.";
	L.INSTANCE_DESC = "Haz clic en este botón para seleccionar una instancia aleatoria basado en lo que te falta.";
	L.DUNGEON_DESC = "Haz clic en este botón para seleccionar una mazmorra aleatoria basado en lo que te falta.";
	L.RAID_DESC = "Haz clic en este botón para seleccionar una banda aleatoria basado en lo que te falta.";
	L.MOUNT_DESC = "Haz clic en este botón para seleccionar una montura aleatoria basado en lo que te falta.";
	L.PET_DESC = "Haz clic en este botón para seleccionar una mascota aleatoria basado en lo que te falta.";
	L.QUEST_DESC = "Haz clic en este botón para seleccionar una misión aleatoria basado en lo que te falta.";
	L.TOY_DESC = "Haz clic en este botón para seleccionar un juguete aleatorio basado en lo que te falta.";
	L.ZONE_DESC = "Haz clic en este botón para seleccionar una zona aleatoria basado en lo que te falta.";
	L.GO_GO_RANDOM = "Aleatorio - Ve a por ello!";
	L.GO_GO_RANDOM_DESC = "Esta ventana te permite seleccionar aleatoriamente un lugar u objeto que coger. Ve a por ello!";
	L.CHANGE_SEARCH_FILTER = "Cambiar filtro de búsqueda";
	L.CHANGE_SEARCH_FILTER_DESC = "Haz clic aquí para cambiar tu filtro de búsqueda.";
	L.REROLL_2 = "Volver a tirar: ";
	L.NOTHING_TO_SELECT_FROM = "No se encontró nada para seleccionar aleatoriamente. Si las 'actualizaciones Ad-Hoc' estan habilitadas en los ajustes, la Lista Principal se tiene que actualizar (/att) antes de usar esta ventana.";
	L.NO_SEARCH_METHOD = "Método de búsqueda no especificado.";
	L.PROFESSION_LIST = "Lista de profesiones";
	L.PROFESSION_LIST_DESC = "Abre tus profesiones para cargarlas.";
	L.CACHED_RECIPES_1 = "Cargado ";
	L.CACHED_RECIPES_2 = " recetas conocidas!";
	L.WORLD_QUESTS_DESC = "Esto son misiones de mundo y otras cosas disponibles por tiempo limitado que estan diponibles en algun sitio. Ve a por ellas!";
	L.QUESTS_DESC = "Muestra todas las QuestID disponibles en el juego en orden numérico ascendente.";
	L.UPDATE_WORLD_QUESTS = "Actualiza las misiones de mundo ahora";
	L.UPDATE_WORLD_QUESTS_DESC = "A veces la API de misiones de mundo es lenta o no devuelve nuevos datos. Si deseas forzar el refresco de los datos sin cambiar de zona, haz clic en este botón ahora!\n\n"..ALT_KEY_TEXT.." + clic para incluir cosas disponibles actualmente que puede que no estén limitadas en el tiempo";
	L.CLEAR_WORLD_QUESTS = "Limpiar misiones de mundo";
	L.CLEAR_WORLD_QUESTS_DESC = "Haz clic para limpiar la información actual en el marco de misiones de mundo";
	L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "Todos los objetos que pueden ser usados para conseguir logros que te faltan se muestran aquí.";
	L.ALL_THE_APPEARANCES_DESC = "Todas las apariencias que te faltan se muestran aquí.";
	L.ALL_THE_MOUNTS_DESC = "Todas las monturas que aún no has coleccionado se muestran aquí.";
	L.ALL_THE_BATTLEPETS_DESC = "Todas las mascotas que aún no has coleccionado se muestran aquí.";
	L.ALL_THE_QUESTS_DESC = "Todas las misiones que tienen objetos como objetivo o inicio que pueden ser vendidos en la casa de subastas se muestran aquí.";
	L.ALL_THE_RECIPES_DESC = "Todas las recetas que aún no has coleccionado se muestran aquí.";
	L.ALL_THE_ILLUSIONS_DESC = "Ilusiones, juguetes, y otros objetos que pueden ser usados para conseguir objetos coleccionables se muestran aquí.";
	L.ALL_THE_REAGENTS_DESC = "Todos los objetos que pueden ser usados para fabricar un objeto usando una profesión en tu cuenta.";
	L.AH_SCAN_SUCCESSFUL_1 = ": Escaneado exitoso";
	L.AH_SCAN_SUCCESSFUL_2 = " objeto(s).";
	L.REAGENT_CACHE_OUT_OF_DATE = "La cache de ingredientes está desactualizada y se actualizará cuando abras tus profesiones!";
	L.ARTIFACT_CACHE_OUT_OF_DATE = "La cache de Artefactos está desactalizada/imprecisa y se actualizará cuando entres al juego con cada personaje!";
	L.QUEST_LOOP = "Seguramente se ha salido de un bucle infinito de fuentes de misión.";
	L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "La misión '%s' %s evitará que puedas completar la cadena de misiones '%s' %s";
	L.QUEST_OBJECTIVE_INVALID = "Objetivo de misión inválido;
	L.REFRESHING_COLLECTION = "Refrescando colección...";
	L.DONE_REFRESHING = "Refresco de colección acabado.";
	L.ADHOC_UNIQUE_COLLECTED_INFO = "Este objeto es Único-Coleccionado pero no se pudo detectar por falta de información de la API de Blizzard.\n\nSe arreglará después de un Refresco Forzado.";
	L.AVAILABILITY = "Disponibilidad";
	L.REQUIRES_PVP = "|CFF00FFDEEsta cosa requiere actividades Jugador contra Jugador o una divisa relacionada con esas actividades.|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDEThis Thing requires Pet Battling.|r";
	L.REPORT_INACCURATE_QUEST = "Información de misión errónea! (Clic para Reportar)";
	L.NESTED_QUEST_REQUIREMENTS = "Requisitos de Misión anidados";
	L.MAIN_LIST_REQUIRES_REFRESH = "[Abrir Lista Principal para actualizar el progreso]";
	L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207Este grupo y su contenido no contribuyen al progreso de esta ventana porque sus fuentes estan en otra zona!|r";
	L.CURRENCY_NEEDED_TO_BUY = "Cantidad estimada necesaria para obtener las cosas restantes";
	L.LOCK_CRITERIA_LEVEL_LABEL = "Nivel de personaje";
	L.LOCK_CRITERIA_QUEST_LABEL = "Misión completada";
	L.LOCK_CRITERIA_SPELL_LABEL = "Habilidad/Montura/Receta aprendida";
	L.LOCK_CRITERIA_FACTION_LABEL = "Reputación con facción";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s con %s (Actual: %s)";
	L.FORCE_REFRESH_REQUIRED = "Esto puede requerir un refresco forzado ("..SHIFT_KEY_TEXT.." + clic) para coleccionarlo correctamente.";
	L.FUTURE_UNOBTAINABLE = "No conseguible en un futuro!";
	L.FUTURE_UNOBTAINABLE_TOOLTIP = "Esto es contenido que se ha confirmado o es muy probable que no se pueda conseguir en un futuro parche conocido.";
	L.TRADING_POST = "Puesto Comercial";

	-- Item Filter Window
		L.ITEM_FILTER_TEXT = "Filtros de objetos";
		L.ITEM_FILTER_DESCRIPTION = "Puedes buscar en la base de datos de ATT usando un filtro de objetos.";
		L.ITEM_FILTER_BUTTON_TEXT = "Establecer un filtro de objeto";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "Haz clic aquí para cambiar el filtro de objeto por el que quieres buscar en ATT.";
		L.ITEM_FILTER_POPUP_TEXT = "Qué filtro de objetos quieres usar para buscar?";

-- Instructional Text
	L.MINIMAP_MOUSEOVER_TEXT = "Clic derecho para cambiar ajustes.\nClic izquierdo para abrir la Lista Principal.\n"..CTRL_KEY_TEXT.." + clic para abrir la Mini Lista.\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones.";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ffClic izquierdo y arrastra para mover\nClic derecho para abrir el menú de ajustes\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones\n"..CTRL_KEY_TEXT.." + clic para Expandir/Contraer recursivamente\n"..SHIFT_KEY_TEXT.." + clic derecho para ordenar grupos o listas emergentes|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffClic izquierdo para Expandir/Contraer\nClic derecho para abrir una mini lista\n"..SHIFT_KEY_TEXT.." + clic para Refrescar las Colecciones\n"..CTRL_KEY_TEXT.." + clic para Expandir/Contraer recursivamente\n"..SHIFT_KEY_TEXT.." + clic derecho para ordenar grupos o listas emergentes\n"..ALT_KEY_TEXT.." + clic derecho para marcar puntos de referencia|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffClic izquierdo y arrastra para mover\nClic derecho para abrir el menú de ajustes\n"..SHIFT_KEY_TEXT.." + clic para buscar en la Casa de Subastas|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffClic izquierdo para Expandir/Contraer\nClic derecho para abrir una mini lista\n"..SHIFT_KEY_TEXT.." + clic para buscar en la Casa de Subastas|r";
	L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000Si conseguiste esto (cualquier sitio excepto del Cajón\nrescatado), por favor dí en nuestro Discord dónde lo conseguiste!|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000Cuanta más información, mejor.  Gracias!|r";
	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." + clic para bloquear esta ventana";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." + clic para desbloquear esta ventana";
	L.QUEST_ROW_INSTRUCTIONS = "Clic derecho para ver los requisitos de cualquier cadena de misiones";
	L.SYM_ROW_INFORMATION = "Clic derecho para ver contenido adicional que su fuente está en otra zona";
	L.QUEST_ONCE_PER_ACCOUNT = "Misión única por cuenta";
	L.COMPLETED_BY = "Completado por: %s";
	L.OWNED_BY = "Poseído por %s";

-- Social Module
	L.NEW_VERSION_AVAILABLE = "Hay una nueva versión de %s disponible. Por favor actualiza el AddOn, %s.";
	L.NEW_VERSION_FLAVORS = {
		"o le daremos otro mechero a Sylvanas",
	 	"Alexstrasza está preocupada por ti",
	 	"e Invencible te caerá |cffffaaaasegurísimo|r la próxima vez",
	 	"fue solo un mero contratiempo",
	-- 	"time to drop your % down",
	 	"y una tortuga va a llegar al agua",
	 	"ADALIIID, LA AZERITAAA",
	};
	L.SOCIAL_PROGRESS = "Progreso social";

-- Settings.lua
	L.AFTER_REFRESH = "Después de refrescar";

	-- General tab
		-- Mode Title
			L.MODE = "Modo";
			L.TITLE_COMPLETIONIST = "Completista ";
			L.TITLE_UNIQUE_APPEARANCE = "Único ";
			L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account .. "Cuenta|R ";
			L.TITLE_MAIN_ONLY = " (Sólo Principal)";
			L.TITLE_NONE_THINGS = "Ninguna de las cosas ";
			L.TITLE_ONLY = " Sólo ";
			L.TITLE_INSANE = app.ccColors.Insane.."Demente|R ";
			L.TITLE_SOME_THINGS = "Algunas de las cosas ";
			L.TITLE_LEVEL = "Nivel ";
			L.TITLE_SOLO = "Solo ";
			L._BETA_LABEL = " |cff4AA7FF[Beta]|R";

		L.MINIMAP_SLIDER = "Tamaño del botón del minimapa";
		L.MINIMAP_SLIDER_TOOLTIP = 'Usa esto para personalizar el tamaño del botón del Minimapa.\n\nPredeterminado: 36';
		L.EXTRA_THINGS_LABEL = "Recursos adicionales";
		L.MINIMAP_BUTTON_CHECKBOX = "Muestra el botón del minimapa";
		L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el botón del minimapa. Este botón te permite acceder rápidamente a la Lista Principal, que muestra tu progreso total de colección, y acceder a los Ajustes haciendo clic derecho.\n\nA algunas personas no les gusta el desorden. Como alternativa, puedes acceder a la Lista Principal escribiendo '/att' en el chat. Desde allí, puedes hacer clic derecho en el título para ir al menú de ajustes.";
		L.WORLDMAP_BUTTON_CHECKBOX = "Muestra el botón del mapa de mundo";
		L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "Activa esta opción si quiere ver el botón de ATT en tu mapa del mundo. Este botón te permite acceder rápidamente a la Mini Lista de la zona mostrada actualmente. Aunque deberás viajar físicamente a la zona para poder ver el contenido en la Mini Lista a la que puedes acceder cuando escribes '/att mini' en tu chat.";
		L.CLICK_TO_CREATE_FORMAT = "Haz clic para crear%s";
		L.KEYBINDINGS_TEXT = "Puedes definir atajos de teclado para ATT en las opciones del juego.";

	-- Interface tab
		L.ADDITIONAL_LABEL = "Información adicional";
		L.DESCRIPTIONS = "Descripciones";
		L.LORE = "Trasfondo";
		L.CLASSES = "Clases";

	-- Features tab
		L.MINIMAP_LABEL = "Botón del minimapa";
		L.MODULES_LABEL = "Módulos y Mini Listas";
		L.SKIP_CUTSCENES_CHECKBOX = "Saltar automáticamente cinemáticas";
		L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT salte todas las cinemáticas automáticamente por ti.";
		L.AUTO_BOUNTY_CHECKBOX = "Abre automáticamente la Lista de Recompensas";
		L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver los objetos que tienen una recompensa extraordinaria de colección. Si consigues uno de los objetos de esta lista, puedes conseguir una buena cantidad de oro.\n\nComando corto: /attbounty";
		L.AUTO_MAIN_LIST_CHECKBOX = "Abre automáticamente la Lista Principal";
		L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "Activa esta opción si quieres abrir automáticamente la Lista Principal cuando entres al juego.\n\nTambién puedes configurar este ajuste a un atajo:\n\nAtajos de teclado -> Addons -> ALL THE THINGS -> Activar Lista Principal ATT\n\nComando corto: /att";
		L.AUTO_MINI_LIST_CHECKBOX = "Abre automáticamente la Mini Lista";
		L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver todo lo que puedes coleccionar en la zona en la que te encuentras. La lista cambiará automáticamente cuando cambies de zona. A alguna gente no le gusta esta funcionalidad, pero cuando estas farmeando sólo, esta funcionalidad es extremadamente útil.\n\nTambién puedes configurar este ajuste a un atajo.\n\nAtajos de teclado -> Addons -> ALL THE THINGS -> Activar Mini Lista ATT\n\nShortcut Command: /att mini";
		L.AUTO_PROF_LIST_CHECKBOX = "Abre automáticamente la Lista de Profesiones";
		L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT abra y refresque la lista de profesiones cuando abres tus profesiones. Debido a limitaciones en la API impuestas por Blizzard, el único momento en el que un addon puede interactuar con los datos de profesión es cuando son abiertas. La lista cambia automáticamente cuando cambias a una profesión diferente.\n\nNo recomendamos desactivar esta opción porque pude que prevenir que se rastreen recetas correctamente.\n\nTambién puedes configurar este ajuste a un atajo. (sólo funciona cuando una profesión es abierta)\n\nAtajos de teclado -> Addons -> ALL THE THINGS -> Activar Lista de Profesiones ATT";
		L.AUTO_RAID_ASSISTANT_CHECKBOX = "Abre automáticamente el Asistente de Banda";
		L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver un gestor alternativo de grupo/banda llamado 'Asistente de Banda'. La lista se actualizará automáticamente cuando cambien ajustes de grupo.\n\nTambién puedes configurar este ajuste a un atajo.\n\nAtajos de teclado -> Addons -> ALL THE THINGS -> Activar Asistente de Banda ATT\n\nComando corto: /attra";
		L.AUTO_WQ_LIST_CHECKBOX = "Abre automáticamente la Lista de Misiones de Mundo";
		L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que la Lista de 'Misiones de Mundo' aparezca automáticamente. La lista se actualizará automáticamente cuando cambies de zonas.\n\nTambién puedes configurar este ajuste a un atajo.\n\nAtajos de teclado -> Addons -> ALL THE THINGS -> Activar Misiones de Mundo ATT\n\nComando corto: /attwq";
		L.AUCTION_TAB_CHECKBOX = "Muestra la pestaña del módulo de Casa de Subastas";
		L.AUCTION_TAB_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el módulo de la Casa de Subastas que biene con ATT.\n\nAlgunos addons son traviesos y modifican esta ventana extensamente. ATT no funciona muy bien con algunos de estos juguetitos.";
		L.ICON_LEGEND_LABEL = "Leyenda de iconos";
		L.ICON_LEGEND_TEXT = app.ccColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t " .. "No conseguible" .. "\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "Conseguible sólo con prerequisitos" .. "\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. "Contenido temporal disponible" .. "\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. "Contenido temporal no disponible" .. "\n|T374225:0|t " .. "No disponible en tu personaje actual";
		L.CHAT_COMMANDS_LABEL = "Comandos de Chat";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFAbre la lista principal.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFAbre la Mini Lista.\n\n|R/att bounty\n|cffFFFFFFAbre una lista de objetos con errores o no confirmados.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFAbre el Asistente de Banda.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFAbre la lista de Misiones de Mundo.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Enlace del objeto]\n|cffFFFFFFAbre una lista con las apariencias compartidas. También funciona con otras cosas, como|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFMuestra todas las cosas con 'Eliminado en el parche' en un futuro.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFAbre la lista Aleatoria.\n\n|R/att unsorted\n|cffFFFFFFAbre la lista de objetos sin fuente. Mejor abrir en Modo Debug.\n\n|R/rl\n|cffFFFFFFRecarga tu interfaz de WoW.|R";

	-- Sync Window
		L.ACCOUNT_MANAGEMENT = "Administración de Cuenta";
		L.ACCOUNT_MANAGEMENT_TOOLTIP = "Esta lista te muestra todas las funcionalidades relacionadas con la sincronización de datos de cuentas.";
		L.ADD_LINKED_CHARACTER_ACCOUNT = "Añadir personaje / cuenta conectado/a ";
		L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "Haz clic aquí para conectar un personaje o cuenta a tu cuenta.";
		L.ADD_LINKED_POPUP = "Por favor escribe el nombre del personaje o cuenta Battle.net a conectar.";
		L.SYNC_CHARACTERS_TOOLTIP = "Muestra todos los personajes en tu cuenta.";
		L.NO_CHARACTERS_FOUND = "No se encontraron personajes.";
		L.LINKED_ACCOUNTS = "Cuentas conectadas";
		L.LINKED_ACCOUNTS_TOOLTIP = "Muestra todas las cuentas conectadas que hayas definido hasta ahora.";
		L.NO_LINKED_ACCOUNTS = "No se encontraron cuentas conectadas.";
		L.LINKED_ACCOUNT_TOOLTIP = "La cuenta de este personaje se sincronizará automáticamente cuando entres al mundo. Para un juego óptimo, deberías añadir a la lista de permitidos un personaje banco y probablemente no tu personaje principal para no afectar a la jugabilidad con tu personaje mientras se sincronizan los datos de cuentas.";
		L.DELETE_LINKED_CHARACTER = "Botón derecho para eliminar este personaje conectado";
		L.DELETE_LINKED_ACCOUNT = "Botón derecho para eliminar esta cuenta conectada";
		L.DELETE_CHARACTER = "Botón derecho para eliminar este personaje";
		L.CONFIRM_DELETE = "\n \nEstás seguro de que quieres eliminar esto?";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "Activar Modo Cuenta";
		L.TOGGLE_COMPLETIONIST_MODE = "Activar Modo Completista";
		L.TOGGLE_DEBUG_MODE = "Activar Modo Debug";
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

	-- Event Text
		L.ITEM_ID_ADDED = "%s (%d) fue añadido a tu colección.";
		L.ITEM_ID_ADDED_RANK = "%s (%d) [Rango %d] fue añadido a tu colección.";
		L.ITEM_ID_ADDED_MISSING = "%s (%d) fue añadido a tu colección. No encontrado en la base de datos. Por favor repórtalo al discord de ATT!";
		L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] fueron añadidos a tu colección.";
		L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] fueron añadidos a tu colección. No encontrado en la base de datos. Por favor repórtalo al discord de ATT!";
		L.ITEM_ID_REMOVED = "%s (%d) fue eliminado de tu colección.";
		L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] fueron eliminados de tu colección.";

	-- Tooltip Text
		L.DROP_RATE = "Probabilidad de botín";
		L.QUEST_GIVER = "Asignador de misión";
		L.EVENT_SCHEDULE = "Horario del evento";
		L.EVENT_ACTIVE = "Activo:";
		L.EVENT_START = "Inicio:";
		L.EVENT_END = "Fin:";
		L.EVENT_WHERE = "Dónde:";
		L.REQUIRES_EVENT = "Requiere el evento";
		L.LOCKOUT = "Bloqueo";
		L.RESETS = "Reinicios";
		L.SHARED = "Compartido";
		L.SPLIT = "Por dificultad";
		L.REQUIRES_LEVEL = "Necesitas ser nivel";
		L.SECRETS_HEADER = "Secretos";
		L.LIMITED_QUANTITY = "Tiene una cantidad limitada puede que no esté presente siempre en este vendedor.";
		L.SOURCE_ID_MISSING = "Por favor, reporta este objeto y dónde fue obtenido al discord de ATT en #retail-errors!";
		L.ADDED_WITH_PATCH_FORMAT = "Añadido en %s";
		L.WAS_ADDED_WITH_PATCH_FORMAT = "Añadido en %s";
		L.ADDED_BACK_WITH_PATCH_FORMAT = "Reañadido en %s";
		L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "Añadido en %s";
		L.REMOVED_WITH_PATCH_FORMAT = "Eliminado en %s";

	-- Filter Text
		L.CREATURES_COUNT = "[%s Criaturas]";
		L.CREATURES_LIST = "Lista de Criaturas";

	-- Artifact Relic Completion
		L.ARTIFACT_RELIC_CACHE = "Abre la interfaz de Armas de Artefacto para cargar si esto es una mejora o no. Es útil para determinar si puedes comerciar este objeto a un Twink o no.";
		L.ARTIFACT_RELIC_COMPLETION = "Completado de reliquias de Artefacto";
		L.NOT_TRADEABLE = "No comerciable";
		L.TRADEABLE = "Comerciable";

	-- Keybind usage
		L.ENABLED = "activado";
		L.DISABLED = "desactivado";

	-- Icons and Collection Text
		L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffAdquirido|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffAdquirido*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333No adquirido|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Completado|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Completado*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncompleto|r";	-- Acquired the colors and icon from CanIMogIt.
		L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Conocido|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffDivisa|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, el Trono Ardiente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		--TODO: ["Expansion Pre"] = "Pre",
		--TODO: ["Expansion Features"] = "EF",
		--TODO: [GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		--TODO: ["The Burning Crusade"] = "BC",
		--TODO: ["Burning Crusade"] = "BC",
		--TODO: ["The BC"] = "BC",
		--TODO: ["Wrath of the Lich King"] = "WotLK",
		--TODO: ["Cataclysm "] = "Cata ",
		--TODO: ["Mists of Pandaria"] = "MoP",
		--TODO: ["Warlords of Draenor"] = "WoD",
		--TODO: ["Battle for Azeroth"] = "BFA",
		--TODO: ["The Shadowlands"] = "SL",
		--TODO: ["Shadowlands"] = "SL",
		["Jugador contra Jugador"] = "JcJ",
		["Buscador de bandas"] = "LFR",
		--TODO: ["Looking For Raid"] = "LFR",
		["Normal"] = "N",
		["Heroica"] = "H",
		["Mítica"] = "M",
		["Ny'alotha, Ciudad del Despertar"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, el Mercado Velado"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 jugadores"] = "10M",
		["10 jugadores (Heroico)"] = "10M (H)",
		["25 jugadores"] = "25M",
		["25 jugadores (Heroico)"] = "25M (H)",
		--TODO: ["Emissary Quests"] = "Emisario",
		--TODO: [TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		--TODO: ["WoW Anniversary"] = "Aniversario",
		["Curia:"] = "Curia:",
})
do a[key] = value; end

if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5202] = "Equilibrio de poderes",						-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		SKIP_AUTO_REFRESH = "Saltar Ajustes-Conmutador de los refrescos de datos!";
		SKIP_AUTO_REFRESH_TOOLTIP = "Por defecto (desactivado), cualquier cambio de Ajustes que pueda afectar los datos visibles causará un refresco automático.\n\nActivando esta opción, los cambios de Ajustes no tendrán efecto hasta que el Usuario ejecute un Refresco Completo con "..SHIFT_KEY_TEXT.." + clic en una ventana de ATT.";

	-- About Page
		ABOUT_PAGE = "Información";
		ABOUT_TOP = " |CFFFFFFFF es un addon de rastreo de colecciones que te muestra dónde y cómo conseguirlo tódo en el juego! Tenemos una gran comunidad de usuarios en nuestro Discord (enlace el final) donde puedes preguntar, enviar sugerencias y también reportar errores o objetos que falten. Si encuentras algún coleccionable que no está documentado, puedes decirnoslo en el Discord, o para los que tengan más conocimiento técnico, tenemos un Git donde puedes contribuir directamente.\n\nSi bien nos esforzamos mucho por el completado, hay muchas cosas que se añaden al juego en cada parche, así que si nos dejamos algo, por favor entiende que somos un equipo pequeño intentando seguir el ritmo de cambios e intentando coleccionar cosas nosotros también. :D\n\nPuedes preguntarme dudas cuando esté haciendo directos e intentaré responderte lo mejor que pueda, incluso si no está relacionado directamente con ATT (programación de addons del WoW también).\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "Colaboradores activos: |CFFFFFFFF(Órden alfabético)\n%s\n\n|rSalón de la Fama: |CFFFFFFFF(Órden alfabético)\n%s\n\nMención especial para AmiYuy (CanIMogIt) y Caerdon (Caerdon Wardrobe). Tienes que descargarte sus addons para tener los iconos de colección de objetos en tus bolsas! %s %s %s\n\nPara comparar en línea la colección deberías visitar DataForAzeroth.com de Shoogen y WoWthing.org de Freddie!|r";
		CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C para Copiar a tu Portapapeles.";
		CURSEFORGE_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace del addon ALL THE THINGS en Curse.\n\nPuedes dar este enlace a tus amigos para que arruinen sus vidas también! Te van a perdonar en un futuro...o no.";
		DISCORD_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace al servidor de Discord de All The Things.\n\nPuedes compartir tu progreso/frustraciones con otros coleccionistas!";
		MERCH_BUTTON_LABEL = "Merch";
		MERCH_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace a la tienda de artículos de All The Things.\n\nAquí puedes dar soporte financiero al Addon y conseguir artículos chulos a cambio!";
		PATREON_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace a la página de Patreon de All The Things.\n\nAquí puedes ver cómo dar soporte financiero al Addon!";
		TWITCH_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace a mi canal de Twitch.\n\nPuedes preguntarme dudas cuando esté haciendo directos e intentaré responderte lo mejor que pueda!";
		WAGO_BUTTON_TOOLTIP = "Haz clic en este botón para copiar el enlace del addon ALL THE THINGS en Wago.io.\n\nPuedes dar este enlace a tus amigos para que arruinen sus vidas también! Te van a perdonar en un futuro...o no.";

	-- General Page
		DEBUG_MODE = app.ccColors.Red.."Modo Debug|r (Muestra todo)";
		DEBUG_MODE_TOOLTIP = "Literalmente... TODAS LAS COSAS EN EL JUEGO. PUNTO. SI, TODO DE TODO. Incluso las cosas no coleccionables como bolsas, consumibles, ingredientes, etc aparecerán en las listas. (Incluído tú! No, enserio. Mira.)\n\nEsto es sólo para propósitos de Depuración. No está pensado para ser usado para el rastreo de completado.\n\nEste modo se salta todos los filtros, incluyendo no obtenibles.";
		ACCOUNT_MODE = app.ccColors.Account.."Modo Cuenta";
		ACCOUNT_MODE_TOOLTIP = "Activa este ajuste si quieres rastrear todas las cosas para tdos tus personajes independientemente de los filtros de clase o raza.\n\nLos filtros de No obtenible aún se aplican.";
		FACTION_MODE = "Sólo Facción";
		FACTION_MODE_TOOLTIP = "Activa este ajuste si quieres ver los datos de Modo Cuenta sólo para las razas y clases de tu facción actual.";
		LOOT_MODE = "Modo botín";
		LOOT_MODE_TOOLTIP = "Activa esta opción para mostrar el botín de todas las fuentes.\n\nPuedes cambiar el tipo de botín que se muestra en la pestaña de Filtros.";
		MODE_EXPLAIN_LABEL = "|cffFFFFFFLo que coleccionas se resume en un modo específico. Activa todas las opciones " .. app.ccColors.Insane .. "coloreadas|cffFFFFFF para desbloquear el ".. app.ccColors.Insane .. "Modo Demente|cffFFFFFF.";
		COMPLETIONIST_MODE = "+Fuentes";
		COMPLETIONIST_MODE_TOOLTIP = "Activa este Modo para considerar los objetos como Coleccionados sólo cuando un objeto específico se ha desbloqueado para esa Apariencia.\n\nEsto significa que tendrás que coleccionar todas las apariencias compartidas de cada objeto.\n\nNota: Por defecto, el juego para de decirte cosas sobre los objetos que no has coleccionado cuando coleccionas una apariencia con fuente compartida, así que esto se asegura que los objetos no coleccionados son rastreados.";
		MAIN_ONLY = "Sólo Personaje Principal";
		MAIN_ONLY_TOOLTIP = "Activa este ajuste si a demás quieres que ATT *finja* que has conseguido todas las apariencias compartidas no bloqueadas por una raza diferente o clase.\n\nComo ejemplo, si has coleccionado una pieza de un conjunto de equipo de ICC sólo disponible para Cazador y hay una apariencia compartida de la banda sin las restricciones de clase/raza, ATT va a *finjir* que también has conseguido esa fuente de apariencia.\n\nNOTA: Cambiar a una raza/clase diferente va a mostrar incorrectamente que has conseguido una fuente de apariencia que no has conseguido para ese nuevo personaje cuando se desbloquea de esta forma.";
		ONLY_RWP = "Sólo RWP";
		ONLY_RWP_TOOLTIP = "Activa esta opción para rastrear sólamente las transfiguraciones que serán eliminadas del juego en un futuro. Sólo los objetos etiquetados con 'Eliminado en el Parche' ('removed with patch' o 'RWP') cuentan. Si encuentras un objeto sin etiquetar que debería estarlo, dímelo por favor!\n\nPuedes cambiar el tipo de botín que se muestra en la pestaña de Filtros.";
		UNOFFICIAL_SUPPORT_TOOLTIP = "NOTA: Actualmente, no hay soporte oficial por parte de la API del WoW, pero ATT puede rastrear objetos o el completado de misiones para hacerlo funcional en el addon.";

	-- General Content
		GENERAL_CONTENT = "Contenido General";
		--TODO: SHOW_INCOMPLETE_THINGS_CHECKBOX = "Show All Trackable Things";
		--TODO: SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX = "Show Completed Groups";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
		--TODO: SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: FILTER_THINGS_BY_LEVEL_CHECKBOX = "No Level Restrictions";
		--TODO: FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Enable this setting if you want to see content available regardless of player level.\n\nNOTE: Disabling this is especially useful on Starter Accounts.";
		--TODO: FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "No Skill Level Restrictions";
		--TODO: FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "Disable this setting if you only want to see content available to the maximum possible skill level available to the game environment.";
		--TODO: SHOW_BOE_CHECKBOX = "BoE/BoA Items";
		--TODO: SHOW_BOE_CHECKBOX_TOOLTIP = "Enable this setting if you want to show Bind-on-Equip/Account items.\n\nDisabling this setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.";
		--TODO: IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignore BoE/BoA Item Filters";
		--TODO: IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE/BoA items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.";
		--TODO: SHOW_ALL_SEASONAL = "All Seasonal Events";
		--TODO: SHOW_ALL_SEASONAL_TOOLTIP = "Enable this setting to show all seasonal events, instead of only currently active seasonal events.\n\nNOTE: Seasonal Events will automatically be visible as active 7 days in advance.";
		--TODO: SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which requires Pet Battles within the game.";
		--TODO: SHOW_PVP_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which 'may' require Player vs. Player interactions within the game.";
		--TODO: SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "All Learnable Quest Rewards";
		--TODO: SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "Disable this option to hide items that are listed as \"Not Available in Personal Loot\" for quests.\n\nThis is useful for tracking items that your class can't use in World Drops, but still marking quests as completed.\n\nSome items can be marked incorrectly: this setting WILL hide items that you can obtain!";

		-- Collectible Things
		ACC_WIDE_DEFAULT = "Rastreado ".. app.ccColors.Account .. "Para toda la cuenta|R por defecto.";
		TRACK_ACC_WIDE = app.ccColors.Account .. "Rastrear para toda la cuenta|R";
		ACCOUNT_THINGS_LABEL = "Cosas para toda la cuenta";
		GENERAL_THINGS_LABEL = "Cosas generales";
		STRANGER_THINGS_LABEL = "Cosas extrañas";

		ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear logros.";
		APPEARANCES_CHECKBOX = "Apariencias";
		APPEARANCES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear la adquisición de apariencias.\n\nNOTA: Desactiva esta opción tambien desactiva todas las animaciones y lógica de adquisición.  Puedes usar esta opción como una forma de prevenir picos de retraso mientras haces contenido de grupo importante, pero recuerda que el cálculo ocurrirá cuando se reactive.";
		BATTLE_PETS_CHECKBOX = "Mascotas de duelo";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar Mascotas de duelo y acompañantes. Pueden ser encontrados en el mundo abierto o a través de botín de jefe en varias mazmorras y bandas así como vendedores y reputaciones.";
		DEATHS_CHECKBOX = "Muertes";
		DEATHS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear cada vez que uno de tus personajes muere y lo muesstra como una sección de coleccionable en el addon.\n\nNOTA: Si lo desactivas, lo seguiremos rastreando, pero simplemente no mostraremos la estadística a no ser que estés en Modo Debug.";
		EXPLORATION_CHECKBOX = "Exploración";
		EXPLORATION_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear el completado de exploración para los mapas exteriores.";
		FLIGHT_PATHS_CHECKBOX = "Puntos de vuelo";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar puntos de vuelo y muelles de ferry.\n\nPara coleccionar estos, abre el dialogo con el maestro de punto de vuelo / ferri en cada continente.\n\nNOTA: Debido a la tecnologia de faseo, puede que tengas que fasearte a otras versiones de una zona para obtener crédito de esos puntos de interés.";
		HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		--TODO: HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+Mejoras";
		--TODO: HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
		ILLUSIONS_CHECKBOX = "Ilusiones";
		--TODO: ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.";
		MOUNTS_CHECKBOX = MOUNTS;
		MOUNTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar monturas.\n\nPuedes usarlas para ir a sitios más rápido que corriendo. Quién lo diría!";
		QUESTS_CHECKBOX = QUESTS_LABEL;
		--TODO: QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
		QUESTS_LOCKED_CHECKBOX = "+Bloqueado";
		--TODO: QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using Account-Wide Quests to incorporate progress from other characters.";
		RECIPES_CHECKBOX = "Recetas";
		--TODO: RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		REPUTATIONS_CHECKBOX = "Reputaciones";
		--TODO: REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		TITLES_CHECKBOX = "Títulos";
		--TODO: TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		TOYS_CHECKBOX = TOY_BOX;
		--TODO: TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!";

		-- Expansion Things
		EXPANSION_THINGS_LABEL = "Cosas de expansión";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Esencias del Corazón de Azeroth";
		--TODO: AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrito de dracovigía";
		--TODO: DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track Dragonflight Manuscrito de dracovigía";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguidores & Compañeros";
		--TODO: FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Poder de talla de runas";
		--TODO: RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Runecarving Powers.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conductos";
		--TODO: SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Conductos.";

		--TODO: CHARACTERUNLOCKS_CHECKBOX = "Character Unlocks";
		--TODO: CHARACTERUNLOCKS_CHECKBOX_TOOLTIP = "Enable this option to track Character Unlocks. These are various character-based unlocks which aren't clearly able to be categorized as another type (e.g. Hex variants, Polymorph variants, Hunter species taming unlocks, Pocopoc customizations, etc.)\n\nTracked per character by default.";

		-- Account-Wide Checkboxes
		--TODO: ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = "Achievement tracking is usually Account-Wide, but there are a number of achievements exclusive to specific classes and races that you can't get on your main.";
		--TODO: ACCOUNT_WIDE_APPEARANCES_TOOLTIP = "Transmog should be collected account wide. Certain items cannot be learned by every class, so ATT will do its best to only show you things that you can collect on your current character.";
		--TODO: ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = "Azerite Essences cannot technically be collected and used Account-Wide, but if you only care about collecting them on your main character then you may prefer tracking them Account-Wide.";
		--TODO: ACCOUNT_WIDE_BATTLE_PETS_TOOLTIP = "Companion pets can be collected on multiple characters and realistically would require that you have an insane amount of bag space in order to collect them all on one character.\n\nWe recommend you keep this turned on, but you do you fam.";
		--TODO: ACCOUNT_WIDE_CHARACTERUNLOCKS_TOOLTIP = "Consider any Character Unlock collected if any character has collected it.";
		--TODO: ACCOUNT_WIDE_DEATHS_TOOLTIP = "Death tracking really only exists for pre-Wrath Classic where a statistic wasn't available to know this information. Once achievements were implemented, this feature instead acquires data directly from the statistics API. You can use the tooltip on the Death Tracker to se";
		--TODO: ACCOUNT_WIDE_EXPLORATION_TOOLTIP = "Exploration tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";
		--TODO: ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = "Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";
		--TODO: ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = "Followers are typically per character, but do you really want to have to collect 243 Garrison Inn Followers on one character at a rate of 1 per week?\n\nI think not, good sir.";
		--TODO: ACCOUNT_WIDE_QUESTS_TOOLTIP = "Quest completion is typically per Character, but this will consider a Quest as completed if ANY Character has completed that specific Quest.";
		--TODO: ACCOUNT_WIDE_RECIPES_TOOLTIP = "Recipes are not normally tracked Account-Wide in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.";
		--TODO: ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = "Reputations are now tracked Account-Wide in Blizzard's database for achievements, so turning this on may be a good idea.";
		--TODO: ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = "Enable this to consider a Soulbind Conduit as collected for all characters if at least one character has learned it.";
		--TODO: ACCOUNT_WIDE_TITLES_TOOLTIP = "Most titles are tracked Account-Wide, but some prestigious titles in WoW are locked to the character that earned them.\n\nToggle this if you don't care about that and want to see those titles marked Collected for your alts.";

	-- General: Filters Page
		ITEM_EXPLAIN_LABEL = "|cffFFFFFFEste contenido se muestra siempre si estás en "..app.ccColors.Account.."Modo Cuenta|cffFFFFFF.|r";
		CLASS_DEFAULTS_BUTTON = "Predeterminados de Clase";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "Haz clic en este botón para restaurar todos los filtros a tus predeterminados de clase.\n\nNOTA: Sólo pueden activarse los filtros que son conseguibles por tu clase.";
		ALL_BUTTON_TOOLTIP = "Haz clic en este botón para activar todas las opciones a la vez.";
		UNCHECK_ALL_BUTTON_TOOLTIP = "Haz clic en este botón para desactivar todas las opciones a la vez.";

	-- General: Phases Page
	-- Classic Only, fully dynamic from within parser.

	-- General: Unobtainables Page
		UNOBTAINABLES_PAGE = "No conseguibles";
		UNOBTAINABLE_LABEL = "Contenido no conseguible";
		CUSTOM_FILTERS_LABEL = "Contenido automatizado";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFEste contenido siempre está visible si está disponible para tu personaje actual o si estás en "..app.ccColors.Account.."Modo Cuenta|cffFFFFFF.|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Activa este ajuste para mostrar forzosamente %s contenido incluso si no está disponible para tu personaje actual.";

	-- Interface Page
		TOOLTIP_LABEL = "Descripciones emergentes";
		TOOLTIP_HELP_CHECKBOX = "Muestra la ayuda de las descripciones emergentes";
		--TODO: TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Enable this option if you want to see the help info in ATT window tooltips which indicates various key/click combinations for ATT window functionality.\nIf you already know all of the key/click combinations, you may want to save tooltip space and disable this option.";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Integraciones con Descripciones emergentes";
		--TODO: ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		DISPLAY_IN_COMBAT_CHECKBOX = "En combate";
		--TODO: DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		TOOLTIP_MOD_LABEL = "Modificador";
		--TODO: TOOLTIP_MOD_NONE = NONE_KEY;
		--TODO: TOOLTIP_MOD_SHIFT = SHIFT_KEY_TEXT;
		--TODO: TOOLTIP_MOD_CTRL = CTRL_KEY_TEXT;
		--TODO: TOOLTIP_MOD_ALT = ALT_KEY_TEXT;
		--TODO: TOOLTIP_MOD_CMD = CMD_KEY_TEXT;
		TOOLTIP_SHOW_LABEL = "Información mostrada";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "Progreso de colección";
		--TODO: SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		ICON_ONLY_CHECKBOX = "Sólo icono";
		--TODO: ICON_ONLY_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
		KNOWN_BY_CHECKBOX = "Conocido por";
		--TODO: KNOWN_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
		COMPLETED_BY_CHECKBOX = "Completado por";
		--TODO: COMPLETED_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
		SHOW_CRAFTED_ITEMS_CHECKBOX = "Mostrar objetos fabricados";
		--TODO: SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the items that can be crafted by any of your characters for a reagent in its tooltip.";
		SHOW_RECIPES_CHECKBOX = "Mostrar recetas";
		--TODO: SHOW_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the recipes that can be crafted by any of your characters for a reagent in its tooltip.";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "Sólo no triviales";
		--TODO: SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you only want to see non-trivial recipes in the recipe list.";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Cálculo de divisas";
		--TODO: SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
		SHARED_APPEARANCES_CHECKBOX = "Apariencias compartidas";
		--TODO: SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
		INCLUDE_ORIGINAL_CHECKBOX = "Fuente original";
		--TODO: INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
		ONLY_RELEVANT_CHECKBOX = "Sólo relevante";
		--TODO: ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
		SPEC_CHECKBOX = "Especializaciones";
		--TODO: SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		SUMMARIZE_CHECKBOX = "Resume cosas";
		--TODO: SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		--TODO: CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		SOURCE_LOCATIONS_CHECKBOX = "Ubicaciones de fuentes";
		--TODO: SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		--TODO: LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		COMPLETED_SOURCES_CHECKBOX = "Para completado";
		--TODO: COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		DROP_CHANCES_CHECKBOX = "Probabilidad de botón";
		--TODO: DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		FOR_CREATURES_CHECKBOX = "Para criaturas";
		--TODO: FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		FOR_THINGS_CHECKBOX = "Para cosas";
		--TODO: FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		FOR_UNSORTED_CHECKBOX = "Para no ordenados";
		--TODO: FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: WITH_WRAPPING_CHECKBOX = "Allow Wrapping";
		--TODO: WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.";

		BEHAVIOR_LABEL = "Comportamiento de lista";
		MAIN_LIST_SLIDER_LABEL = "Escala Lista Principal";
		--TODO: MAIN_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
		MINI_LIST_SLIDER_LABEL = "Escala Mini Listas";
		--TODO: MINI_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
		--TODO: ADHOC_UPDATES_CHECKBOX = "Ad-Hoc Window Updates";
		--TODO: ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
		--TODO: EXPAND_DIFFICULTY_CHECKBOX = "Expand Current Difficulty";
		--TODO: EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
		--TODO: SHOW_ICON_PORTRAIT_CHECKBOX = "Icon Portraits";
		--TODO: SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for non-quest object types.\n\nIE: When looking at bosses, this option will show the face of the boss instead of the difficulty icon.\n\nDefault: On";
		--TODO: SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "For Quests";
		--TODO: SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for quest object types.\n\nIE: When looking at quests, this option will show the face of the quest giver instead of the quest type icon.\n\nDefault: On";
		--TODO: SHOW_MODELS_CHECKBOX = "Model Preview";
		--TODO: SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX = "Fill Dynamic Quests";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be filled with those purchases when under automatically-populated Quests.\n\nFor example, this will cause the [World Quests] window to behave like the minilist rather than the Main list regarding Cost display.\nNote that in most cases, this will drastically increase the apparent content within the window.";
		--TODO: FILL_NPC_DATA_CHECKBOX = "Fill NPC Data";
		--TODO: FILL_NPC_DATA_CHECKBOX_TOOLTIP = "Enable this option if you want to fill all relevant data for a given NPC (Common Boss Drops, Drops, etc) when shown in a mini list. This option may cause a significant amount of duplication, but the idea is that the NPC will remain visible on the mini list if you need something available from that NPC.\n\nNote: A lot of Dragonflight outdoors content relies on this setting being enabled for accuracy due to how many Rares share common drops.\n\nDefault: Off";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX = "Show Nested Quest Chains";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		--TODO: SORT_BY_PROGRESS_CHECKBOX = "Sort By Progress";
		--TODO: SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." right click) to sort by the total progress of each group (instead of by Name)";
		--TODO: SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
		--TODO: PERCENTAGES_CHECKBOX = "Show Percentage Completion";
		--TODO: PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		--TODO: PRECISION_SLIDER = "Precision Level";
		--TODO: PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
		--TODO: DYNAMIC_CATEGORY_LABEL = "Dynamic Categories";
		--TODO: DYNAMIC_CATEGORY_SIMPLE = "Simple";
		--TODO: DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Generate Dynamic Categories based only on the very highest Category.";
		--TODO: DYNAMIC_CATEGORY_NESTED = "Nested";
		--TODO: DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
		--TODO: DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Applied when Generated|r";
		--TODO: MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "Maximum Top Line Length";

	-- Interface: Accessibility Page
		--TODO: ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		--TODO: ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		--TODO: COLORS_ICONS = "Colors and Icons";
		--TODO: LOCKED_QUESTS = "Locked quests";
		--TODO: MORE_COLORS_CHECKBOX = "Show Colors";
		--TODO: MORE_COLORS_CHECKBOX_TOOLTIP = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
		--TODO: WINDOW_COLORS = "Window Colors";
		--TODO: BACKGROUND = EMBLEM_BACKGROUND;
		--TODO: BACKGROUND_TOOLTIP = "Set the background color of all ATT windows.";
		--TODO: BORDER = EMBLEM_BORDER;
		--TODO: BORDER_TOOLTIP = "Set the border color of all ATT windows.";
		--TODO: RESET_TOOLTIP = "Revert to default settings.";
		--TODO: CLASS_BORDER = "Use Class Color For Border";
		--TODO: CLASS_BORDER_TOOLTIP = "Use your class color for the borders. This updates when you log onto another class.";

	-- Interface: Information Page

	-- Features Page

	-- Features: Audio Page
		--TODO: CELEBRATIONS_LABEL = "Celebrations & Sound Effects";
		AUDIO_CHANNEL = "Canal de audio";
		--TODO: CELEBRATE_COLLECTED_CHECKBOX = "Collected Things Trigger a Celebration";
		--TODO: CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		SOUNDPACK = "Paquete de sonidos";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX = "Play a Sound Effect when you Die";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a sound effect when you die.";
		--TODO: WARN_REMOVED_CHECKBOX = "Removed Things Trigger a Warning";
		--TODO: WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		--TODO: SCREENSHOT_COLLECTED_CHECKBOX = "Collected Things Trigger a Screenshot";
		--TODO: SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to take a screenshot for every Thing you collect.";

	-- Features: Reporting Page
		--TODO: REPORTING_LABEL = "Reporting";
		--TODO: REPORT_COLLECTED_THINGS_CHECKBOX = "Report Collected Things";
		--TODO: REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		--TODO: REPORT_COMPLETED_QUESTS_CHECKBOX = "Report Quests";
		--TODO: REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see the QuestID for any quest you Accept or Complete immediately after it happens. (For reporting bugs, trackings purposes, etc)";
		--TODO: REPORT_UNSORTED_CHECKBOX = "Only 'Unsourced'";
		--TODO: REPORT_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the QuestID if it isn't already Sourced.";
		--TODO: REPORT_NEARBY_CONTENT_CHECKBOX = "Report Nearby Content";
		--TODO: REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content such as vignettes to the chat. This feature provides popouts and waypoints when used.";
		--TODO: REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX = "Automatically Plot Waypoints";
		--TODO: REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically plot waypoints for nearby content.";
		--TODO: REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX = "Automatically Clear";
		--TODO: REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically clear the waypoint plotted by the nearby content feature when the content itself becomes unavailable or you go out of range.";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX = "Include Creatures";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications for things that are considered creatures. (Rares, World Bosses, NPCs)";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX = "Include Treasures";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications for things that are considered treasures. (Chests, Statues, Satchels in the world)";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX = "Include Completed";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications from things that completed based on your filters in ATT.";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX = "Include Unknown/Unsourced";
		--TODO: REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications from things that are not sourced in ATT.";
		--TODO: REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX = "Flash the Taskbar";
		--TODO: REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to flash the taskbar when nearby content is detected.";
		--TODO: REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX = "Play a Sound Effect";
		--TODO: REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to also play a notification sound effect when nearby content is detected.";

	-- Features: Sync Page
	-- Retail Only, deprecated.
		--TODO: SYNC_PAGE = "Sync";
		--TODO: ACCOUNT_SYNCHRONIZATION = "Account Synchronization";
		--TODO: AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatically Sync Account Data";
		--TODO: AUTO_SYNC_ACC_DATA_TOOLTIP = "Enable this option if you want ATT to attempt to automatically synchronize account data between accounts when logging in or reloading the UI.";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		PROFILES_PAGE = "Perfiles";
		PROFILE = "Perfil";
		PROFILE_INITIALIZE = "Inicializar Perfiles";
		PROFILE_INITIALIZE_TOOLTIP = "Esto permite que ATT admita y guarde la información del Perfil en las Saved Variables. Tus ajustes actuales y la información de la ventana van a ser copiadas en el perfil '"..DEFAULT.."', que no puede ser borrado, pero podría ser modificado y será usado como el Perfil inicial para todos los personajes.\n\nAsegúrate de informar de cualquier comportamiento inesperado o error con los Perfiles en el Discord de ATT!";
		PROFILE_INITIALIZE_CONFIRM = "¿Estás seguro de que deseas habilitar la compatibilidad con perfiles?";
		PROFILE_NEW_TOOLTIP = "Crea un perfil vacío para usarlo en el Personaje actual";
		PROFILE_COPY_TOOLTIP = "Copia el Perfil seleccionado en el Perfil actual";
		PROFILE_DELETE_TOOLTIP = "Elimina el Perfil seleccionado";
		PROFILE_SWITCH_TOOLTIP = "Establece el Perfil seleccionado como el Perfil actual\n\nUn Perfil también puede ser clicado con "..SHIFT_KEY_TEXT.." para cambiar a él";
		SHOW_PROFILE_LOADED = "Muestra qué perfil se carga durante el inicio de sesión o cuando se cambia entre perfiles";
})
do a[key] = value; end

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
