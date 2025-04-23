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
	L.LOOT_TABLE_CHANCE = "Probabilidad en la tabla de botín";
	L.BEST_BONUS_ROLL_CHANCE = "Mejor probabilidad de tirada de bonificación";
	L.BEST_PERSONAL_LOOT_CHANCE = "Mejor probabilidad de botín personal";
	L.PREREQUISITE_QUESTS = "Hay misiones previas que deben completarse antes de poder obtener esto:";
	L.BREADCRUMBS = "Cadena";
	L.BREADCRUMBS_WARNING = "Hay una cadena de misiones que no puede conseguirse después de completar esto:";
	L.THIS_IS_BREADCRUMB = "Esto es una cadena de misiones.";
	L.BREADCRUMB_PARTYSYNC = "Es posible que esto no se pueda completar sin Sincronización de grupo si primero se completa alguna de estas misiones:";
	L.BREADCRUMB_PARTYSYNC_2 = "Esto se puede obtener a través de la Sincronización de grupo con otro personaje que no haya completado ninguna de estas misiones:";
	L.BREADCRUMB_PARTYSYNC_3 = "Esto se puede obtener a través de la Sincronización de grupo con un personaje que pueda aceptar esta misión.";
	L.BREADCRUMB_PARTYSYNC_4 = "Por favor, haznos saber tus resultados en Discord si intentas obtener esta misión a través de Sincronización de grupo!";
	L.DISABLE_PARTYSYNC = "Es probable que este personaje no pueda completar esto ni siquiera con Sincronización de grupo. Si no lo consigues, ¡cuéntanoslo en Discord!";
	L.UNAVAILABLE_WARNING_FORMAT = "Deja de estar disponible si se cumplen %d de las siguientes condiciones:";
	L.NO_ENTRIES = "No se encontraron resultados que coincidan con tus filtros.";
	L.NO_ENTRIES_DESC = "Si crees que se trata de un error, intenta activar el modo de depuración. Es posible que alguno de sus filtros esté restringiendo la visibilidad del grupo.";
	L.DEBUG_LOGIN = "Otorgado por iniciar sesión.\n\n¡Buen trabajo! ¡LO LOGRASTE!\n\nSolo visible en modo de depuración.";
	L.UNSORTED = "Sin clasificar";
	L.UNSORTED_DESC = "Esta cosa aún no ha sido añadida dentro de ATT " .. app.Version .. ".";
	L.UNSORTED_DESC_2 = "Los objetos aquí existen dentro del juego y pueden estar disponibles para los jugadores, pero aún no se han obtenido en la ubicación precisa en ATT.";
	L.NEVER_IMPLEMENTED = "Nunca Implementado";
	L.NEVER_IMPLEMENTED_DESC = "Los objetos aquí técnicamente existen dentro del juego, pero nunca han estado disponibles para los jugadores.";
	L.HIDDEN_QUEST_TRIGGERS = "Disparadores de misiones ocultas";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "Se trata de misiones que se han determinado manualmente para que se activen según criterios específicos y que el juego utiliza principalmente de forma interna con fines de seguimiento.";
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
			L.TITLE_DEBUG = app.ccColors.Red .. "Depuración|R ";
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
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFAbre la lista principal.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFAbre la Mini Lista.\n\n|R/att bounty\n|cffFFFFFFAbre una lista de objetos con errores o no confirmados.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFAbre el Asistente de Banda.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFAbre la lista de Misiones de Mundo.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Enlace del objeto]\n|cffFFFFFFAbre una lista con las apariencias compartidas. También funciona con otras cosas, como|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFMuestra todas las cosas con 'Eliminado en el parche' en un futuro.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFAbre la lista Aleatoria.\n\n|R/att unsorted\n|cffFFFFFFAbre la lista de objetos sin fuente. Mejor abrir en Modo Depuración.\n\n|R/rl\n|cffFFFFFFRecarga tu interfaz de WoW.|R";

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
		DEBUG_MODE = app.ccColors.Red.."Modo Depuración|r (Muestra todo)";
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
		SHOW_INCOMPLETE_THINGS_CHECKBOX = "Muestra todas las cosas rastreables";
		SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver los objetos, PNJs y cabeceras que se pueden rastrear en el juego sin que se consideren 'coleccionables' necesariamente.\n\nPuedes usarlo para ayudarte a conseguir el logro Maestro cultural si aún no lo tienes.\n\nNOTA: Los enemigos Raros y las aventuras también apareceran en el listado con este ajuste activado.";
		SHOW_COMPLETED_GROUPS_CHECKBOX = "Muestra los grupos completados";
		SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver los grupos completados como cabecera con un porcentaje de completado. Si un grupo no tiene nada relevante para tu clase, este ajuste hará que tambien se muestren estos grupos en el listado.\n\nRecomendamos que desactives este ajuste para conservar espacio en la Mini Lista y te permite ver rápidamente qué te falta de la zona.";
		SHOW_COLLECTED_THINGS_CHECKBOX = "Muestra las cosas coleccionadas";
		SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Activa esta opción para ver las cosas que ya has coleccionado.\n\nRecomendamos que desactives este ajuste para conservar espacio en la Mini Lista y te permite ver rápidamente qué te falta de la zona.";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "Sin restricciones de niveles";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Activa este ajuste si quieres ver el contenido disponible sin tener en cuenta el nivel del jugador.\n\nNOTA: Deshabilitar esto es especialmente útil en cuentas Starter.";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "Sin restricciones de habilidad";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "Desactiva este ajuste si quieres ver sólo el contenido disponible para el máximo nivel de habilidad de la versión del juego.";
		SHOW_BOE_CHECKBOX = "Objetos BoE/BoA";
		SHOW_BOE_CHECKBOX_TOOLTIP = "Activa este ajuste si quieres ver los objetos Se liga al equipar/Cuenta.\n\nDesactivar este ajuste puede ser útil cuando quieres acabar una Mazmorra clásica con un personaje y no quieres conseguir específicamente esos objetos que pueden ser conseguidos con un personaje secundario o en la Casa de Subastas.\n\nPE: No pierdas la cabeza intentando conseguir el Péndulo de Fatalidad.";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignora los filtros de objetos BoE/BoA";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Activa este ajuste si quieres ignorar requerimientos de armadura, arma, raza, clase o de profesión para los objetos BoE/BoA items.\n\nSi estás intentando coleccionar cosas para tus personajes secundarios escaneando la Casa de Subastas, este modo puede serte útil.";
		SHOW_ALL_SEASONAL = "Todos los eventos de temporales";
		SHOW_ALL_SEASONAL_TOOLTIP = "Activa este ajuste si quieres ver todos los eventos temporales, en vez de sólo los eventos temporales activos.\n\nNOTA: Los eventos temporales se van a mostrar como activos automáticamente 7 días antes del inicio.";
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Activa este ajuste si quieres ver el contenido que requiere Batallas de mascotas en el juego.";
		SHOW_PVP_CHECKBOX_TOOLTIP = "Activa este ajuste si quieres ver el contenido que 'pueda' requerir interacciones Jugador contra Jugador en el juego.";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "Todas las recompensas de misión que se pueden aprender";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "Desactiva esta opción para esconder objetos marcados como \"No disponible en Botín Personal\" en misiones.\n\nEsto es útil para rastrear objetos que tu clase no puede usar de Botín de mundo, pero marcando las misiones como completadas.\n\nAlgunos objetos pueden marcarse incorrectamente: este ajuste ESCONDERÁ objetos que puedes obtener!";

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
		DEATHS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear cada vez que uno de tus personajes muere y lo muesstra como una sección de coleccionable en el addon.\n\nNOTA: Si lo desactivas, lo seguiremos rastreando, pero simplemente no mostraremos la estadística a no ser que estés en Modo Depuración.";
		EXPLORATION_CHECKBOX = "Exploración";
		EXPLORATION_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear el completado de exploración para los mapas exteriores.";
		FLIGHT_PATHS_CHECKBOX = "Puntos de vuelo";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar puntos de vuelo y muelles de ferry.\n\nPara coleccionar estos, abre el dialogo con el maestro de punto de vuelo / ferri en cada continente.\n\nNOTA: Debido a la tecnologia de faseo, puede que tengas que fasearte a otras versiones de una zona para obtener crédito de esos puntos de interés.";
		HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		HEIRLOOMS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear si has desbloqueado una Reliquia y sus respectivos niveles de mejora.\n\nLas reliquias tienen asociada una Apariencia son filtradas por el filtro de Apariencias. (Desactivar las apariencias aún va a mostrar la Reliquia como tal)\n\nAlgunos objetos que también aparecen con la calidad de reliquia que ayudan a aumentar reputaciones pueden ser filtrados por el filtro de reputaciones.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+Mejoras";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear específicamente la colección de cada mejora individual de Reliquias.\n\nTodos sabemos que a Blizzard le encanta drenar tu oro y tu alma, así que lleva la cuenta con este interruptor.";
		ILLUSIONS_CHECKBOX = "Ilusiones";
		ILLUSIONS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear ilusiones.\n\nSon efectos muy molones que puedes aplicar a tus armas!\n\nNOTA: No eres una ilusión, aunque todos los Nocheterna piensen lo contrario.";
		MOUNTS_CHECKBOX = MOUNTS;
		MOUNTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar monturas.\n\nPuedes usarlas para ir a sitios más rápido que corriendo. Quién lo diría!";
		QUESTS_CHECKBOX = QUESTS_LABEL;
		QUESTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear misiones normales.\n\nPuedes hacer clic derecho en cualquier misión en las listas para abrir una ventana emergente con toda su cadena de misiones para ver tu progreso y si hay alguna misión requerida previa.\n\nNOTA: El rastreo de misiones Diarias, Semanales, Anuales y de mundo no se incluye en esta opción debido a los reinicios periódicos en la base de datos de Blizzard.";
		QUESTS_LOCKED_CHECKBOX = "+Bloqueado";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Activa esta opción para incluir específicamente el rastreo de completado de misiones bloqueadas.\n\nLas misiones bloqueadas son aquellas que el personaje ya no puede completar (según los datos de ATT) jugando normalmente.\n\nLa obtención de estas misiones se basa mucho en la funcionalidad de Sincronización de Grupo o usando Misiones de cuenta para incorporar el progreso desde otros personajes.";
		RECIPES_CHECKBOX = "Recetas";
		RECIPES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear recetas para tu profesión.\n\nNOTA: Debes abrir tu lista de profesiones para cargar la información de estas.";
		REPUTATIONS_CHECKBOX = "Reputaciones";
		REPUTATIONS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear reputaciones.\n\nCuando llegas a Exaltado o Mejor amigo con una reputación, se marcará como Coleccionado.\n\nPuede que tengas que hacer un refresco manual para que se actualice correctamente.";
		TITLES_CHECKBOX = "Títulos";
		TITLES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar títulos.\n\nPueden hacer que tu personaje resalte y parezca que has jugado desde mucho tiempo. Típicamente sólo los jugadores nuevos no tienen un título activo.";
		TOYS_CHECKBOX = TOY_BOX;
		TOYS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar juguetes.\n\nLa mayoría de juguetes hacen algo divertido. Otros, como los juguetes de Piedra de Hogar, pueden usarse en vez de tu Piedra de Hogar y ahorrarte un hueco en tus bolsas! También tienen efectos interesantes... Mola!";

		-- Expansion Things
		EXPANSION_THINGS_LABEL = "Cosas de expansión";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Esencias del Corazón de Azeroth";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear Esencia de azerita.\n\nRastreados por personaje por defecto.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrito de dracovigía";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear Manuscrito de dracovigía de Dragonflight";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguidores y Campeones";
		FOLLOWERS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear seguidores y campeones.\n\nPE: Seguidores de la Ciudadela, Campeones de la Sede de clase, seguidores de la Campaña de BFA o aventureros de SL.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Poder de talla de runas";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Activa esta opción para rastrear Poderes de talla de runas de Shadowlands.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conductos";
		SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar Conductos de Shadowlands.";

		CHARACTERUNLOCKS_CHECKBOX = "Desbloqueos de personaje";
		CHARACTERUNLOCKS_CHECKBOX_TOOLTIP = "Activa esta opción para rastrar los Desbloqueos de personaje. Son varios debloqueos de personaje que no son claramente categorizables en otro sitio (e.g. variantesde Maleficio, variantes de Polimorfia, especies domables desbloqueadas de cazador, personalizaciones de Pocopoc, etc.)\n\nRastreado por personaje por defecto.";

		-- Account-Wide Checkboxes
		ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = "El rastreo de Logros normalmente es a nivel de toda la Cuenta, pero hay un numero de logros exclusivos de clases y razas que no puedes conseguir con tu personaje principal.";
		ACCOUNT_WIDE_APPEARANCES_TOOLTIP = "Las transfiguraciones deben ser coleccionadas en toda la cuenta. Algunos objetos no pueden ser aprendidos por todas las clases, así que ATT hará lo posible para sólo mostrarte cosas que puedas coleccionar con tu personaje actual.";
		ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = "Las Esencia de azerita técnicamente no pueden ser coleccionadas y usadas a nivel de Cuenta, pero si sólo te importa coleccionarlas en tu personaje principal entonces puede que prefieras rastrearlas a nivel de toda la cuenta.";
		ACCOUNT_WIDE_BATTLE_PETS_TOOLTIP = "Las mascotas de compañia pueden coleccionarse con múltiples personajes y realmente requeriria que tuvieses un montón de espacio en las bolsas para poder coleccionarlas todas en un personaje.\n\nRecomendamos mantejer esto activado, pero cada quién hace lo que quiere.";
		ACCOUNT_WIDE_CHARACTERUNLOCKS_TOOLTIP = "Considerar cualquier desbloqueo coleccionado si algun personaje lo ha coleccionado.";
		ACCOUNT_WIDE_DEATHS_TOOLTIP = "EL rastreo de muertes realmente sólo existe antes de la Wrath de Classic donde no había la estadística para saber esta información. Cuando se implementaron los logros, esta función recoge esta información de la API de estadísticas. Puedes usar la ventana emergente del Rastreador de Muertes para verlo";
		ACCOUNT_WIDE_EXPLORATION_TOOLTIP = "El rastreado de Exploración es sólo útil por personaje, pero realmente quieres tener que coleccionarlos todos en todos tus 50 personajes?";
		ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = "El rastreado de puntos de vuelo es sólo útil por personaje, pero realmente quieres tener que coleccionarlos todos en todos tus 50 personajes?";
		ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = "Los seguidores normalmente son por Personaje, pero realmente quieres tener que coleccionar los 243 seguidores de Ciudadela en uno de tus personajes a un ritmo de 1 por semana?\n\nNo lo creo, mi señor.";
		ACCOUNT_WIDE_QUESTS_TOOLTIP = "El completado de misiones normalmente es por Personaje, pero esto considerará una misión como completada si CUALQUIER personaje ha completado esa misión en específico.";
		ACCOUNT_WIDE_RECIPES_TOOLTIP = "Las recetas normalmente no son rastreadas a nivel de toda la cuenta en la base de datos de Blizzard, pero nosotros podemos hacerlo.\n\nEs imposible collecionarlas todas en un personaje, así que con esto, puedes dar a tus personajes secundarios y a sus profesiones un sentido.";
		ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = "Las reputaciones ahora son rastreadas a nivel de toda la cuenta en la base de datos de Blizzard para los logros, así que activar esto puede ser buena idea.";
		ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = "Activa esto para considerar los conductos de nexo de almas como coleccionados en todos los personajes si almenos uno de ellos los ha aprendido.";
		ACCOUNT_WIDE_TITLES_TOOLTIP = "La mayoría de títulos son rastreados a nivel de toda la cuenta, pero algunos títulos prestigiosos en el WoW estan bloqueados al personaje que los ganó.\n\nActiva esto si no te importa eso y quieres ver esos títulos marcados como Completados en tus personajes secundarios.";

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
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la información de ayuda en las ventanas emergentes de la ventana de ATT que indica varias combinaciones de tecla/clics de funcionalidades de la ventana de ATT.\nSi ya conoces todas las combinaciones tecla/clics, puede interesarte ahorrar espacio en la ventana emergente y desactivar esta opción.";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Integraciones con Descripciones emergentes";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la información que da ATT en una ventana emergente externa. Esto incluye enlaces enviados por otros jugadores a objetos, en la Casa de Subastas, en el Diario de aventurero, en tus bolsas, en el mundo, en PNJs, etc.\n\nSi desactivas esto, estas reduciendo seriamente tu habilidad de determinar rápidamente si necesitas matar un monstruo o aprender una apariencia.\n\nRecomendamos mantener activado este ajuste.";
		DISPLAY_IN_COMBAT_CHECKBOX = "En combate";
		DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la información en la ventana emergente cuando estas en combate.\n\nSi estas en una banda con tu Hermandad de Mítico/Mítico+, deberías desactivar este ajuste para reducir al máximo el impacto en el rendimiento.\n\nPuede ser útil cuando estas en contenido antiguo sólo para saber rápidamente qué necesitas de un jefe.";
		TOOLTIP_MOD_LABEL = "Modificador";
		TOOLTIP_MOD_NONE = NONE_KEY;
		TOOLTIP_MOD_SHIFT = SHIFT_KEY_TEXT;
		TOOLTIP_MOD_CTRL = CTRL_KEY_TEXT;
		TOOLTIP_MOD_ALT = ALT_KEY_TEXT;
		TOOLTIP_MOD_CMD = CMD_KEY_TEXT;
		TOOLTIP_SHOW_LABEL = "Información mostrada";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "Progreso de colección";
		SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver tu progreso para coleccionar una cosa o completar un grupo de cosas en la esquina superior derecha de la ventana emergente.\n\nRecomendamos que mantengas este ajuste activo.";
		ICON_ONLY_CHECKBOX = "Sólo icono";
		ICON_ONLY_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver sólo el icono en la esquina superior derecha en vez del icono y del texto Coleccionado/No Coleccionado.\n\nAlgunas personas prefieren ventanas emergentes más pequeñas...";
		KNOWN_BY_CHECKBOX = "Conocido por";
		KNOWN_BY_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver una lista completa de todos los personajes en todos los servidores que conocen la receta en su ventana emergente";
		COMPLETED_BY_CHECKBOX = "Completado por";
		COMPLETED_BY_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver una lista completa de todos los personajes en todos los servidores que han completado la misión en la ventana emergente.";
		SHOW_CRAFTED_ITEMS_CHECKBOX = "Mostrar objetos fabricados";
		SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la lista de todos los objetos que se pueden fabricar por cualquiera de tus personajes para un ingrediente en su ventana emergente.";
		SHOW_RECIPES_CHECKBOX = "Mostrar recetas";
		SHOW_RECIPES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la lista de todas las recetas que se pueden fabricar por cualquiera de tus personajes para un ingrediente en su ventana emergente.";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "Sólo no triviales";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver sólo las recetas no triviales en la lista de recetas.";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Cálculo de divisas";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Activa esta opción para mostrar el numero aproximado de Objetos/Divisas requeridas para coleccionar cosas.\n\nPara contenedores que no dan todas sus recompensas a la vez, el aproximado puede ser menor al requerido realmente.";
		SHARED_APPEARANCES_CHECKBOX = "Apariencias compartidas";
		SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Activa esta opción para ver objetos que comparten una apariencia similar en la ventana emergente.\n\nNOTA: Objetos que no coinciden con el tipo de armadura se muestran en la lista. Esto puede ayudar a diagnosticar el progreso de Colección.\n\nSi esto te confunde, desde la versión ATT v1.5.0, puedes hacer clic derecho en un objeto para abrir el objeto y sus Apariencias Compartidas en su Mini Lista independiente.";
		INCLUDE_ORIGINAL_CHECKBOX = "Fuente original";
		INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Activa esta opción si te gustaba la información de fuentes original en la lista de Apariencias Compartidas en la ventana emergente.";
		ONLY_RELEVANT_CHECKBOX = "Sólo relevante";
		ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Activa esta opción si quiere ver sólo las apariencias compartidas que tu personaje puede desbloquear.\n\nNOTA: Recomendamos mantener esto desactivado porque saber los requerimientos de desbloqueo de un objeto puede ayudar a identificar porque un objeto no es Coleccionado.";
		SPEC_CHECKBOX = "Especializaciones";
		SPEC_CHECKBOX_TOOLTIP = "Activa esta opción para mostrar la especialización de botín de objetos en la ventana emergente del objeto tal y como se muestra en el cliente del juego.\n\nNOTA: Estos iconos se mostrarán igualmente en las Mini Listas de ATT independientemente de este ajuste.";
		SUMMARIZE_CHECKBOX = "Resume cosas";
		SUMMARIZE_CHECKBOX_TOOLTIP = "Activa esta opción para resumir cosas en la ventana emergente. Por ejemplo, si una cosa puede ser cambiada en un vendedor por otra cosa, entonces muestra esa otra cosa en la ventana emergente para dar visibilidad a sus múltiples usos. Si una cosa actúa como contenedor para otras cosas, esta opción mostrará todas esas otras cosas que ese contenedor puede contener.\n\nRecomendamos que mantengas activo este ajuste.";
		CONTAINS_SLIDER_TOOLTIP = 'Usa esto para personalizar el número de cosas resumidas a mostrar en la ventana emergente.\n\nPor defecto: 25';
		SOURCE_LOCATIONS_CHECKBOX = "Ubicaciones de fuentes";
		SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el camino entero de ubicaciones de origen de objetos en la base de datos de ATT en la ventana emergente.";
		LOCATIONS_SLIDER_TOOLTIP = 'Usa esto para personalizar el numero de ubicaciones de origen a mostrar en la ventana emergente.\n\nNOTA: También mostrará "X" numero de otras opciones basándose en cuántas, si el total es equivalente al número total de elementos mostrados, sino simplemente mostrará la última fuente.\n\nPor defecto: 5';
		COMPLETED_SOURCES_CHECKBOX = "Para completado";
		COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		DROP_CHANCES_CHECKBOX = "Probabilidad de botón";
		DROP_CHANCES_CHECKBOX_TOOLTIP = "Activa esta opción para calcular la información de probabilidades de botín en la ventana emergente de un objeto en la ventana de ATT.\nPuede ser útil para saber que especialización de botín debes usar cuando usas una Tirada de Bonificación en un objeto.";
		FOR_CREATURES_CHECKBOX = "Para criaturas";
		FOR_CREATURES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver las ubicaciones de Criaturas.";
		FOR_THINGS_CHECKBOX = "Para cosas";
		FOR_THINGS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver las ubicaciones de origen de las cosas.";
		FOR_UNSORTED_CHECKBOX = "Para no ordenados";
		FOR_UNSORTED_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver las ubicaciones de origen que no se han añadido del todo a la base de datos.";
		WITH_WRAPPING_CHECKBOX = "Permitir ajuste de línea";
		WITH_WRAPPING_CHECKBOX_TOOLTIP = "Activa esta opción para permitir que las líneas de fuentes se ajusten a la ventana emergente.\nEsto asegura que las ventanas emergentes no crecen más anchas de lo necesario, pero desafortunadamente hace que la información de las fuentes sea más difícil de leer en algunas situaciones.";

		BEHAVIOR_LABEL = "Comportamiento de lista";
		MAIN_LIST_SLIDER_LABEL = "Escala Lista Principal";
		MAIN_LIST_SCALE_TOOLTIP = 'Usa esto para personalizar la escala de la Lista Principal.\n\nPor defecto: 1';
		MINI_LIST_SLIDER_LABEL = "Escala Mini Listas";
		MINI_LIST_SCALE_TOOLTIP = 'Usa esto para personalizar la escala de todas las Mini Listas.\n\nPor defecto: 1';
		ADHOC_UPDATES_CHECKBOX = "Actualizaciones de ventanas Ad Hoc";
		ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que sólo se actualizen las ventanas de ATT visibles.\n\nEsto puede reducir drásticamente los tiempos de carga y prevenir picos grandes de reducción de tasa de refresco en algunas situaciones.";
		EXPAND_DIFFICULTY_CHECKBOX = "Expandir la dificultad actual";
		EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Activa esta opción si quieres minimizar automáticamente en la Mini Lista las cabeceras de dificultad que no estan activas cuando entras a una mazmorra o banda.\n\nEjemplo: Minimiza la cabecera de Heroico en una mazmorra de dificultad Normal.";
		SHOW_ICON_PORTRAIT_CHECKBOX = "Iconos de Retratos";
		SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el icono de la criatura en vez de los iconos por defecto del tipo de objeto.\n\nPE: Cuando estas mirando jefes de banda, esta opción de va a mostrar la cara del jefe de banda en vez del icono de dificuldad.\n\nPor defecto: Activado";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "Para misiones";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el icono de la criatura en vez de los iconos por defecto del tipo de objeto de la misión.\n\nPE: Cuando estas mirando misiones, esta opción va a mostrar la cara del personaje que te da la misión en vez del icono del tipo de misión this option.\n\nPor defecto: Activado";
		SHOW_MODELS_CHECKBOX = "Previsualizar Modelos";
		SHOW_MODELS_CHECKBOX_TOOLTIP = "Activa esta opción para mostrar los modelos en vez del icono en la ventana emergente.\n\nEsta opción puede ayudarte a identificar cómo es un PNJ raro o un vendedor. Puede ser buena idea mantener esto activo por esta razón.";
		FILL_DYNAMIC_QUESTS_CHECKBOX = "Rellenar misiones dinámicas";
		FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres permitir objetos/divisas que son usadas para coleccionar cosas se rellenen con esas compras cuanndo estás en misiones dinámicas.\n\nPor ejemplo, esto causa que la ventana de [Misiones de mundo] actúe como una Mini Lista en vez de actuar como una lista principal en cuento a mostrar el Coste.\nTen en cuenta que esto aumenta drásticamente la cantidad de contenido que aparece en la ventana.";
		FILL_NPC_DATA_CHECKBOX = "Rellenar datos PNJ";
		FILL_NPC_DATA_CHECKBOX_TOOLTIP = "Activa esta opción si quieres rellenar con toda la información relevante sobre un PNJ (Botín de jefe compartido, botín, etc) cuando se muestra en una Mini Lista. Esta opción puede causar un gran numero de duplicados, pero la idea es que el PNJ se mantenga visible en la Mini Lista si necesitas algo disponible de ese PNJ.\n\nNota: Gran cantidad del contenido de mundo de Dragonflight depende de que este ajuste esté activo para ser exacto porque muchos PNJ raros comparten botín.\n\nPor defecto: Desactivado";
		NESTED_QUEST_CHAIN_CHECKBOX = "Muestra cadenas de misiones anidadas";
		NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver la ventana de Requerimientos de cadena de misiones (botón derecho en una misión) para ver las misiones requeridas como subgrupo de las misiones siguientes, p.e. deben completarse de dentro hacia fuera.\n\nEsto es útil para no perder ninguna mision secundaria y debe ser usado principalmente con el completado de misiones en mente.\n\nDe otra forma, los requerimientos de cadenas de misiones se mostrarán en una lista de arriba hacia abajo, con la siguiente misión disponible arriba del todo.";
		SORT_BY_PROGRESS_CHECKBOX = "Ordenar por pogreso";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres la operación de 'Ordenar' ("..SHIFT_KEY_TEXT.." + clic derecho) para ordenar sobre el total de progreso de cada grupo (en vez de por nombre)";
		SHOW_REMAINING_CHECKBOX = "Muestra cosas pendientes";
		SHOW_REMAINING_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el numero de objetos pendientes en vez del progreso sobre el tota.";
		PERCENTAGES_CHECKBOX = "Muestra el porcentaje de completado";
		PERCENTAGES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el porcentaje de completado de cada línea.\n\nEl coloreado de grupos por completado no se ve afectado.";
		PRECISION_SLIDER = "Nivel de precisión";
		PRECISION_SLIDER_TOOLTIP = 'Usa esto para personalizar el nivel de precisión deseado en los cálculos de porcentajes.\n\nPor defecto: 2';
		DYNAMIC_CATEGORY_LABEL = "Categorías dinámicas";
		DYNAMIC_CATEGORY_SIMPLE = "Simple";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Genera categorías dinámicas basándose sólo en la categoría más alta.";
		DYNAMIC_CATEGORY_NESTED = "Anidado";
		DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Genera categorías dinámicas basándose en su fuente exacta. Esto conducirá a duplicados de cosas que se encuentran en múltiples sitios.";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Aplicado cuando se genera|r";
		MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "Largo máximo de línea superior";

	-- Interface: Accessibility Page
		ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		COLORS_ICONS = "Colores e Iconos";
		LOCKED_QUESTS = "Misiones bloqueadas";
		MORE_COLORS_CHECKBOX = "Muestra colores";
		MORE_COLORS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver mmás colores utilizados para ayudar a distinguir condiciones adicionales de cosas en las listas (i.e. colores de clase, colores de facción, etc.)";
		WINDOW_COLORS = "Colores de ventana";
		BACKGROUND = EMBLEM_BACKGROUND;
		BACKGROUND_TOOLTIP = "Define el color de fondo de todas las ventanas de ATT.";
		BORDER = EMBLEM_BORDER;
		BORDER_TOOLTIP = "Define el color del borde de todas las ventanas de ATT.";
		RESET_TOOLTIP = "Vuelve a los ajustes por defecto.";
		CLASS_BORDER = "Usa el color de tu clase para los bordes";
		CLASS_BORDER_TOOLTIP = "Usa el color de tu clase para los bordes. Se actualiza cuando entras al juego con otra clase.";

	-- Interface: Information Page

	-- Features Page

	-- Features: Audio Page
		CELEBRATIONS_LABEL = "Celebraciones y Efectos de Sonido Sound Effects";
		AUDIO_CHANNEL = "Canal de audio";
		CELEBRATE_COLLECTED_CHECKBOX = "Coleccionar cosas dispara una Celebración";
		CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Activa esta opción si quieres oír un efecto de sonido de celebración 'trompetera' cuando obtienes algo nuevo.\n\nEsta funcionalidad puede ayudar mucho a mantenerte motivado.";
		SOUNDPACK = "Paquete de sonidos";
		PLAY_DEATH_SOUND_CHECKBOX = "Reproduce un efecto de sonido cuando mueres";
		PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "Activa esta opción si quieres to oír un efecto de sonido cuando mueras.";
		WARN_REMOVED_CHECKBOX = "Cosas eliminadas disparan un Aviso";
		WARN_REMOVED_CHECKBOX_TOOLTIP = "Activa esta opción si quieres oír un efecto de sonido de aviso cuando accidentamente vendas o comercies un objeto que te dió una apariencia y que cause que pierdas esa apariencia de tu colección.\n\nPuede ser extremadamente útil si vendes un objeto que tiene un temporizador de compra. El addon te va a decir que has cometido un error.";
		SCREENSHOT_COLLECTED_CHECKBOX = "Coleccionar cosas dispara una Captura de pantalla";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Activa esta opción si quieres hacer una captura de pantalla cada vez que coleccionas alguna cosa.";

	-- Features: Reporting Page
		REPORTING_LABEL = "Notificaciones";
		REPORT_COLLECTED_THINGS_CHECKBOX = "Notificar cosas coleccionadas";
		REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTA: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "Notificar misiones";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver el QuestID para cualquier misión que aceptes o completes justo después de que pase. (Para notificar errores, propósitos de rastreo, etc)";
		REPORT_UNSORTED_CHECKBOX = "Sólo 'Sin fuente'";
		REPORT_UNSORTED_CHECKBOX_TOOLTIP = "Activa esta opción si sólo quieres ver las QuestID si no se han configurado como fuente.";
		REPORT_NEARBY_CONTENT_CHECKBOX = "Notificar contenido cercano";
		REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver contenido cercano como viñetas en el chat. Esta funcionalidad añade ventanas emergentes y puntos de referencia cuando se usa.";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX = "Pon puntos de referencia automáticamente";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT ponga automáticamente puntos de referencia para contenido cercano.";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX = "Limpiar automáticamente";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT limpie automáticamente los puntos de referencia puestos por la funcionalidad de contenido cercano cuando el contenido en sí desaparece o sales de rango.";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX = "Incluir Criaturas";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver notificaciones de contenido cercano de cosas consideradas Criaturas. (Raros, Jefes de mundo, PNJs)";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX = "Incluir Tesoros";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver notificaciones de contenido cercano de cosas consideradas Tesoros. (Cofres, Estatuas, Bolsas en el mundo)";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX = "Incluir Completados";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver notificaciones de contenido cercano de cosas que has completado basado en tus filtros en ATT.";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX = "Incluir Desconocidos/Sin fuente";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP = "Activa esta opción si quieres ver notificaciones de contenido cercano de cosas que no tiene fuente en ATT.";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX = "Ilumina la barra de tareas";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT ilumine la barra de tareas cuando se detecta contenido cercano.";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX = "Reproduce un efecto de sonido";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP = "Activa esta opción si quieres que ATT también reproduzca un efecto de sonido cuando se detecta contenido cercano.";

	-- Features: Sync Page
	-- Retail Only, deprecated.
		SYNC_PAGE = "Sincronización";
		ACCOUNT_SYNCHRONIZATION = "Sincronización de cuenta";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Sincroniza automáticamente los datos de cuenta";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Activa esta opción si quieres que ATT intente actualizar los datos de cuenta entre cuentas cuando entras al juego o recargas la Interfaz.";

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
