if GetLocale() ~= "esES" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;


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












if app.IsRetail then
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
