local appName, app = ...;

local GetSpellName = app.WOWAPI.GetSpellName;

local L = {
	-- Temporary
    EVENT_REMAPPING = {};
    EVENT_TIMERUNNING_SEASONS = {};
    HEADER_DESCRIPTIONS = {};
    HEADER_EVENTS = {};
    HEADER_ICONS = {};
    HEADER_LORE = {};
    HEADER_NAMES = {};
    QUEST_NAMES = {};
    MAP_ID_TO_ZONE_TEXT = {};
	
	SPELL_NAME_TO_SPELL_ID = {
		-- Riding
		["Riding"] = 33388,
		["Equitación"] = 33388,
		["Reiten"] = 33388,
		["Monte"] = 33388,
		["Montaria"] = 33388,
		["Верховая езда"] = 33388,
		["탈것 타기"] = 33388,
		["骑术"] = 33388,
		["騎術"] = 33388,

		-- Herb Gathering
		-- The skill name is "Herbalism", not "Herb Gathering"
		["Herbalism"] = 2366,
		["Herboristería"] = 2366,
		["Kräuterkunde"] = 2366,
		["Herboristerie"] = 2366,
		["Herborismo"] = 2366,
		["Травничество"] = 2366,
		["약초채집"] = 2366,
		["草药学"] = 2366,
		["草藥學"] = 2366,

		-- French (Classic Era)
		["Ingénierie"] = 4036,    -- Engineering
		["Secourisme"] = 3273,    -- First Aid

		-- Spanish (Classic Era)
		["Costura"] = 3908,    -- Tailoring
		["Marroquinería"] = 2108,    -- Leatherworking

		["Ganzúa"] = 1809,        -- Lock Pick    -- Required for ES (EU)
		["Desollar"] = 8613,    -- Skinning        -- Required for ES (EU)
		["Cнятие шкур"] = 8613,    -- Skinning        -- Required for RU
	},
	
	
	EXPANSION_DATA = {
		{	-- Classic
			["icon"] = app.asset("Expansion_CLASSIC"),
			["lore"] = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.",
		},
		{	-- The Burning Crusade
			["icon"] = app.asset("Expansion_TBC"),
			["lore"] = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.",
		},
		{	-- Wrath of the Lich King
			["icon"] = app.asset("Expansion_WOTLK"),
			["lore"] = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.",
		},
		{	-- Cataclysm
			["icon"] = app.asset("Expansion_CATA"),
			["lore"] = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.",
		},
		{	-- Mists of Pandaria
			["icon"] = app.asset("Expansion_MOP"),
			["lore"] = "Mists of Pandaria is the fourth expansion. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.",
		},
		{	-- Warlords of Draenor
			["icon"] = app.asset("Expansion_WOD"),
			["lore"] = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.",
		},
		{	-- Legion
			["icon"] = app.asset("Expansion_LEGION"),
			["lore"] = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.",
		},
		{	-- Battle for Azeroth
			["icon"] = app.asset("Expansion_BFA"),
			["lore"] = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.",
		},
		{	-- Shadowlands
			["icon"] = app.asset("Expansion_SL"),
			["lore"] = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.",
		},
		{	-- Dragonflight
			["icon"] = app.asset("Expansion_DF"),
			["lore"] = "Dragonflight is the ninth expansion. The dragonflights of Azeroth have returned, called upon to defend their ancestral home, the Dragon Isles. Surging with elemental magic and the life energies of Azeroth, the Isles are awakening once more, and it's up to you to explore their primordial wonder and discover long-forgotten secrets.",
		},
		{	-- The War Within
			["icon"] = app.asset("Expansion_TWW"),
			["lore"] = "The War Within is the tenth expansion for World of Warcraft and the beginning of the Worldsoul Saga. Journey through never-before-seen subterranean worlds filled with hidden wonders and lurking perils, down to the dark depths of the nerubian empire, where the malicious Harbinger of the Void is gathering arachnid forces to bring Azeroth to its knees.",
		},
		{	-- Midnight
			["icon"] = app.asset("Expansion_MD"),
			["lore"] = "Midnight is the eleventh expansion for World of Warcraft and the second installment of the Worldsoul Saga.",
		},
		{	-- The Last Titan
			["icon"] = app.asset("Expansion_TLT"),
			["lore"] = "The Last Titan is the twelfth expansion for World of Warcraft and the final installment of the Worldsoul Saga.",
		},
	},
	UNOBTAINABLE_ITEM_TEXTURES = {
		[0] = 374225,	-- 0 Available, but not due to Current Character filters
		app.asset("status-unobtainable"),	-- 1
		app.asset("status-prerequisites"),	-- 2
		"",									-- 3, we want no icon for these
		app.asset("status-seasonal-unavailable"),	-- 4 Seasonal unavailable
		app.asset("status-seasonal-available"),	-- 5 Seasonal available
		app.asset("status-unsorted"), -- 6 Unsorted
	},
};
app.L = L;

-- Abbreviations are used to reduce the length of the source locations
local ABBREVIATIONS = {
	["ALL THE THINGS"] = "ATT",
	["Expansion Pre"] = "Pre",
	["Expansion Features"] = "EF",
	[GROUP_FINDER] = "D&R",
	["Dungeons & Raids"] = "D&R",
	["Player vs Player"] = STAT_CATEGORY_PVP,
	["Player vs. Player"] = STAT_CATEGORY_PVP,
	["Outdoor Zones"] = LFG_TYPE_ZONE,
	-- Expansion sorted
	["Classic %> "] = "",
	["The Burning Crusade"] = "BC",
	["Burning Crusade"] = "BC",
	["The BC"] = "BC",
	["Wrath of the Lich King"] = "WotLK",
	["Cataclysm %>"] = "Cata >",
	["Cataclysm "] = "Cata ",
	["Mists of Pandaria"] = "MoP",
	["Warlords of Draenor"] = "WoD",
	["Battle for Azeroth"] = "BFA",
	["The Shadowlands"] = "SL",
	["Shadowlands"] = "SL",
	["Dragonflight"] = "DF",
	["The War Within"] = "TWW",
	-- Dungeon & Raid
	["Normal"] = "N",
	["Heroic"] = "H",
	["Mythic"] = "M",
	["M Keystone"] = "M+",
	["Raid Finder"] = "LFR",
	["Looking For Raid"] = "LFR",
	["10 Player"] = "10M",
	["10 Player (Heroic)"] = "10M (H)",
	["25 Player"] = "25M",
	["25 Player (Heroic)"] = "25M (H)",
	[BATTLEGROUNDS] = "BGs",
	-- Dungeon & Raid Names
	-- Classic
	["Scarlet Monastery of Old"] = "SM: Old",
	-- Cata
	["Baleroc, the Gatekeeper"] = "Baleroc",
	["The Conclave of Wind"] = "Conclave",
	["Hagara the Stormbinder"] = "Hagara",
	["Majordomo Staghelm"] = "Majordomo",
	["Omnotron Defense System"] = "Omnotron",
	["Theralion and Valiona"] = "Theralion&Valiona",
	["Yor'sahj the Unsleeping"] = "Yor'sahj",
	-- DF
	["Aberrus, the Shadowed Crucible"] = "Aberrus",
	["Amirdrassil, the Dream's Hope"] = "Amirdrassil",
	["Kazzara, the Hellforged"] = "Kazzara",
	["Larodar, Keeper of the Flame"] = "Larodar",
	["Nymue, Weaver of the Cycle"] = "Nymue",
	["Tindral Sageswift, Seer of the Flame"] = "Tindral Sageswift",
	-- Legion
	["Il'gynoth, The Heart of Corruption"] = "Il'gynoth",
	["Antorus, the Burning Throne"] = "Antorus",
	-- BFA
	["Ny'alotha, the Waking City"] = "Ny'alotha",
	-- SL
	["Tazavesh, the Veiled Market"] = "Tazavesh",
	-- TWW
	["Ara-Kara, City of Echoes"] = "Ara-Kara",
	["Enterprising Hero: The War Within Season Two"] = "Enterprising Hero: TWW S2",
	["The War Within Keystone Legend: SeasonTwo"] = "TWW Keystone Legend: S2",
	["Mug'Zee, Heads of Security"] = "Mug'Zee",
	["Sikran, Captain of the Sureki"] = "Sikran",
	["Vexie and the Geargrinders"] = "Vexie & the Geargrinders",
	-- Outdoor Zones
	["Quartermaster Miranda Breechlock"] = "Quartermaster Miranda",
	["Season "] = "S",
	["Sanctum Upgrades %> "] = "",
	["The Azure Span"] = "Azure Span",
	["The Forbidden Reach"] = "Forbidden Reach",
	["The Superbloom"] = "Superbloom",
	["The Waking Shores"] = "Waking Shores",
	["The Primalist Future"] = "Primalist Future",
	["The Storm's Fury"] = "Storm's Fury",
	["WoW Anniversary"] = "Anniversary",
	["Dragonriding Challenge: Dragon Isles: Gold > "] = "",
	["Dragon Racing Completionist: Gold > "] = "",
	["Emerald Dream Challenge Racing Completionist: Gold > "] = "",
	["Emerald Dream Racing Completionist: Gold > "] = "",
	["Forbidden Reach Challenge Racing Completionist: Gold > "] = "",
	["Forbidden Reach Racing Completionist: Gold > "] = "",
	["Zaralek Cavern Racing Completionist: Gold > "] = "",

	["WoW's Anniversary %> "] = "",
	[BLACK_MARKET_AUCTION_HOUSE] = "BMAH",
	["Emissary Quests"] = "Emissary",
	["Item Sets"] = WARDROBE_SETS,
	["Zone Wide"] = LFG_TYPE_ZONE,
	["Mini World Events"] = "Mini",
	["Monthly World Events"] = CALENDAR_REPEAT_MONTHLY,
	[TRACKER_HEADER_WORLD_QUESTS] = "WQ",
	["Weekly World Events"] = CALENDAR_REPEAT_WEEKLY,
	["Covenant:"] = "Cov:",
	[CLASS.." %> "] = "",

	["Pet Journal"] = PETS,
	["Toy Box"] = TOY,
};
L.ABBREVIATIONS = ABBREVIATIONS;

