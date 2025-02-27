-- Localization for German Clients.
if GetLocale() ~= "deDE" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	--TODO: L.DESCRIPTION = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";
	L.THINGS_UNTIL = " DINGE BIS ";
	L.THING_UNTIL = " DING BIS ";
	--TODO: L.YOU_DID_IT = "YOU DID IT!";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "Fortschritt";
	L.TRACKING_PROGRESS = "Fortschrittsverfolgung";
	L.COLLECTED_STRING = " Gesammelt";
	L.PROVIDERS = "Anbieter";
	L.COLLECTION_PROGRESS = "Fortschritt der Sammlung";
	L.CONTAINS = "Enthält:";
	L.FACTIONS = "Fraktionen";
	L.COORDINATES = "Koordinaten";
	L.AND_MORE = "Und %s mehr...";
	L.AND_OTHER_SOURCES = "Und %s andere Quellen...";
	--TODO: L.PLAYER_COORDINATES = "Player Coordinates";
	--TODO: L.NO_COORDINATES_FORMAT = "No known coordinates for %s";
	--TODO: L.TOM_TOM_NOT_FOUND = "You must have TomTom installed to plot coordinates.";
	L.FLIGHT_PATHS = "Flugpunkte";
	L.KNOWN_BY = "Bekannt durch %s";
	L.REQUIRES = "Benötigt";
	L.RACE_LOCKED = "Rasse Gesperrt";
	L.PLEASE_REPORT_MESSAGE = "Bitte melden Sie den Fehler an das ATT Discord in #retail-errors! Danke!";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C um mehrere Linien zu kopieren.)";
	L.NOT_AVAILABLE_IN_PL = "Nicht vorhanden im Persönlicher Beute Modus.";
	--TODO: L.MARKS_OF_HONOR_DESC = "Marks of Honor must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the item)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	--TODO: L.MOP_REMIX_BRONZE_DESC = "Bronze must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the currency)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	L.ITEM_GIVES_REP = "Bietet Ruf mit '";
	L.COST = "Kosten";
	L.COST_DESC = "Dies zeigt eine visuelle Aufschlüsselung dessen, was benötigt wird um dieses Ding zu erhalten oder zu kaufen";
	--TODO: L.COST_TOTAL = "Total Cost";
	--TODO: L.COST_TOTAL_DESC = "This contains the visual breakdown of what is required to obtain or purchase all Things within the top-level group.\n\nNote: Does not currently include Reagents/Recipes requirements!";
	L.SOURCES = "Quelle(n)";
	L.SOURCES_DESC = "Zeigt die Quelle dieses Dings an.\n\nInsbesondere, ein bestimmter Händler/NPC, Quest, Boss, etc.";
	L.WRONG_FACTION = "Möglicherweise müsst Ihr auf der anderen Fraktion sein, um dies anschauen zu können.";
	L.ARTIFACT_INTRO_REWARD = "Belohnung für das Abschließen der Einführungsquest dieses Artifakts.";
	L.VISIT_FLIGHT_MASTER = "Besucht den Greifenmeister für die Entdeckung.";
	L.FLIGHT_PATHS_DESC = "Flugpunkte werden entdeckt, indem Ihr mit dem Flugmeister sprecht.\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "Anhänger können Accountweit gesammelt werden, wenn Ihr diese Einstellung aktiviert.\n\nIhr müsst das Addon manuell mit "..SHIFT_KEY_TEXT.." Linksklick auf die Kopfzeile aktualisieren, damit dies erkannt wird.";
	L.HEIRLOOM_TEXT = "Erbstück Entsperrt";
	L.HEIRLOOM_TEXT_DESC = "Dies zeigt an, ob Ihr bereits ein Erbstück gekauft oder erhalten habt.";
	L.FAILED_ITEM_INFO = "Abfragen der Gegenstands Informationen fehlgeschlagen. Der Gegenstand ist entweder fehlerhaft, oder wurde auf eurem Server noch nicht gesehen.";
	L.HEIRLOOMS_UPGRADES_DESC = "Dies zeigt an, ob Ihr ein Erbstück bereits auf eine bestimmte Stufe aufgewertet habt.\n\nR.I.P. Gold.\n - Crieve";
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
	L.TITLES_DESC = "Titel werden zwar auf dem ganzen Account verfolgt, aber Euer Charakter muss sich für bestimmte Titel selbst qualifizieren, um diese nutzen zu können.";
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

	L.FACTION_SPECIFIC_REP = "Nicht alle Fraktionen können mit einem Charakter angesehen werden. z.B. der Kriegshymnenklan kann nicht mit einem Allianz Charakter angesehen werden, und die Silberschwingen können nicht mit einem Horde Charakter angesehen werden.";
	L.MINUMUM_STANDING_WITH_FACTION = "Erfordert mindestens einen Ruf von %s bei %s.";
	L.MAXIMUM_STANDING_WITH_FACTION = "Erfordert einen niedrigeren Ruf als %s bei %s.";
	L.MIN_MAX_STANDING_WITH_FACTION = "Erfordert einen Ruf zwischen %s und %s bei %s.";

	--TODO: L.ADDED_WITH_PATCH = "Added With Patch";
	--TODO: L.REMOVED_WITH_PATCH = "Removed With Patch";
	--TODO: L.ALIVE = "Alive";
	--TODO: L.SPAWNED = "Spawned";
	--TODO: L.OBJECT_TYPE = "Object Type";
	--TODO: L.OBJECTIVES = "Objectives";
	--TODO: L.QUEST_GIVERS = "Quest Givers";
	L.DURING_WQ_ONLY = "Dies kann nur abgeschlossen werden, solange die Weltquest aktiv ist.";
	L.COMPLETED_DAILY = "Dies kann täglich abgeschlossen werden.";
	L.COMPLETED_WEEKLY = "Dies kann wöchentlich abgeschlossen werden.";
	L.COMPLETED_MONTHLY = "Dies kann monatlich abgeschlossen werden.";
	L.COMPLETED_YEARLY = "Dies kann jährlich abgeschlossen werden.";
	L.COMPLETED_MULTIPLE = "Dies kann mehrfach abgeschlossen werden.";
	L.CRITERIA_FOR = "Kriterium für";
	L.CURRENCY_FOR = "Währung für";
	L.LOOT_TABLE_CHANCE = "Beute Chance";
	L.BEST_BONUS_ROLL_CHANCE = "Beste Zusätzliche Beute Chance";
	L.BEST_PERSONAL_LOOT_CHANCE = "Beste Persönliche Beute Chance";
	L.PREREQUISITE_QUESTS = "Es gibt Quests, deren Abschluss Voraussetzung ist um dies zu erhalten:";
	L.BREADCRUMBS = "Brotkrümelquests";	--TODO: article?
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
	L.NEVER_IMPLEMENTED = "Nie implementiert";
	L.NEVER_IMPLEMENTED_DESC = "Gegenstände hier existieren technisch im Spiel, sind für Spieler aber nie erhältlich gewesen.";
	L.HIDDEN_QUEST_TRIGGERS = "Versteckte Quest Auslöser";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "Dies sind Quests, deren Auslösung anhand bestimmter Kriterien manuell festgelegt wurde und die vor allem Intern vom Spiel zu Nachverfolgungszwecken verwendet werden.";
	L.UNSORTED_DESC_2 = "Gegenstände hier existieren im Spiel und können für Spieler verfügbar sein, wurden aber noch nicht an den richtigen Ort in ATT gebracht.";
	L.OPEN_AUTOMATICALLY = "Automatisch öffnen";
	--TODO: L.OPEN_AUTOMATICALLY_DESC = "If you aren't a Blizzard Developer, it might be a good idea to uncheck this. This was done to force Blizzard to fix and/or acknowledge these bugs.";
	L.MINI_LIST = "Mini Liste";
	--TODO: L.MINI_LIST_DESC = "This list contains the relevant information for your current zone, which cannot be found in the ATT database";
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
	L.REROLL_2 = "Erneut Würfeln: ";
	L.NOTHING_TO_SELECT_FROM = "Es wurde nichts für die zufällige Auswahl gefunden. Wenn 'Ad-Hoc Updates' in den Einstellungen aktiviert ist, muss die Hauptliste zuerst aktualisiert werden, (/att) bevor Ihr dieses Fenster benutzt.";
	L.NO_SEARCH_METHOD = "Keine Suchmethode festgelegt.";
	L.PROFESSION_LIST = "Berufsliste";
	L.PROFESSION_LIST_DESC = "Öffnet Eure Berufe, um sie zu speichern.";
	L.CACHED_RECIPES_1 = "Gespeichert ";
	L.CACHED_RECIPES_2 = " bekannte Rezepte!";
	L.WORLD_QUESTS_DESC = "Dies sind Weltquests und andere zeitlich begrenzte Dinge, die derzeit irgendwo verfügbar sind. Los Hol's dir!";
	L.QUESTS_DESC = "Zeigt alle möglichen Quest ID's im Spiel, in aufsteigender numerischer Reihenfolge.";
	L.UPDATE_WORLD_QUESTS = "Weltquests jetzt aktualisieren";
	--TODO: L.UPDATE_WORLD_QUESTS_DESC = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	L.CLEAR_WORLD_QUESTS = "Weltquests auflösen";
	L.CLEAR_WORLD_QUESTS_DESC = "Klicke hier um die aktuellen Informationen aus dem Weltquest Fenster zu löschen.";
	L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "Alle Gegenstände, mit denen Ihr Euch fehlende Erfolge erreichen könnt, werden hier angezeigt.";
	L.ALL_THE_APPEARANCES_DESC = "Alle Vorlagen die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_MOUNTS_DESC = "Alle Reittiere die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_BATTLEPETS_DESC = "Alle Haustiere die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	L.ALL_THE_QUESTS_DESC = "Alle Quests, die von Objekten oder Gegenständen angenommen werden können, die über das Auktionshaus handelbar sind, werden hier angezeigt.";
	L.ALL_THE_RECIPES_DESC = "Alle Rezepte die Ihr noch nicht gesammelt habt, werden hier angezeigt.";
	--TODO: L.ALL_THE_ILLUSIONS_DESC = "Illusions, toys, and other items that can be used to earn collectible items are displayed here.";
	L.ALL_THE_REAGENTS_DESC = "Alle Materialien, die zum Herstellen eines Gegenstandes mit einem Beruf auf Eurem Account verwendet werden können.";
	L.AH_SCAN_SUCCESSFUL_1 = ": Erfolgreich gescanned ";
	L.AH_SCAN_SUCCESSFUL_2 = " Gegenstände.";
	L.REAGENT_CACHE_OUT_OF_DATE = "Die gespeicherten Informationen über Materialien sind veraltet und werden beim Öffnen der Berufe neu aktualisiert und gespeichert!";
	--TODO: L.ARTIFACT_CACHE_OUT_OF_DATE = "Artifact Cache is out-of-date/inaccurate and will be re-cached when logging onto each character!";
	L.QUEST_LOOP = "Wahrscheinlich gerade aus einer unendlichen Quest-Quellensuchschleife ausgebrochen.";
	L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "Quest '%s' %s verhindert die Sammlung von Brotkrumenquests '%s' %s";
	L.QUEST_OBJECTIVE_INVALID = "Ungültiges Questziel";
	L.REFRESHING_COLLECTION = "Aktualisiere Sammlung...";
	L.DONE_REFRESHING = "Aktualisierung der Sammlung erfolgreich.";
	--TODO: L.ADHOC_UNIQUE_COLLECTED_INFO = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";
	--TODO: L.AVAILABILITY = "Availability";
	L.REQUIRES_PVP = "|CFF00FFDEDies erfordert Spieler gegen Spieler Aktivität oder eine Währung, die damit verbunden ist.|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDEDies erfodert Haustierkampf.|r";
	L.REPORT_INACCURATE_QUEST = "Falsche Quest Informationen! (Klicken um zu melden)";
	--TODO: L.NESTED_QUEST_REQUIREMENTS = "Nested Quest Requirements";
	L.MAIN_LIST_REQUIRES_REFRESH = "[Öffne die Hauptliste um den Fortschritt zu aktualisieren]";
	--TODO: L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207This group and its content do not contribute to the progress of this window since it is Sourced in another Location!|r";
	L.CURRENCY_NEEDED_TO_BUY = "Geschätzter Betrag, der benötigt wird, um die verbleibenden Dinge zu erhalten";
	L.LOCK_CRITERIA_LEVEL_LABEL = "Spieler Stufe";
	L.LOCK_CRITERIA_QUEST_LABEL = "Quest Vollendet";
	L.LOCK_CRITERIA_SPELL_LABEL = "Zauber/Reittier/Rezept Erlernt";
	L.LOCK_CRITERIA_FACTION_LABEL = "Fraktion Ruf";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s mit %s (Current: %s)";
	L.FORCE_REFRESH_REQUIRED = "Dies benötigt möglicherweise eine erzwungene Aktualisierung ("..SHIFT_KEY_TEXT.." click) um ordnungsgemäß als gesammelt zu zählen.";
	--TODO: L.FUTURE_UNOBTAINABLE = "Future Unobtainable!";
	--TODO: L.FUTURE_UNOBTAINABLE_TOOLTIP = "This is content that has been confirmed or is highly-probable to be made unobtainable in a known future patch.";
	L.TRADING_POST = "Handelsposten";

	-- Item Filter Window
		L.ITEM_FILTER_TEXT = "Gegenstandsfilter";
		L.ITEM_FILTER_DESCRIPTION = "Ihr könnt die ATT Datenbank nach Gegenstandsfiltern durchsuchen.";
		L.ITEM_FILTER_BUTTON_TEXT = "Setze Gegenstandsfilter";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "Klicke auf diese Schaltfläche, um zu ändern nach welchem Gegenstandsfilter in der ATT Datenbank gesucht werden soll.";
		L.ITEM_FILTER_POPUP_TEXT = "Nach welchem Gegenstandsfilter möchtet Ihr suchen?";

