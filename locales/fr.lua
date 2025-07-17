if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";
	L.DESCRIPTION = "\"Sottement, vous avez cherché votre propre perte. Effrontément, vous avez ignoré des pouvoirs au-delà de votre compréhension. Vous vous êtes battus pour envahir le royaume du Collectionneur. Maintenant, il n’y a plus qu’une seule issue : emprunter le chemin solitaire... des damnés.\"";
	L.YOU_DID_IT = "VOUS AVEZ RÉUSSI !";


	L.REFRESHING_COLLECTION = "Mise à jour de la collection...";
	L.DONE_REFRESHING = "Collection mise à jour.";
	L.PROGRESS = "Progression";
	L.COMPLETED_BY = "Complété par: %s";
	L.KNOWN_BY = "Connu par %s";

	L.MINIMAP_MOUSEOVER_TEXT = "Clic droit pour ouvrir le menu des options\nClic gauche pour afficher la liste principale\n"..CTRL_KEY_TEXT.." + clic gauche pour afficher la liste de zone\n"..SHIFT_KEY_TEXT.." + clic gauche pour rafraîchir les collections.";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z\n"..ALT_KEY_TEXT.." + clic droit pour tracer des points de repère|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000La meilleure source d’information ! Merci =)|r";
	L.MAIN_LIST_REQUIRES_REFRESH = "[Ouvrir la liste principale pour mettre à jour la progression]";
	L.VISIT_FLIGHT_MASTER = "Rendez visite au Maître de vol pour mettre en cache.";
	L.PLEASE_REPORT_MESSAGE = "Merci de signaler sur le serveur Discord d’ATT dans le canal #retail-errors ! Merci !";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.." + C pour copier le rapport multiligne dans votre presse-papiers)";
	L.ITEM_GIVES_REP = "Fournit la réputation avec '";

	L.ITEM_ID_ADDED = "%s (%d) a été ajouté à votre collection.";
	L.ITEM_ID_ADDED_RANK = "%s (%d) [Rang %d] a été ajouté à votre collection.";
	L.ITEM_ID_ADDED_MISSING = "%s (%d) a été ajouté à cotre collection. Introuvable dans la base de données. Merci de le signaler sur le serveur Discord d’ATT !";
	L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] ont été ajoutés à votre collection.";
	L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] ont été ajoutés à votre collection. Introuvable dans la base de données. Merci de le signaler sur le serveur Discord d’ATT !";
	L.ITEM_ID_REMOVED = "%s (%d) a été supprimé de votre collection.";
	L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] ont été supprimés de votre collection.";

	L.DROP_RATE = "Taux de chance de tomber";
	L.QUEST_GIVER = "Donneur de quête";
	L.COORDINATES = "Coordonnées";
	L.LOCKOUT = "Verrouillage";
	L.SHARED = "Partagé";
	L.SPLIT = "Par difficulté";
	L.REQUIRES = "Requiert";
	L.REQUIRES_LEVEL = "Niveau requis";
	L.LIMITED_QUANTITY = "Il s’agit d’une quantité limitée qui n’est pas toujours disponible chez le vendeur.";
	L.ADDED_WITH_PATCH_FORMAT = "Ceci a été ajouté au patch %s";	--TODO: Added in %s
	L.REMOVED_WITH_PATCH_FORMAT = "Ceci a été retiré au patch %s";	--TODO: Removed in %s

	L.MINUMUM_STANDING_WITH_FACTION = "Il faut avoir obtenu une note minimale de %s avec %s.";
	L.MAXIMUM_STANDING_WITH_FACTION = "Il faut avoir obtenu une note inférieure à %s avec %s.";
	L.MIN_MAX_STANDING_WITH_FACTION = "Il faut avoir obtenu une note entre %s et %s avec %s.";

	L.HEIRLOOM_TEXT = "Objet Héritage déverrouillé";
	L.HEIRLOOM_TEXT_DESC = "Indique si vous avez ou non déjà acquis ou acheté l’objet d’héritage.";
	L.HEIRLOOMS_UPGRADES_DESC = "Indique si vous avez ou non amélioré l’objet d’héritage à un certain niveau.\n\nBye bye votre Or.\n- Crieve";

	L.TITLES_DESC = "Les titres sont suivis sur l’ensemble de votre compte, mais votre personnage principal doit être qualifié pour que certains titres soient utilisables sur ce personnage.";

	L.DESCRIPTIONS = "Descriptions";
	L.PROVIDERS = "Fournisseur(s)";
	L.AND_MORE = "Et %s plus...";
	L.SYM_ROW_INFORMATION = "Clic droit afficher du contenu supplémentaire provenant d’un autre endroit.";

	L.ADDITIONAL_LABEL = "Informations complémentaires";
	L.CRITERIA_FOR = "Critères de";

	L.CHAT_COMMANDS_LABEL = "Commandes du chat";
	L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFou|R /things |cffFFFFFFou|R /allthethings\n|cffFFFFFFOuvre la liste principale.\n\n|R/att mini |cffFFFFFFou|R /attmini\n|cffFFFFFFOuvre la mini-liste.\n\n|R/att bounty\n|cffFFFFFFOuvre la liste des éléments non confirmés ou buggés.\n\n|R/att ra |cffFFFFFFou|R /attra\n|cffFFFFFFOuvre l’assistant de raid.\n\n|R/att wq |cffFFFFFFou|R /attwq\n|cffFFFFFFOuvre la liste des quêtes mondiales.\n\n|R/att item:1234 |cffFFFFFFou|R /att [lien objet]\n|cffFFFFFFOuvre une fenêtre des apparences partagées. Fonctionne aussi avec d’autres éléments, tel que|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFAffiche tous les éléments futurs qui seront supprimés lors d’un patch.\n\n|R/att random |cffFFFFFFou|R /attrandom |cffFFFFFFou|R /attran\n|cffFFFFFFOuvre une liste aléatoire.\n\n|R/att unsorted\n|cffFFFFFFOuvre une liste d’éléments non sourcés. Il est préférable d'ouvrir en mode débogage.\n\n|R/rl\n|cffFFFFFFRecharge votre interface WoW.|R";
	L.KEYBINDINGS = SETTINGS_KEYBINDINGS_LABEL;
	L.KEYBINDINGS_TEXT = "Vous pouvez définir les raccourcis clavier pour ATT dans les options du jeu.";
	L.MINIMAP_LABEL = "Bouton de la mini-carte.";
	L.MODULES_LABEL = "Modules & mini-listes";
	L.MINIMAP_BUTTON_CHECKBOX = "Afficher le bouton sur la mini-carte";
	L.MINIMAP_SLIDER = "Taille du bouton de la mini-carte";
	L.MINIMAP_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser la taille du bouton de la mini-carte.\n\nDéfaut: 36";

	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollecté|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollecté*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Pas Collecté|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet|r";	-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet*|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplet|r";	-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	L.TRACKING_PROGRESS = "Suivi des progrès";
	L.COLLECTED_STRING = " Collectionné";
	L.COLLECTION_PROGRESS = "Progression de la collection";
	L.CONTAINS = "Contient :";
	L.FACTIONS = "Factions";
	L.AND_OTHER_SOURCES = "Et %s sources différentes...";
	L.NO_COORDINATES_FORMAT = "Aucune coordonnée connue pour %s";
	L.TOM_TOM_NOT_FOUND = "Vous devez avoir installé TomTom pour pouvoir ajouter des coordonnées.";
	L.FLIGHT_PATHS = "Trajets Aériens";
	L.RACE_LOCKED = "Race bloquée";
	L.NOT_AVAILABLE_IN_PL = "Non disponible pour le butin personnel.";
	L.MARKS_OF_HONOR_DESC = "Les Marques d’honneur doivent être affichées dans une fenêtre contextuelle pour afficher tout le contenu 'normal'.\n(Tapez '/att' dans le chat puis faites "..SHIFT_KEY_TEXT.." + clic pour pour afficher l’objet)\n\n|cFFfe040fAprès l’achat et l’utilisation d’un ensemble, une nouvelle connexion et une actualisation forcée d’ATT (dans cet ordre)\npeuvent être nécessaires pour enregistrer correctement tous les objets.|r";
	L.COST = "Coût";
	L.SOURCES = "Source(s)";
	L.WRONG_FACTION = "Il se peut que vous deviez être dans la faction adverse pour afficher cela.";
	L.ARTIFACT_INTRO_REWARD = "Attribué après avoir terminé la quête d’introduction de cet artefact.";
	L.FLIGHT_PATHS_DESC = "Les trajets de vol sont mis en cache lorsque vous parlez au Maître de vol sur chaque continent.\n- Crieve";
	L.FAILED_ITEM_INFO = "Échec de l’acquisition des informations pour cet objet. Il se peut que l’objet soit pas valide ou qu’il n’ait pas encore été mis en cache sur votre serveur.";
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
	L.QUEST_MAY_BE_REMOVED = "Impossible d’obtenir des informations. Cette quête a peut-être été supprimée du jeu. ";

	L.DURING_WQ_ONLY = "Peut être réalisé uniquement lorsque la quête mondiale est active.";
	L.COMPLETED_DAILY = "Peut être réalisé uniquement quotidiennement.";
	L.COMPLETED_WEEKLY = "Peut être réalisé uniquement chaque semaine.";
	L.COMPLETED_MONTHLY = "Peut être réalisé uniquement chaque mois.";
	L.COMPLETED_YEARLY = "Peut être réalisé uniquement chaque année.";
	L.COMPLETED_MULTIPLE = "Peut être réalisé plusieurs fois.";
	L.NO_ENTRIES = "Aucune entrée correspondant à vos filtres n’a été trouvée.";
	L.NO_ENTRIES_DESC = "Si vous pensez qu’il s’agit d’une erreur, essayez d’activer le 'mode débogage'. Il se peut que l’un de vos filtres limite la visibilité du groupe.";
	L.DEBUG_LOGIN = "Récompensé pour s’être connecté.\nBon travail ! VOUS L’AVEZ FAIT !\nSeulement visible en mode débogage.";
	L.UNSORTED = "Non trié";
	L.UNSORTED_DESC = "Ces données n’ont pas encore été ajoutées. ATT " .. app.Version;
	L.NEVER_IMPLEMENTED = "Jamais mis en place";
	L.NEVER_IMPLEMENTED_DESC = "Ces objets existent techniquement dans le jeu mais n’ont jamais été mis à la disposition des joueurs";
	L.OPEN_AUTOMATICALLY = "Ouvrir automatiquement";
	L.OPEN_AUTOMATICALLY_DESC = "Si vous n’êtes pas un développeur de chez Blizzard, il peut être judicieux de décocher cela. Ceci a été fait pour forcer Blizzard à corriger et / ou reconnaître ces bugs.";
	L.MINI_LIST = "Mini Liste";
	L.MINI_LIST_DESC = "Cette liste contient les informations pertinentes pour la zone actuelle, qui ne peuvent être trouvées dans la base de données d’ATT.";
	L.UPDATE_LOCATION_NOW = "Mettre à jour l’emplacement maintenant";
	L.LOOT_SPEC = "Spécialisation du butin";
	L.DUNGEON_DIFF = "Difficulté du donjon";
	L.RAID_DIFF = "Difficulté du raid";
	L.LEGACY_RAID_DIFF = "Difficulté du raid héritage";
	L.RESET_INSTANCES = "Réinitiialiser les instances";
	L.RESET_INSTANCES_DESC = "Cliquer ici pour réinitialiser les insatnces.\n\n"..ALT_KEY_TEXT.." + clic pour activer la réinitialisation automatique de vos instances lorsque vous quittez un donjon.\n\nATTENTION : SOYEZ PRUDENT AVEC CETTE OPTION !";
	L.LEAVE_GROUP = "Quitter le groupe";
	L.LEAVE_GROUP_DESC = "Cliquer ici pour quitter le groupe. Dans la plupart des cas, cela vous conduira également au cimetière le plus proche au bout de 60 secondes environ.\n\nREMARQUE : ne fonctionne que si vous êtes dans un groupe ou si le jeu pense que vous êtes dans un groupe.";
	L.CURRENT_SPEC = "Spécialisation actuelle";
	L.CURRENT_SPEC_DESC = "Si vous changez de talent, votre spécialisation en matière de butin change également.";
	L.CLICK_TO_CHANGE = "Cliquez pour changer maintenant. (si disponible)";
	L.REROLL = "Reroll";
	L.REROLL_2 = "Reroll :";
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
	L.CHANGE_SEARCH_FILTER = "Changer le filtre de la recherche";
	L.CHANGE_SEARCH_FILTER_DESC = "Cliquer pour changher le filtre de la recherche.";
	L.NO_SEARCH_METHOD = "Aucune méthode de recherche n’est spécifiée.";
	L.PROFESSION_LIST = "Liste des métiers";
	L.CACHED_RECIPES_2 = " recettes connues !";
	L.UPDATE_WORLD_QUESTS = "Mettre à jour les quêtes mondiales";
	L.CLEAR_WORLD_QUESTS = "Nettoyer les quêtes mondiales";
	L.CLEAR_WORLD_QUESTS_DESC = "Cliquez pour nettoyer les informations actuelles dans le cadre des quêtes mondiales.";
	L.AH_SCAN_SUCCESSFUL_1 = ": Analyser avec succès ";
	L.AH_SCAN_SUCCESSFUL_2 = " objet(s).";
	L.QUEST_OBJECTIVE_INVALID = "Objectif de quête invalide.";
	L.TRADING_POST = "Comptoir";

		L.ITEM_FILTER_TEXT = "Filtres des objets";
		L.ITEM_FILTER_DESCRIPTION = "Vous pouvez effectuer une recherche dans la base de données d’ATT en utilisant un filtre.";
		L.ITEM_FILTER_BUTTON_TEXT = "Définir le filtre des objets";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "Cliquez sur ce bouton pour modifier le filtre des objets que vous souhaitez rechercher dans ATT.";
		L.ITEM_FILTER_POPUP_TEXT = "Quel filtre d’objet souhaitez-vous rechercher ?";

	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." + clic pour bloquer cette fenêtre";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." + clic pour débloquer cette fenêtre";
	L.QUEST_ROW_INSTRUCTIONS = "Clic droit pour afficher les exigences de la chaîne de quêtes";

	L.AFTER_REFRESH = "Après l’actualisation";

			L.MODE = "Mode";
			L.TITLE_COMPLETIONIST = "Complétionniste ";
			L.TITLE_UNIQUE_APPEARANCE = "Unique ";
			L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account.."Compte|R ";
			L.TITLE_MAIN_ONLY = " (Joueur principal seulement)";
			L.TITLE_ONLY = " Seulement ";
			L.TITLE_INSANE = app.ccColors.Insane.."Insensé|R ";
			L.TITLE_LEVEL = "Niveau ";
			L.TITLE_SOLO = "Solo ";
			L._BETA_LABEL = " |cff4AA7FF[Bêta]|R";


		L.CLICK_TO_CREATE_FORMAT = "Cliquez pour créer %s";



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

		L.TOGGLE_ACCOUNT_MODE = "Afficher / masquer le mode Compte";
		L.TOGGLE_COMPLETIONIST_MODE = "Afficher / masquer le mode Complétionniste";
		L.TOGGLE_DEBUG_MODE = "Afficher / masquer le mode Débogage";
		L.TOGGLE_FACTION_MODE = "Afficher / masquer le mode Faction";
		L.TOGGLE_BOEITEMS = "Afficher / masquer les objets LqE / LqA";
		L.MODULES = "Modules";
		L.TOGGLE_MAINLIST = "Afficher / masquer la liste principale d’ATT";
		L.TOGGLE_MINILIST = "Afficher / masquer la mini-liste d’ATT";
		L.TOGGLE_PROFESSION_LIST = "Afficher / masquer la liste des métiers d’ATT";
		L.TOGGLE_WORLD_QUESTS_LIST = "Afficher / masquer les quêtes mondiales d’ATT";
		L.TOGGLE_RAID_ASSISTANT = "Afficher / masquer l’assistant de raid d’ATT";
		L.TOGGLE_RANDOM = "Afficher / masquer ATT Aléatoire";

		L.SECRETS_HEADER = "Secrets";
		L.SOURCE_ID_MISSING = "Veuillez signaler cet objet et le lieu où il a été acquis sur le Discord d’ATT, dans le salon #retail-errors !";

		L.ARTIFACT_RELIC_CACHE = "Ouvre l’interface des Armes prodigieuses pour toutes tes Armes prodigieuses afin de vérifier si c’est une amélioration ou non. Cela est utile pour déterminer si tu peux échanger cet objet à un Twink ou non.";
		L.ARTIFACT_RELIC_COMPLETION = "Complétion des Armes prodigieuses";
		L.NOT_TRADEABLE = "Non échangeable";
		L.TRADEABLE = "Échangeable";


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
		SKIP_AUTO_REFRESH = "Ne pas rafraîchir les données !";
		SKIP_AUTO_REFRESH_TOOLTIP = "Par défaut (non coché), toute modification des paramètres susceptible d’affecter les données visibles entraînera un rafraîchissement automatique.\n\nEn activant cette option, les modifications des paramètres ne prendront effet dès que l’utilisateur effectuera un rafraîchissement complet en faisant "..SHIFT_KEY_TEXT.." + clic droit sur une fenêtre d’ATT.";

		ABOUT_TOP = " |CFFFFFFFFest un addon de suivi de collection qui vous montre où et comment obtenir tout ce qui se trouve dans le jeu ! Nous avons une grande communtauté d’utilisateurs sur notre serveur Discord (le lien se trouve ci-dessous), vous pouvez venir nous poser des questions, soumettre des suggestions, signaler des bogues ou des éléments manquants. Si vous trouvez des objets à collectionner ou une quête qui n’est pas documentée, vous pouvez nous le faire savoir sur Discord. Pour ceux qui connaissent GitHub, nous avons un dépôt auquel vous pouvez contribuer directement.\n\nBien que nous nous efforcions d’être complets, il y a beaucoup de choses qui sont ajoutées au jeu à chaque patch, donc si nous manquons quelque chose, comprenez que nous sommes une petite équipe qui essaie de suivre les changements ainsi que de collecter des choses nous-mêmes. :D\n\nN’hésitez pas à me poser des questions lorsque je suis en session de diffusion et je ferai de mon mieux pour y répondre, même si ce n’est pas directement lié à ATT (également le développement des addons de WoW).\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "Contributeurs actifs : |CFFFFFFFF(pas d’ordre particulier)\n%s\n|rPanthéon des membres : |CFFFFFFFF(pas d’ordre particulier)\n%s\n\nSpéciale dédicace à AmiYuy (CanIMogIt) et Caerdon (Caerdon Wardrobe). Vous devriez absolument télécharger leurs addons pour afficher des icônes sur les objets à collectionner dans vos sacs ! %s %s %s\n\nPour afficher vos collections en ligne, vous pouvez visiter DataForAzeroth.com, créé par Shoogen ou WoWthing.org créé par Freddie !|r";	--TODO: now in alphabetical order

		ACCOUNT_MODE = app.ccColors.Account.."Mode Compte";
		ACCOUNT_MODE_TOOLTIP = "Activez cette option si vous souhaitez suivre tous les objets de tous vos personnages, sans tenir compte des filtres de classe et de race. Les filtres d’inaccessibilité s’appliquent toujours.";
		FACTION_MODE = "Faction uniquement";
		FACTION_MODE_TOOLTIP = "Activez cette option si vous souhaitez afficher les données du mode Compte uniquement pour les races et les classes de votre faction actuelle.";

		SHOW_COMPLETED_GROUPS_CHECKBOX = "Afficher les groupes complétés";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "Aucune restriction de niveau";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez que le contenu soit disponible quel que soit le niveau du joueur.\n\nREMARQUE : désactiver cette option est utile pour les nouveaux comptes.";
		SHOW_BOE_CHECKBOX = "Objets LqE / LaC";
		SHOW_BOE_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher les objets Lié quand équipé ou Lié au compte..\n\nDésativer cette option est utile lorsque vous essayez de terminer un donjon classique pour un personnage et que vous ne souhaitez pas farmer des objets qui peuvent être obtenus sur des personnages secondaires ou à l’hôtel des ventes.\n\nCàD : Ne perdez pas votre temps pour le Pendule du destin.";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignorer les objets LqE / LqR";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez ignorer les exigences en matière d’armure, d’arme, de race, de classe ou de profession pour les objets LqE / LqR.\n\nSi vous essayez de collecter des objets pour vos personnages secondaires via l’hôtel des ventes, ce mode peut vous être utile.";
		SHOW_ALL_SEASONAL = "Événemnts saisonniers";
		SHOW_ALL_SEASONAL_TOOLTIP = "Activez cete option si vous souhaitez afficher tous les événements saisonniers, au lieu des seuls événements saisonniers en cours.\n\nNOTE: Seasonal Events will automatically be visible as active 7 days in advance.";
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Activez cete option si vous souhaitez afficher du contenu nécessitant des combats de mascottes dans le jeu.";
		SHOW_PVP_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher le contenu qui 'peut' nécessiter des interactions Joueur contre Joueur dans le jeu.";

		ACC_WIDE_DEFAULT = "Par défaut, suivi sur "..app.ccColors.Account.."l’ensemble du compte|R.";

		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les hauts faits.";
		APPEARANCES_CHECKBOX = "Apparences";
		APPEARANCES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre l’obtention des apparences.\n\nREMARQUE : désactiver cette option désactive également toutes les fanfares et la logique d’acquisition. Vous pouvez utiliser cette option pour éviter les pics de retard lors de la création de contenu de groupe important, mais n’oubliez pas que le calcul devra être effectué une fois l’option réactivée.";
		BATTLE_PETS_CHECKBOX = "Mascottes de combat";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les mascottes de combat et les compagnons. Ils peuvent être trouvés dans le monde ouvert ou par l’intermédiaire des boss dans divers donjons et raids, ainsi que par l’intermédiaire des vendeurs et de la réputation.";
		FLIGHT_PATHS_CHECKBOX = "Trajets Aériens";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les trajets de vol et les stations de ferries. Pour les collecter, ouvrez le dialogue avec le maître des vols / ferries de chaque continent.\n\nREMARQUE : en raison de la technologie de mise en phase, il se peut que vous deviez passer en phase dans les autres versions d’une zone pour obtenir le crédit de ces points d’intérêt.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+ Améliorations";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre spécifiquement la collecte des améliorations d’héritage individuelles.\n\nNous savons tous que Blizzard aime vider votre Or et votre âme, alors gardez une trace de cela avec cette option.";
		QUESTS_LOCKED_CHECKBOX = "+Verrouillées";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Activer cette option pour inclure spécifiquement le suivi de l’achèvement des quêtes verrouillées.\n\nLes quêtes verrouillées sont celles que le joueur n’est plus en mesure de terminer (selon les données connues d’ATT) en jouant normalement.\n\nL’obtention de ces quêtes dépend beaucoup de la fonction de synchronisation des groupes ou de l’utilisation de quêtes à l’échelle du compte pour intégrer la progression d’autres personnages.";
		RECIPES_CHECKBOX = "Recettes";
		REPUTATIONS_CHECKBOX = "Réputations";
		TITLES_CHECKBOX = "Titres";

		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essences du Cœur d’Azeroth";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre les essences d’Azérite.\n\nPar défaut, suivi actif sur le personnage.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrit guette-drake";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Sujets & Compagnons";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Pouvoirs de gravure runique";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Activer cette option pour suivre l’obtention des pouvoirs de gravure runique.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Intermédiaires";



		ITEM_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché si vous êtes en "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		CLASS_DEFAULTS_BUTTON = "Votre classe";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour reinitialiser tous les filtres en rapport avec votre classe acutelle.\n\nNOTE : Seuls les filtres qui sont utilisables pour votre classe peuvent être activés.";
		ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour activer toutes les options en même temps.";
		UNCHECK_ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour désactiver toutes les options en même temps.";


		UNOBTAINABLES_PAGE = "Inaccessibles";
		UNOBTAINABLE_LABEL = "Contenu inaccessible";
		CUSTOM_FILTERS_LABEL = "Contenu automatique";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché s’il est disponible pour votre personnage actuel ou si vous vous trouvez dans la section "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Activer ce paramètre pour afficher le contenu de %s même s’il n’est pas disponible pour le personnage actuel.";

		TOOLTIP_LABEL = "Infobulles";
		TOOLTIP_HELP_CHECKBOX = "Afficher l’infobulle d’aide";
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher les informations d’aide dans les infobulles des fenêtres d’ATT qui indiquent les différentes combinaisons de touches / clics pour les fonctionnalités des fenêtres d’ATT. Si vous connaissez déjà toutes les combinaisons de touches / clics, vous pouvez économiser de l’espace dans les infobulles et désactiver cette option.";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Intégrations des infobulles";
		DISPLAY_IN_COMBAT_CHECKBOX = "En combat";
		TOOLTIP_MOD_LABEL = "Modifier";
		TOOLTIP_SHOW_LABEL = "Afficher les informations";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "Progression de la collecte";
		ICON_ONLY_CHECKBOX = "Icône seulement";
		ICON_ONLY_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher uniquement l’icône dans le coin supérieur droit au lieu de l’icône et du texte collecté / non collecté.\n\nCertaines personnes préfèrent des infobulles plus petites…";
		KNOWN_BY_CHECKBOX = "Connu par";
		KNOWN_BY_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher dans l’infobulle la liste complète des personnages de tous les serveurs qui connaissent la recette.";
		COMPLETED_BY_CHECKBOX = "Complété par";
		SPEC_CHECKBOX = "Spécialisations";
		DROP_CHANCES_CHECKBOX = "Chances de tomber";

		BEHAVIOR_LABEL = "Comportement de la liste";
		MAIN_LIST_SLIDER_LABEL = "Échelle de la liste principale";
		MAIN_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle de la liste principale.\n\nDéfaut : 1";
		MINI_LIST_SLIDER_LABEL = "Échelle de la mini-liste";
		MINI_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle des mini-listes.\n\nDéfaut : 1";
		SORT_BY_PROGRESS_CHECKBOX = "Trier par progression";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez trier les groupes ("..SHIFT_KEY_TEXT.." + clic droit) par % de progression au lieu de les trier par leur nom.";
		PERCENTAGES_CHECKBOX = "Afficher le pourcentage de réalisation";
		PRECISION_SLIDER = "Niveau de précision";
		PRECISION_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser le niveau de précision souhaité dans les calculs de pourcentage.\n\nDéfaut : 2";
		DYNAMIC_CATEGORY_LABEL = "Catégories dynamiques";
		DYNAMIC_CATEGORY_SIMPLE = "Simple";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Générer des catégories dynamiques en se basant uniquement sur la catégorie la plus haute";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Requiert un rechargement|r";

		MORE_COLORS_CHECKBOX = "Afficher les couleurs";
		WINDOW_COLORS = "Couleurs de la fenêtre";
		BACKGROUND_TOOLTIP = "Définit la couleur d’arrière-plan de toutes les fenêtres d’ATT.";
		BORDER_TOOLTIP = "Définit la couleur des bords de toutes les fenêtres d’ATT.";
		CLASS_BORDER = "Utiliser la couleur de classe pour les bords";
		CLASS_BORDER_TOOLTIP = "Utilise la couleur de votre classe pour les bords. Cette couleur est mise à jour lorsque vous vous connectez sur une autre classe.";




		REPORTING_LABEL = "Signalement";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "Afficher l’ID de quête";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez afficher l’ID de quête pour toutes celles que vous acceptez ou terminez. (Sert à signaler des bogues, suivre des objectifs, etc.)";

		SYNC_PAGE = "Sync";
		ACCOUNT_SYNCHRONIZATION = "Synchronisation du compte";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Synchronisation automatique des données du compte";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Activer cette option si vous souhaitez qu’ATT tente de synchroniser automatiquement les données entre les comptes lors de la connexion ou du rechargement de l’interface utilisateur.";


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
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "Expérience Nouveau Joueur", desc = "Seul un nouveau personnage peut collecter ceci." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Fil du destin", desc = "Seul un personnage ayant passé la suite de quête principale de Shadowlands peut collecter ceci." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Seul un personnage ayant obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Seul un personnage |cffff0000n’ayant pas|r obtenu le |cffe6cc80"..GetSpellName(275825).."|r peut collecter ceci." },
})
do a[key] = value; end
end