app.GetCollectionIcon = function(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE_ICON" or "COLLECTED_ICON")) or "NOT_COLLECTED_ICON"];
end
app.GetCollectionText = function(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE" or "COLLECTED")) or "NOT_COLLECTED"];
end
app.GetCompletionIcon = function(state)
	return L[state and "COMPLETE_ICON" or "INCOMPLETE_ICON"];
end
app.GetCompletionText = function(state)
	return L[(state == 2 and "COMPLETE_OTHER") or (state and "COMPLETE") or "INCOMPLETE"];
end
app.GetSavedText = function(state)
	return L[state and "SAVED" or "INCOMPLETE"];
end

local localeString = GetLocale();
if localeString == "deDE" then
	L.EXPANSION_DATA[1].lore = "Vier Jahre nach der Schlacht am Berg Hyjal beginnen die Spannungen zwischen der Allianz und der Horde erneut zu wachsen. Mit der Absicht, die trockene Region von Durotar zu besiedeln, erweiterte Thralls neue Horde ihre Reihen und lud die untoten Verlassenen ein sich den Orcs, Tauren und Trollen anzuschließen. In der Zwischenzeit schworen die Zwerge, Gnome und die alten Nachtelfen der wiedererstarkten Allianz unter der Führung des menschlichen Königreichs Sturmwind ihre Loyalität. Nachdem der König Sturmwinds, Varian Wrynn, auf mysteriöse Weise verschwunden war, diente Hochlord Bolvar Fordragon als Regent. Sein Dienst wurde durch die Manipulation und der Gedankenkontrolle Onyxia's beeinträchtigt, die sich als menschliche Adlige tarnte und somit im Hintergrund regierte. Während die Helden Onyxias Manipulationen untersuchten, tauchten in den Ländern der Welt uralte Feinde auf und bedrohten die Horde und die Allianz gleichermaßen.";
	L.EXPANSION_DATA[2].lore = "The Burning Crusade ist die erste Erweiterung. Zu den Hauptmerkmalen gehören die Anhebung der maximalen Stufe auf 70, die Einführung der Blutelfen und der Draenei als spielbare Völker, sowie die neue Scherbenwelt mit vielen neuen Zonen, Instanzen, Gegenständen, Quests & Monstern.";
	L.EXPANSION_DATA[3].lore = "Wrath of the Lich King ist die zweite Erweiterung. Der Großteil dieser Erweiterung findet in Nordend statt und dreht sich um die Pläne des Lichkönigs. Zu den inhaltlichen Highlights gehören die Erhöhung der maximalen Stufe von 70 auf 80, die Einführung der neuen Todesritter Heldenklasse und neue PvP/Welt PvP Inhalte";
	L.EXPANSION_DATA[4].lore = "Cataclysm ist die dritte Erweiterung. Die Erweiterung spielt hauptsächlich in einem dramatisch umgestalteten Kalimdor & der Östlichen Königreiche auf der Welt von Azeroth und folgt der Rückkehr von Todesschwinge, der während seiner Rückkehr von Tiefenheim in diese Welt eine katastrophale Teilung verursacht. Mit Cataclysm kehren Spieler hauptsächlich auf die alten Kontinente von Azeroth zurück und betreten unter anderem neue Gebiete wie den Berg Hyjal's, die versunkende Welt von Vashj'ir, Tiefenheim, Uldum und das Zwielicht-Hochland. Außerdem sind zwei neue spielbare Völker, die Worgen und die Goblins, verfügbar. Die maximale Stufe wurde auf 85 erhöht, ermöglicht Spielern das Fliegen in Kalimdor & den Östlichen Königreichen, fügt den neuen Beruf der Archäologie & umschmieden der Rüstung hinzu und strukturiert die Welt selbst um";
	L.EXPANSION_DATA[5].lore = "Mists of Pandaria ist die vierte Erweiterung. Die Erweiterung konzentriert sich in erster Linie auf den Krieg zwischen Allianz und Horde, der durch die zufällige Wiederentdeckung von Pandaria ausgelöst wurde. Die Abenteurer entdecken das uralte Volk der Pandaren wieder, dessen Weisheit sie zu neuen Schicksalen führen wird, den uralten Feind des Pandarenreiches, die Mantiden und ihre legendären Unterdrücker, die rätselhaften Mogu. Das Land verändert sich mit der Zeit und der Konflikt zwischen Varian Wrynn und Garrosh Höllschrei eskaliert. Während in der Horde ein Bürgerkrieg ausbricht, schließen sich die Allianz und die Kräfte in der Horde, die gegen Höllschreis gewalttätigen Aufstand sind, zusammen, um den Kampf direkt gegen Höllschrei und seine von Sha berührten Verbündeten in Orgrimmar zu führen.";
	L.EXPANSION_DATA[6].lore = "Warlords of Draenor ist die fünfte Erweiterung. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.";	--TODO:
	L.EXPANSION_DATA[7].lore = "Legion ist die sechste Erweiterung. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.";	--TODO:
	L.EXPANSION_DATA[8].lore = "Battle for Azeroth ist die siebte Erweiterung. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.";	--TODO:
	L.EXPANSION_DATA[9].lore = "Shadowlands ist die achte Erweiterung. Was liegt hinter die Welt die du kennst? Die Shadowlands, Ruheplatz für jede sterbliche seele—tugendhaft oder abscheulich—die jemals gelebt hat.";
	L.EXPANSION_DATA[10].lore = "Dragonflight ist die neunte Erweiterung. Die Drachenschwärme von Azeroth sind zurück und folgen dem Ruf, die Dracheninseln, ihre angestammte Heimat, zu verteidigen. Erfüllt von elementarer Macht und Azeroths Lebensenergie erwachen die Inseln erneut, und es liegt an euch, ihre urzeitlichen Wunder zu erforschen und lang vergessene Geheimnisse ans Licht zu bringen.";

	for key,value in pairs({
		["Antorus, der Brennende Thron"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		[GROUP_FINDER] = "D&S",	-- ["Dungeons & Raids"] = "D&R"
		["The Burning Crusade"] = "TBC",
		["Burning Crusade"] = "TBC",
		["The BC"] = "TBC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm "] = "Cata ",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Spieler gegen Spieler"] = "PvP",
		["Schlachtzugbrowser"] = "LFR",
		["Normal"] = "N",
		["Heroisch"] = "H",
		["Mythisch"] = "M",
		["Mythischer Schlüsselstein"] = "M+",
		["Ny'alotha, die Erwachte Stadt"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, der Verhüllte Markt"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 Spieler"] = "10M",
		["10 Spieler (Heroisch)"] = "10M (H)",
		["25 Spieler"] = "25M",
		["25 Spieler (Heroisch)"] = "25M (H)",
		["WoW Geburtstag"] = "Geburtstag",
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "esES" or localeString == "esMX" then
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
	
	for key,value in pairs({
		["ALL THE THINGS"] = "ATT",
		["Expansion Pre"] = "Pre",
		["Expansion Features"] = "CE",
		[GROUP_FINDER] = "BdG",
		["Dungeons & Raids"] = "MyB",
		["Player vs Player"] = STAT_CATEGORY_PVP,
		["Player vs. Player"] = STAT_CATEGORY_PVP,
		["Outdoor Zones"] = LFG_TYPE_ZONE,
		-- Expansion sorted
		["Classic %> "] = "",
		["The Burning Crusade"] = "BC",
		["Burning Crusade"] = "BC",
		["The BC"] = "BC",
		["Wrath of the Lich King"] = "Lich",
		["Cataclysm %>"] = "Cata >",
		["Cataclysm "] = "Cata ",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Dragonflight"] = "DF",
		["The War Within"] = "TWW",
		-- Dungeon & Raid
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["M Keystone"] = "M+",
		["Raid Finder"] = "BdB",
		["Looking For Raid"] = "BdB",
		["10 Player"] = "10",
		["10 Player (Heroic)"] = "10 (H)",
		["25 Player"] = "25",
		["25 Player (Heroic)"] = "25 (H)",
		[BATTLEGROUNDS] = "CdB",
		-- Dungeon & Raid Names
		-- Classic
		["Scarlet Monastery of Old"] = "ME: Viejo",
		-- Cata
		["Baleroc, the Gatekeeper"] = "Baleroc",
		["The Conclave of Wind"] = "Conclave",
		["Hagara the Stormbinder"] = "Hagara",
		["Majordomo Staghelm"] = "Mayordomo",
		["Omnotron Defense System"] = "Omnitron",
		["Theralion and Valiona"] = "TheralionyValiona",
		["Yor'sahj the Unsleeping"] = "Yor'sahj",
		-- DF
		["Aberrus, the Shadowed Crucible"] = "Aberrus",
		["Amirdrassil, the Dream's Hope"] = "Amirdrassil",
		["Kazzara, the Hellforged"] = "Kazzara",
		["Larodar, Keeper of the Flame"] = "Larodar",
		["Nymue, Weaver of the Cycle"] = "Nymue",
		["Tindral Sageswift, Seer of the Flame"] = "Tindral Sabioveloz",
		-- Legion
		["Il'gynoth, The Heart of Corruption"] = "Il'gynoth",
		["Antorus, the Burning Throne"] = "Antorus",
		-- BFA
		["Ny'alotha, the Waking City"] = "Ny'alotha",
		-- SL
		["Tazavesh, the Veiled Market"] = "Tazavesh",
		-- TWW
		["Ara-Kara, City of Echoes"] = "Ara-Kara",
		["Enterprising Hero: The War Within Season Two"] = "Héroe Emprendedor: TWW T2",
		["The War Within Keystone Legend: SeasonTwo"] = "TWW Leyenda de la piedra angular: T2",
		["Mug'Zee, Heads of Security"] = "Mug'Zee",
		["Sikran, Captain of the Sureki"] = "Sikran",
		["Vexie and the Geargrinders"] = "Vexie y los Cadenas",
		-- Outdoor Zones
		["Quartermaster Miranda Breechlock"] = "Intendente Miranda",
		["Season "] = "T",
		["Sanctum Upgrades %> "] = "",
		["The Azure Span"] = "Tierras Azures",
		["The Forbidden Reach"] = "Confín Olvidado",
		["The Superbloom"] = "Superfloración",
		["The Waking Shores"] = "Orillas del Despertar",
		["The Primalist Future"] = "Futuro primalista",
		["The Storm's Fury"] = "Furia de la tormenta",
		["WoW Anniversary"] = "Aniversario",
		["Dragonriding Challenge: Dragon Isles: Gold > "] = "",
		["Dragon Racing Completionist: Gold > "] = "",
		["Emerald Dream Challenge Racing Completionist: Gold > "] = "",
		["Emerald Dream Racing Completionist: Gold > "] = "",
		["Forbidden Reach Challenge Racing Completionist: Gold > "] = "",
		["Forbidden Reach Racing Completionist: Gold > "] = "",
		["Zaralek Cavern Racing Completionist: Gold > "] = "",

		["WoW's Anniversary %> "] = "",
		[BLACK_MARKET_AUCTION_HOUSE] = "CSMN",
		["Emissary Quests"] = "Emisario",
		["Item Sets"] = WARDROBE_SETS,
		["Zone Wide"] = LFG_TYPE_ZONE,
		["Mini World Events"] = "Mini",
		["Monthly World Events"] = CALENDAR_REPEAT_MONTHLY,
		[TRACKER_HEADER_WORLD_QUESTS] = "MM",
		["Weekly World Events"] = CALENDAR_REPEAT_WEEKLY,
		["Covenant:"] = "Curia:",
		[CLASS.." %> "] = "",

		["Pet Journal"] = PETS,
		["Toy Box"] = TOY,
	})
	do ABBREVIATIONS[key] = value; end
	
	if localeString == "esMX" then
		L.EXPANSION_DATA[1].lore = "Cuatro años después de la batalla del Monte Hyjal, tensiones entre la Alianza y la Horda empiezan a surgir nuevamente. Con la intención de establecerse en la región árida de Durotar, la nueva Horda de Thrall expande sus miembros, invitando a los no muertos a unirse a orcos, tauren, y trols. Mientras tanto, enanos, gnomos y los ancestrales elfos de la noche prometieron su lealtad a una Alianza revitalizada, guiada por el reino humano de Ventormenta. Después de que el rey de Ventormenta Varian Wrynn misteriosamente desapareciera, el Alto Señor Bolvar Fordragon sirve como Regente pero Su servicio se vio empañado por las manipulaciones y el control mental de Onyxia, quien gobierna disfrazada como una humana de la nobleza. Mientras los héroes investigaban las manipulaciones de Onyxia, antiguos enemigos surgieron en tierras de todo el mundo para amenazar a la Horda y a la Alianza por igual.";
		L.EXPANSION_DATA[2].lore = "The Burning Crusade es la primera expansión. Sus principales características incluyen un aumento del nivel máximo a 70, la introducción de los elfos de sangre y los draenei como razas jugables, y la incorporación del mundo de Terrallende, junto con varias zonas, calabozos, objetos, misiones y monstruos nuevos.";
		L.EXPANSION_DATA[3].lore = "Wrath of the Lich King es la segunda expansión. La mayor parte del contenido de la expansión se desarrolla en Rasganorte y se centra en los planes del Rey Exánime. Entre sus contenidos más destacados se incluyen el aumento del límite de nivel de 70 a 80, la introducción de la clase de héroe caballero de la Muerte y nuevo contenido JcJ/JcJ en el mundo.";
		L.EXPANSION_DATA[4].lore = "Cataclysm es la tercera expansión. Ambientada principalmente en un Kalimdor y los Reinos del Este dramáticamente reforjados en el mundo de Azeroth, la expansión sigue el regreso de Alamuerte, quien provoca una nueva ruptura al realizar su cataclísmica reentrada al mundo desde Infralar. Cataclismo devuelve a los jugadores a los dos continentes de Azeroth durante la mayor parte de su campaña, abriendo nuevas zonas como el Monte Hyjal, el mundo sumergido de Vashj'ir, Infralar, Uldum y las Tierras Altas Crepusculares. Incluye dos nuevas razas jugables: los huargen y los goblins. La expansión aumenta el nivel máximo a 85, añade la capacidad de volar en Kalimdor y los Reinos del Este, introduce la arqueología, la reforja y reestructura el mundo.";
		L.EXPANSION_DATA[5].lore = "Mists of Pandaria es la cuarta expansión. Esta expansión se centra principalmente en la guerra entre la Alianza y la Horda, tras el redescubrimiento accidental de Pandaria. Los aventureros redescubren al antiguo pueblo pandaren, cuya sabiduría los guiará hacia nuevos destinos; a los antiguos enemigos del Imperio Pandaren, los mántides; y a sus legendarios opresores, los enigmáticos mogu. La tierra cambia con el tiempo y el conflicto entre Varian Wrynn y Garrosh Grito Infernal se intensifica. Mientras la guerra civil azota a la Horda, la Alianza y las fuerzas de la Horda opuestas al violento levantamiento de Grito Infernal unen fuerzas para llevar la batalla directamente a Grito Infernal y sus aliados tocados por el Sha en Orgrimmar.";
		L.EXPANSION_DATA[6].lore = "Warlords of Draenor es la quinta expansión. A través de las junglas salvajes y las llanuras asoladas por la batalla de Draenor, los héroes de Azeroth se enfrentarán en un conflicto mítico que involucra a místicos campeones draenei y poderosos clanes orcos, y se enfrentarán con personajes como Grommash Grito Infernal, Puño Negro y Ner'zhul en la cúspide de su poder primigenio. Los jugadores deberán recorrer esta tierra hostil en busca de aliados que les ayuden a construir una defensa desesperada contra la formidable máquina de conquista de la antigua Horda, o verán cómo se repite la sangrienta y bélica historia de su propio mundo.";
		L.EXPANSION_DATA[7].lore = "Legion es la sexta expansión. Gul'dan es expulsado a Azeroth para reabrir la Tumba de Sargeras y la puerta a Argus, dando inicio a la tercera invasión de la Legión Ardiente. Tras la derrota en la Costa Quebrada, los defensores de Azeroth buscan los Pilares de la Creación, la única esperanza de Azeroth para cerrar el enorme portal demoníaco en el corazón de la Tumba. Sin embargo, las Islas Quebradas llegaron con sus propios peligros que superar, desde Xavius ​​hasta el Rey Dios Skovald, los natonocturnos y la Señora de las Mareas Athissa. Khadgar trasladó Dalaran a las costas de esta tierra; la ciudad sirve como centro neurálgico para los héroes. Los caballeros de la Muerte de Acherus también llevaron su necrópolis flotante a las Islas. Los héroes de Azeroth buscaron armas artefacto legendarias para empuñar en batalla, pero también encontraron aliados inesperados en la forma de los Illidari. El conflicto en curso entre la Alianza y la Horda condujo a la formación de las órdenes de clases, con comandantes excepcionales que dejaron de lado la facción para liderar sus clases en la lucha contra la Legión.";
		L.EXPANSION_DATA[8].lore = "Battle for Azeroth es la séptima expansión. Azeroth pagó un precio terrible para poner fin a la marcha apocalíptica de la cruzada de la Legión; pero aunque las heridas del mundo se curen, la confianza rota entre la Alianza y la Horda podría ser la más difícil de sanar. En Battle for Azeroth, la caída de la Legión Ardiente desencadena una serie de incidentes desastrosos que reavivan el conflicto central de la saga de Warcraft. Con el inicio de una nueva era bélica, los héroes de Azeroth deben emprender un viaje para reclutar nuevos aliados, competir por los recursos más poderosos del mundo y luchar en varios frentes para determinar si la Horda o la Alianza liderarán Azeroth hacia su incierto futuro.";
		L.EXPANSION_DATA[9].lore = "Shadowlands es la octava expansión. ¿Qué hay más allá del mundo que conoces? Las Tierras de las Sombras, lugar de descanso para cada alma mortal, virtuosa o vil, que haya existido jamás.";
		L.EXPANSION_DATA[10].lore = "Dragonflight es la novena expansión. Los Vuelos de Azeroth han regresado, llamados a defender su ancestral hogar, las Islas Dragón. Rebosante de magia elemental y de las energías vitales de Azeroth, este archipiélago despierta de nuevo. Está en tus manos explorar sus maravillas primordiales y descubrir los olvidados secretos que oculta.";
		L.EXPANSION_DATA[11].lore = "The War Within es la décima expansión de World of Warcraft y el inicio de la Saga Worldsoul. Viaja a través de mundos subterráneos nunca antes vistos, repletos de maravillas ocultas y peligros acechantes, hasta las oscuras profundidades del imperio nerubiano, donde la maligna Emisaria del Vacío reúne fuerzas arácnidas para doblegar a Azeroth.";
		L.EXPANSION_DATA[12].lore = "Midnight es la undécima expansión de World of Warcraft y la segunda entrega de la saga Worldsoul.";
		L.EXPANSION_DATA[13].lore = "The Last Titan es la duodécima expansión de World of Warcraft y la última entrega de la saga Worldsoul.";
		
		for key,value in pairs({
			["ALL THE THINGS"] = "ATT",
			["Expansion Pre"] = "Pre",
			["Expansion Features"] = "CE",
			[GROUP_FINDER] = "BdG",
			["Dungeons & Raids"] = "CyB",
			["Player vs Player"] = STAT_CATEGORY_PVP,
			["Player vs. Player"] = STAT_CATEGORY_PVP,
			["Outdoor Zones"] = LFG_TYPE_ZONE,
			-- Expansion sorted
			["Classic %> "] = "",
			["The Burning Crusade"] = "BC",
			["Burning Crusade"] = "BC",
			["The BC"] = "BC",
			["Wrath of the Lich King"] = "Lich",
			["Cataclysm %>"] = "Cata >",
			["Cataclysm "] = "Cata ",
			["Mists of Pandaria"] = "MoP",
			["Warlords of Draenor"] = "WoD",
			["Battle for Azeroth"] = "BFA",
			["The Shadowlands"] = "SL",
			["Shadowlands"] = "SL",
			["Dragonflight"] = "DF",
			["The War Within"] = "TWW",
			-- Dungeon & Raid
			["Normal"] = "N",
			["Heroic"] = "H",
			["Mythic"] = "M",
			["M Keystone"] = "M+",
			["Raid Finder"] = "BdB",
			["Looking For Raid"] = "BdB",
			["10 Player"] = "10",
			["10 Player (Heroic)"] = "10 (H)",
			["25 Player"] = "25",
			["25 Player (Heroic)"] = "25 (H)",
			[BATTLEGROUNDS] = "CdB",
			-- Dungeon & Raid Names
			-- Classic
			["Scarlet Monastery of Old"] = "ME: Viejo",
			-- Cata
			["Baleroc, the Gatekeeper"] = "Baleroc",
			["The Conclave of Wind"] = "Conclave",
			["Hagara the Stormbinder"] = "Hagara",
			["Majordomo Staghelm"] = "Mayordomo",
			["Omnotron Defense System"] = "Omnitron",
			["Theralion and Valiona"] = "TheralionyValiona",
			["Yor'sahj the Unsleeping"] = "Yor'sahj",
			-- DF
			["Aberrus, the Shadowed Crucible"] = "Aberrus",
			["Amirdrassil, the Dream's Hope"] = "Amirdrassil",
			["Kazzara, the Hellforged"] = "Kazzara",
			["Larodar, Keeper of the Flame"] = "Larodar",
			["Nymue, Weaver of the Cycle"] = "Nymue",
			["Tindral Sageswift, Seer of the Flame"] = "Yescal Sabioveloz",
			-- Legion
			["Il'gynoth, The Heart of Corruption"] = "Il'gynoth",
			["Antorus, the Burning Throne"] = "Antorus",
			-- BFA
			["Ny'alotha, the Waking City"] = "Ny'alotha",
			-- SL
			["Tazavesh, the Veiled Market"] = "Tazavesh",
			-- TWW
			["Ara-Kara, City of Echoes"] = "Ara-Kara",
			["Enterprising Hero: The War Within Season Two"] = "Héroe Emprendedor: TWW T2",
			["The War Within Keystone Legend: SeasonTwo"] = "TWW Leyenda de la piedra angular: T2",
			["Mug'Zee, Heads of Security"] = "Mug'Zee",
			["Sikran, Captain of the Sureki"] = "Sikran",
			["Vexie and the Geargrinders"] = "Vexie y los rugemotores",
			-- Outdoor Zones
			["Quartermaster Miranda Breechlock"] = "Intendente Miranda",
			["Season "] = "T",
			["Sanctum Upgrades %> "] = "",
			["The Azure Span"] = "Trecho Azur",
			["The Forbidden Reach"] = "Confín Prohibido",
			["The Superbloom"] = "Superflorecimiento",
			["The Waking Shores"] = "Costas del Despertar",
			["The Primalist Future"] = "Futuro primalista",
			["The Storm's Fury"] = "Furia de la tormenta",
			["WoW Anniversary"] = "Aniversario",
			["Dragonriding Challenge: Dragon Isles: Gold > "] = "",
			["Dragon Racing Completionist: Gold > "] = "",
			["Emerald Dream Challenge Racing Completionist: Gold > "] = "",
			["Emerald Dream Racing Completionist: Gold > "] = "",
			["Forbidden Reach Challenge Racing Completionist: Gold > "] = "",
			["Forbidden Reach Racing Completionist: Gold > "] = "",
			["Zaralek Cavern Racing Completionist: Gold > "] = "",

			["WoW's Anniversary %> "] = "",
			[BLACK_MARKET_AUCTION_HOUSE] = "CSMN",
			["Emissary Quests"] = "Emisario",
			["Item Sets"] = WARDROBE_SETS,
			["Zone Wide"] = LFG_TYPE_ZONE,
			["Mini World Events"] = "Mini",
			["Monthly World Events"] = CALENDAR_REPEAT_MONTHLY,
			[TRACKER_HEADER_WORLD_QUESTS] = "MM",
			["Weekly World Events"] = CALENDAR_REPEAT_WEEKLY,
			["Covenant:"] = "Pacto:",
			[CLASS.." %> "] = "",

			["Pet Journal"] = PETS,
			["Toy Box"] = TOY,
		})
		do ABBREVIATIONS[key] = value; end
	end
end
if localeString == "frFR" then
	L.EXPANSION_DATA[1].lore = "Déterminée à s’installer dans la région aride de Durotar, la nouvelle Horde de Thrall étoffa ses rangs, en invitant les Réprouvés morts-vivants à rejoindre les orcs, les taurens et les trolls. De leur côté, les nains, les gnomes et les anciens elfes de la nuit jurèrent fidélité à l’Alliance revigorée, sous la houlette du royaume humain de Hurlevent. Après la mystérieuse disparition du roi de Hurlevent Varian Wrynn, le généralissime Bolvar Fordragon assura le rôle de régent. Mais son autorité fut contrariée par les manipulations et le contrôle mental du dragon noir Onyxia, qui tirait les ficelles sous l’apparence d’une humaine appartenant à la noblesse. Tandis que des héros enquêtaient sur les manipulations d’Onyxia, d’anciens adversaires refirent surface un peu partout dans le monde, menaçant tout aussi bien la Horde que l’Alliance.";
	L.EXPANSION_DATA[2].lore = "The Burning Crusade est la 1ère extension. Le seigneur funeste Kazzak étant parvenu à rouvrir la Porte des ténèbres en Outreterre, il fit déferler sur Azeroth les démons enragés de la Légion ardente. Des expéditions de la Horde et de l’Alliance, respectivement renforcées par les elfes de sang et les draeneï, franchirent le portail afin de stopper l’invasion à sa source. En Outreterre, dans l’aride péninsule des Flammes infernales, l’Alliance retrouva plusieurs de ses héros qui avaient franchi le portail bien des années auparavant, tandis que la Horde put entrer en contact avec les Mag’har, des orcs non-corrompus qui n’avaient pas pris part à la première invasion d’Azeroth par ceux de leur race. L’expédition en Outreterre plongea les armées de la Horde et de l’Alliance dans un intense conflit contre les agents de la Légion et les lieutenants d’Illidan Hurlorage, qui s’était approprié ce monde brisé.";
	L.EXPANSION_DATA[3].lore = "Wrath of the Lich King est la 2ème extension. À la suite de la purification du Puits de soleil, le monde connut une période d’accalmie étrangement suspecte. Puis, subitement, le Fléau mort-vivant lança un assaut massif contre les cités et les villes d’Azeroth, frappant cette fois bien au-delà des royaumes de l’Est. Poussé à réagir vigoureusement, le chef de guerre Thrall déploya une force expéditionnaire dans le Norfendre sous les ordres du suzerain Garrosh Hurlenfer. Pendant ce temps, le roi humain disparu Varian Wrynn regagnait la cité de Hurlevent et récupérait sa couronne. Il envoya alors une armée de l’Alliance de puissance équivalente, sous les ordres de Bolvar Fordragon, à l’assaut du roi-liche… et de toutes les forces de la Horde qui se dresseraient en travers de sa route.";
	L.EXPANSION_DATA[4].lore = "Cataclysm est la 3ème extension. Les expéditions victorieuses du Norfendre regagnèrent leurs demeures, mais découvrirent bien vite que toute Azeroth était affectée par des instabilités des forces élémentaires. Ces troubles précédaient en fait le retour de l’Aspect draconique enragé Aile de mort le Destructeur, qui surgit des tréfonds du plan élémentaire, disloquant Azeroth au passage. Les mondes élémentaires étant désormais ouverts, des esprits élémentaires chaotiques et leurs seigneurs tyranniques émergèrent afin d’aider le Destructeur et le culte nihiliste du Marteau du crépuscule à provoquer l’Heure du crépuscule : la fin de toute vie sur Azeroth.";
	L.EXPANSION_DATA[5].lore = "Mists of Pandaria est la 4ème extension. La menace d’Aile de mort étant écartée, le chef de guerre Garrosh Hurlenfer saisit l’occasion pour attaquer l’Alliance et agrandir le territoire de la Horde en Kalimdor. Son offensive anéantit littéralement la cité humaine de Theramore, ravivant la haine et les violences entre les deux factions à travers le monde. Une escarmouche navale dévastatrice expédia les soldats de l’Alliance et de la Horde sur les rives brumeuses de l’île de la Pandarie qui venait de surgir au large, au grand dam des atlas et autres cartes marines les plus modernes. Alors que les deux factions en guerre s’apprêtaient à s’installer sur ce continent aux ressources abondantes, elles firent la connaissance des principaux habitants de l’île : les nobles pandarens. Cette ancienne race s’unit à l’Alliance et à la Horde dans l’espoir de détruire les sha, sombres et antiques créatures évanescentes, que ce conflit sanglant faisait ressurgir des entrailles de la Pandarie.";
	L.EXPANSION_DATA[6].lore = "Warlords of Draenor est la 5ème extension. Après avoir échappé à la justice grâce au dragon de bronze Kairozdormu, Garrosh Hurlenfer trouva refuge dans une Draenor parallèle, à une époque où la Horde originelle n’avait pas encore débarqué en Azeroth. Assoiffé de vengeance, le fuyard fournit à son père, Grommash Hurlenfer, la technologie dont il avait besoin pour lever son armée idéale, une formidable force d’invasion qui prit le nom de Horde de Fer. Grommash unit rapidement sous sa bannière les différents clans orcs de Draenor et fit de leurs chefs les seigneurs de guerre de sa Horde de Fer. Parmi eux se trouvaient le sanguinaire Kargath Lamepoing, Main-Noire le fourbe, le vieux chaman Ner’zhul et l’intrépide Kilrogg Oeil-Mort. La Horde de Fer se lança alors à l’assaut de plusieurs régions stratégiques de Draenor, s’empara de la ville ogre de Cognefort et bâtit d’imposantes fortifications, dont la fonderie des Rochenoires, pour équiper les armées de ces seigneurs de guerre. La Horde de Fer ayant soumis Draenor, les orcs empruntèrent la Porte des ténèbres pour envahir Azeroth, rasèrent Rempart-du-Néant et prirent le contrôle du bastion Cognepeur. L’archimage Khadgar riposta en rassemblant les champions de l’Alliance et de la Horde pour les mener par-delà la Porte et mettre un terme aux exactions de la Horde de Fer en Draenor. Garrosh fut finalement tué par Thrall, et après une campagne éreintante, les héros d’Azeroth parvinrent à triompher de la plupart des seigneurs de guerre ennemis. L’offensive de Khadgar porta un coup terrible à la Horde de Fer. Incapable de mener ses guerriers à la victoire comme il le leur avait promis, Grommash vit croître un profond mécontentement dans les rangs de son armée. Profitant de cette occasion, le démoniste Gul’dan usurpa son commandement et invoqua la démoniaque Légion ardente en Draenor…";
	L.EXPANSION_DATA[7].lore = "Legion est la 6ème extension. À la suite de la bataille de Draenor, le fourbe Gul’dan se retrouva en Azeroth. Tourmenté par les murmures de Kil’jaeden le Trompeur, il ouvrit la Tombe de Sargeras et ainsi un portail permettant à la Légion ardente d’envahir Azeroth. Le démoniste soumit alors les habitants des îles Brisées, dont les Sacrenuit de la ville antique de Suramar et leur chef, la grande magistrice Élisande. L’Alliance et la Horde prirent le Rivage Brisé d’assaut dans l’espoir d’arrêter Gul’dan et les forces de la Légion avant qu’il ne soit trop tard, mais elles échouèrent, et le roi Varian Wrynn ainsi que le chef de guerre Vol’jin perdirent la vie. Dans un effort désespéré pour réunir les factions éparpillées, l’archimage Khadgar découvrit les piliers de la Création, les seuls instruments capables de sceller la tombe à nouveau. Tandis que les habitants des îles Brisées sont libérés de l’emprise de la Légion, les forces de l’Alliance et de la Horde se rapprochent du palais Sacrenuit, le quartier général de Gul’dan, déterminées à mettre un terme à la menace qu’il représente une bonne fois pour toutes…";
	L.EXPANSION_DATA[8].lore = "Battle for Azeroth est la 7ème extension. Les blessures ouvertes en Azeroth par Sargeras, le titan noir, ont fait apparaître une substance instable : l’azérite, le sang de la planète elle-même. Les tensions entre la Horde et l’Alliance ont redoublé d’intensité depuis que les deux factions ont découvert le véritable pouvoir de l’azérite, marquant le début d’une guerre totale qui a mené à la chute de Teldrassil et Fossoyeuse. Affaiblies et à la recherche de nouveaux alliés, l’Alliance et la Horde ont sollicité l’aide de leurs plus valeureux héros pour étayer leurs rangs. Jaina Portvaillant s’est rendue dans son royaume natal, Kul Tiras, dans l’espoir de convaincre les siens de revenir dans l’Alliance. Elle y a rencontré des nobles querelleurs et un peuple amer, unis dans leur mépris à l’égard de ses actions passées. De son côté, la Horde a fait sortir la princesse zandalari Talanji de la prison de Hurlevent. En retour, celle-ci s’est efforcée de convaincre les Trolls zandalari de prêter main-forte à la Horde malgré la réticence de son père, le roi Rastakhan. Ces efforts diplomatiques ont porté leurs fruits, et avec l’appui de leurs nouveaux alliés, les deux factions ont pu établir de nouveaux avant-postes en Zandalar et en Kul Tiras. Aux côtés de leurs nouveaux frères d’armes, l’Alliance et la Horde se tiennent une fois de plus sur les rives de la guerre, alors que les flots de la vengeance menacent à l’horizon…";
	L.EXPANSION_DATA[9].lore = "Shadowlands est la 8ème extension. Après avoir fui Orgrimmar, Sylvanas Coursevent met le cap vers la citadelle de la Couronne de glace. Là, elle affronte Bolvar, le roi-liche, et s’empare du Heaume de domination. Par un simple acte de destruction, Sylvanas ouvre le passage vers le royaume de l’au-delà : l’Ombreterre, un monde entre les mondes dont l’équilibre délicat préserve aussi bien la vie que la mort. Anduin, Baine, Jaina, Thrall et les héros d’Azeroth suivent Sylvanas en Ombreterre, mais se retrouvent pris au piège dans l’Antre, un royaume effroyable réservé aux âmes malfaisantes au-delà de toute rédemption. Après avoir réussi à s’échapper envers et contre tout, nos héros finissent par se rendre à Oribos, la cité éternelle qui accueille habituellement toutes les âmes fraîchement arrivées en Ombreterre. Ils découvrent alors que l’impassible Arbitre, chargée d’aiguiller les défunts vers leur dernière demeure, est en sommeil et incapable d’honorer ses devoirs. Pire encore, les quatre congrégations de l’Ombreterre ont plongé dans le chaos, et se livrent bataille pour s’approprier une ressource aussi rare que vitale : l’anima. Les héros d’Azeroth décident de venir en aide aux habitants de l’Ombreterre, espérant lever le voile sur les agissements de Sylvanas. Ils finissent par découvrir un traître au sein des congrégations : Denathrius, fondateur et dirigeant de Revendreth, foyer des Venthyrs. Ce dernier assiste secrètement Sylvanas dans son projet de libérer leur mystérieux bienfaiteur commun : une entité surnommée le Geôlier, qui règne sur tout l’Antre. L’infâme seigneur de Revendreth est mis en déroute dans son propre domaine, le château Nathria, mais Sylvanas et le Geôlier ont déjà mis leur plan à exécution : utiliser Anduin contre son gré pour servir leurs terribles desseins.";
	L.EXPANSION_DATA[10].lore = "Dragonflight est la 9ème extension. Les Vols draconiques d’Azeroth sont de retour pour défendre leur foyer ancestral, les îles aux Dragons. Débordantes de magie élémentaire et de l’essence vitale d’Azeroth, les îles s’éveillent de nouveau et vous invitent à découvrir leurs merveilles primordiales et leurs secrets longtemps oubliés.";
	
	for key,value in pairs({
		["Antorus, le Trône ardent"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Expansion Pre"] = "Pré",
		["Expansion Features"] = "CE",
		[GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		["The Burning Crusade"] = "BC",
		["Burning Crusade"] = "BC",
		["The BC"] = "BC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm "] = "Cata ",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BfA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Player vs Player"] = "JcJ",
		["Raid Finder"] = "LFR",
		["Looking For Raid"] = "LFR",
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["Clé mythique"] = "M+",
		["Ny’alotha, la cité en éveil"] = "Ny’alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, le marché dissimulé"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 Player"] = "10J",
		["10 Player (Heroic)"] = "10J (H)",
		["25 Player"] = "25J",
		["25 Player (Heroic)"] = "25J (H)",
		["Emissary Quests"] = "Émissaire de quêtes",
		[TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		["WoW Anniversary"] = "Anniversaire",
		["Covenant:"] = "Cov :",
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "itIT" then
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. Gli Stormi dei Draghi di Azeroth sono tornati, richiamati a difendere la loro dimora ancestrale, le Isole dei Draghi. Ricche di magia elementale e delle energie vitali di Azeroth, le isole si sono risvegliate, e starà a te esplorare le loro meraviglie primordiali e i loro segreti dimenticati da tempo immemore.";	--TODO: First sentence
	
	for key,value in pairs({
		["Antorus, il Trono Infuocato"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Ny'alotha, la Città Risvegliata"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, il Bazar Celato"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "ptBR" then
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence
	
	for key,value in pairs({
		["Antorus, o Trono Ardente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Ny'alotha, a Cidade Desperta"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, o Mercado Oculto"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "ruRU" then
	L.EXPANSION_DATA[1].name = "Classic";
	L.EXPANSION_DATA[1].lore = "Полный решимости заселить засушливые земли Дуротара, Тралл позволил Отрекшимся присоединиться к Орде, состоявшей из орков, тауренов и троллей. В то же время дворфы, гномы и древние ночные эльфы присягнули Альянсу, управляемому королевством людей. После таинственного исчезновения короля Штормграда Вариана Ринна, регентом был назначен Верховный лорд Болвар Фордрагон, но истинная власть находилась в руках черного дракона Ониксии, скрывавшейся под личиной дворянки и подчинившей Фордрагона своей воле. По мере того как герои узнавали новые подробности страшного заговора, во всех концах мира пробуждались древние силы, представлявшие угрозу как для Альянса, так и для Орды.";
	L.EXPANSION_DATA[2].lore = "Владыка Судеб Каззак вновь открыл Темный портал в Запределье, из которого в Азерот хлынули кровожадные демоны Пылающего Легиона. Эльфы крови и дренеи присоединились к экспедиционным силам Альянса и Орды, которые отправились через портал в самое сердце Запределья, чтобы нанести поражение демонам прямо в их логове. На испепеленном Полуострове Адского Пламени в Запределье герои Альянса обнаружили нескольких своих соплеменников, которые давным-давно прошли через портал. В это же время воины Орды встретились с «неоскверненными» орками из племени Маг'хар, которые не участвовали во вторжении на Азерот. В ходе кампании в Запределье союзные войска все больше увязали в конфликте с Легионом и подручными Иллидана Ярости Бури, который распространил свое влияние на все уголки разрушенного мира.";
	L.EXPANSION_DATA[3].lore = "Когда Солнечный Колодец был очищен от скверны, в мире наступило спокойствие, причем настолько безмятежное, что просто не могло не вызвать подозрений. Внезапно, как по сигналу, войска Плети приступили к планомерному нападению на города по всему Азероту уже и за пределами Восточных Королевств. Вождь Тралл был вынужден принять решительные меры и направил в Нордскол экспедиционный корпус под началом Гарроша Адского Крика. Тем временем в Штормград, наконец, вернулся король людей Вариан Ринн и занял свое законное место на престоле. На бой с Королем-личом он выставил внушительное войско Альянса под командованием Болвара Фордрагона. Кроме того, воины Альянса должны были подавить любое сопротивление Орды.";
	L.EXPANSION_DATA[4].lore = "Экспедиции в Нордскол вернулись с победой, но внезапно на Азерот обрушились разгневанные элементали — знак, что грядет возвращение аспекта драконов Смертокрыла Разрушителя. Он покинул свое логово и принес в Азерот разрушение, открыв проходы в Царство Стихий, через которые хлынули беснующиеся элементали и их владыки. Они намерены помочь Смертокрылу и отвратительному культу Сумеречного Молота приблизить Время Сумерек и уничтожить все живое в Азероте.";
	L.EXPANSION_DATA[5].lore = "От Смертокрыла мир удалось спасти, и вождь Гаррош Адский Крик решил: когда, как не теперь, нанести удар по Альянсу и расширить владения Орды в Калимдоре. Под натиском его армии пал и был разрушен до основания город людей Терамор. По всему миру противостояние между фракциями разгорелось с новой силой. После крупного морского сражения остатки флота Орды и Альянса прибило к туманным берегам Пандарии — таинственного континента, не отмеченного ни на одной карте. На берегу этой богатой земли враждующие фракции встретили благородных пандаренов — один из главных местных народов. Пандарены вступили в союз с Альянсом и Ордой, надеясь с их помощью изгнать со своих земель злобных ша — бестелесных созданий, явившихся на свет из недр Пандарии в давней кровопролитной войне.";
	L.EXPANSION_DATA[6].lore = "Гаррош Адский Крик бежал от правосудия, в чем ему помог бронзовый дракон Кайроздорму. Бывшему вождю удалось вернуться назад во времени и попасть на Дренор еще до вторжения Орды в Азерот. Поддавшись жажде мести, Гаррош выдал своему отцу, Громмашу Адскому Крику, все технологии для создания идеальной армии для завоевания других миров — Железной Орды. Громмаш объединил все разрозненные кланы орков Дренора под своим знаменем, сделав их вождей своими военачальниками. В число приближенных вошли кровожадный Каргат Острорук, хитрый Чернорук, старый шаман Нер'зул и бесстрашный Килрогг Мертвый Глаз. Железная Орда захватила ряд ключевых областей Дренора, покорила город огров из клана Верховного Молота и построила крупные военные объекты вроде литейной клана Черной горы, снабжающей армии Орды оружием. Завладев Дренором, орки Железной Орды вторглись в Азерот через Темный портал, разорили крепость Стражей Пустоты и захватили форт Молота Ужаса. В ответ на нападение верховный маг Кадгар призвал на помощь героев Альянса и Орды и повел их через портал на Дренор, чтобы остановить Железную Орду раз и навсегда. В итоге Гаррош пал от руки Тралла, а героям Азерота удалось в ходе продолжительной и тяжелой кампании уничтожить большую часть военачальников Железной Орды. Возглавляемое Кадгаром наступление позволило нанести сокрушительный удар Железной Орде. Громмаш не смог привести своих воинов к обещанной победе, и в рядах его последователей назрел раскол. Это позволило чернокнижнику Гул'дану захватить власть в Железной Орде и призвать на Дренор демонов Пылающего Легиона...";
	L.EXPANSION_DATA[7].lore = "После битвы за Дренор коварный Гул'дан очутился в Азероте. Под влиянием демонического владыки Кил'джедена Искусителя он открыл гробницу Саргераса, а вместе с ней — врата, через которые Пылающий Легион вторгся в Азерот. Чернокнижник покорил Расколотые острова, включая древний город ночнорожденных Сурамар, и подчинил своей воле их лидера, Великого магистра Элисанду. Альянс и Орда штурмовали Расколотый берег в надежде остановить Гул'дана и предотвратить вторжение Легиона, но их усилия оказались тщетны и стоили жизни королю Вариану Ринну и вождю Вол'джину. Тогда верховный маг Кадгар предпринял отчаянную попытку объединить раздробленные фракции, что привело к восстановлению Столпов Созидания — единственного инструмента, способного вновь запечатать гробницу. Жители Расколотых островов освободились от влияния Легиона, а силы Альянса и Орды приблизились к базе Гул'дана, Цитадели Ночи, в надежде раз и навсегда положить конец зловещим амбициям чернокнижника...";
	L.EXPANSION_DATA[8].lore = "Когда Саргерас нанес Азерот страшную рану, из недр планеты поднялась нестабильная субстанция, прозванная азеритом — кровь самого спящего титана. Вскоре Альянс и Орда поняли, какой потенциал сокрыт в этом веществе, и взаимная неприязнь перешла в открытую конфронтацию. В стремлении завладеть как можно большим количеством азерита, Орда сожгла Тельдрассил, а затем Альянс осадил Подгород.\n\nОбе фракции были ослаблены и нуждались в новых союзниках и в героях, которые бы помогли их найти. Так Джайна Праудмур отправилась на свою родину, Кул-Тирас, в надежде уговорить морскую державу вновь присоединиться к Альянсу. Однако местные дворянские дома погрязли в конфликтах и проявили единодушие лишь в ненависти к Джайне за ее прошлые поступки. В то же время герои Орды вызволили зандаларскую принцессу Таланджи из тюрьмы Штормграда. И, хотя сперва ее отец, король Растахан, не был настроен слушать послов, со временем Таланджи все-таки уговорила зандаларских троллей присоединиться к Орде. Дипломатия помогла обеим фракциям, и в результате успешных военных кампаний они основали надежные базы в Зандаларе и Кул-Тирасе.\n\nДобившись доверия со стороны своих новых союзников, Альянс и Орда вновь скрестили клинки, не замечая, что над ними нависли грозные волны возмездия…";
	L.EXPANSION_DATA[9].lore = "Одним отчаянным ударом Сильвана Ветрокрылая разрушила границу между миром живых и загробным царством. Храбрейших защитников Азерота затянула всепожирающая тьма. Несущая смерть древняя сила грозит сбросить оковы и уничтожить саму реальность.\n\nТех, кто осмелится сделать шаг в царство мертвых, ждут чудесные и пугающие неизведанные миры. Темные земли — это царство, в котором обитают души умерших. Это мир между мирами, от хрупкого баланса в котором зависит само существование жизни и смерти.\n\nКак одного из величайших защитников Азерота, вас наделили способностью пребывать в этом мире, не теряя своей телесной оболочки. Теперь вам предстоит раскрыть заговор, грозящий уничтожением Вселенной, и помочь легендарным героям всех эпох Warcraft вернуться в Азерот... или окончательно покинуть этот мир.";
	L.EXPANSION_DATA[10].lore = "Драконы Азерота откликнулись на зов и вернулись, чтобы защитить свою родину, Драконьи острова. Магия стихий и энергия жизни Азерота наполняют вновь пробудившиеся Драконьи острова, и теперь вам предстоит исследовать их первобытные чудеса и раскрыть давно забытые тайны.";
	
	for key,value in pairs({
		["Анторус, Пылающий Трон"] = "Анторус";	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Expansion Pre"] = "Препатч";
		["Особый контент"] = "ОК";
		[GROUP_FINDER] = "П и Р";	-- ["Dungeons & Raids"] = "D&R"
		["Cataclysm "] = "Ката ";
		["Темные Земли"] = "ТЗ",
		["Player vs Player"] = "ПвП";
		["Поиск рейда"] = "ЛФР";
		["Обычный"] = "О";
		["Героический"] = "Г";
		["Эпохальный"] = "Э";
		["Тайный рынок Тазавеш"] = "Тазавеш";	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 игроков"] = "10";
		["25 игроков"] = "25";
		["героич."] = "гер.";
		["Локальные задания"] = "ЛЗ",	-- ["World Quests"] = "WQ"
		["годовщина World of Warcraft"] = "годовщина";
		["Ковенант:"] = "Ков:",
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "koKR" then
	L.EXPANSION_DATA[10].lore = "용군단 is the ninth expansion. 아제로스의 용군단이 부름을 받들어 선조의 보금자리인 용의 섬을 수호하고자 귀환했습니다. 섬 전역에서 정령 마력과 아제로스의 생명력이 넘쳐흐르는 지금, 용의 섬이 다시 한번 기지개를 켜며 깨어나고 있습니다. 여러분은 이제 태고의 경이를 모험하며 아득히 먼 옛날 잊힌 비밀을 탐구해야 합니다.";	--TODO: First sentence
	
	for key,value in pairs({
		["안토러스 - 불타는 왕좌"] = "안토러스",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["깨어난 도시 나이알로사"] = "나이알로사",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["미지의 시장 타자베쉬"] = "타자베쉬",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	})
	do ABBREVIATIONS[key] = value; end
end
if localeString == "zhCN" or localeString == "zhTW" then
	L.EXPANSION_DATA[1].lore = "海加尔山之战的四年后，联盟和部落之间的关系又一次紧张了起来。为了能在贫瘠之地杜隆塔尔立足，萨尔邀请亡灵被遗忘者加入到兽人、牛头人和巨魔中，以扩大他的部落。与此同时，在另一边矮人、侏儒和古暗夜精灵则发誓它们将效忠人类暴风城王国所领导的新的联盟。当暴风城的国王瓦里安·乌瑞恩神秘消失之后，领主伯瓦尔·弗塔根担任摄政王，但是伯瓦尔的所做的一切被伪装成人类贵妇的黑龙奥尼克希亚通过意识控制所破坏。当英雄们正在研究对抗奥克尼希亚的手法时，古代的敌人出现在大陆上，并威胁着部落和联盟的生存。";
	L.EXPANSION_DATA[2].lore = "燃烧的远征是第一个资料片。它的主要内容包括将等级上限提高到70，将血精灵和德莱尼作为可玩的种族引入，以及外域世界的加入，以及许多新区域、地下城、物品、任务和怪物。";
	L.EXPANSION_DATA[3].lore = "巫妖王之怒是第二个资料片。大部分资料片内容都发生在诺森德，并以巫妖王的计划为中心。内容亮点包括将等级上限从70增加到80，引入英雄职业死亡骑士，以及新的 PvP/世界 PvP 内容。";
	L.EXPANSION_DATA[4].lore = "大地的裂变是第三个资料片。随着死亡之翼的回归，重做艾泽拉斯大陆的卡利姆多和东部王国，他从位于元素位面深处的巢穴中破土而出，将艾泽拉斯撕成碎片。大灾难让玩家们回到艾泽拉斯的两大洲进行大部分的活动，开辟新的区域，如海加尔山、瓦斯琪尔、深岩之洲、奥丹姆和暮光高地。它包括两个新的可玩的种族，狼人和地精。资料片将等级上限提高到85，增加了在卡利姆多和东部王国飞行的能力，引入考古学和重做，并重做世界本身。";
	L.EXPANSION_DATA[5].lore = "熊猫人之谜是第四个资料片。在潘达利亚意外重新发现之后，资料片主要重新集中在联盟和部落之间的战争。冒险者重新发现了古老的熊猫人，他们的智慧将有助于引导他们走向新的命运; 熊猫人帝国的古代敌人螳螂妖; 和他们传说中的压迫者神秘的魔古族。领土随着时间的推移而变化，瓦里安乌瑞恩和加尔鲁什地狱咆哮之间的冲突逐渐升级。内战席卷了部落，联盟和部落中反对地狱咆哮的暴力起义联合起来直接把战争带到地狱咆哮和被煞魔侵蚀的奥格瑞玛的盟友。";
	L.EXPANSION_DATA[6].lore = "德拉诺之王是第五个资料片。在德拉诺的原始丛林和战争创伤的平原上，艾泽拉斯的英雄们将参与一场神话般的冲突，包括神秘的德莱尼冠军和强大的兽人部落，以及在原始力量的顶峰与格罗玛什地狱咆哮、黑手和耐奥祖等。玩家需要在这片不受欢迎的土地上搜索盟友，以帮助建立一个绝望的防御，对抗旧部落强大的统治，或者观看他们自己世界上血腥的、饱受战争蹂躏的历史重演。";
	L.EXPANSION_DATA[7].lore = "军团再临是第六个资料片。古尔丹被驱逐到艾泽拉斯，重新开放萨格拉斯之墓和阿古斯之门，开始第三次入侵燃烧军团。在破碎海岸被击败后，艾泽拉斯的卫士们寻找创造之柱，这是艾泽拉斯关闭萨墓中心巨大的恶魔之门的唯一希望。然而，破碎群岛也有自己的危险要克服，从萨维斯到神王斯科瓦德，到夜之子，再到潮汐之力艾萨拉。卡德加将达拉然迁移到这片土地的海岸，这座城市是英雄的中心枢纽。阿彻鲁斯的死亡骑士也将他们漂浮的墓地带到了群岛。艾泽拉斯的英雄们在战斗中寻找传说中的神器，但也发现了伊利达雷的意外盟友。联盟和部落之间正在发生的冲突导致了阶级秩序的形成，特殊的指挥官搁置阵营纷争来领导他们的队伍参加对抗军团的斗争。";
	L.EXPANSION_DATA[8].lore = "争霸艾泽拉斯是第七个资料片。艾泽拉斯为结束军团十字军的天启付出了惨重的代价，但即使世界上的创伤得到了修复，联盟和部落之间破碎的信任也可能是最难弥补的。在艾泽拉斯战役中，燃烧军团的垮台引发了一系列灾难性事件，重新引发了魔兽世界中心的冲突。随着一个新的战争时代的开始，艾泽拉斯的英雄们必须开始征募新的盟友，争夺世界上最强大的资源，并在多条战线上战斗，以确定部落或联盟是否会带领艾泽拉斯进入不确定的未来。";
	L.EXPANSION_DATA[9].lore = "暗影国度是第八个资料片。你所知道的世界之外还有什么? 暗影国度。每一个世俗的人(无论是邪恶的还是邪恶的)都曾居住过的地方。";
	L.EXPANSION_DATA[10].lore = "巨龙时代是第九个资料片。艾泽拉斯的巨龙军团已经回归，他们响应了召唤，前去保护自己世代相传的家园：巨龙群岛。巨龙群岛涌动着元素魔法和艾泽拉斯的生命能量，如今它已从睡梦中苏醒，原始的奇观和尘封已久的秘密正等待你去揭露。";
	L.EXPANSION_DATA[11].lore = "地心之战是第十个资料片。也是世界之魂传说三部曲的开端。穿越前所未见的地下世界，那里充满了隐藏的奇迹和潜伏的危险，一直到蛛魔帝国的黑暗深处，那里邪恶的虚空先驱正在聚集蛛魔力量，试图让艾泽拉斯屈服。";
	L.EXPANSION_DATA[12].lore = "至暗之夜是第十一个资料片。也是世界之魂传说的第二部份。";
	L.EXPANSION_DATA[13].lore = "最后的泰坦是第十二个资料片。也是世界之魂传说三部曲终章。";
	
	for key,value in pairs({
		["安托鲁斯，燃烧王座"] = "安托鲁斯",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["资料片前夕"] = "前夕",	-- ["Expansion Pre"] = "Pre"
		["尼奥罗萨，觉醒之城"] = "尼奥罗萨",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["塔扎维什，帷纱集市"] = "塔扎维什",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["亚贝鲁斯，焰影熔炉"] = "亚贝鲁斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
		["阿梅达希尔，梦境之愿"] = "阿梅达希尔",	-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
		["艾拉-卡拉，回响之城"] = "回响之城",	-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
	})
	do ABBREVIATIONS[key] = value; end
	
	if localeString == "zhTW" then
		L.EXPANSION_DATA[1].lore = "海加爾山之戰的四年後，聯盟和部落之間的關係又一次緊張了起來。在貧瘠之地杜洛塔，由索爾所領導的部落安頓定居下來並繼續擴充軍隊的規模，他們邀請被遺忘者加入獸人、牛頭人和食人妖的行列。同時，矮人、地精和古老的夜精靈也發誓效忠由人類王國暴風城所領導的聯盟。在暴風城國王瓦里安·烏瑞恩神秘失蹤後，大領主伯瓦爾‧弗塔根擔任攝政王一職，但是偽裝成人類女貴族的黑龍軍團的奧妮克希亞控制他的心智，從幕後操控整個王國。正當英雄們探查奧妮克希亞的陰謀時，古老的強敵卻現身世界各地，威脅著部落和聯盟。";
		L.EXPANSION_DATA[2].lore = "燃燒的遠征是第一個資料片。它的主要內容包括將等級上限提高到70，將血精靈和德萊尼作為可玩的種族引入，以及外域世界的加入，以及許多新區域、地城、物品、任務和怪物。";
		L.EXPANSION_DATA[3].lore = "巫妖王之怒是第二個資料片。大部分資料片內容都發生在諾森德，並以巫妖王的計劃為中心。內容亮點包括將等級上限從70增加到80，引入英雄職業死亡騎士，以及新的 PvP/世界 PvP 內容。";
		L.EXPANSION_DATA[4].lore = "浩劫與重生是第三個資料片。隨著死亡之翼的回歸，重做艾澤拉斯大陸的卡林多和東部王國，他從位於元素位面深處的巢穴中破土而出，將艾澤拉斯撕成碎片。大災變讓玩家們回到艾澤拉斯的兩大洲進行大部分的活動，開闢新的區域，如海加爾山、瓦許伊爾、地深之源、奧丹姆和暮光高地。它包括兩個新的可玩的種族，狼人和哥布林。資料片將等級上限提高到85，增加了在卡林多和東部王國飛行的能力，引入考古學，並重做世界本身。";
		L.EXPANSION_DATA[5].lore = "潘達利亞之謎是第四個資料片。在潘達利亞意外重新發現之後，資料片主要重新集中在聯盟和部落之間的戰爭。冒險者重新發現了古老的熊貓人，他們的智慧將有助於引導他們走向新的命運；熊貓人帝國的古代敵人螳螂人；和他們傳說中的壓迫者神秘的魔古族。領土隨著時間的推移而變化，瓦里安．烏瑞恩和卡爾洛斯．地獄吼之間的衝突逐漸升級。內戰席捲了部落，聯盟和部落中反對地獄吼的暴力起義聯合起來直接把戰爭帶到地獄吼和被煞侵蝕的奧格瑪的盟友。";
		L.EXPANSION_DATA[6].lore = "德拉諾之霸是第五個資料片。在德拉諾的原始叢林和戰爭創傷的平原上，艾澤拉斯的英雄們將參與一場神話般的衝突，包括神秘的德萊尼冠軍和強大的獸人部落，以及在原始力量的頂峰與葛羅瑪許．地獄吼、黑手和耐奧祖等。玩家需要在這片不受歡迎的土地上搜尋盟友，以幫助建立一個絕望的防禦，對抗舊部落強大的統治，或者觀看他們自己世界上血腥的、飽受戰爭蹂躪的歷史重演。";
		L.EXPANSION_DATA[7].lore = "軍臨天下是第六個資料片。古爾丹被驅逐到艾澤拉斯，重新開啟薩格拉斯之墓和阿古斯之門，燃燒軍團開始第三次入侵。在破碎海岸被擊敗後，艾澤拉斯的防衛者們尋找創造之柱，這是在艾澤拉斯關閉薩墓中心巨大的惡魔之門的唯一希望。然而，破碎群島也有自己的危險要克服，從薩維斯到神王斯科瓦德，到夜裔精靈，再到潮汐之力艾薩拉。卡德加將達拉然遷移到這片土地的海岸，這座城市是英雄的中心樞紐。亞榭洛的死亡騎士也將他們的黯黑堡帶到了群島。艾澤拉斯的英雄們在戰鬥中尋找傳說中的神器，但也發現了意外的盟友伊利達瑞。聯盟和部落之間正在發生的衝突導致了階級秩序的形成，特殊的指揮官擱置陣營紛爭來領導他們的隊伍參加對抗軍團的戰爭。";
		L.EXPANSION_DATA[8].lore = "決戰艾澤拉斯是第七個資料片。艾澤拉斯為結束燃燒軍團的天啓付出了慘重的代價，但即使世界上的創傷得到了修復，聯盟和部落之間破碎的信任也可能是最難彌補的。在決戰艾澤拉斯中，燃燒軍團的垮台引發了一系列災難性事件，重新引發了魔獸世界中心的衝突。隨著一個新的戰爭時代開始，艾澤拉斯的英雄們必須開始招募新的盟友，爭奪世界上最強大的資源，並在多條戰線上戰鬥，以決定部落或聯盟是否會帶領艾澤拉斯進入不確定的未來。";
		L.EXPANSION_DATA[9].lore = "暗影之境是第八個資料片。你所知道的世界之外還有什麼？暗影之境。每一個世俗的人（無論是善良的還是邪惡的）都曾居住過的地方。";
		L.EXPANSION_DATA[10].lore = "巨龍崛起是第九個資料片。艾澤拉斯的巨龍軍團已經回歸，他們響應了召喚，前去保護自己世代相傳的家園：巨龍群島。巨龍群島湧動著元素魔法和艾澤拉斯的生命能量，如今它已從睡夢中甦醒，原始的奇觀和塵封已久的秘密正等待你去揭曉。";
		L.EXPANSION_DATA[11].lore = "地心之戰是第十個資料片。也是世界之魂戰記三部曲的開端。穿越前所未見的地下世界，那裡充滿了隱藏的奇觀和潛伏的危險，一直到蛛魔帝國的黑暗深處，那裡邪惡的虛空先驅正在聚集蛛魔力量，試圖讓艾澤拉斯屈服。";
		L.EXPANSION_DATA[12].lore = "至暗之夜是第十一個資料片。也是世界之魂戰記的第二部份。";
		L.EXPANSION_DATA[13].lore = "最後的泰坦是第十二個資料片。也是世界之魂戰記三部曲終章。";
		
		for key,value in pairs({
			["資料片前夕"] = "前夕",
			["安托洛斯，燃燒王座"] = "安托洛斯",		-- ["Antorus, the Burning Throne"] = "Antorus"
			["奈奧羅薩，甦醒之城"] = "奈奧羅薩",		-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
			["『帷幕市集』塔札維許"] = "塔札維許",		-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
			["『朧影實驗場』亞貝魯斯"] = "亞貝魯斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
			["『夢境希望』埃達希爾"] = "埃達希爾",		-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
			["『回音之城』厄拉卡拉"] = "厄拉卡拉",		-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
		})
		do ABBREVIATIONS[key] = value; end
	end
end

if app.IsRetail then
	local CUSTOM_COLLECTS_REASONS = {
		["NPE"] = {
			color = "ff5bc41d",
			icon = "|T"..(3567434)..":0|t",
			text = "New Player Experience",
			desc = "Only a New Character can Collect this."
		},
		["SL_SKIP"] = {
			color = "ff76879c",
			icon = "|T"..app.asset("Expansion_SL")..":0|t",
			text = "Threads of Fate",
			desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this."
		},
		["HOA"] = {
			color = "ffe6cc80",
			icon = "|T"..(1869493)..":0|t",
			text = GetSpellName(275825),
			desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this."
		},
		["!HOA"] = {
			color = "ffe6cc80",
			icon = "|T"..(2480886)..":0|t",
			text = "|cffff0000"..NO.."|r "..GetSpellName(275825),
			desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this."
		},
		["SL_COV_KYR"] = {
			color = "ff516bfe",
			icon = "|T"..(3257748)..":0|t",
			text = GetSpellName(321076)
		},
		["SL_COV_NEC"] = {
			color = "ff40bf40",
			icon = "|T"..(3257749)..":0|t",
			text = GetSpellName(321078)
		},
		["SL_COV_NFA"] = {
			color = "ffA330C9",
			icon = "|T"..(3257750)..":0|t",
			text = GetSpellName(321077)
		},
		["SL_COV_VEN"] = {
			color = "fffe040f",
			icon = "|T"..(3257751)..":0|t",
			text = GetSpellName(321079)
		},
	};
	L.CUSTOM_COLLECTS_REASONS = CUSTOM_COLLECTS_REASONS;
	
	--[[
	if localeString == "deDE" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "New Player Experience";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Only a New Character can Collect this.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Threads of Fate";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
	end
	]]--
	if localeString == "esES" or localeString == "esMX" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "Experiencia de los jugadores nuevos";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Sólo un personaje nuevo puede coleccionar esto.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Hilos del destino";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Sólo un personaje que elige saltarse la historia de las Tierras Sombrías puede coleccionar esto.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Sólo un personaje que ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Sólo un personaje que |cffff0000no|r ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto.";
		
		if localeString == "esMX" then
			CUSTOM_COLLECTS_REASONS["NPE"].text = "Experiencia de los jugadores nuevos";
			CUSTOM_COLLECTS_REASONS["NPE"].desc = "Sólo un personaje nuevo puede coleccionar esto.";
			CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Hilos del destino";
			CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Sólo un personaje que elige saltarse la historia de las Tierras de las Sombras puede coleccionar esto.";
			CUSTOM_COLLECTS_REASONS["HOA"].desc = "Sólo un personaje que ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto.";
			CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Sólo un personaje que |cffff0000no|r ha obtenido el |cffe6cc80"..GetSpellName(275825).."|r puede coleccionar esto.";
		end
	end
	if localeString == "frFR" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "Expérience Nouveau Joueur";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Seul un nouveau personnage peut collecter ceci.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Fil du destin";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Seul un personnage ayant passé la suite de quête principale de Shadowlands peut collecter ceci.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Seul un personnage ayant obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Seul un personnage |cffff0000n’ayant pas|r obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci.";
	end
	--[[
	if localeString == "itIT" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "New Player Experience";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Only a New Character can Collect this.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Threads of Fate";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
	end
	]]--
	--[[
	if localeString == "ptBR" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "New Player Experience";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Only a New Character can Collect this.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Threads of Fate";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
	end
	]]--
	if localeString == "ruRU" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "Новый Персонаж";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Только Новый Персонаж может собрать эти предметы.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Нити Судьбы";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Только Персонаж, который пропустил сюжет Тёмных Земель, может собрать эти предметы.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Только Персонаж с |cffe6cc80Сердцем Азерот|r может собрать эти предметы.";
		CUSTOM_COLLECTS_REASONS["!HOA"].text = "|cffff0000Без|r Сердца Азерот";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Только Персонаж |cffff0000без|r |cffe6cc80Сердца Азерот|r может собрать эти предметы.";
	end
	--[[
	if localeString == "koKR" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "New Player Experience";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "Only a New Character can Collect this.";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "Threads of Fate";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this.";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this.";
	end
	]]--
	if localeString == "zhCN" or localeString == "zhTW" then
		CUSTOM_COLLECTS_REASONS["NPE"].text = "新玩家体验";
		CUSTOM_COLLECTS_REASONS["NPE"].desc = "只有新角色可以收藏这个。";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "命运丝线";
		CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "只有选择跳过暗影国度故事线的角色才能收藏这个。";
		CUSTOM_COLLECTS_REASONS["HOA"].desc = "只有角色获得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。";
		CUSTOM_COLLECTS_REASONS["!HOA"].desc = "只有角色 |cffff0000没有|r 获得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。";
		
		if localeString == "zhTW" then
			CUSTOM_COLLECTS_REASONS["NPE"].text = "新玩家體驗";
			CUSTOM_COLLECTS_REASONS["NPE"].desc = "只有新角色可以收藏這個。";
			CUSTOM_COLLECTS_REASONS["SL_SKIP"].text = "命運絲線";
			CUSTOM_COLLECTS_REASONS["SL_SKIP"].desc = "只有選擇跳過暗影之境故事線的角色才能收集這個。";
			CUSTOM_COLLECTS_REASONS["HOA"].desc = "只有角色獲得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。";
			CUSTOM_COLLECTS_REASONS["!HOA"].desc = "只有角色 |cffff0000沒有|r 獲得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。";
		end
	end
end