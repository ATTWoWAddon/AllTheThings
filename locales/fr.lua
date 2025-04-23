-- Localization for French (France) Clients.
if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	L.DESCRIPTION = "\"Sottement, vous avez cherché votre propre perte. Effrontément, vous avez ignoré des pouvoirs au-delà de votre compréhension. Vous vous êtes battus pour envahir le royaume du Collectionneur. Maintenant, il n’y a plus qu’une seule issue : emprunter le chemin solitaire... des damnés.\"";
	--TODO: L.THINGS_UNTIL = " THINGS UNTIL ";
	--TODO: L.THING_UNTIL = " THING UNTIL ";
	L.YOU_DID_IT = "VOUS AVEZ RÉUSSI !";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "Progression";
	L.TRACKING_PROGRESS = "Suivi des progrès";
	L.COLLECTED_STRING = " Collectionné";
	L.PROVIDERS = "Fournisseur(s)";
	L.COLLECTION_PROGRESS = "Progression de la collection";
	L.CONTAINS = "Contient :";
	L.FACTIONS = "Factions";
	L.COORDINATES = "Coordonnées";
	L.AND_MORE = "Et %s plus...";
	L.AND_OTHER_SOURCES = "Et %s sources différentes...";
	--TODO: L.PLAYER_COORDINATES = "Player Coordinates";
	L.NO_COORDINATES_FORMAT = "Aucune coordonnée connue pour %s";
	L.TOM_TOM_NOT_FOUND = "Vous devez avoir installé TomTom pour pouvoir ajouter des coordonnées.";
	L.FLIGHT_PATHS = "Trajets Aériens";
	L.KNOWN_BY = "Connu par %s";
	L.REQUIRES = "Requiert";
	L.RACE_LOCKED = "Race bloquée";
	L.PLEASE_REPORT_MESSAGE = "Merci de signaler sur le serveur Discord d’ATT dans le canal #retail-errors ! Merci !";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.." + C pour copier le rapport multiligne dans votre presse-papiers)";
	L.NOT_AVAILABLE_IN_PL = "Non disponible pour le butin personnel.";
	L.MARKS_OF_HONOR_DESC = "Les Marques d’honneur doivent être affichées dans une fenêtre contextuelle pour afficher tout le contenu 'normal'.\n(Tapez '/att' dans le chat puis faites "..SHIFT_KEY_TEXT.." + clic pour pour afficher l’objet)\n\n|cFFfe040fAprès l’achat et l’utilisation d’un ensemble, une nouvelle connexion et une actualisation forcée d’ATT (dans cet ordre)\npeuvent être nécessaires pour enregistrer correctement tous les objets.|r";
	--TODO: L.MOP_REMIX_BRONZE_DESC = "Bronze must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the currency)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	L.ITEM_GIVES_REP = "Fournit la réputation avec '";
	L.COST = "Coût";
	--TODO: L.COST_DESC = "This contains the visual breakdown of what is required to obtain or purchase this Thing";
	--TODO: L.COST_TOTAL = "Total Cost";
	--TODO: L.COST_TOTAL_DESC = "This contains the visual breakdown of what is required to obtain or purchase all Things within the top-level group.\n\nNote: Does not currently include Reagents/Recipes requirements!";
	L.SOURCES = "Source(s)";
	--TODO: L.SOURCES_DESC = "Shows the Source of this Thing.\n\nParticularly, a specific Vendor/NPC, Quest, Encounter, etc.";
	L.WRONG_FACTION = "Il se peut que vous deviez être dans la faction adverse pour afficher cela.";
	L.ARTIFACT_INTRO_REWARD = "Attribué après avoir terminé la quête d’introduction de cet artefact.";
	L.VISIT_FLIGHT_MASTER = "Rendez visite au Maître de vol pour mettre en cache.";
	L.FLIGHT_PATHS_DESC = "Les trajets de vol sont mis en cache lorsque vous parlez au Maître de vol sur chaque continent.\n- Crieve";
	--TODO: L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	L.HEIRLOOM_TEXT = "Objet Héritage déverrouillé";
	L.HEIRLOOM_TEXT_DESC = "Indique si vous avez ou non déjà acquis ou acheté l’objet d’héritage.";
	L.FAILED_ITEM_INFO = "Échec de l’acquisition des informations pour cet objet. Il se peut que l’objet soit pas valide ou qu’il n’ait pas encore été mis en cache sur votre serveur.";
	L.HEIRLOOMS_UPGRADES_DESC = "Indique si vous avez ou non amélioré l’objet d’héritage à un certain niveau.\n\nBye bye votre Or.\n- Crieve";
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Ils sont débloqués par personnage et ne sont actuellement pas partagés sur l’ensemble de votre compte. Si une personne de chez Blizzard lit ceci, ce serait vraiment bien si vous les rendiez à l'échelle du compte. Vous devez rafraîchir manuellement l’addon via "..SHIFT_KEY_TEXT.." + clic sur l’en-tête pour que ce soit détecté.";
	end
	L.MUSIC_ROLLS_DESC_2 = "\n\nVous devez d’abord débloquer les rouleaux de musique en accomplissant la quête À fond les basses ! dans votre garnison de fief pour pouvoir avoir cet objet.\n\nLes selfies nécessitent le jouet Appareil photo P.R.O.F.I.L.";
	L.OPPOSITE_FACTION_EQ = "Équivalent de la faction opposée : ";
	L.SELFIE_DESC = "Prenez un selfie en utilisant votre ";
	L.SELFIE_DESC_2 = " avec |cffff8000";
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
	--TODO: L.EXPANSION_DATA[11].lore = "The War Within is the tenth expansion for World of Warcraft and the beginning of the Worldsoul Saga. Journey through never-before-seen subterranean worlds filled with hidden wonders and lurking perils, down to the dark depths of the nerubian empire, where the malicious Harbinger of the Void is gathering arachnid forces to bring Azeroth to its knees.";
	--TODO: L.EXPANSION_DATA[12].lore = "Midnight is the eleventh expansion for World of Warcraft and the second installment of the Worldsoul Saga.";
	--TODO: L.EXPANSION_DATA[13].lore = "The Last Titan is the twelfth expansion for World of Warcraft and the final installment of the Worldsoul Saga.";
	L.TITLES_DESC = "Les titres sont suivis sur l’ensemble de votre compte, mais votre personnage principal doit être qualifié pour que certains titres soient utilisables sur ce personnage.";
	--TODO: L.UPON_COMPLETION = "Upon Completion";
	--TODO: L.UPON_COMPLETION_DESC = "The above quests need to be completed before being able to complete the things listed below.";
	--TODO: L.QUEST_CHAIN_REQ = "Quest Chain Requirements";
	--TODO: L.QUEST_CHAIN_REQ_DESC = "The following quests need to be completed before being able to complete the final quest.";
	--TODO: L.AH_SEARCH_NO_ITEMS_FOUND = "No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.";
	--TODO: L.AH_SEARCH_BOE_ONLY = "Only Bind on Equip items can be found using this search.";
	--TODO: L.TSM_WARNING_1 = "Running this command can potentially destroy your existing TSM settings by reassigning items to the ";
	--TODO: L.TSM_WARNING_2 = " preset.\n\nWe recommend that you use a different profile when using this feature.\n\nDo you want to proceed anyways?";
	--TODO: L.PRESET_UPDATE_SUCCESS = "Updated the preset successfully.";
	--TODO: L.SHOPPING_OP_MISSING_1 = "The preset is missing a 'Shopping' Operation assignment.";
	--TODO: L.SHOPPING_OP_MISSING_2 = "Type '/tsm operations' to create or assign one.";
	--TODO: L.AUCTIONATOR_GROUPS = "Group-based searches are only supported using Auctionator.";
	--TODO: L.TSM4_ERROR = "TSM4 is not compatible with ATT yet. If you know how to create Presets like we used to do in TSM3, please whisper Crieve on Discord!";
	L.QUEST_MAY_BE_REMOVED = "Impossible d’obtenir des informations. Cette quête a peut-être été supprimée du jeu. ";

	--TODO: L.FACTION_SPECIFIC_REP = "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	L.MINUMUM_STANDING_WITH_FACTION = "Il faut avoir obtenu une note minimale de %s avec %s.";
	L.MAXIMUM_STANDING_WITH_FACTION = "Il faut avoir obtenu une note inférieure à %s avec %s.";
	L.MIN_MAX_STANDING_WITH_FACTION = "Il faut avoir obtenu une note entre %s et %s avec %s.";

	--TODO: L.ADDED_WITH_PATCH = "Added With Patch";
	--TODO: L.REMOVED_WITH_PATCH = "Removed With Patch";
	--TODO: L.ALIVE = "Alive";
	--TODO: L.SPAWNED = "Spawned";
	--TODO: L.OBJECT_TYPE = "Object Type";
	--TODO: L.OBJECTIVES = "Objectives";
	--TODO: L.QUEST_GIVERS = "Quest Givers";
	L.DURING_WQ_ONLY = "Peut être réalisé uniquement lorsque la quête mondiale est active.";
	L.COMPLETED_DAILY = "Peut être réalisé uniquement quotidiennement.";
	L.COMPLETED_WEEKLY = "Peut être réalisé uniquement chaque semaine.";
	L.COMPLETED_MONTHLY = "Peut être réalisé uniquement chaque mois.";
	L.COMPLETED_YEARLY = "Peut être réalisé uniquement chaque année.";
	L.COMPLETED_MULTIPLE = "Peut être réalisé plusieurs fois.";
	L.CRITERIA_FOR = "Critères de";
	--TODO: L.LOOT_TABLE_CHANCE = "Loot Table Chance";
	--TODO: L.BEST_BONUS_ROLL_CHANCE = "Best Bonus Roll Chance";
	--TODO: L.BEST_PERSONAL_LOOT_CHANCE = "Best Personal Loot Chance";
	--TODO: L.PREREQUISITE_QUESTS = "There are prerequisite quests that must be completed before this may be obtained:";
	--TODO: L.BREADCRUMBS = "Breadcrumbs";
	--TODO: L.BREADCRUMBS_WARNING = "There are breadcrumb quests that may not be obtainable after completing this:";
	--TODO: L.THIS_IS_BREADCRUMB = "This is a breadcrumb quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC = "This may be unable to be completed without Party Sync if completing any of these quests first:";
	--TODO: L.BREADCRUMB_PARTYSYNC_2 = "This may be obtained via Party Sync with another character that has not completed any of these quests:";
	--TODO: L.BREADCRUMB_PARTYSYNC_3 = "This may be obtained via Party Sync with a character that is able to accept this quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC_4 = "Please let us know your results on Discord if you attempt obtaining this Quest via Party Sync!";
	--TODO: L.DISABLE_PARTYSYNC = "This is likely not able to be completed by this character even using Party Sync. If you manage otherwise, please let us know on Discord!";
	--TODO: L.UNAVAILABLE_WARNING_FORMAT = "Becomes unavailable if %d of the following are met:";
	L.NO_ENTRIES = "Aucune entrée correspondant à vos filtres n’a été trouvée.";
	L.NO_ENTRIES_DESC = "Si vous pensez qu’il s’agit d’une erreur, essayez d’activer le 'mode débogage'. Il se peut que l’un de vos filtres limite la visibilité du groupe.";
	L.DEBUG_LOGIN = "Récompensé pour s’être connecté.\nBon travail ! VOUS L’AVEZ FAIT !\nSeulement visible en mode débogage.";
	L.UNSORTED = "Non trié";
	L.UNSORTED_DESC = "Ces données n’ont pas encore été ajoutées. ATT " .. app.Version;
	--TODO: L.UNSORTED_DESC_2 = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";
	L.NEVER_IMPLEMENTED = "Jamais mis en place";
	L.NEVER_IMPLEMENTED_DESC = "Ces objets existent techniquement dans le jeu mais n’ont jamais été mis à la disposition des joueurs";
	--TODO: L.HIDDEN_QUEST_TRIGGERS = "Hidden Quest Triggers";
	--TODO: L.HIDDEN_QUEST_TRIGGERS_DESC = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	L.OPEN_AUTOMATICALLY = "Ouvrir automatiquement";
	L.OPEN_AUTOMATICALLY_DESC = "Si vous n’êtes pas un développeur de chez Blizzard, il peut être judicieux de décocher cela. Ceci a été fait pour forcer Blizzard à corriger et / ou reconnaître ces bugs.";
	L.MINI_LIST = "Mini Liste";
	L.MINI_LIST_DESC = "Cette liste contient les informations pertinentes pour la zone actuelle, qui ne peuvent être trouvées dans la base de données d’ATT.";
	L.UPDATE_LOCATION_NOW = "Mettre à jour l’emplacement maintenant";
	--TODO: L.UPDATE_LOCATION_NOW_DESC = "If you wish to forcibly refresh the data to your current Map, click this button now!";
	--TODO: L.PERSONAL_LOOT_DESC = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.\n\nClick twice to create a group automatically if you're by yourself.";
	--TODO: L.RAID_ASSISTANT = "Raid Assistant";
	--TODO: L.RAID_ASSISTANT_DESC = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!";
	--TODO: L.LOOT_SPEC_UNKNOWN = "Loot Specialization Unknown";
	L.LOOT_SPEC = "Spécialisation du butin";
	--TODO: L.LOOT_SPEC_DESC = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to change it now!";
	L.DUNGEON_DIFF = "Difficulté du donjon";
	--TODO: L.DUNGEON_DIFF_DESC = "The difficulty setting for dungeons.\n\nClick this row to change it now!";
	L.RAID_DIFF = "Difficulté du raid";
	--TODO: L.RAID_DIFF_DESC = "The difficulty setting for raids.\n\nClick this row to change it now!";
	L.LEGACY_RAID_DIFF = "Difficulté du raid héritage";
	--TODO: L.LEGACY_RAID_DIFF_DESC = "The difficulty setting for legacy raids.\n\nClick this row to change it now!";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON = "Teleport to/from Dungeon";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON_DESC = "Click here to teleport to/from your current instance.\n\nYou can utilize the Mists of Pandaria Scenarios to quickly teleport yourself outside of your current instance this way.";
	L.RESET_INSTANCES = "Réinitiialiser les instances";
	L.RESET_INSTANCES_DESC = "Cliquer ici pour réinitialiser les insatnces.\n\n"..ALT_KEY_TEXT.." + clic pour activer la réinitialisation automatique de vos instances lorsque vous quittez un donjon.\n\nATTENTION : SOYEZ PRUDENT AVEC CETTE OPTION !";
	--TODO: L.DELIST_GROUP = "Delist Group";
	--TODO: L.DELIST_GROUP_DESC = "Click here to delist the group. If you are by yourself, it will softly leave the group without porting you out of any instance you are in.";
	L.LEAVE_GROUP = "Quitter le groupe";
	L.LEAVE_GROUP_DESC = "Cliquer ici pour quitter le groupe. Dans la plupart des cas, cela vous conduira également au cimetière le plus proche au bout de 60 secondes environ.\n\nREMARQUE : ne fonctionne que si vous êtes dans un groupe ou si le jeu pense que vous êtes dans un groupe.";
	--TODO: L.LOOT_SPEC_DESC_2 = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to go back to the Raid Assistant.";
	L.CURRENT_SPEC = "Spécialisation actuelle";
	L.CURRENT_SPEC_DESC = "Si vous changez de talent, votre spécialisation en matière de butin change également.";
	--TODO: L.DUNGEON_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a dungeon.\n\nClick this row to go back to the Raid Assistant.";
	L.CLICK_TO_CHANGE = "Cliquez pour changer maintenant. (si disponible)";
	--TODO: L.RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a raid.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.LEGACY_RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a legacy raid. (Pre-Siege of Orgrimmar)\n\nClick this row to go back to the Raid Assistant.";
	L.REROLL = "Reroll";
	--TODO: L.REROLL_DESC = "Click this button to reroll using the active filter.";
	L.APPLY_SEARCH_FILTER = "Appliquer un filtre à la recherche";
	L.APPLY_SEARCH_FILTER_DESC = "Veuillez sélectionner une option de filtre pour la recherche.";
	L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "Cliquez sur ce bouton pour cherchez... TOUT.";
	L.ACHIEVEMENT_DESC = "Cliquez sur ce bouton pour sélectionner un haut fait aléatoire basé sur ce qu’il vous manque..";
	L.ITEM_DESC = "Cliquez sur ce bouton pour sélectionner un objet aléatoire basé sur ce qu’il vous manque.";
	L.INSTANCE_DESC = "Cliquez sur ce bouton pour sélectionner une instance aléatoire basé sur ce qu’il vous manque.";
	L.DUNGEON_DESC = "Cliquez sur ce bouton pour sélectionner un donjon aléatoire basé sur ce qu’il vous manque.";
	L.RAID_DESC = "Cliquez sur ce bouton pour sélectionner un raid aléatoire basé sur ce qu’il vous manque.";
	L.MOUNT_DESC = "Cliquez sur ce bouton pour sélectionner une monture aléatoire basé sur ce qu’il vous manque.";
	L.PET_DESC = "Cliquez sur ce bouton pour sélectionner une mascotte aléatoire basé sur ce qu’il vous manque.";
	L.QUEST_DESC = "Cliquez sur ce bouton pour sélectionner une quête aléatoire basé sur ce qu’il vous manque.";
	L.TOY_DESC = "Cliquez sur ce bouton pour sélectionner un jouet aléatoire basé sur ce qu’il vous manque.";
	L.ZONE_DESC = "Cliquez sur ce bouton pour sélectionner une zone aléatoire basé sur ce qu’il vous manque.";
	L.GO_GO_RANDOM = "Random - Go Get 'Em!";
	--TODO: L.GO_GO_RANDOM_DESC = "This window allows you to randomly select a place or item to get. Go get 'em!";
	L.CHANGE_SEARCH_FILTER = "Changer le filtre de la recherche";
	L.CHANGE_SEARCH_FILTER_DESC = "Cliquer pour changher le filtre de la recherche.";
	L.REROLL_2 = "Reroll :";
	--TODO: L.NOTHING_TO_SELECT_FROM = "There was nothing to randomly select from. If 'Ad-Hoc Updates' is enabled in Settings, the Main list must be updated (/att) before using this window.";
	L.NO_SEARCH_METHOD = "Aucune méthode de recherche n’est spécifiée.";
	L.PROFESSION_LIST = "Liste des métiers";
	--TODO: L.PROFESSION_LIST_DESC = "Open your professions to cache them.";
	--TODO: L.CACHED_RECIPES_1 = "Cached ";
	L.CACHED_RECIPES_2 = " recettes connues !";
	--TODO: L.WORLD_QUESTS_DESC = "These are World Quests and other time-limited Things that are currently available somewhere. Go get 'em!";
	--TODO: L.QUESTS_DESC = "Shows all possible QuestID's in the game in ascending numeric order.";
	L.UPDATE_WORLD_QUESTS = "Mettre à jour les quêtes mondiales";
	--TODO: L.UPDATE_WORLD_QUESTS_DESC = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	L.CLEAR_WORLD_QUESTS = "Nettoyer les quêtes mondiales";
	L.CLEAR_WORLD_QUESTS_DESC = "Cliquez pour nettoyer les informations actuelles dans le cadre des quêtes mondiales.";
	--TODO: L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "All items that can be used to obtain achievements that you are missing are displayed here.";
	--TODO: L.ALL_THE_APPEARANCES_DESC = "All appearances that you need are displayed here.";
	--TODO: L.ALL_THE_MOUNTS_DESC = "All mounts that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_BATTLEPETS_DESC = "All pets that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_QUESTS_DESC = "All quests that have objective or starting items that can be sold on the auction house are displayed here.";
	--TODO: L.ALL_THE_RECIPES_DESC = "All recipes that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_ILLUSIONS_DESC = "Illusions, toys, and other items that can be used to earn collectible items are displayed here.";
	--TODO: L.ALL_THE_REAGENTS_DESC = "All items that can be used to craft an item using a profession on your account.";
	L.AH_SCAN_SUCCESSFUL_1 = ": Analyser avec succès ";
	L.AH_SCAN_SUCCESSFUL_2 = " objet(s).";
	--TODO: L.REAGENT_CACHE_OUT_OF_DATE = "Reagent Cache is out-of-date and will be re-cached when opening your professions!";
	--TODO: L.ARTIFACT_CACHE_OUT_OF_DATE = "Artifact Cache is out-of-date/inaccurate and will be re-cached when logging onto each character!";
	--TODO: L.QUEST_LOOP = "Likely just broke out of an infinite source quest loop.";
	--TODO: L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "Quest '%s' %s will prevent collection of Breadcrumb Quest '%s' %s";
	L.QUEST_OBJECTIVE_INVALID = "Objectif de quête invalide.";
	L.REFRESHING_COLLECTION = "Mise à jour de la collection...";
	L.DONE_REFRESHING = "Collection mise à jour.";
	--TODO: L.ADHOC_UNIQUE_COLLECTED_INFO = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";
	--TODO: L.AVAILABILITY = "Availability";
	--TODO: L.REQUIRES_PVP = "|CFF00FFDEThis Thing requires Player vs Player activities or a currency related to those activities.|r";
	--TODO: L.REQUIRES_PETBATTLES = "|CFF00FFDEThis Thing requires Pet Battling.|r";
	--TODO: L.REPORT_INACCURATE_QUEST = "Wrong Quest Info! (Click to Report)";
	--TODO: L.NESTED_QUEST_REQUIREMENTS = "Nested Quest Requirements";
	L.MAIN_LIST_REQUIRES_REFRESH = "[Ouvrir la liste principale pour mettre à jour la progression]";
	--TODO: L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207This group and its content do not contribute to the progress of this window since it is Sourced in another Location!|r";
	--TODO: L.CURRENCY_NEEDED_TO_BUY = "Estimated amount needed to obtain remaining Things";
	--TODO: L.LOCK_CRITERIA_LEVEL_LABEL = "Player Level";
	--TODO: L.LOCK_CRITERIA_QUEST_LABEL = "Completed Quest";
	--TODO: L.LOCK_CRITERIA_SPELL_LABEL = "Learned Spell/Mount/Recipe";
	--TODO: L.LOCK_CRITERIA_FACTION_LABEL = "Faction Reputation";
	--TODO: L.LOCK_CRITERIA_FACTION_FORMAT = "%s with %s (Current: %s)";
	--TODO: L.FORCE_REFRESH_REQUIRED = "This may require a Force Refresh ("..SHIFT_KEY_TEXT.." click) to properly be collected.";
	--TODO: L.FUTURE_UNOBTAINABLE = "Future Unobtainable!";
	--TODO: L.FUTURE_UNOBTAINABLE_TOOLTIP = "This is content that has been confirmed or is highly-probable to be made unobtainable in a known future patch.";
	L.TRADING_POST = "Comptoir";

	-- Item Filter Window
		L.ITEM_FILTER_TEXT = "Filtres des objets";
		L.ITEM_FILTER_DESCRIPTION = "Vous pouvez effectuer une recherche dans la base de données d’ATT en utilisant un filtre.";
		L.ITEM_FILTER_BUTTON_TEXT = "Définir le filtre des objets";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "Cliquez sur ce bouton pour modifier le filtre des objets que vous souhaitez rechercher dans ATT.";
		L.ITEM_FILTER_POPUP_TEXT = "Quel filtre d’objet souhaitez-vous rechercher ?";

