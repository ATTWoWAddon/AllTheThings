if GetLocale() ~= "deDE" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";
	L.THINGS_UNTIL = " DINGE BIS ";
	L.THING_UNTIL = " DING BIS ";


	L.REFRESHING_COLLECTION = "Aktualisiere Sammlung...";
	L.DONE_REFRESHING = "Aktualisierung der Sammlung erfolgreich.";
	L.PROGRESS = "Fortschritt";
	L.COMPLETED_BY = "Vervollständigt von: %s";
	L.KNOWN_BY = "Bekannt durch %s";

	L.MAIN_LIST_REQUIRES_REFRESH = "[Öffne die Hauptliste um den Fortschritt zu aktualisieren]";
	L.VISIT_FLIGHT_MASTER = "Besucht den Greifenmeister für die Entdeckung.";
	L.REQUIRES_PVP = "|CFF00FFDEDies erfordert Spieler gegen Spieler Aktivität oder eine Währung, die damit verbunden ist.|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDEDies erfodert Haustierkampf.|r";
	L.PLEASE_REPORT_MESSAGE = "Bitte melden Sie den Fehler an das ATT Discord in #retail-errors! Danke!";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C um mehrere Linien zu kopieren.)";
	L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "Quest '%s' %s verhindert die Sammlung von Brotkrumenquests '%s' %s";
	L.REPORT_INACCURATE_QUEST = "Falsche Quest Informationen! (Klicken um zu melden)";
	L.ITEM_GIVES_REP = "Bietet Ruf mit '";

	L.ITEM_ID_ADDED = "%s (%d) wurde deiner Sammlung hinzugefügt.";
	L.ITEM_ID_ADDED_RANK = "%s (%d) [Rank %d] wurde deiner Sammlung hinzugefügt.";
	L.ITEM_ID_ADDED_MISSING = "%s (%d) wurde deiner Sammlung hinzugefügt. Nicht in der Datenbank gefunden. Bitte melde es an das ATT Discord!";
	L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] wurden deiner Sammlung hinzugefügt.";
	L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] wurde deiner Sammlung hinzugefügt. Nicht in der Datenbank gefunden. Bitte melde es an das ATT Discord!";
	L.ITEM_ID_REMOVED = "%s (%d) wurde aus deiner Sammlung entfernt.";
	L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] wurden aus deiner Sammlung entfernt.";

	L.DROP_RATE = "Drop Rate";
	L.QUEST_GIVER = "Questgeber";
	L.COORDINATES = "Koordinaten";
	L.BREADCRUMBS = "Brotkrümelquests";	--TODO: article?
	L.LOCKOUT = "Sperre";
	L.SHARED = "Geteilt";
	L.SPLIT = "Pro Schwierigkeitsgrad";
	L.REQUIRES = "Benötigt";
	L.REQUIRES_LEVEL = "Benötigt Stufe";
	L.LIMITED_QUANTITY = "Dies hat eine begrenzte Menge und ist nicht immer beim Händler verfügbar.";
	L.REMOVED_WITH_PATCH_FORMAT = "Dies wird entfernt mit Patch %s";	--TODO: Removed in %s

	L.FACTION_SPECIFIC_REP = "Nicht alle Fraktionen können mit einem Charakter angesehen werden. z.B. der Kriegshymnenklan kann nicht mit einem Allianz Charakter angesehen werden, und die Silberschwingen können nicht mit einem Horde Charakter angesehen werden.";
	L.MINUMUM_STANDING_WITH_FACTION = "Erfordert mindestens einen Ruf von %s bei %s.";
	L.MAXIMUM_STANDING_WITH_FACTION = "Erfordert einen niedrigeren Ruf als %s bei %s.";
	L.MIN_MAX_STANDING_WITH_FACTION = "Erfordert einen Ruf zwischen %s und %s bei %s.";

	L.HEIRLOOM_TEXT = "Erbstück Entsperrt";
	L.HEIRLOOM_TEXT_DESC = "Dies zeigt an, ob Ihr bereits ein Erbstück gekauft oder erhalten habt.";
	L.HEIRLOOMS_UPGRADES_DESC = "Dies zeigt an, ob Ihr ein Erbstück bereits auf eine bestimmte Stufe aufgewertet habt.\n\nR.I.P. Gold.\n - Crieve";

	L.LOCK_CRITERIA_LEVEL_LABEL = "Spieler Stufe";
	L.LOCK_CRITERIA_QUEST_LABEL = "Quest Vollendet";
	L.LOCK_CRITERIA_SPELL_LABEL = "Zauber/Reittier/Rezept Erlernt";
	L.LOCK_CRITERIA_FACTION_LABEL = "Fraktion Ruf";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s mit %s (Current: %s)";
	L.TITLES_DESC = "Titel werden zwar auf dem ganzen Account verfolgt, aber Euer Charakter muss sich für bestimmte Titel selbst qualifizieren, um diese nutzen zu können.";

	L.DESCRIPTIONS = "Beschreibungen";
	L.LORE = "Geschichte";
	L.CLASSES = "Klassen";

	L.ADDITIONAL_LABEL = "Zusätzliche Information";
	L.CRITERIA_FOR = "Kriterium für";
	L.CURRENCY_FOR = "Währung für";

	L.CHAT_COMMANDS_LABEL = "Chat Befehle";
	L.KEYBINDINGS = SETTINGS_KEYBINDINGS_LABEL;
	L.MINIMAP_LABEL = "Minimap Knopf";
	L.AUTO_PROF_LIST_CHECKBOX = "Berufs Liste automatisch öffnen";
	L.SKIP_CUTSCENES_CHECKBOX = "Zwischensequenzen automatisch überspringen";
	L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "Aktiviere diese Option, wenn ATT automatisch alle Zwischensequenzen für Euch überspringen soll.";
	L.MINIMAP_BUTTON_CHECKBOX = "Zeig den Minimap Knopf";
	L.MINIMAP_SLIDER = "Minimap Knopf Größe";
	L.MINIMAP_SLIDER_TOOLTIP = 'Nutze dies um die Größe des Minmimap Knopfes zu verändern.\n\nDefault: 36';

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffGesammelt|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffGesammelt*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Nicht gesammelt|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffUnvollständig|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	L.TRACKING_PROGRESS = "Fortschrittsverfolgung";
	L.COLLECTED_STRING = " Gesammelt";
	L.PROVIDERS = "Anbieter";
	L.COLLECTION_PROGRESS = "Fortschritt der Sammlung";
	L.CONTAINS = "Enthält:";
	L.FACTIONS = "Fraktionen";
	L.AND_MORE = "Und %s mehr...";
	L.AND_OTHER_SOURCES = "Und %s andere Quellen...";
	L.FLIGHT_PATHS = "Flugpunkte";
	L.RACE_LOCKED = "Rasse Gesperrt";
	L.NOT_AVAILABLE_IN_PL = "Nicht vorhanden im Persönlicher Beute Modus.";
	L.COST = "Kosten";
	L.COST_DESC = "Dies zeigt eine visuelle Aufschlüsselung dessen, was benötigt wird um dieses Ding zu erhalten oder zu kaufen";
	L.SOURCES = "Quelle(n)";
	L.SOURCES_DESC = "Zeigt die Quelle dieses Dings an.\n\nInsbesondere, ein bestimmter Händler/NPC, Quest, Boss, etc.";
	L.WRONG_FACTION = "Möglicherweise müsst Ihr auf der anderen Fraktion sein, um dies anschauen zu können.";
	L.ARTIFACT_INTRO_REWARD = "Belohnung für das Abschließen der Einführungsquest dieses Artifakts.";
	L.FLIGHT_PATHS_DESC = "Flugpunkte werden entdeckt, indem Ihr mit dem Flugmeister sprecht.\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "Anhänger können Accountweit gesammelt werden, wenn Ihr diese Einstellung aktiviert.\n\nIhr müsst das Addon manuell mit "..SHIFT_KEY_TEXT.." Linksklick auf die Kopfzeile aktualisieren, damit dies erkannt wird.";
	L.FAILED_ITEM_INFO = "Abfragen der Gegenstands Informationen fehlgeschlagen. Der Gegenstand ist entweder fehlerhaft, oder wurde auf eurem Server noch nicht gesehen.";
	L.MUSIC_ROLLS_DESC = "Diese werden pro Charakter freigeschaltet und sind derzeit nicht auf dem ganzen Account verfügbar. If someone at Blizzard is reading this, it would be really swell if you made these account wide.\n\nIhr müsst das Addon manuell mit "..SHIFT_KEY_TEXT.." Linksklick auf die Kopfzeile aktualisieren, damit sie erkannt werden.";
	L.MUSIC_ROLLS_DESC_2 = "\n\nIhr müsst Musikrollen zuerst mit der Quest 'Wir brauchen Bass' in Eurer Garnison freischalten, bevor diese droppen können.\n\nSelfies benötigen das S.E.L.F.I.E.-Kamera 2.0 Spielzeug.";
	L.OPPOSITE_FACTION_EQ = "Äquivalent der gegnerischen Fraktion: ";
	L.SELFIE_DESC = "Nehmt ein Selfie mit eurem ";
	L.SELFIE_DESC_2 = " mit |cffff8000";
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
	L.UPON_COMPLETION = "Bei Fertigstellung";
	L.UPON_COMPLETION_DESC = "Die oben angezeigten Quests müssen zuerst beendet werden, bevor Ihr die unten angezeigten Dinge erhalten könnt.";
	L.QUEST_CHAIN_REQ = "Questreihe Anforderungen";
	L.QUEST_CHAIN_REQ_DESC = "Die folgenden Quests müssen zuerst beendet werden, bevor die letzte Quest erhalten werden kann.";
	L.AH_SEARCH_NO_ITEMS_FOUND = "Es wurden keine gespeicherten Gegenstände in der Suche gefunden. Erweiteren Sie die Gruppe und sehen Sie sich Gegenstände an, um die Namen zu speichern und versuchen Sie es danach erneut. Nur Gegenstände des 'Wird beim Anlegen gebunden' Types werden mit dieser Suche gefunden.";
	L.AH_SEARCH_BOE_ONLY = "Nur Gegenstände des 'Wird beim Anlegen gebunden' Types werden mit dieser Suche gefunden.";
	L.TSM_WARNING_1 = "Diesen Befehl auszuführen kann möglicherweise Ihre bestehenden TSM Einstellungen zerstören, indem es sich in die ";
	L.TSM_WARNING_2 = " Voreinstellung zurücksetzt.\n\nWir empfehlen das Sie ein anderes Profil für diese Funktion benutzen.\n\nMöchten Sie trotzdem fortfahren?";
	L.PRESET_UPDATE_SUCCESS = "Die Voreinstellung wurde erfolgreich aktualisiert.";
	L.SHOPPING_OP_MISSING_1 = "Der Voreinstellung fehlt die Zuweisung einer 'Shopping' Funktion.";
	L.SHOPPING_OP_MISSING_2 = "Tippen Sie '/tsm operations' um eine zu erstellen or zuweisen.";
	L.AUCTIONATOR_GROUPS = "Suchen durch Gruppen-basis sind nur durch Auctionator möglich.";
	L.TSM4_ERROR = "TSM4 is noch nicht kompatibel mit ATT. Wenn Sie wissen wie mann Presets kreiert so wie wir es mit TSM3 gemacht haben, bitte nehmem Sie Kontakt auf mit Crieve durch Discord.";
	L.QUEST_MAY_BE_REMOVED = "Information konnte nicht beschaffen werden. Die Quest wurde möglicherweise von dem Spiel entfernt.";

	L.DURING_WQ_ONLY = "Dies kann nur abgeschlossen werden, solange die Weltquest aktiv ist.";
	L.COMPLETED_DAILY = "Dies kann täglich abgeschlossen werden.";
	L.COMPLETED_WEEKLY = "Dies kann wöchentlich abgeschlossen werden.";
	L.COMPLETED_MONTHLY = "Dies kann monatlich abgeschlossen werden.";
	L.COMPLETED_YEARLY = "Dies kann jährlich abgeschlossen werden.";
	L.COMPLETED_MULTIPLE = "Dies kann mehrfach abgeschlossen werden.";
	L.LOOT_TABLE_CHANCE = "Beute Chance";
	L.BEST_BONUS_ROLL_CHANCE = "Beste Zusätzliche Beute Chance";
	L.BEST_PERSONAL_LOOT_CHANCE = "Beste Persönliche Beute Chance";
	L.PREREQUISITE_QUESTS = "Es gibt Quests, deren Abschluss Voraussetzung ist um dies zu erhalten:";
	L.BREADCRUMBS_WARNING = "Es gibt Brotkrümelquests, die nicht mehr abschließbar sind, nachdem dies abgeschlossen wurde:";
	L.THIS_IS_BREADCRUMB = "Dies ist eine Brotkrümelquest.";
	L.BREADCRUMB_PARTYSYNC = "Dies ist nicht abschließbar ohne Partysyncronisation, wenn etwas aus folgendem abgeschlossen ist:";
	L.BREADCRUMB_PARTYSYNC_2 = "Dies kann, mit einem Charakter der noch keine dieser Quests abgeschlossen hat, in der Gruppensynchronisation erhalten werden.:";
	L.BREADCRUMB_PARTYSYNC_3 = "Dies kann, mit einem Charakter der diese Quest annehmen kann, in der Gruppensynchronisation erhalten werden.";
	L.BREADCRUMB_PARTYSYNC_4 = "Bitte teilt euer Ergebnis in unserem Discord, wenn Ihr versucht diese Quest in der Gruppensynchronisation zu erhalten!";
	L.DISABLE_PARTYSYNC = "Dies ist vermutlich nicht abschließbar, selbst mit aktiver Gruppensynchronisation. Sollte es dennoch abschließbar sein, melde Dich im Discord!";
	L.UNAVAILABLE_WARNING_FORMAT = "Wird unerreichbar wenn %d der folgenden erfüllt sind:";
	L.NO_ENTRIES = "Es wurden keine Einträge gefunden, die Euren Sucheinstellungen entsprechen.";
	L.NO_ENTRIES_DESC = "Wenn Sie glauben, dass dies ein Fehler war, versuchen Sie den Debug Modus zu aktivieren. Möglicherweise schränkt eine Filter Einstellung die Sichtbarkeit der Gruppe ein.";
	L.DEBUG_LOGIN = "Verliehen für das Einloggen.\n\nGute Arbeit! DU HAST ES GESCHAFFT!\n\nNur im Debug Modus sichtbar.";
	L.UNSORTED = "Unsortiert";
	L.UNSORTED_DESC = "Diese Sache wurde noch nicht in ATT " .. app.Version .. " implementiert.";
	L.UNSORTED_DESC_2 = "Gegenstände hier existieren im Spiel und können für Spieler verfügbar sein, wurden aber noch nicht an den richtigen Ort in ATT gebracht.";
	L.NEVER_IMPLEMENTED = "Nie implementiert";
	L.NEVER_IMPLEMENTED_DESC = "Gegenstände hier existieren technisch im Spiel, sind für Spieler aber nie erhältlich gewesen.";
	L.HIDDEN_QUEST_TRIGGERS = "Versteckte Quest Auslöser";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "Dies sind Quests, deren Auslösung anhand bestimmter Kriterien manuell festgelegt wurde und die vor allem Intern vom Spiel zu Nachverfolgungszwecken verwendet werden.";
	L.OPEN_AUTOMATICALLY = "Automatisch öffnen";
	L.MINI_LIST = "Mini Liste";
	L.UPDATE_LOCATION_NOW = "Standort jetzt aktualisieren";
	L.UPDATE_LOCATION_NOW_DESC = "Wenn Sie die Daten zur aktuellen Zone zwangsweise Aktualisieren möchten, klicken Sie auf diese Schaltfläche!";
	L.PERSONAL_LOOT_DESC = "Jeder Spieler hat eine unabhängige Chance, einen für seine Klasse nützlichen Gegenstand zu erbeuten...\n\n... Oder nutzlose Dinge, wie Ringe.\n\nKlicke zweimal, um automatisch eine Gruppe zu erstellen, wenn Ihr alleine seid.";
	L.RAID_ASSISTANT = "Raid Assistent";
	L.RAID_ASSISTANT_DESC = "Betreten Sie die Instanz nie wieder mit den falschen Einstellungen! Überprüfen Sie, ob alles so ist, wie es sein sollte!";
	L.LOOT_SPEC_UNKNOWN = "Beute Spezialisierung Unbekannt";
	L.LOOT_SPEC = "Beute Spezialisierung";
	L.LOOT_SPEC_DESC = "Im Persönlicher Beute Modus bestimmt diese Einstellung welche Gegenstände für eure Klasse in Instanzen, Schlachtzügen und anderen Kämpfen verfügbar sind.\n\nKlicke auf diese Zeile, um es jetzt zu ändern!";
	L.DUNGEON_DIFF = "Instanz Schwierigkeit";
	L.DUNGEON_DIFF_DESC = "Der Schwierigkeitsgrad für Instanzen.\n\nKlicke diese Zeile, um sie jetzt zu ändern!";
	L.RAID_DIFF = "Schlachtzug Schwierigkeit";
	L.RAID_DIFF_DESC = "Der Schwierigkeitsgrad für Schlachtzüge.\n\nKlicke diese Zeile, um sie jetzt zu ändern!";
	L.LEGACY_RAID_DIFF = "Legacy Schlachtzugs Schwierigkeitsgrad";
	L.LEGACY_RAID_DIFF_DESC = "Der Schwierigkeitsgrad für Legacy Schlachtzüge.\n\nKlicke diese Zeile, um sie jetzt zu ändern!";
	L.TELEPORT_TO_FROM_DUNGEON = "Teleportiert zu/von Instanz";
	L.TELEPORT_TO_FROM_DUNGEON_DESC = "Klicke hier um Euch von/zu Eurer derzeitigen Instanz zu teleportieren.\n\nIhr könnt die Mists of Pandaria Szenarien nutzen, um Euch auf diese Weise schnell aus Eurer aktuellen Instanz zu teleportieren.";
	L.RESET_INSTANCES = "Instanzen zurücksetzen";
	L.RESET_INSTANCES_DESC = "Hier klicken um Eure Instanzen zurückzusetzen.\n\n"..ALT_KEY_TEXT.." Klick um zu aktivieren, dass eure Instanzen automatisch beim Verlassen zurückgesetzt werden.\n\nWARNUNG: SEI VORSICHTIG DAMIT!";
	L.DELIST_GROUP = "Gruppe abmelden";
	L.DELIST_GROUP_DESC = "Klicke hier um die Gruppe abzumelden. Wenn Ihr alleine seid, wird die Gruppe sanft aufgelöst, ohne Euch aus der Instanz zu teleportieren, in der Ihr Euch befindet";
	L.LEAVE_GROUP = "Gruppe verlassen";
	L.LEAVE_GROUP_DESC = "Klicke hier um die Gruppe zu verlassen. In den meisten Fällen wird Euch dies nach 60 Sekunden zum nächsten Friedhof teleportieren.\n\nNOTIZ: Funktioniert nur, wenn Ihr Euch in einer Gruppe befindet, oder das Spiel denkt, dass Ihr in einer Gruppe seid.";
	L.LOOT_SPEC_DESC_2 = "Im Persönlicher Beute Modus bestimmt diese Einstellung welche Gegenstände für eure Klasse in Instanzen, Schlachtzügen und anderen Kämpfen verfügbar sind.\n\nKlicke auf diese Zeile, um zum Raid Assistenten zurückzukehren.";
	L.CURRENT_SPEC = "Derzeitige Spezialisierung";
	L.CURRENT_SPEC_DESC = "Wenn Ihr Eure Talent Spezialisierung wechselt, ändert sich automatisch auch Eure Beutespezialisierung um.";
	L.DUNGEON_DIFF_DESC_2 = "Mit dieser Einstellung könnt Ihr den Schwierigkeitsgrad von Instanzen ändern.\n\nKlicke auf diese Zeile, um zum Raid Assistenten zurückzukehren.";
	L.CLICK_TO_CHANGE = "Zum ändern jetzt anklicken. (falls verfügbar)";
	L.RAID_DIFF_DESC_2 = "Mit dieser Einstellung könnt Ihr den Schwierigkeitsgrad von Schlachtzügen ändern.\n\nKlicke auf diese Zeile, um zum Raid Assistenten zurückzukehren.";
	L.LEGACY_RAID_DIFF_DESC_2 = "Mit dieser Einstellung könnt Ihr den Schwierigkeitsgrad von Legacy Schlachtzügen ändern. (Vor-Schlacht um Orgrimmar)\n\nKlicke auf diese Zeile, um zum Raid Assistenten zurückzukehren.";
	L.REROLL = "Erneut würfeln";
	L.REROLL_2 = "Erneut Würfeln: ";
	L.REROLL_DESC = "Klicke auf diese Schaltfläche, um mit dem aktiven Filter erneut zu würfeln.";
	L.APPLY_SEARCH_FILTER = "Einen Suchfilter anwenden";
	L.APPLY_SEARCH_FILTER_DESC = "Bitte wähle einen Suchfilter aus.";
	L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "Klick diesen Knopf, um alles zu suchen... ALLES.";
	L.ACHIEVEMENT_DESC = "Klick diesen Knopf um einen zufälligen Erfolg auszuwählen, der Euch noch fehlt.";
	L.ITEM_DESC = "Klick diesen Knopf um einen zufälligen Gegenstand auszuwählen, der Euch noch fehlt.";
	L.INSTANCE_DESC = "Klick diesen Knopf um eine zufällige Instanz auszuwählen, die Euch noch fehlt.";
	L.DUNGEON_DESC = "Klick diesen Knopf um eine zufällige Instanz auszuwählen, die Euch noch fehlt.";
	L.RAID_DESC = "Klick diesen Knopf um einen zufälligen Schlachtzug auszuwählen, der Euch noch fehlt.";
	L.MOUNT_DESC = "Klick diesen Knopf um ein zufälliges Reittier auszuwählen, das Euch noch fehlt.";
	L.PET_DESC = "Klick diesen Knopf um ein zufälliges Haustier auszuwählen, das Euch noch fehlt.";
	L.QUEST_DESC = "Klick diesen Knopf um eine zufällige Quest auszuwählen, die Euch noch fehlt.";
	L.TOY_DESC = "Klick diesen Knopf um ein zufälliges Spielzeug auszuwählen, das Euch noch fehlt.";
	L.ZONE_DESC = "Klick diesen Knopf um eine zufällige Zone auszuwählen, die Euch noch fehlt.";
	L.GO_GO_RANDOM = "Zufall - Los holt's Euch!";
	L.GO_GO_RANDOM_DESC = "In diesem Fenster könnt Ihr einen fehlenden, zufällig ausgwählten Ort oder Gegenstand zum Sammeln erwürfeln. Los Hol's dir!";
	L.CHANGE_SEARCH_FILTER = "Suchfilter ändern";
	L.CHANGE_SEARCH_FILTER_DESC = "Klicke hier um Euren Suchfilter zu ändern.";
	L.NOTHING_TO_SELECT_FROM = "Es wurde nichts für die zufällige Auswahl gefunden. Wenn 'Ad-Hoc Updates' in den Einstellungen aktiviert ist, muss die Hauptliste zuerst aktualisiert werden, (/att) bevor Ihr dieses Fenster benutzt.";
	L.NO_SEARCH_METHOD = "Keine Suchmethode festgelegt.";
	L.PROFESSION_LIST = "Berufsliste";
	L.PROFESSION_LIST_DESC = "Öffnet Eure Berufe, um sie zu speichern.";
	L.CACHED_RECIPES_1 = "Gespeichert ";
	L.CACHED_RECIPES_2 = " bekannte Rezepte!";
	L.WORLD_QUESTS_DESC = "Dies sind Weltquests und andere zeitlich begrenzte Dinge, die derzeit irgendwo verfügbar sind. Los Hol's dir!";
	L.QUESTS_DESC = "Zeigt alle möglichen Quest ID's im Spiel, in aufsteigender numerischer Reihenfolge.";
	L.UPDATE_WORLD_QUESTS = "Weltquests jetzt aktualisieren";
	L.CLEAR_WORLD_QUESTS = "Weltquests auflösen";
	L.CLEAR_WORLD_QUESTS_DESC = "Klicke hier um die aktuellen Informationen aus dem Weltquest Fenster zu löschen.";
	L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "Alle Gegenstände, mit denen Ihr Euch fehlende Erfolge erreichen könnt, werden hier angezeigt.";
	L.ALL_THE_APPEARANCES_DESC = "Alle Vorlagen die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_MOUNTS_DESC = "Alle Reittiere die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_BATTLEPETS_DESC = "Alle Haustiere die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_QUESTS_DESC = "Alle Quests, die von Objekten oder Gegenständen angenommen werden können, die über das Auktionshaus handelbar sind, werden hier angezeigt.";
	L.ALL_THE_RECIPES_DESC = "Alle Rezepte die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_REAGENTS_DESC = "Alle Materialien, die zum Herstellen eines Gegenstandes mit einem Beruf auf Eurem Account verwendet werden können.";
	L.AH_SCAN_SUCCESSFUL_1 = ": Erfolgreich gescanned ";
	L.AH_SCAN_SUCCESSFUL_2 = " Gegenstände.";
	L.REAGENT_CACHE_OUT_OF_DATE = "Die gespeicherten Informationen über Materialien sind veraltet und werden beim Öffnen der Berufe neu aktualisiert und gespeichert!";
	L.QUEST_LOOP = "Wahrscheinlich gerade aus einer unendlichen Quest-Quellensuchschleife ausgebrochen.";
	L.QUEST_OBJECTIVE_INVALID = "Ungültiges Questziel";
	L.CURRENCY_NEEDED_TO_BUY = "Geschätzter Betrag, der benötigt wird, um die verbleibenden Dinge zu erhalten";
	L.FORCE_REFRESH_REQUIRED = "Dies benötigt möglicherweise eine erzwungene Aktualisierung ("..SHIFT_KEY_TEXT.." click) um ordnungsgemäß als gesammelt zu zählen.";
	L.TRADING_POST = "Handelsposten";

		L.ITEM_FILTER_TEXT = "Gegenstandsfilter";
		L.ITEM_FILTER_DESCRIPTION = "Ihr könnt die ATT Datenbank nach Gegenstandsfiltern durchsuchen.";
		L.ITEM_FILTER_BUTTON_TEXT = "Setze Gegenstandsfilter";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "Klicke auf diese Schaltfläche, um zu ändern nach welchem Gegenstandsfilter in der ATT Datenbank gesucht werden soll.";
		L.ITEM_FILTER_POPUP_TEXT = "Nach welchem Gegenstandsfilter möchtet Ihr suchen?";

	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." Klick um das Fenster zu fixieren";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." Klick um das Fenster freizugeben";
	L.QUEST_ROW_INSTRUCTIONS = "Rechtsklicken um Questreihen Anforderungen zu sehen.";
	L.QUEST_ONCE_PER_ACCOUNT = "Einmalig pro Account Quest";

	L.AFTER_REFRESH = "Nach Aktualisierung";

			L.MODE = "Modus";
			L.TITLE_COMPLETIONIST = "Vervollständiger ";
			L.TITLE_UNIQUE_APPEARANCE = "Einzigartig ";
			L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account.."Account|R ";
			L.TITLE_MAIN_ONLY = " (Nur Hauptcharakter)";
			L.TITLE_NONE_THINGS = "Keins der Dinge ";
			L.TITLE_ONLY = " Nur ";
			L.TITLE_INSANE = app.ccColors.Insane.."Wahnsinn|R ";
			L.TITLE_SOME_THINGS = "Einige der Dinge ";
			L.TITLE_LEVEL = "Stufe ";
			L.TITLE_SOLO = "Alleine ";
			L._BETA_LABEL = " |cff4AA7FF[Beta]|R";



		L.AUTO_BOUNTY_CHECKBOX = "Preisgeld Liste automatisch öffnen";
		L.AUTO_MAIN_LIST_CHECKBOX = "Hauptliste automatisch öffnen";
		L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um die Hauptliste automatisch beim Login zu öffnen.\n\nIhr könnt diese Einstellung auch auf der Tastatur belegen:\n\nTastaturbelegung -> Addons -> ALL THE THINGS -> Hauptliste ein/aus\n\nShortcut Command: /att";
		L.AUTO_MINI_LIST_CHECKBOX = "Mini Liste automatisch öffnen";
		L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um alles zu sehen was Ihr in eurer derzeitigen Zone sammeln könnt. Die Liste ändert sich automatisch, wenn Ihr die Zone wechselt. Einige Leute mögen diese Funktion nicht, aber wenn Ihr alleine sammelt, ist sie äußerst nützlich.\n\nIhr könnt diese Einstellung auch auf der Tastatur belegen.\n\nTastaturbelegung -> Addons -> ALL THE THINGS -> Mini Liste ein/aus\n\nShortcut Command: /att mini";
		L.AUTO_RAID_ASSISTANT_CHECKBOX = "Raid Assistent automatisch öffnen";
		L.AUTO_WQ_LIST_CHECKBOX = "Weltquests Liste automatisch öffnen";

		L.ACCOUNT_MANAGEMENT = "Accountverwaltung";
		L.ACCOUNT_MANAGEMENT_TOOLTIP = "Diese Liste zeigt alle Funktionen, die mit der Synchronisierung von Accounts zusammenhängen.";
		L.ADD_LINKED_CHARACTER_ACCOUNT = "Verknüpften Charakter / Account hinzufügen";
		L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "Klick hier, um einen Charakter oder Account mit Eurem Account zu verknüpfen.";
		L.ADD_LINKED_POPUP = "Bitte geben Sie den Namen des Charakters oder Bnet Kontos ein, zu dem Sie eine Verknüpfung erstellen möchten.";
		L.SYNC_CHARACTERS_TOOLTIP = "Dies zeigt alle Charaktere auf diesem Account.";
		L.NO_CHARACTERS_FOUND = "Keine Charaktere gefunden.";
		L.LINKED_ACCOUNTS = "Verknüpfte Accounts";
		L.LINKED_ACCOUNTS_TOOLTIP = "Hier werden alle Eure verknüpften Accounts angezeigt, die Ihr definiert habt.";
		L.NO_LINKED_ACCOUNTS = "Keine verknüpften Accounts gefunden.";
		L.DELETE_LINKED_CHARACTER = "Rechtsklick zum Löschen dieses verknüpften Charakters";
		L.DELETE_LINKED_ACCOUNT = "Rechtsklick zum Löschen dieses verknüpften Accounts";
		L.DELETE_CHARACTER = "Rechtsklick um diesen Charakter zu löschen";
		L.CONFIRM_DELETE = "\n \nBist Du sicher, dass Du dies löschen möchtest?";

		L.TOGGLE_ACCOUNT_MODE = "Account Modus ein/aus";
		L.TOGGLE_COMPLETIONIST_MODE = "Completionist Modus ein/aus";
		L.TOGGLE_DEBUG_MODE = "Debug Modus ein/aus";
		L.TOGGLE_FACTION_MODE = "Fraktions Modus ein/aus";
		L.TOGGLE_COMPLETEDTHINGS = "Erledigte Dinge ein/aus (Beides)";
		L.TOGGLE_COMPLETEDGROUPS = "Abgeschlossene Gruppen ein/aus";
		L.TOGGLE_COLLECTEDTHINGS = "Gesammelte Dinge ein/aus";
		L.TOGGLE_BOEITEMS = "BoE/BoA Gegenstände ein/aus";
		L.TOGGLE_SOURCETEXT = "Quellen ein/aus";
		L.TOGGLE_MAINLIST = "ATT Hauptliste ein/aus";
		L.TOGGLE_MINILIST = "ATT Mini Liste ein/aus";
		L.TOGGLE_PROFESSION_LIST = "ATT Berufs Liste ein/aus";
		L.TOGGLE_WORLD_QUESTS_LIST = "ATT Weltquests ein/aus";
		L.TOGGLE_RAID_ASSISTANT = "ATT Raid Assistent ein/aus";
		L.TOGGLE_RANDOM = "ATT Zufall ein/aus";
		L.REROLL_RANDOM = "Zufallsauswahl erneut würfeln";

		L.SECRETS_HEADER = "Geheimnisse";
		L.SOURCE_ID_MISSING = "Bitte meldet diesen Gegenstand und wo er erhalten wurde an das ATT Discord in #retail-errors!";

		L.NOT_TRADEABLE = "Nicht Handelbar";
		L.TRADEABLE = "Handelbar";

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