-- Instructional Text
	--TODO: L.MINIMAP_MOUSEOVER_TEXT = "Right click to change settings.\nLeft click to open the Main List.\n"..CTRL_KEY_TEXT.." click to open the Mini List.\n"..SHIFT_KEY_TEXT.." click to Refresh Collections.";
	--TODO: L.TOP_ROW_INSTRUCTIONS = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists\n"..ALT_KEY_TEXT.." right click to Plot Waypoints|r";
	--TODO: L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000The more information, the better.  Thanks!|r";
	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." Klick um das Fenster zu fixieren";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." Klick um das Fenster freizugeben";
	L.QUEST_ROW_INSTRUCTIONS = "Rechtsklicken um Questreihen Anforderungen zu sehen.";
	--TODO: L.SYM_ROW_INFORMATION = "Right Click to see additional content which is Sourced in another location";
	L.QUEST_ONCE_PER_ACCOUNT = "Einmalig pro Account Quest";
	L.COMPLETED_BY = "Vervollständigt von: %s";
	--TODO: L.OWNED_BY = "Owned by %s";

-- Social Module
	--TODO: L.NEW_VERSION_AVAILABLE = "A newer version of %s is available. Please update the AddOn, %s.";
	--TODO: L.NEW_VERSION_FLAVORS = {
	-- 	"or we'll give Sylvanas another lighter",
	-- 	"Alexstrasza is worried about you",
	-- 	"and Invincible will drop |cffffaaaafor sure|r next time",
	-- 	"this was merely a setback",
	-- 	"time to drop your % down",
	-- 	"and a turtle will make it to the water",
	-- 	"CHAMPYUUN, DE AZURIITE",
	-- };
	--TODO: L.SOCIAL_PROGRESS = "Social Progress";