-- Instructional Text
	L.MINIMAP_MOUSEOVER_TEXT = "Clic droit pour ouvrir le menu des options\nClic gauche pour afficher la liste principale\n"..CTRL_KEY_TEXT.." + clic gauche pour afficher la liste de zone\n"..SHIFT_KEY_TEXT.." + clic gauche pour rafraîchir les collections.";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z\n"..ALT_KEY_TEXT.." + clic droit pour tracer des points de repère|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000La meilleure source d’information ! Merci =)|r";
	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." + clic pour bloquer cette fenêtre";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." + clic pour débloquer cette fenêtre";
	L.QUEST_ROW_INSTRUCTIONS = "Clic droit pour afficher les exigences de la chaîne de quêtes";
	L.SYM_ROW_INFORMATION = "Clic droit afficher du contenu supplémentaire provenant d’un autre endroit.";
	--TODO: L.QUEST_ONCE_PER_ACCOUNT = "Once-Per-Account Quest";
	L.COMPLETED_BY = "Complété par : %s";
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
	L.AFTER_REFRESH = "Après l’actualisation";

	-- General tab
		-- Mode Title
			L.MODE = "Mode";
			L.TITLE_COMPLETIONIST = "Complétionniste ";
			L.TITLE_UNIQUE_APPEARANCE = "Unique ";
			L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account.."Compte|R ";
			L.TITLE_MAIN_ONLY = " (Joueur principal seulement)";
			--TODO: L.TITLE_NONE_THINGS = "None of the Things ";
			L.TITLE_ONLY = " Seulement ";
			L.TITLE_INSANE = app.ccColors.Insane.."Insensé|R ";
			--TODO: L.TITLE_SOME_THINGS = "Some of the Things ";
			L.TITLE_LEVEL = "Niveau ";
			L.TITLE_SOLO = "Solo ";
			L._BETA_LABEL = " |cff4AA7FF[Bêta]|R";

		L.MINIMAP_SLIDER = "Taille du bouton de la mini-carte";
		L.MINIMAP_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser la taille du bouton de la mini-carte.\n\nDéfaut: 36";
		--TODO: L.EXTRA_THINGS_LABEL = "Additional Resources";
		L.MINIMAP_BUTTON_CHECKBOX = "Afficher le bouton sur la mini-carte";
		--TODO: L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.";
		--TODO: L.WORLDMAP_BUTTON_CHECKBOX = "Show the World Map Button";
		--TODO: L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the ATT button on your world map. This button allows you to quickly access the Mini List for the currently displayed zone. Regularly, you'd need to physically travel to the zone in order to see the content on the mini list that you can access by typing '/att mini' in your chatbox.";
		L.CLICK_TO_CREATE_FORMAT = "Cliquez pour créer %s";
		L.KEYBINDINGS_TEXT = "Vous pouvez définir les raccourcis clavier pour ATT dans les options du jeu.";

	-- Interface tab
		L.ADDITIONAL_LABEL = "Informations complémentaires";
		L.DESCRIPTIONS = "Descriptions";
		L.LORE = "Lore";
		L.CLASSES = "Classes";

	-- Features tab
		L.MINIMAP_LABEL = "Bouton de la mini-carte.";
		L.MODULES_LABEL = "Modules & mini-listes";
		--TODO: L.SKIP_CUTSCENES_CHECKBOX = "Automatically Skip Cutscenes";
		--TODO: L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically skip all cutscenes on your behalf.";
		--TODO: L.AUTO_BOUNTY_CHECKBOX = "Automatically Open the Bounty List";
		--TODO: L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the items that have an outstanding collection bounty. If you manage to snag one of the items posted on this list, you could make a good sum of gold.\n\nShortcut Command: /attbounty";
		--TODO: L.AUTO_MAIN_LIST_CHECKBOX = "Automatically Open the Main List";
		--TODO: L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically open the Main List when you login.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Main List\n\nShortcut Command: /att";
		--TODO: L.AUTO_MINI_LIST_CHECKBOX = "Automatically Open the Mini List";
		--TODO: L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want to see everything you can collect in your current zone. The list will automatically switch when you change zones. Some people don't like this feature, but when you are solo farming, this feature is extremely useful.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Mini List\n\nShortcut Command: /att mini";
		--TODO: L.AUTO_PROF_LIST_CHECKBOX = "Automatically Open the Profession List";
		--TODO: L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List";
		--TODO: L.AUTO_RAID_ASSISTANT_CHECKBOX = "Automatically Open the Raid Assistant";
		--TODO: L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "Enable this option if you want to see an alternative group/party/raid settings manager called the 'Raid Assistant'. The list will automatically update whenever group settings change.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Raid Assistant\n\nShortcut Command: /attra";
		--TODO: L.AUTO_WQ_LIST_CHECKBOX = "Automatically Open the World Quests List";
		--TODO: L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want the 'World Quests' list to appear automatically. The list will automatically update whenever you switch zones.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle World Quests List\n\nShortcut Command: /attwq";
		--TODO: L.AUCTION_TAB_CHECKBOX = "Show the Auction House Module Tab";
		--TODO: L.AUCTION_TAB_CHECKBOX_TOOLTIP = "Enable this option if you want to see the Auction House Module provided with ATT.\n\nSome addons are naughty and modify this frame extensively. ATT doesn't always play nice with those toys.";
		--TODO: L.ICON_LEGEND_LABEL = "Icon Legend";
		--TODO: L.ICON_LEGEND_TEXT = app.ccColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t " .. "Unobtainable" .. "\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "Obtainable only with prerequisites" .. "\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. "Available seasonal content" .. "\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. "Unavailable seasonal content" .. "\n|T374225:0|t " .. "Unavailable on current character";
		L.CHAT_COMMANDS_LABEL = "Commandes du chat";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFou|R /things |cffFFFFFFou|R /allthethings\n|cffFFFFFFOuvre la liste principale.\n\n|R/att mini |cffFFFFFFou|R /attmini\n|cffFFFFFFOuvre la mini-liste.\n\n|R/att bounty\n|cffFFFFFFOuvre la liste des éléments non confirmés ou buggés.\n\n|R/att ra |cffFFFFFFou|R /attra\n|cffFFFFFFOuvre l’assistant de raid.\n\n|R/att wq |cffFFFFFFou|R /attwq\n|cffFFFFFFOuvre la liste des quêtes mondiales.\n\n|R/att item:1234 |cffFFFFFFou|R /att [lien objet]\n|cffFFFFFFOuvre une fenêtre des apparences partagées. Fonctionne aussi avec d’autres éléments, tel que|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFAffiche tous les éléments futurs qui seront supprimés lors d’un patch.\n\n|R/att random |cffFFFFFFou|R /attrandom |cffFFFFFFou|R /attran\n|cffFFFFFFOuvre une liste aléatoire.\n\n|R/att unsorted\n|cffFFFFFFOuvre une liste d’éléments non sourcés. Il est préférable d'ouvrir en mode débogage.\n\n|R/rl\n|cffFFFFFFRecharge votre interface WoW.|R";

	-- Sync Window
		L.ACCOUNT_MANAGEMENT = "Gestion des comptes";
		L.ACCOUNT_MANAGEMENT_TOOLTIP = "Cette liste affiche toutes les fonctionnalités liées à la synchronisation des données du compte.";
		L.ADD_LINKED_CHARACTER_ACCOUNT = "Ajouter un personnage / compte lié";
		L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "Cliquez ici pour lier un compte ou un personnage à votre compte.";
		L.ADD_LINKED_POPUP = "Veuillez saisir le nom du personnage ou du compte Battle.net vers lequel vous souhaitez établir un lien.";
		L.SYNC_CHARACTERS_TOOLTIP = "Affiche tous les personnages de votre compte.";
		L.NO_CHARACTERS_FOUND = "Aucun personnage trouvé.";
		L.LINKED_ACCOUNTS = "Comptes liés";
		L.LINKED_ACCOUNTS_TOOLTIP = "Affiche tous les comptes liés que vous avez définis jusqu’à présent.";
		L.NO_LINKED_ACCOUNTS = "Aucun compte lié n’a été trouvé.";
		L.LINKED_ACCOUNT_TOOLTIP = "Le compte de ce personnage sera synchronisé automatiquement lorsqu’il se connectera. Pour un jeu optimal, vous devriez mettre sur la liste blanche un « personnage banque » et probablement pas votre personnage principal afin de ne pas affecter votre capacité à jouer votre personnage lors de la synchronisation des données du compte.";
		L.DELETE_LINKED_CHARACTER = "Clic droit pour supprimer ce personnage lié";
		L.DELETE_LINKED_ACCOUNT = "Clic droit pour supprimer ce compte lié";
		L.DELETE_CHARACTER = "Clic droit pour supprimer ce personnage";
		L.CONFIRM_DELETE = "\n\nÊtes-vous sûr de vouloir supprimer ce personnage ?";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "Afficher / masquer le mode Compte";
		L.TOGGLE_COMPLETIONIST_MODE = "Afficher / masquer le mode Complétionniste";
		L.TOGGLE_DEBUG_MODE = "Afficher / masquer le mode Débogage";
		L.TOGGLE_FACTION_MODE = "Afficher / masquer le mode Faction";
		--TODO: L.TOGGLE_COMPLETEDTHINGS = "Toggle Completed Things (Both)";
		--TODO: L.TOGGLE_COMPLETEDGROUPS = "Toggle Completed Groups";
		--TODO: L.TOGGLE_COLLECTEDTHINGS = "Toggle Collected Things";
		L.TOGGLE_BOEITEMS = "Afficher / masquer les objets LqE / LqA";
		--TODO: L.TOGGLE_SOURCETEXT = "Toggle Source Locations";
		L.MODULES = "Modules";
		L.TOGGLE_MAINLIST = "Afficher / masquer la liste principale d’ATT";
		L.TOGGLE_MINILIST = "Afficher / masquer la mini-liste d’ATT";
		L.TOGGLE_PROFESSION_LIST = "Afficher / masquer la liste des métiers d’ATT";
		L.TOGGLE_WORLD_QUESTS_LIST = "Afficher / masquer les quêtes mondiales d’ATT";
		L.TOGGLE_RAID_ASSISTANT = "Afficher / masquer l’assistant de raid d’ATT";
		L.TOGGLE_RANDOM = "Afficher / masquer ATT Aléatoire";
		--TODO: L.REROLL_RANDOM = "Reroll the Random Selection";

	-- Event Text
		L.ITEM_ID_ADDED = "%s (%d) a été ajouté à votre collection.";
		L.ITEM_ID_ADDED_RANK = "%s (%d) [Rang %d] a été ajouté à votre collection.";
		L.ITEM_ID_ADDED_MISSING = "%s (%d) a été ajouté à cotre collection. Introuvable dans la base de données. Merci de le signaler sur le serveur Discord d’ATT !";
		L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] ont été ajoutés à votre collection.";
		L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] ont été ajoutés à votre collection. Introuvable dans la base de données. Merci de le signaler sur le serveur Discord d’ATT !";
		L.ITEM_ID_REMOVED = "%s (%d) a été supprimé de votre collection.";
		L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] ont été supprimés de votre collection.";

	-- Tooltip Text
		L.DROP_RATE = "Taux de chance de tomber";
		L.QUEST_GIVER = "Donneur de quête";
		--TODO: L.EVENT_SCHEDULE = "Event Schedule";
		--TODO: L.EVENT_ACTIVE = "Active:";
		--TODO: L.EVENT_START = "Start:";
		--TODO: L.EVENT_END = "End:";
		--TODO: L.EVENT_WHERE = "Where:";
		--TODO: L.REQUIRES_EVENT = "Requires Event";
		L.LOCKOUT = "Verrouillage";
		--TODO: L.RESETS = "Resets";
		L.SHARED = "Partagé";
		L.SPLIT = "Par difficulté";
		L.REQUIRES_LEVEL = "Niveau requis";
		L.SECRETS_HEADER = "Secrets";
		L.LIMITED_QUANTITY = "Il s’agit d’une quantité limitée qui n’est pas toujours disponible chez le vendeur.";
		L.SOURCE_ID_MISSING = "Veuillez signaler cet objet et le lieu où il a été acquis sur le Discord d’ATT, dans le salon #retail-errors !";
		L.ADDED_WITH_PATCH_FORMAT = "Ceci a été ajouté au patch %s";	--TODO: Added in %s
		--TODO: L.WAS_ADDED_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.ADDED_BACK_WITH_PATCH_FORMAT = "Re-added in %s";
		--TODO: L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "Added in %s";
		L.REMOVED_WITH_PATCH_FORMAT = "Ceci a été retiré au patch %s";	--TODO: Removed in %s

	-- Filter Text
		--TODO: L.CREATURES_COUNT = "[%s Creatures]";
		--TODO: L.CREATURES_LIST = "Creatures List";

	-- Artifact Relic Completion
		L.ARTIFACT_RELIC_CACHE = "Ouvre l’interface des Armes prodigieuses pour toutes tes Armes prodigieuses afin de vérifier si c’est une amélioration ou non. Cela est utile pour déterminer si tu peux échanger cet objet à un Twink ou non.";
		L.ARTIFACT_RELIC_COMPLETION = "Complétion des Armes prodigieuses";
		L.NOT_TRADEABLE = "Non échangeable";
		L.TRADEABLE = "Échangeable";

	-- Keybind usage
		--TODO: L.ENABLED = "enabled";
		--TODO: L.DISABLED = "disabled";

	-- Icons and Collection Text
		L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollecté|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollecté*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Pas Collecté|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplet|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Saved|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffMonnaie|r";

