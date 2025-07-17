if GetLocale() ~= "deDE" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;
L.TITLE = "|c" .. app.DefaultColors.ATT .. "ALL THE THINGS|r";
L.SHORTTITLE = "|c" .. app.DefaultColors.ATT .. "ATT|r";
L.REQUIRES_PVP = "|CFF00FFDEDies erfordert Spieler gegen Spieler Aktivität oder eine Währung, die damit verbunden ist.|r";
L.REQUIRES_PETBATTLES = "|CFF00FFDEDies erfodert Haustierkampf.|r";
L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C um mehrere Linien zu kopieren.)";
L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";
L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";	
L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";	
L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";	
L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffGesammelt|r";
L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffGesammelt*|r";
L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Nicht gesammelt|r";
L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig|r";
L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig*|r";
L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffUnvollständig|r";
L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";	
L.FOLLOWERS_COLLECTION_DESC = "Anhänger können Accountweit gesammelt werden, wenn Ihr diese Einstellung aktiviert.\n\nIhr müsst das Addon manuell mit "..SHIFT_KEY_TEXT.." Linksklick auf die Kopfzeile aktualisieren, damit dies erkannt wird.";
L.MUSIC_ROLLS_DESC = "Diese werden pro Charakter freigeschaltet und sind derzeit nicht auf dem ganzen Account verfügbar. If someone at Blizzard is reading this, it would be really swell if you made these account wide.\n\nIhr müsst das Addon manuell mit "..SHIFT_KEY_TEXT.." Linksklick auf die Kopfzeile aktualisieren, damit sie erkannt werden.";
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

L.UNSORTED_DESC = "Diese Sache wurde noch nicht in ATT " .. app.Version .. " implementiert.";
L.RESET_INSTANCES_DESC = "Hier klicken um Eure Instanzen zurückzusetzen.\n\n"..ALT_KEY_TEXT.." Klick um zu aktivieren, dass eure Instanzen automatisch beim Verlassen zurückgesetzt werden.\n\nWARNUNG: SEI VORSICHTIG DAMIT!";
L.FORCE_REFRESH_REQUIRED = "Dies benötigt möglicherweise eine erzwungene Aktualisierung ("..SHIFT_KEY_TEXT.." click) um ordnungsgemäß als gesammelt zu zählen.";
L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." Klick um das Fenster zu fixieren";
L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." Klick um das Fenster freizugeben";
L.TITLE_DEBUG = "|c" .. app.DefaultColors.Red .. "Debug|R ";
L.TITLE_ACCOUNT = "|c" .. app.DefaultColors.Account.."Account|R ";
L.TITLE_INSANE = "|c" .. app.DefaultColors.Insane.."Wahnsinn|R ";
L._BETA_LABEL = " |cff4AA7FF[Beta]|R";
L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffWährung|r";

local a = L.ABBREVIATIONS;
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
do a[key] = value; end

if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	[-5201] = "Ordenskampagne",								-- Class Hall Campaign
	[-5202] = "Gleichgewicht der Kräfte",					-- Balance of Power
})
do a[key] = value; end
end

DEBUG_MODE = "|c" .. app.DefaultColors.Red.."Debug Modus|r (Zeig alles)";
ACCOUNT_MODE = "|c" .. app.DefaultColors.Account.."Account Modus";
AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Herzensessenzen";
DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Drachenwächtermanuskript";
FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Anhänger & Gefährten";
RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Runenschnitzmacht";
SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Medien";
PROFILE_SWITCH_TOOLTIP = "Setzt das ausgewählte Profil als das derzeitig aktive Profil\n\nEin Profil kann auch mit "..SHIFT_KEY_TEXT.."-geklickt werden, um dazu zu wechseln";

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