-- Settings.lua
	L.AFTER_REFRESH = "Nach Aktualisierung";

	-- General tab
		-- Mode Title
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

		L.MINIMAP_SLIDER = "Minimap Knopf Größe";
		L.MINIMAP_SLIDER_TOOLTIP = 'Nutze dies um die Größe des Minmimap Knopfes zu verändern.\n\nDefault: 36';
		--TODO: L.EXTRA_THINGS_LABEL = "Additional Resources";
		L.MINIMAP_BUTTON_CHECKBOX = "Zeig den Minimap Knopf";
		--TODO: L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.";
		--TODO: L.CLICK_TO_CREATE_FORMAT = "Click to Create %s";
		--TODO: L.KEYBINDINGS_TEXT = "You can set keybindings for ATT in the game's options.";

	-- Interface tab
		L.ADDITIONAL_LABEL = "Zusätzliche Information";
		L.DESCRIPTIONS = "Beschreibungen";
		L.LORE = "Geschichte";
		L.CLASSES = "Klassen";

	-- Features tab
		L.MINIMAP_LABEL = "Minimap Knopf";
		--TODO: L.MODULES_LABEL = "Modules & Mini Lists";
		L.SKIP_CUTSCENES_CHECKBOX = "Zwischensequenzen automatisch überspringen";
		L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "Aktiviere diese Option, wenn ATT automatisch alle Zwischensequenzen für Euch überspringen soll.";
		L.AUTO_BOUNTY_CHECKBOX = "Preisgeld Liste automatisch öffnen";
		--TODO: L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the items that have an outstanding collection bounty. If you manage to snag one of the items posted on this list, you could make a good sum of gold.\n\nShortcut Command: /attbounty";
		L.AUTO_MAIN_LIST_CHECKBOX = "Hauptliste automatisch öffnen";
		L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um die Hauptliste automatisch beim Login zu öffnen.\n\nIhr könnt diese Einstellung auch auf der Tastatur belegen:\n\nTastaturbelegung -> Addons -> ALL THE THINGS -> Hauptliste ein/aus\n\nShortcut Command: /att";
		L.AUTO_MINI_LIST_CHECKBOX = "Mini Liste automatisch öffnen";
		L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um alles zu sehen was Ihr in eurer derzeitigen Zone sammeln könnt. Die Liste ändert sich automatisch, wenn Ihr die Zone wechselt. Einige Leute mögen diese Funktion nicht, aber wenn Ihr alleine sammelt, ist sie äußerst nützlich.\n\nIhr könnt diese Einstellung auch auf der Tastatur belegen.\n\nTastaturbelegung -> Addons -> ALL THE THINGS -> Mini Liste ein/aus\n\nShortcut Command: /att mini";
		L.AUTO_PROF_LIST_CHECKBOX = "Berufs Liste automatisch öffnen";
		--TODO: L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List";
		L.AUTO_RAID_ASSISTANT_CHECKBOX = "Raid Assistent automatisch öffnen";
		--TODO: L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "Enable this option if you want to see an alternative group/party/raid settings manager called the 'Raid Assistant'. The list will automatically update whenever group settings change.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Raid Assistant\n\nShortcut Command: /attra";
		L.AUTO_WQ_LIST_CHECKBOX = "Weltquests Liste automatisch öffnen";
		--TODO: L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want the 'World Quests' list to appear automatically. The list will automatically update whenever you switch zones.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle World Quests List\n\nShortcut Command: /attwq";
		--TODO: L.AUCTION_TAB_CHECKBOX = "Show the Auction House Module Tab";
		--TODO: L.AUCTION_TAB_CHECKBOX_TOOLTIP = "Enable this option if you want to see the Auction House Module provided with ATT.\n\nSome addons are naughty and modify this frame extensively. ATT doesn't always play nice with those toys.";
		--TODO: L.ICON_LEGEND_LABEL = "Icon Legend";
		--TODO: L.ICON_LEGEND_TEXT = app.ccColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t " .. "Unobtainable" .. "\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "Obtainable only with prerequisites" .. "\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. "Available seasonal content" .. "\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. "Unavailable seasonal content" .. "\n|T374225:0|t " .. "Unavailable on current character";
		L.CHAT_COMMANDS_LABEL = "Chat Befehle";
		--TODO: L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFOpens the Main List.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFOpens the Mini List.\n\n|R/att bounty\n|cffFFFFFFOpens a list of bugged or unconfirmed items.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFOpens the Raid Assistant.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFOpens the World Quests List.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Item Link]\n|cffFFFFFFOpens a window with shared appearances. Also works with other things, such as|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFShows all future Removed With Patch things.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFOpens the Random List.\n\n|R/att unsorted\n|cffFFFFFFOpens a list of unsourced items. Best opened in Debug Mode.\n\n|R/rl\n|cffFFFFFFReload your WoW interface.|R";

	-- Sync Window
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
		--TODO: L.LINKED_ACCOUNT_TOOLTIP = "This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.";
		L.DELETE_LINKED_CHARACTER = "Rechtsklick zum Löschen dieses verknüpften Charakters";
		L.DELETE_LINKED_ACCOUNT = "Rechtsklick zum Löschen dieses verknüpften Accounts";
		L.DELETE_CHARACTER = "Rechtsklick um diesen Charakter zu löschen";
		L.CONFIRM_DELETE = "\n \nBist Du sicher, dass Du dies löschen möchtest?";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "Account Modus ein/aus";
		L.TOGGLE_COMPLETIONIST_MODE = "Completionist Modus ein/aus";
		L.TOGGLE_DEBUG_MODE = "Debug Modus ein/aus";
		L.TOGGLE_FACTION_MODE = "Fraktions Modus ein/aus";
		L.TOGGLE_COMPLETEDTHINGS = "Erledigte Dinge ein/aus (Beides)";
		L.TOGGLE_COMPLETEDGROUPS = "Abgeschlossene Gruppen ein/aus";
		L.TOGGLE_COLLECTEDTHINGS = "Gesammelte Dinge ein/aus";
		L.TOGGLE_BOEITEMS = "BoE/BoA Gegenstände ein/aus";
		L.TOGGLE_SOURCETEXT = "Quellen ein/aus";
		--TODO: L.MODULES = "Modules";
		L.TOGGLE_MAINLIST = "ATT Hauptliste ein/aus";
		L.TOGGLE_MINILIST = "ATT Mini Liste ein/aus";
		L.TOGGLE_PROFESSION_LIST = "ATT Berufs Liste ein/aus";
		L.TOGGLE_WORLD_QUESTS_LIST = "ATT Weltquests ein/aus";
		L.TOGGLE_RAID_ASSISTANT = "ATT Raid Assistent ein/aus";
		L.TOGGLE_RANDOM = "ATT Zufall ein/aus";
		L.REROLL_RANDOM = "Zufallsauswahl erneut würfeln";

	-- Event Text
		L.ITEM_ID_ADDED = "%s (%d) wurde deiner Sammlung hinzugefügt.";
		L.ITEM_ID_ADDED_RANK = "%s (%d) [Rank %d] wurde deiner Sammlung hinzugefügt.";
		L.ITEM_ID_ADDED_MISSING = "%s (%d) wurde deiner Sammlung hinzugefügt. Nicht in der Datenbank gefunden. Bitte melde es an das ATT Discord!";
		L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] wurden deiner Sammlung hinzugefügt.";
		L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] wurde deiner Sammlung hinzugefügt. Nicht in der Datenbank gefunden. Bitte melde es an das ATT Discord!";
		L.ITEM_ID_REMOVED = "%s (%d) wurde aus deiner Sammlung entfernt.";
		L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] wurden aus deiner Sammlung entfernt.";

	-- Tooltip Text
		L.DROP_RATE = "Drop Rate";
		L.QUEST_GIVER = "Questgeber";
		--TODO: L.EVENT_SCHEDULE = "Event Schedule";
		--TODO: L.EVENT_ACTIVE = "Active:";
		--TODO: L.EVENT_START = "Start:";
		--TODO: L.EVENT_END = "End:";
		--TODO: L.EVENT_WHERE = "Where:";
		--TODO: L.REQUIRES_EVENT = "Requires Event";
		L.LOCKOUT = "Sperre";
		--TODO: L.RESETS = "Resets";
		L.SHARED = "Geteilt";
		L.SPLIT = "Pro Schwierigkeitsgrad";
		L.REQUIRES_LEVEL = "Benötigt Stufe";
		L.SECRETS_HEADER = "Geheimnisse";
		L.LIMITED_QUANTITY = "Dies hat eine begrenzte Menge und ist nicht immer beim Händler verfügbar.";
		L.SOURCE_ID_MISSING = "Bitte meldet diesen Gegenstand und wo er erhalten wurde an das ATT Discord in #retail-errors!";
		--TODO: L.ADDED_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.WAS_ADDED_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.ADDED_BACK_WITH_PATCH_FORMAT = "Re-added in %s";
		--TODO: L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "Added in %s";
		L.REMOVED_WITH_PATCH_FORMAT = "Dies wird entfernt mit Patch %s";	--TODO: Removed in %s

	-- Filter Text
		--TODO: L.CREATURES_COUNT = "[%s Creatures]";
		--TODO: L.CREATURES_LIST = "Creatures List";

	-- Artifact Relic Completion
		--TODO: L.ARTIFACT_RELIC_CACHE = "Open your Artifact UI for all of your Artifact Weapons to cache whether this is an upgrade or not. This is useful for determining if you can trade this item to a Twink or not.";
		--TODO: L.ARTIFACT_RELIC_COMPLETION = "Artifact Relic Completion";
		L.NOT_TRADEABLE = "Nicht Handelbar";
		L.TRADEABLE = "Handelbar";

	-- Icons and Collection Text
		L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffGesammelt|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffGesammelt*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Nicht gesammelt|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Vollständig*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffUnvollständig|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Saved|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffWährung|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, der Brennende Thron"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		--TODO: ["Expansion Pre"] = "Pre",
		--TODO: ["Expansion Features"] = "EF",
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
		--TODO: ["Emissary Quests"] = "Emissary",
		--TODO: [TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		["WoW Geburtstag"] = "Geburtstag",
})
do a[key] = value; end