local a = L.SETTINGS_MENU;
for key,value in pairs({

		DISCORD_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link für das ATT Discord zu kopieren.\n\nIhr könnt Eure Fortschritte/Frustrationen mit anderen Sammlern teilen!";
		PATREON_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link für das ATT Patreon zu kopieren.\n\nHier könnt Ihr sehen, wie Ihr das Addon Finanziell unterstützen könnt!";
		TWITCH_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link zu meinem Twitch Kanal zu kopieren.\n\nWährend ich Streame, könnt Ihr Fragen stellen. Ich werde mein bestes versuchen sie zu beantworten!";

		DEBUG_MODE = app.ccColors.Red.."Debug Modus|r (Zeig alles)";
		ACCOUNT_MODE = app.ccColors.Account.."Account Modus";
		ACCOUNT_MODE_TOOLTIP = "Aktiviere diese Einstellung, um alle Dinge für alle Eure Charaktere, unabhängig von Klassen und Rassen, zu verfolgen.\n\nUnerreichbare Filter gelten weiterhin.";
		FACTION_MODE = "Nur derzeitige Fraktion";
		COMPLETIONIST_MODE = "+Quellen";
		MAIN_ONLY = "Nur Hauptcharakter";

		SHOW_INCOMPLETE_THINGS_CHECKBOX = "Zeig alle verfolgbaren Dinge";
		SHOW_COLLECTED_THINGS_CHECKBOX = "Zeig gesammelte Dinge";

		ACCOUNT_THINGS_LABEL = "Accountweite Dinge";
		GENERAL_THINGS_LABEL = "Allgemeine Dinge";
		STRANGER_THINGS_LABEL = "Fremde Dinge";

		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um Erfolge zu verfolgen.";
		APPEARANCES_CHECKBOX = "Vorlagen";
		BATTLE_PETS_CHECKBOX = "Kampfhaustiere";
		FLIGHT_PATHS_CHECKBOX = "Flugpunkte";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+Aufwertungen";
		RECIPES_CHECKBOX = "Rezepte";
		REPUTATIONS_CHECKBOX = "Ruffraktionen";
		TITLES_CHECKBOX = "Titel";

		EXPANSION_THINGS_LABEL = "Erweiterungs Dinge";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Herzensessenzen";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Drachenwächtermanuskript";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Anhänger & Gefährten";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Runenschnitzmacht";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Medien";





		UNOBTAINABLES_PAGE = "Unerreichbares";

		DISPLAY_IN_COMBAT_CHECKBOX = "Im Kampf";
		SPEC_CHECKBOX = "Spezialisierungen";
		FOR_CREATURES_CHECKBOX = "Für Kreaturen";
		FOR_THINGS_CHECKBOX = "Für Dinge";
		FOR_UNSORTED_CHECKBOX = "Für Unsortiert";

		SHOW_MODELS_CHECKBOX = "Modell Vorschau";
		SORT_BY_PROGRESS_CHECKBOX = "Nach Fortschritt sortieren";
		DYNAMIC_CATEGORY_SIMPLE = "Simpel";




		CELEBRATIONS_LABEL = "Feierlichkeiten & Sound Effekte";
		CELEBRATE_COLLECTED_CHECKBOX = "Gesammelte Dinge lösen eine Feierlichkeit aus";
		WARN_REMOVED_CHECKBOX = "Entfernte Dinge lösen eine Warnung aus";
		SCREENSHOT_COLLECTED_CHECKBOX = "Gesammelte Dinge lösen einen Screenshot aus";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um bei gesammelten Dingen automatisch einen Screenshot zu erstellen.";


		SYNC_PAGE = "Sync";
		ACCOUNT_SYNCHRONIZATION = "Account Synchronisierung";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatische Synchronisierung vom Account";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Aktiviere diese Option, wenn ATT automatisch versuchen soll die Daten zwischen verknüpften Accounts zu synchronisieren, falls Ihr einloggt oder das Interface neu geladen wird.";


		PROFILES_PAGE = "Profile";
		PROFILE = "Profil";
		PROFILE_INITIALIZE = "Initialisiere Profil";
		PROFILE_INITIALIZE_CONFIRM = "Möchten Sie die Profilunterstützung wirklich aktivieren?";
		PROFILE_NEW_TOOLTIP = "Erstelle ein leeres Profil, das vom aktuellen Charakter verwendet werden soll";
		PROFILE_COPY_TOOLTIP = "Kopieren des ausgewählten Profils in das derzeitig aktive Profil";
		PROFILE_DELETE_TOOLTIP = "Lösche das ausgewählte Profil";
		PROFILE_SWITCH_TOOLTIP = "Setzt das ausgewählte Profil als das derzeitig aktive Profil\n\nEin Profil kann auch mit "..SHIFT_KEY_TEXT.."-geklickt werden, um dazu zu wechseln";
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