local a = L.ABBREVIATIONS;
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
do a[key] = value; end

if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5200] = "Apparence de base",							-- Base Appearance
			[-5201] = "Campagne du Domaine de classe",				-- Class Hall Campaign
			[-5202] = "L’équilibre de la puissance",				-- Balance of Power
			[-5203] = "Récompenses préstigieuses",					-- Prestige Rewards
			[-5204] = "Apparence de Challenge",						-- Challenge Appearance
			[-5205] = "Apparence Cachée",							-- Hidden Appearance
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		SKIP_AUTO_REFRESH = "Ne pas rafraîchir les données !";
		SKIP_AUTO_REFRESH_TOOLTIP = "Par défaut (non coché), toute modification des paramètres susceptible d’affecter les données visibles entraînera un rafraîchissement automatique.\n\nEn activant cette option, les modifications des paramètres ne prendront effet dès que l’utilisateur effectuera un rafraîchissement complet en faisant "..SHIFT_KEY_TEXT.." + clic droit sur une fenêtre d’ATT.";

	-- About Page
		ABOUT_PAGE = "À Propos";
		ABOUT_TOP = " |CFFFFFFFFest un addon de suivi de collection qui vous montre où et comment obtenir tout ce qui se trouve dans le jeu ! Nous avons une grande communtauté d’utilisateurs sur notre serveur Discord (le lien se trouve ci-dessous), vous pouvez venir nous poser des questions, soumettre des suggestions, signaler des bogues ou des éléments manquants. Si vous trouvez des objets à collectionner ou une quête qui n’est pas documentée, vous pouvez nous le faire savoir sur Discord. Pour ceux qui connaissent GitHub, nous avons un dépôt auquel vous pouvez contribuer directement.\n\nBien que nous nous efforcions d’être complets, il y a beaucoup de choses qui sont ajoutées au jeu à chaque patch, donc si nous manquons quelque chose, comprenez que nous sommes une petite équipe qui essaie de suivre les changements ainsi que de collecter des choses nous-mêmes. :D\n\nN’hésitez pas à me poser des questions lorsque je suis en session de diffusion et je ferai de mon mieux pour y répondre, même si ce n’est pas directement lié à ATT (également le développement des addons de WoW).\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "Contributeurs actifs : |CFFFFFFFF(pas d’ordre particulier)\n%s\n|rPanthéon des membres : |CFFFFFFFF(pas d’ordre particulier)\n%s\n\nSpéciale dédicace à AmiYuy (CanIMogIt) et Caerdon (Caerdon Wardrobe). Vous devriez absolument télécharger leurs addons pour afficher des icônes sur les objets à collectionner dans vos sacs ! %s %s %s\n\nPour afficher vos collections en ligne, vous pouvez visiter DataForAzeroth.com, créé par Shoogen ou WoWthing.org créé par Freddie !|r";	--TODO: now in alphabetical order
		--TODO: CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C to Copy to your Clipboard.";
		--TODO: CURSEFORGE_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Curse.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";
		--TODO: DISCORD_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Discord server.\n\nYou can share your progress/frustrations with other collectors!";
		--TODO: MERCH_BUTTON_LABEL = "Merch";
		--TODO: MERCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
		--TODO: PATREON_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Patreon page.\n\nHere you can see how you can support the AddOn financially!";
		--TODO: TWITCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!";
		--TODO: WAGO_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Wago.io.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";

	-- General Page
		--TODO: DEBUG_MODE = app.ccColors.Red.."Debug Mode|r (Show Everything)";
		--TODO: DEBUG_MODE_TOOLTIP = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
		ACCOUNT_MODE = app.ccColors.Account.."Mode Compte";
		ACCOUNT_MODE_TOOLTIP = "Activez cette option si vous souhaitez suivre tous les objets de tous vos personnages, sans tenir compte des filtres de classe et de race. Les filtres d’inaccessibilité s’appliquent toujours.";
		FACTION_MODE = "Faction uniquement";
		FACTION_MODE_TOOLTIP = "Activez cette option si vous souhaitez afficher les données du mode Compte uniquement pour les races et les classes de votre faction actuelle.";
		--TODO: LOOT_MODE = "Loot Mode";
		--TODO: LOOT_MODE_TOOLTIP = "Enable this option to show loot from all sources.\n\nYou can change which sort of loot displays for you based on the Filters tab.";
		--TODO: MODE_EXPLAIN_LABEL = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		--TODO: COMPLETIONIST_MODE = "+Sources";
		--TODO: COMPLETIONIST_MODE_TOOLTIP = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
		--TODO: MAIN_ONLY = "Main Only";
		--TODO: MAIN_ONLY_TOOLTIP = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
		--TODO: ONLY_RWP = "Only RWP";
		--TODO: ONLY_RWP_TOOLTIP = "Enable this option to only track transmog that get removed from the game in the future. Only Items tagged with 'removed with patch' data count toward this. If you find an item not tagged that should be tagged, please let me know!\n\nYou can change which sort of loot displays for you based on the Filters tab.";
		--TODO: UNOFFICIAL_SUPPORT_TOOLTIP = "NOTE: At this time, official support is not provided by WoW's API, but ATT can track items or quest completion to make it functional in the addon.";

	-- General Content
		--TODO: GENERAL_CONTENT = "General Content";
		--TODO: SHOW_INCOMPLETE_THINGS_CHECKBOX = "Show All Trackable Things";
		--TODO: SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
		SHOW_COMPLETED_GROUPS_CHECKBOX = "Afficher les groupes complétés";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
		--TODO: SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "Aucune restriction de niveau";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez que le contenu soit disponible quel que soit le niveau du joueur.\n\nREMARQUE : désactiver cette option est utile pour les nouveaux comptes.";
		--TODO: FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "No Skill Level Restrictions";
		--TODO: FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "Disable this setting if you only want to see content available to the maximum possible skill level available to the game environment.";
		SHOW_BOE_CHECKBOX = "Objets LqE / LaC";
		SHOW_BOE_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher les objets Lié quand équipé ou Lié au compte..\n\nDésativer cette option est utile lorsque vous essayez de terminer un donjon classique pour un personnage et que vous ne souhaitez pas farmer des objets qui peuvent être obtenus sur des personnages secondaires ou à l’hôtel des ventes.\n\nCàD : Ne perdez pas votre temps pour le Pendule du destin.";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignorer les objets LqE / LqR";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez ignorer les exigences en matière d’armure, d’arme, de race, de classe ou de profession pour les objets LqE / LqR.\n\nSi vous essayez de collecter des objets pour vos personnages secondaires via l’hôtel des ventes, ce mode peut vous être utile.";
		SHOW_ALL_SEASONAL = "Événemnts saisonniers";
		SHOW_ALL_SEASONAL_TOOLTIP = "Activez cete option si vous souhaitez afficher tous les événements saisonniers, au lieu des seuls événements saisonniers en cours.\n\nNOTE: Seasonal Events will automatically be visible as active 7 days in advance.";
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Activez cete option si vous souhaitez afficher du contenu nécessitant des combats de mascottes dans le jeu.";
		SHOW_PVP_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher le contenu qui 'peut' nécessiter des interactions Joueur contre Joueur dans le jeu.";
		--TODO: SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "All Learnable Quest Rewards";
		--TODO: SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "Disable this option to hide items that are listed as \"Not Available in Personal Loot\" for quests.\n\nThis is useful for tracking items that your class can't use in World Drops, but still marking quests as completed.\n\nSome items can be marked incorrectly: this setting WILL hide items that you can obtain!";

		-- Collectible Things
		ACC_WIDE_DEFAULT = "Par défaut, suivi sur "..app.ccColors.Account.."l’ensemble du compte|R.";
		--TODO: TRACK_ACC_WIDE = app.ccColors.Account .. "Track l’ensemble du compte|R";
		--TODO: ACCOUNT_THINGS_LABEL = "Account-Wide Things";
		--TODO: GENERAL_THINGS_LABEL = "General Things";
		--TODO: STRANGER_THINGS_LABEL = "Stranger Things";

		--TODO: ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les hauts faits.";
		APPEARANCES_CHECKBOX = "Apparences";
		APPEARANCES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre l’obtention des apparences.\n\nREMARQUE : désactiver cette option désactive également toutes les fanfares et la logique d’acquisition. Vous pouvez utiliser cette option pour éviter les pics de retard lors de la création de contenu de groupe important, mais n’oubliez pas que le calcul devra être effectué une fois l’option réactivée.";
		BATTLE_PETS_CHECKBOX = "Mascottes de combat";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les mascottes de combat et les compagnons. Ils peuvent être trouvés dans le monde ouvert ou par l’intermédiaire des boss dans divers donjons et raids, ainsi que par l’intermédiaire des vendeurs et de la réputation.";
		--TODO: DEATHS_CHECKBOX = "Deaths";
		--TODO: DEATHS_CHECKBOX_TOOLTIP = "Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.";
		--TODO: EXPLORATION_CHECKBOX = "Exploration";
		--TODO: EXPLORATION_CHECKBOX_TOOLTIP = "Enable this option to track exploration completion for outdoor maps.";
		FLIGHT_PATHS_CHECKBOX = "Trajets Aériens";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les trajets de vol et les stations de ferries. Pour les collecter, ouvrez le dialogue avec le maître des vols / ferries de chaque continent.\n\nREMARQUE : en raison de la technologie de mise en phase, il se peut que vous deviez passer en phase dans les autres versions d’une zone pour obtenir le crédit de ces points d’intérêt.";
		--TODO: HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		--TODO: HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+ Améliorations";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre spécifiquement la collecte des améliorations d’héritage individuelles.\n\nNous savons tous que Blizzard aime vider votre Or et votre âme, alors gardez une trace de cela avec cette option.";
		--TODO: ILLUSIONS_CHECKBOX = "Illusions";
		--TODO: ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.";
		--TODO: MOUNTS_CHECKBOX = MOUNTS;
		--TODO: MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!";
		--TODO: QUESTS_CHECKBOX = QUESTS_LABEL;
		--TODO: QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
		QUESTS_LOCKED_CHECKBOX = "+Verrouillées";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Activer cette option pour inclure spécifiquement le suivi de l’achèvement des quêtes verrouillées.\n\nLes quêtes verrouillées sont celles que le joueur n’est plus en mesure de terminer (selon les données connues d’ATT) en jouant normalement.\n\nL’obtention de ces quêtes dépend beaucoup de la fonction de synchronisation des groupes ou de l’utilisation de quêtes à l’échelle du compte pour intégrer la progression d’autres personnages.";
		RECIPES_CHECKBOX = "Recettes";
		--TODO: RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		REPUTATIONS_CHECKBOX = "Réputations";
		--TODO: REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		TITLES_CHECKBOX = "Titres";
		--TODO: TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		--TODO: TOYS_CHECKBOX = TOY_BOX;
		--TODO: TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!";

		-- Expansion Things
		--TODO: EXPANSION_THINGS_LABEL = "Expansion Things";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essences du Cœur d’Azeroth";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les essences d’Azérite.\n\nPar défaut, suivi actif sur le personnage.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrit guette-drake";
		--TODO: DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track Dragonflight Manuscrit guette-drake";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Sujets & Compagnons";
		--TODO: FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Pouvoirs de gravure runique";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre l’obtention des pouvoirs de gravure runique.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Intermédiaires";
		--TODO: SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Intermédiaires.";

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
		ITEM_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché si vous êtes en "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		CLASS_DEFAULTS_BUTTON = "Votre classe";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour reinitialiser tous les filtres en rapport avec votre classe acutelle.\n\nNOTE : Seuls les filtres qui sont utilisables pour votre classe peuvent être activés.";
		ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour activer toutes les options en même temps.";
		UNCHECK_ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour désactiver toutes les options en même temps.";

	-- General: Phases Page
	-- Classic Only, fully dynamic from within parser.

	-- General: Unobtainables Page
		UNOBTAINABLES_PAGE = "Inaccessibles";
		UNOBTAINABLE_LABEL = "Contenu inaccessible";
		CUSTOM_FILTERS_LABEL = "Contenu automatique";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché s’il est disponible pour votre personnage actuel ou si vous vous trouvez dans la section "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Activer ce paramètre pour afficher le contenu de %s même s’il n’est pas disponible pour le personnage actuel.";

	-- Interface Page
		TOOLTIP_LABEL = "Infobulles";
		TOOLTIP_HELP_CHECKBOX = "Afficher l’infobulle d’aide";
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher les informations d’aide dans les infobulles des fenêtres d’ATT qui indiquent les différentes combinaisons de touches / clics pour les fonctionnalités des fenêtres d’ATT. Si vous connaissez déjà toutes les combinaisons de touches / clics, vous pouvez économiser de l’espace dans les infobulles et désactiver cette option.";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Intégrations des infobulles";
		--TODO: ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		DISPLAY_IN_COMBAT_CHECKBOX = "En combat";
		--TODO: DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		TOOLTIP_MOD_LABEL = "Modifier";
		TOOLTIP_SHOW_LABEL = "Afficher les informations";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "Progression de la collecte";
		--TODO: SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		ICON_ONLY_CHECKBOX = "Icône seulement";
		ICON_ONLY_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher uniquement l’icône dans le coin supérieur droit au lieu de l’icône et du texte collecté / non collecté.\n\nCertaines personnes préfèrent des infobulles plus petites…";
		KNOWN_BY_CHECKBOX = "Connu par";
		KNOWN_BY_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher dans l’infobulle la liste complète des personnages de tous les serveurs qui connaissent la recette.";
		COMPLETED_BY_CHECKBOX = "Complété par";
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
		SPEC_CHECKBOX = "Spécialisations";
		--TODO: SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		--TODO: SUMMARIZE_CHECKBOX = "Summarize Things";
		--TODO: SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		--TODO: CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		--TODO: SOURCE_LOCATIONS_CHECKBOX = "Source Locations";
		--TODO: SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		--TODO: LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		--TODO: COMPLETED_SOURCES_CHECKBOX = "For Completed";
		--TODO: COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		DROP_CHANCES_CHECKBOX = "Chances de tomber";
		--TODO: DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		--TODO: FOR_CREATURES_CHECKBOX = "For Creatures";
		--TODO: FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		--TODO: FOR_THINGS_CHECKBOX = "For Things";
		--TODO: FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		--TODO: FOR_UNSORTED_CHECKBOX = "For Unsorted";
		--TODO: FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: WITH_WRAPPING_CHECKBOX = "Allow Wrapping",
		--TODO: WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.",

		BEHAVIOR_LABEL = "Comportement de la liste";
		MAIN_LIST_SLIDER_LABEL = "Échelle de la liste principale";
		MAIN_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle de la liste principale.\n\nDéfaut : 1";
		MINI_LIST_SLIDER_LABEL = "Échelle de la mini-liste";
		MINI_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle des mini-listes.\n\nDéfaut : 1";
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
		SORT_BY_PROGRESS_CHECKBOX = "Trier par progression";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez trier les groupes ("..SHIFT_KEY_TEXT.." + clic droit) par % de progression au lieu de les trier par leur nom.";
		--TODO: SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over tota";
		PERCENTAGES_CHECKBOX = "Afficher le pourcentage de réalisation";
		--TODO: PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		PRECISION_SLIDER = "Niveau de précision";
		PRECISION_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser le niveau de précision souhaité dans les calculs de pourcentage.\n\nDéfaut : 2";
		DYNAMIC_CATEGORY_LABEL = "Catégories dynamiques";
		DYNAMIC_CATEGORY_SIMPLE = "Simple";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Générer des catégories dynamiques en se basant uniquement sur la catégorie la plus haute";
		--TODO: DYNAMIC_CATEGORY_NESTED = "Nested";
		--TODO: DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Requiert un rechargement|r";
		--TODO: MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "Maximum Top Line Length";

	-- Interface: Accessibility Page
		--TODO: ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		--TODO: ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		--TODO: COLORS_ICONS = "Colors and Icons";
		--TODO: LOCKED_QUESTS = "Locked quests";
		MORE_COLORS_CHECKBOX = "Afficher les couleurs";
		--TODO: MORE_COLORS_CHECKBOX_TOOLTIP = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
		WINDOW_COLORS = "Couleurs de la fenêtre";
		--TODO: BACKGROUND = EMBLEM_BACKGROUND;
		BACKGROUND_TOOLTIP = "Définit la couleur d’arrière-plan de toutes les fenêtres d’ATT.";
		--TODO: BORDER = EMBLEM_BORDER;
		BORDER_TOOLTIP = "Définit la couleur des bords de toutes les fenêtres d’ATT.";
		--TODO: RESET_TOOLTIP = "Revert to default settings.";
		CLASS_BORDER = "Utiliser la couleur de classe pour les bords";
		CLASS_BORDER_TOOLTIP = "Utilise la couleur de votre classe pour les bords. Cette couleur est mise à jour lorsque vous vous connectez sur une autre classe.";

	-- Interface: Information Page

	-- Features Page

	-- Features: Audio Page
		--TODO: CELEBRATIONS_LABEL = "Celebrations & Sound Effects";
		--TODO: AUDIO_CHANNEL = "Audio Channel";
		--TODO: CELEBRATE_COLLECTED_CHECKBOX = "Collected Things Trigger a Celebration";
		--TODO: CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		--TODO: SOUNDPACK = "Soundpack";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX = "Play a Sound Effect when you Die";
		--TODO: PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a sound effect when you die.";
		--TODO: WARN_REMOVED_CHECKBOX = "Removed Things Trigger a Warning";
		--TODO: WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		--TODO: SCREENSHOT_COLLECTED_CHECKBOX = "Collected Things Trigger a Screenshot";
		--TODO: SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to take a screenshot for every Thing you collect.";

	-- Features: Reporting Page
		REPORTING_LABEL = "Signalement";
		--TODO: REPORT_COLLECTED_THINGS_CHECKBOX = "Report Collected Things";
		--TODO: REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "Afficher l’ID de quête";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher l’ID de quête pour toutes celles que vous acceptez ou terminez. (Sert à signaler des bogues, suivre des objectifs, etc.)";
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
		ACCOUNT_SYNCHRONIZATION = "Synchronisation du compte";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Synchronisation automatique des données du compte";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Activer cette option si vous souhaitez qu’ATT tente de synchroniser automatiquement les données entre les comptes lors de la connexion ou du rechargement de l’interface utilisateur.";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		PROFILES_PAGE = "Profils";
		PROFILE = "Profil";
		PROFILE_INITIALIZE = "Initialiser les profils";
		PROFILE_INITIALIZE_TOOLTIP = "Cela permettra à vos variables sauvegardées pour ATT de supporter et de contenir des données de profil. Vos paramètres et informations de fenêtre actuels seront copiés dans le profil '"..DEFAULT.."'. Ce profil ne peut pas être supprimé, mais peut être modifié et sera utilisé comme profil initial pour tous les personnages. N’oubliez pas de signaler tout comportement inhabituel ou tout bogue lié aux profils sur le Discord d’ATT !";
		PROFILE_INITIALIZE_CONFIRM = "Êtes-vous sûr de vouloir activer le support du profil ?";
		PROFILE_NEW_TOOLTIP = "Créer un nouveau profil qui sera utilisé par le personnage actuel.";
		PROFILE_COPY_TOOLTIP = "Copier le profil sélectionné dans le profil actuel";
		PROFILE_DELETE_TOOLTIP = "Supprimer le profil sélectionné";
		PROFILE_SWITCH_TOOLTIP = "Définir le profil sélectionné comme le profil actuel\n\n"..SHIFT_KEY_TEXT.." + clic pour accéder au profil sélectionné";
		SHOW_PROFILE_LOADED = "Afficher le profil qui se charge lors de la connexion ou lors du passage d’un profil à l’autre";
})
do a[key] = value; end

if app.IsRetail then
--TODO:
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "Expérience Nouveau Joueur", desc = "Seul un nouveau personnage peut collecter ceci." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Fil du destin", desc = "Seul un personnage ayant passé la suite de quête principale de Shadowlands peut collecter ceci." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Seul un personnage ayant obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Seul un personnage |cffff0000n’ayant pas|r obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci." },
})
do a[key] = value; end
end