if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5201] = "Ordenskampagne",								-- Class Hall Campaign
			[-5202] = "Gleichgewicht der Kräfte",					-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		--TODO: SKIP_AUTO_REFRESH = "Skip Settings-Toggle Data Refreshes!";
		--TODO: SKIP_AUTO_REFRESH_TOOLTIP = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";

	-- About Page
		ABOUT_PAGE = "Über";
		--TODO: ABOUT_TOP = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|r";
		--TODO: ABOUT_BOTTOM = "Active Contributors: |CFFFFFFFF(Alphabetical Order)\n%s\n\n|rHall of Fame: |CFFFFFFFF(Alphabetical Order)\n%s\n\nSpecial Shoutout to AmiYuy (CanIMogIt) and Caerdon (Caerdon Wardrobe). You should absolutely download their addons to get the collection icons on items in your bags! %s %s %s\n\nFor online collection comparing check out DataForAzeroth.com from Shoogen and WoWthing.org from Freddie!|r";
		--TODO: CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C to Copy to your Clipboard.";
		--TODO: CURSEFORGE_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Curse.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";
		DISCORD_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link für das ATT Discord zu kopieren.\n\nIhr könnt Eure Fortschritte/Frustrationen mit anderen Sammlern teilen!";
		--TODO: MERCH_BUTTON_LABEL = "Merch";
		--TODO: MERCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
		PATREON_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link für das ATT Patreon zu kopieren.\n\nHier könnt Ihr sehen, wie Ihr das Addon Finanziell unterstützen könnt!";
		TWITCH_BUTTON_TOOLTIP = "Klicke auf diese Schaltfläche, um den Link zu meinem Twitch Kanal zu kopieren.\n\nWährend ich Streame, könnt Ihr Fragen stellen. Ich werde mein bestes versuchen sie zu beantworten!";
		--TODO: WAGO_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Wago.io.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";

	-- General Page
		DEBUG_MODE = app.ccColors.Red.."Debug Modus|r (Zeig alles)";
		--TODO: DEBUG_MODE_TOOLTIP = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
		ACCOUNT_MODE = app.ccColors.Account.."Account Modus";
		ACCOUNT_MODE_TOOLTIP = "Aktiviere diese Einstellung, um alle Dinge für alle Eure Charaktere, unabhängig von Klassen und Rassen, zu verfolgen.\n\nUnerreichbare Filter gelten weiterhin.";
		FACTION_MODE = "Nur derzeitige Fraktion";
		--TODO: FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
		--TODO: LOOT_MODE = "Loot Mode";
		--TODO: LOOT_MODE_TOOLTIP = "Enable this option to show loot from all sources.\n\nYou can change which sort of loot displays for you based on the Filters tab.";
		--TODO: MODE_EXPLAIN_LABEL = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		COMPLETIONIST_MODE = "+Quellen";
		--TODO: COMPLETIONIST_MODE_TOOLTIP = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
		MAIN_ONLY = "Nur Hauptcharakter";
		--TODO: MAIN_ONLY_TOOLTIP = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
		--TODO: ONLY_RWP = "Only RWP";
		--TODO: ONLY_RWP_TOOLTIP = "Enable this option to only track transmog that get removed from the game in the future. Only Items tagged with 'removed with patch' data count toward this. If you find an item not tagged that should be tagged, please let me know!\n\nYou can change which sort of loot displays for you based on the Filters tab.";
		--TODO: UNOFFICIAL_SUPPORT_TOOLTIP = "NOTE: At this time, official support is not provided by WoW's API, but ATT can track items or quest completion to make it functional in the addon.";

	-- General Content
		--TODO: GENERAL_CONTENT = "General Content";
		SHOW_INCOMPLETE_THINGS_CHECKBOX = "Zeig alle verfolgbaren Dinge";
		--TODO: SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX = "Show Completed Groups";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		SHOW_COLLECTED_THINGS_CHECKBOX = "Zeig gesammelte Dinge";
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
		--TODO: ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. "Accountübergreifend|R by default.";
		--TODO: TRACK_ACC_WIDE = app.ccColors.Account .. "Track Accountübergreifend|R";
		ACCOUNT_THINGS_LABEL = "Accountweite Dinge";
		GENERAL_THINGS_LABEL = "Allgemeine Dinge";
		STRANGER_THINGS_LABEL = "Fremde Dinge";

		--TODO: ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um Erfolge zu verfolgen.";
		APPEARANCES_CHECKBOX = "Vorlagen";
		--TODO: APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to track appearance acquisition.\n\nNOTE: Disabling this option also disables all fanfares and acquisition logic.  You can use this toggle as a way to prevent lag spikes while doing important group content, but bear in mind the computation will need to occur once re-enabled.";
		BATTLE_PETS_CHECKBOX = "Kampfhaustiere";
		--TODO: BATTLE_PETS_CHECKBOX_TOOLTIP = "Enable this option to track battle pets and companions. These can be found in the open world or via boss drops in various Dungeons and Raids as well as from Vendors and Reputation.";
		--TODO: DEATHS_CHECKBOX = "Deaths";
		--TODO: DEATHS_CHECKBOX_TOOLTIP = "Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.";
		--TODO: EXPLORATION_CHECKBOX = "Exploration";
		--TODO: EXPLORATION_CHECKBOX_TOOLTIP = "Enable this option to track exploration completion for outdoor maps.";
		FLIGHT_PATHS_CHECKBOX = "Flugpunkte";
		--TODO: FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\nNOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.";
		--TODO: HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		--TODO: HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+Aufwertungen";
		--TODO: HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
		--TODO: ILLUSIONS_CHECKBOX = "Illusions";
		--TODO: ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.";
		--TODO: MOUNTS_CHECKBOX = MOUNTS;
		--TODO: MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!";
		--TODO: QUESTS_CHECKBOX = QUESTS_LABEL;
		--TODO: QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
		--TODO: QUESTS_LOCKED_CHECKBOX = "+Locked";
		--TODO: QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using Account-Wide Quests to incorporate progress from other characters.";
		RECIPES_CHECKBOX = "Rezepte";
		--TODO: RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		REPUTATIONS_CHECKBOX = "Ruffraktionen";
		--TODO: REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		TITLES_CHECKBOX = "Titel";
		--TODO: TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		--TODO: TOYS_CHECKBOX = TOY_BOX;
		--TODO: TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!";

		-- Expansion Things
		EXPANSION_THINGS_LABEL = "Erweiterungs Dinge";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Herzensessenzen";
		--TODO: AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Drachenwächtermanuskript";
		--TODO: DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track Dragonflight Drachenwächtermanuskript";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Anhänger & Gefährten";
		--TODO: FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Runenschnitzmacht";
		--TODO: RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Runecarving Powers.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Medien";
		--TODO: SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Medien.";

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
		--TODO: ITEM_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		--TODO: CLASS_DEFAULTS_BUTTON = "Class Defaults";
		--TODO: CLASS_DEFAULTS_BUTTON_TOOLTIP = "Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.";
		--TODO: ALL_BUTTON_TOOLTIP = "Click this button to enable all options at once.";
		--TODO: UNCHECK_ALL_BUTTON_TOOLTIP = "Click this button to disable all options at once.";

	-- General: Phases Page
	-- Classic Only, fully dynamic from within parser.

	-- General: Unobtainables Page
		UNOBTAINABLES_PAGE = "Unerreichbares";
		--TODO: UNOBTAINABLE_LABEL = "Unobtainable Content";
		--TODO: CUSTOM_FILTERS_LABEL = "Automated Content";
		--TODO: CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if it is available to your current character or if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		--TODO: CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Enable this setting to forcibly show %s content even if it is not available to the current character.";

	-- Interface Page
		--TODO: TOOLTIP_LABEL = "Tooltips";
		--TODO: TOOLTIP_HELP_CHECKBOX = "Show Tooltip Help";
		--TODO: TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Enable this option if you want to see the help info in ATT window tooltips which indicates various key/click combinations for ATT window functionality.\nIf you already know all of the key/click combinations, you may want to save tooltip space and disable this option.";
		--TODO: ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Tooltip Integrations";
		--TODO: ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		DISPLAY_IN_COMBAT_CHECKBOX = "Im Kampf";
		--TODO: DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		--TODO: TOOLTIP_MOD_LABEL = "Modifier";
		--TODO: TOOLTIP_SHOW_LABEL = "Shown Information";
		--TODO: SHOW_COLLECTION_PROGRESS_CHECKBOX = "Collection Progress";
		--TODO: SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		--TODO: ICON_ONLY_CHECKBOX = "Icon Only";
		--TODO: ICON_ONLY_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
		--TODO: KNOWN_BY_CHECKBOX = "Known By";
		--TODO: KNOWN_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
		--TODO: COMPLETED_BY_CHECKBOX = "Completed By";
		--TODO: COMPLETED_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
		--TODO: SHOW_CRAFTED_ITEMS_CHECKBOX = "Show Crafted Items";
		--TODO: SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the items that can be crafted by any of your characters for a reagent in its tooltip.";
		--TODO: SHOW_RECIPES_CHECKBOX = "Show Recipes";
		--TODO: SHOW_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the recipes that can be crafted by any of your characters for a reagent in its tooltip.";
		--TODO: SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "Only Non-Trivial";
		--TODO: SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you only want to see non-trivial recipes in the recipe list.";
		--TODO: SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Currency calculation";
		--TODO: SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
		--TODO: SHARED_APPEARANCES_CHECKBOX = "Shared Appearances";
		--TODO: SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
		--TODO: INCLUDE_ORIGINAL_CHECKBOX = "Original Source";
		--TODO: INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
		--TODO: ONLY_RELEVANT_CHECKBOX = "Only Relevant";
		--TODO: ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
		SPEC_CHECKBOX = "Spezialisierungen";
		--TODO: SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		--TODO: SUMMARIZE_CHECKBOX = "Summarize Things";
		--TODO: SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		--TODO: CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		--TODO: SOURCE_LOCATIONS_CHECKBOX = "Source Locations";
		--TODO: SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		--TODO: LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		--TODO: COMPLETED_SOURCES_CHECKBOX = "For Completed";
		--TODO: COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		--TODO: DROP_CHANCES_CHECKBOX = "Drop Chances";
		--TODO: DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		FOR_CREATURES_CHECKBOX = "Für Kreaturen";
		--TODO: FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		FOR_THINGS_CHECKBOX = "Für Dinge";
		--TODO: FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		FOR_UNSORTED_CHECKBOX = "Für Unsortiert";
		--TODO: FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: WITH_WRAPPING_CHECKBOX = "Allow Wrapping",
		--TODO: WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.",

		--TODO: BEHAVIOR_LABEL = "List Behavior";
		--TODO: MAIN_LIST_SLIDER_LABEL = "Main List Scale";
		--TODO: MAIN_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
		--TODO: MINI_LIST_SLIDER_LABEL = "Mini Lists Scale";
		--TODO: MINI_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
		--TODO: ADHOC_UPDATES_CHECKBOX = "Ad-Hoc Window Updates";
		--TODO: ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
		--TODO: EXPAND_DIFFICULTY_CHECKBOX = "Expand Current Difficulty";
		--TODO: EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
		--TODO: SHOW_ICON_PORTRAIT_CHECKBOX = "Icon Portraits";
		--TODO: SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for non-quest object types.\n\nIE: When looking at bosses, this option will show the face of the boss instead of the difficulty icon.\n\nDefault: On";
		--TODO: SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "For Quests";
		--TODO: SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for quest object types.\n\nIE: When looking at quests, this option will show the face of the quest giver instead of the quest type icon.\n\nDefault: On";
		SHOW_MODELS_CHECKBOX = "Modell Vorschau";
		--TODO: SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX = "Fill Dynamic Quests";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be filled with those purchases when under automatically-populated Quests.\n\nFor example, this will cause the [World Quests] window to behave like the minilist rather than the Main list regarding Cost display.\nNote that in most cases, this will drastically increase the apparent content within the window.";
		--TODO: FILL_NPC_DATA_CHECKBOX = "Fill NPC Data";
		--TODO: FILL_NPC_DATA_CHECKBOX_TOOLTIP = "Enable this option if you want to fill all relevant data for a given NPC (Common Boss Drops, Drops, etc) when shown in a mini list. This option may cause a significant amount of duplication, but the idea is that the NPC will remain visible on the mini list if you need something available from that NPC.\n\nNote: A lot of Dragonflight outdoors content relies on this setting being enabled for accuracy due to how many Rares share common drops.\n\nDefault: Off";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX = "Show Nested Quest Chains";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		SORT_BY_PROGRESS_CHECKBOX = "Nach Fortschritt sortieren";
		--TODO: SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." right click) to sort by the total progress of each group (instead of by Name)";
		--TODO: SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over tota";
		--TODO: PERCENTAGES_CHECKBOX = "Show Percentage Completion";
		--TODO: PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		--TODO: PRECISION_SLIDER = "Precision Level";
		--TODO: PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
		--TODO: DYNAMIC_CATEGORY_LABEL = "Dynamic Categories";
		DYNAMIC_CATEGORY_SIMPLE = "Simpel";
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
		CELEBRATIONS_LABEL = "Feierlichkeiten & Sound Effekte";
		--TODO: AUDIO_CHANNEL = "Audio Channel";
		CELEBRATE_COLLECTED_CHECKBOX = "Gesammelte Dinge lösen eine Feierlichkeit aus";
		--TODO: CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		--TODO: SOUNDPACK = "Soundpack";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX = "Play a Sound Effect when you Die";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a sound effect when you die.";
		WARN_REMOVED_CHECKBOX = "Entfernte Dinge lösen eine Warnung aus";
		--TODO: WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		SCREENSHOT_COLLECTED_CHECKBOX = "Gesammelte Dinge lösen einen Screenshot aus";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Aktiviere diese Option, um bei gesammelten Dingen automatisch einen Screenshot zu erstellen.";

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
		SYNC_PAGE = "Sync";
		ACCOUNT_SYNCHRONIZATION = "Account Synchronisierung";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatische Synchronisierung vom Account";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Aktiviere diese Option, wenn ATT automatisch versuchen soll die Daten zwischen verknüpften Accounts zu synchronisieren, falls Ihr einloggt oder das Interface neu geladen wird.";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		PROFILES_PAGE = "Profile";
		PROFILE = "Profil";
		PROFILE_INITIALIZE = "Initialisiere Profil";
		--TODO: PROFILE_INITIALIZE_TOOLTIP = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
		PROFILE_INITIALIZE_CONFIRM = "Möchten Sie die Profilunterstützung wirklich aktivieren?";
		PROFILE_NEW_TOOLTIP = "Erstelle ein leeres Profil, das vom aktuellen Charakter verwendet werden soll";
		PROFILE_COPY_TOOLTIP = "Kopieren des ausgewählten Profils in das derzeitig aktive Profil";
		PROFILE_DELETE_TOOLTIP = "Lösche das ausgewählte Profil";
		PROFILE_SWITCH_TOOLTIP = "Setzt das ausgewählte Profil als das derzeitig aktive Profil\n\nEin Profil kann auch mit "..SHIFT_KEY_TEXT.."-geklickt werden, um dazu zu wechseln";
		--TODO: SHOW_PROFILE_LOADED = "Show which profile loads during login or when switching between profiles";
})
do a[key] = value; end

if app.IsRetail then
--TODO:
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
})
do a[key] = value; end
end