-- Localization for French (France) Clients.
if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

DRAKE_MANUSCRIPTS = "Manuscrit guette-drake";	--TODO: plural
TRACK_ACC_WIDE = app.ccColors.Account .. "Track "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R";	--TODO
ACC_WIDE_DEFAULT = "Par défaut, suivi sur "..app.ccColors.Account.."l’ensemble du compte|R.";

-- General Text
	L.DESCRIPTION = "\"Sottement, vous avez cherché votre propre perte. Effrontément, vous avez ignoré des pouvoirs au-delà de votre compréhension. Vous vous êtes battus pour envahir le royaume du Collectionneur. Maintenant, il n’y a plus qu’une seule issue : emprunter le chemin solitaire... des damnés.\"";
	--TODO: L.THINGS_UNTIL = " THINGS UNTIL ";
	--TODO: L.THING_UNTIL = " THING UNTIL ";
	L.YOU_DID_IT = "VOUS AVEZ RÉUSSI !|r";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "Progression";
	L.TRACKING_PROGRESS = "Suivi des progrès";
	L.COLLECTED_STRING = " Collectionné";
	L.PROVIDERS = "Fournisseur(s)";
	L.COLLECTION_PROGRESS = "Progression de la collection";
	L.CONTAINS = "Contient :";
	L.FACTIONS = "Factions";
	L.COORDINATES_STRING = "Coordonnées";
	L.NO_COORDINATES_FORMAT = "Aucune coordonnée connue pour %s";
	L.TOM_TOM_NOT_FOUND = "Vous devez avoir installé TomTom pour pouvoir ajouter des coordonnées.";
	L.FLIGHT_PATHS = "Trajets Aériens";
	L.KNOWN_BY = "Connu par ";
	L.REQUIRES = "Requiert";
	L.RACE_LOCKED = "Race bloquée";
	L.PLEASE_REPORT_MESSAGE = "Merci de signaler sur le serveur Discord d’ATT dans le canal #retail-errors ! Merci !";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.." + C pour copier le rapport multiligne dans votre presse-papiers)";
	L.NOT_AVAILABLE_IN_PL = "Non disponible pour le butin personnel.";
	L.MARKS_OF_HONOR_DESC = "Les Marques d’honneur doivent être affichées dans une fenêtre contextuelle pour afficher tout le contenu normal. (Tapez '/att' dans le chat puis "..SHIFT_KEY_TEXT.." + clic pour lier l’objet)\n\n|cFFfe040fAprès l’achat et l’utilisation d’un ensemble, une nouvelle connexion et un rafraîchissement d’ATT forcé (dans cet ordre)\npeuvent être nécessaires pour enregistrer tous les objets correctement.|r";
	L.ITEM_GIVES_REP = "Fournit la réputation avec '";
	L.COST = "Coût";
	--TODO: L.COST_DESC = "This contains the visual breakdown of what is required to obtain or purchase this Thing";
	L.SOURCES = "Source(s)";
	--TODO: L.SOURCES_DESC = "Shows the Source of this Thing.\n\nParticularly, a specific Vendor/NPC, Quest, Encounter, etc.";
	L.WRONG_FACTION = "Il se peut que vous deviez être dans l’autre faction pour afficher cela.";
	--TODO: L.ARTIFACT_INTRO_REWARD = "Awarded for completing the introductory quest for this Artifact.";
	--TODO: L.FACTION_SPECIFIC_REP = "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	L.VISIT_FLIGHT_MASTER = "Rendez visite au Maître de vol pour mettre en cache.";
	L.FLIGHT_PATHS_DESC = "Les trajets de vol sont mis en cache lorsque vous parlez au maître de vol sur chaque continent.\n  - Crieve";
	--TODO: L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	L.HEIRLOOM_TEXT = "Objet Héritage déverrouillé";
	L.HEIRLOOM_TEXT_DESC = "Indique si vous avez ou non déjà acquis ou acheté l’objet d’héritage.";
	L.FAILED_ITEM_INFO = "Échec de l’acquisition des informations pour cet objet. Il se peut que l’objet soit pas valide ou qu’il n’ait pas encore été mis en cache sur votre serveur.";
	L.HEIRLOOMS_UPGRADES_DESC = "Indique si vous avez ou non amélioré l’objet d’héritage à un certain niveau.\n\nBye bye votre Or.\n- Crieve";
	L.MUSIC_ROLLS_AND_SELFIE_DESC = "Ils sont débloqués par personnage et ne sont actuellement pas partagés sur l’ensemble de votre compte. Si une personne de chez Blizzard lit ceci, ce serait vraiment bien si vous les rendiez "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..". Vous devez rafraîchir manuellement l’addon via "..SHIFT_KEY_TEXT.." + clic sur l'en-tête pour que ce soit détecté.";
	L.MUSIC_ROLLS_AND_SELFIE_DESC_2 = "\n\nVous devez d’abord débloquer les rouleaux de musique en accomplissant la quête À fond les basses ! dans votre garnison de fief pour pouvoir avoir cet objet.\n\nLes selfies nécessitent le jouet Appareil photo P.R.O.F.I.L.";
	L.OPPOSITE_FACTION_EQ = "Équivalent de la faction opposée : ";
	L.SELFIE_DESC = "Prenez un selfie en utilisant votre ";
	L.SELFIE_DESC_2 = " avec |cffff8000";
	L.TIER_DATA[1].lore = "Déterminée à s’installer dans la région aride de Durotar, la nouvelle Horde de Thrall étoffa ses rangs, en invitant les Réprouvés morts-vivants à rejoindre les orcs, les taurens et les trolls. De leur côté, les nains, les gnomes et les anciens elfes de la nuit jurèrent fidélité à l’Alliance revigorée, sous la houlette du royaume humain de Hurlevent. Après la mystérieuse disparition du roi de Hurlevent Varian Wrynn, le généralissime Bolvar Fordragon assura le rôle de régent. Mais son autorité fut contrariée par les manipulations et le contrôle mental du dragon noir Onyxia, qui tirait les ficelles sous l’apparence d’une humaine appartenant à la noblesse. Tandis que des héros enquêtaient sur les manipulations d’Onyxia, d’anciens adversaires refirent surface un peu partout dans le monde, menaçant tout aussi bien la Horde que l’Alliance.";
	L.TIER_DATA[2].lore = "The Burning Crusade est la 1ère extension. Le seigneur funeste Kazzak étant parvenu à rouvrir la Porte des ténèbres en Outreterre, il fit déferler sur Azeroth les démons enragés de la Légion ardente. Des expéditions de la Horde et de l’Alliance, respectivement renforcées par les elfes de sang et les draeneï, franchirent le portail afin de stopper l’invasion à sa source. En Outreterre, dans l’aride péninsule des Flammes infernales, l’Alliance retrouva plusieurs de ses héros qui avaient franchi le portail bien des années auparavant, tandis que la Horde put entrer en contact avec les Mag’har, des orcs non-corrompus qui n’avaient pas pris part à la première invasion d’Azeroth par ceux de leur race. L’expédition en Outreterre plongea les armées de la Horde et de l’Alliance dans un intense conflit contre les agents de la Légion et les lieutenants d’Illidan Hurlorage, qui s’était approprié ce monde brisé.";
	L.TIER_DATA[3].lore = "Wrath of the Lich King est la 2ème extension. À la suite de la purification du Puits de soleil, le monde connut une période d’accalmie étrangement suspecte. Puis, subitement, le Fléau mort-vivant lança un assaut massif contre les cités et les villes d’Azeroth, frappant cette fois bien au-delà des royaumes de l’Est. Poussé à réagir vigoureusement, le chef de guerre Thrall déploya une force expéditionnaire dans le Norfendre sous les ordres du suzerain Garrosh Hurlenfer. Pendant ce temps, le roi humain disparu Varian Wrynn regagnait la cité de Hurlevent et récupérait sa couronne. Il envoya alors une armée de l’Alliance de puissance équivalente, sous les ordres de Bolvar Fordragon, à l’assaut du roi-liche… et de toutes les forces de la Horde qui se dresseraient en travers de sa route.";
	L.TIER_DATA[4].lore = "Cataclysm est la 3ème extension. Les expéditions victorieuses du Norfendre regagnèrent leurs demeures, mais découvrirent bien vite que toute Azeroth était affectée par des instabilités des forces élémentaires. Ces troubles précédaient en fait le retour de l’Aspect draconique enragé Aile de mort le Destructeur, qui surgit des tréfonds du plan élémentaire, disloquant Azeroth au passage. Les mondes élémentaires étant désormais ouverts, des esprits élémentaires chaotiques et leurs seigneurs tyranniques émergèrent afin d’aider le Destructeur et le culte nihiliste du Marteau du crépuscule à provoquer l’Heure du crépuscule : la fin de toute vie sur Azeroth.";
	L.TIER_DATA[5].lore = "Mists of Pandaria est la 4ème extension. La menace d’Aile de mort étant écartée, le chef de guerre Garrosh Hurlenfer saisit l’occasion pour attaquer l’Alliance et agrandir le territoire de la Horde en Kalimdor. Son offensive anéantit littéralement la cité humaine de Theramore, ravivant la haine et les violences entre les deux factions à travers le monde. Une escarmouche navale dévastatrice expédia les soldats de l’Alliance et de la Horde sur les rives brumeuses de l’île de la Pandarie qui venait de surgir au large, au grand dam des atlas et autres cartes marines les plus modernes. Alors que les deux factions en guerre s’apprêtaient à s’installer sur ce continent aux ressources abondantes, elles firent la connaissance des principaux habitants de l’île : les nobles pandarens. Cette ancienne race s’unit à l’Alliance et à la Horde dans l’espoir de détruire les sha, sombres et antiques créatures évanescentes, que ce conflit sanglant faisait ressurgir des entrailles de la Pandarie.";
	L.TIER_DATA[6].lore = "Warlords of Draenor est la 5ème extension. Après avoir échappé à la justice grâce au dragon de bronze Kairozdormu, Garrosh Hurlenfer trouva refuge dans une Draenor parallèle, à une époque où la Horde originelle n’avait pas encore débarqué en Azeroth. Assoiffé de vengeance, le fuyard fournit à son père, Grommash Hurlenfer, la technologie dont il avait besoin pour lever son armée idéale, une formidable force d’invasion qui prit le nom de Horde de Fer. Grommash unit rapidement sous sa bannière les différents clans orcs de Draenor et fit de leurs chefs les seigneurs de guerre de sa Horde de Fer. Parmi eux se trouvaient le sanguinaire Kargath Lamepoing, Main-Noire le fourbe, le vieux chaman Ner’zhul et l’intrépide Kilrogg Oeil-Mort. La Horde de Fer se lança alors à l’assaut de plusieurs régions stratégiques de Draenor, s’empara de la ville ogre de Cognefort et bâtit d’imposantes fortifications, dont la fonderie des Rochenoires, pour équiper les armées de ces seigneurs de guerre. La Horde de Fer ayant soumis Draenor, les orcs empruntèrent la Porte des ténèbres pour envahir Azeroth, rasèrent Rempart-du-Néant et prirent le contrôle du bastion Cognepeur. L’archimage Khadgar riposta en rassemblant les champions de l’Alliance et de la Horde pour les mener par-delà la Porte et mettre un terme aux exactions de la Horde de Fer en Draenor. Garrosh fut finalement tué par Thrall, et après une campagne éreintante, les héros d’Azeroth parvinrent à triompher de la plupart des seigneurs de guerre ennemis. L’offensive de Khadgar porta un coup terrible à la Horde de Fer. Incapable de mener ses guerriers à la victoire comme il le leur avait promis, Grommash vit croître un profond mécontentement dans les rangs de son armée. Profitant de cette occasion, le démoniste Gul’dan usurpa son commandement et invoqua la démoniaque Légion ardente en Draenor…";
	L.TIER_DATA[7].lore = "Legion est la 6ème extension. À la suite de la bataille de Draenor, le fourbe Gul’dan se retrouva en Azeroth. Tourmenté par les murmures de Kil’jaeden le Trompeur, il ouvrit la Tombe de Sargeras et ainsi un portail permettant à la Légion ardente d’envahir Azeroth. Le démoniste soumit alors les habitants des îles Brisées, dont les Sacrenuit de la ville antique de Suramar et leur chef, la grande magistrice Élisande. L’Alliance et la Horde prirent le Rivage Brisé d’assaut dans l’espoir d’arrêter Gul’dan et les forces de la Légion avant qu’il ne soit trop tard, mais elles échouèrent, et le roi Varian Wrynn ainsi que le chef de guerre Vol’jin perdirent la vie. Dans un effort désespéré pour réunir les factions éparpillées, l’archimage Khadgar découvrit les piliers de la Création, les seuls instruments capables de sceller la tombe à nouveau. Tandis que les habitants des îles Brisées sont libérés de l’emprise de la Légion, les forces de l’Alliance et de la Horde se rapprochent du palais Sacrenuit, le quartier général de Gul’dan, déterminées à mettre un terme à la menace qu’il représente une bonne fois pour toutes…";
	L.TIER_DATA[8].lore = "Battle for Azeroth est la 7ème extension. Les blessures ouvertes en Azeroth par Sargeras, le titan noir, ont fait apparaître une substance instable : l’azérite, le sang de la planète elle-même. Les tensions entre la Horde et l’Alliance ont redoublé d’intensité depuis que les deux factions ont découvert le véritable pouvoir de l’azérite, marquant le début d’une guerre totale qui a mené à la chute de Teldrassil et Fossoyeuse. Affaiblies et à la recherche de nouveaux alliés, l’Alliance et la Horde ont sollicité l’aide de leurs plus valeureux héros pour étayer leurs rangs. Jaina Portvaillant s’est rendue dans son royaume natal, Kul Tiras, dans l’espoir de convaincre les siens de revenir dans l’Alliance. Elle y a rencontré des nobles querelleurs et un peuple amer, unis dans leur mépris à l’égard de ses actions passées. De son côté, la Horde a fait sortir la princesse zandalari Talanji de la prison de Hurlevent. En retour, celle-ci s’est efforcée de convaincre les Trolls zandalari de prêter main-forte à la Horde malgré la réticence de son père, le roi Rastakhan. Ces efforts diplomatiques ont porté leurs fruits, et avec l’appui de leurs nouveaux alliés, les deux factions ont pu établir de nouveaux avant-postes en Zandalar et en Kul Tiras. Aux côtés de leurs nouveaux frères d’armes, l’Alliance et la Horde se tiennent une fois de plus sur les rives de la guerre, alors que les flots de la vengeance menacent à l’horizon…";
	L.TIER_DATA[9].lore = "Shadowlands est la 8ème extension. Après avoir fui Orgrimmar, Sylvanas Coursevent met le cap vers la citadelle de la Couronne de glace. Là, elle affronte Bolvar, le roi-liche, et s’empare du Heaume de domination. Par un simple acte de destruction, Sylvanas ouvre le passage vers le royaume de l’au-delà : l’Ombreterre, un monde entre les mondes dont l’équilibre délicat préserve aussi bien la vie que la mort. Anduin, Baine, Jaina, Thrall et les héros d’Azeroth suivent Sylvanas en Ombreterre, mais se retrouvent pris au piège dans l’Antre, un royaume effroyable réservé aux âmes malfaisantes au-delà de toute rédemption. Après avoir réussi à s’échapper envers et contre tout, nos héros finissent par se rendre à Oribos, la cité éternelle qui accueille habituellement toutes les âmes fraîchement arrivées en Ombreterre. Ils découvrent alors que l’impassible Arbitre, chargée d’aiguiller les défunts vers leur dernière demeure, est en sommeil et incapable d’honorer ses devoirs. Pire encore, les quatre congrégations de l’Ombreterre ont plongé dans le chaos, et se livrent bataille pour s’approprier une ressource aussi rare que vitale : l’anima. Les héros d’Azeroth décident de venir en aide aux habitants de l’Ombreterre, espérant lever le voile sur les agissements de Sylvanas. Ils finissent par découvrir un traître au sein des congrégations : Denathrius, fondateur et dirigeant de Revendreth, foyer des Venthyrs. Ce dernier assiste secrètement Sylvanas dans son projet de libérer leur mystérieux bienfaiteur commun : une entité surnommée le Geôlier, qui règne sur tout l’Antre. L’infâme seigneur de Revendreth est mis en déroute dans son propre domaine, le château Nathria, mais Sylvanas et le Geôlier ont déjà mis leur plan à exécution : utiliser Anduin contre son gré pour servir leurs terribles desseins.";
	L.TIER_DATA[10].lore = "Dragonflight est la 9ème extension. Les Vols draconiques d’Azeroth sont de retour pour défendre leur foyer ancestral, les îles aux Dragons. Débordantes de magie élémentaire et de l’essence vitale d’Azeroth, les îles s’éveillent de nouveau et vous invitent à découvrir leurs merveilles primordiales et leurs secrets longtemps oubliés.";
	L.TITLES_DESC = "Les titres sont suivis sur l’ensemble de votre compte, mais votre personnage principal doit être qualifié pour que certains titres soient utilisables sur ce personnage.";
	L.SHARED_APPEARANCES_LABEL = "Apparences partagées";
	--TODO: L.SHARED_APPEARANCES_LABEL_DESC = "The items in this list are shared appearances for the above item. In Unique Appearance Mode, this list can help you understand why or why not a specific item would be marked Collected.";
	L.UNIQUE_APPEARANCE_LABEL = "Apparence unique";
	--TODO: L.UNIQUE_APPEARANCE_LABEL_DESC = "This item has a Unique Appearance. You must collect this item specifically to earn the appearance.";
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
	L.MINUMUM_STANDING = "Il faut avoir obtenu une note minimale de";
	L._WITH_ = " avec ";
	L.MAXIMUM_STANDING = "Il faut avoir obtenu une note inférieure à";
	L.MIN_MAX_STANDING = "Il faut avoir obtenu une note entre";
	L.AND_ = "Et ";
	L._AND = " et";
	L._MORE = " plus";
	L._OTHER_SOURCES = " sources différentes";
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
	--TODO: L.BONUS_ROLL = "Bonus Roll";
	--TODO: L.PREREQUISITE_QUESTS = "There are prerequisite quests that must be completed before this may be obtained:";
	--TODO: L.BREADCRUMBS = "Breadcrumbs";
	--TODO: L.BREADCRUMBS_WARNING = "There are breadcrumb quests that may not be obtainable after completing this:";
	--TODO: L.THIS_IS_BREADCRUMB = "This is a breadcrumb quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC = "This may be unable to be completed without Party Sync if completing any of these quests first:";
	--TODO: L.BREADCRUMB_PARTYSYNC_2 = "This may be obtained via Party Sync with another character that has not completed any of these quests:";
	--TODO: L.BREADCRUMB_PARTYSYNC_3 = "This may be obtained via Party Sync with a character that is able to accept this quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC_4 = "Please let us know your results on Discord if you attempt obtaining this Quest via Party Sync!";
	--TODO: L.DISABLE_PARTYSYNC = "This is likely not able to be completed by this character even using Party Sync. If you manage otherwise, please let us know on Discord!";
	--TODO: L.UNAVAILABLE_WARNING_FORMAT = "|c%sBecomes unavailable if %d of the following are met:|r";
	--TODO: L.NO_ENTRIES = "No entries matching your filters were found.";
	--TODO: L.NO_ENTRIES_DESC = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.";
	--TODO: L.DEBUG_LOGIN = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.";
	L.UNSORTED_1 = "Non trié";
	L.UNSORTED_2 = " (Non trié)";
	L.UNSORTED_DESC = "Ces données n’ont pas encore été ajoutées.";
	L.NEVER_IMPLEMENTED = "Jamais mis en place";
	L.NEVER_IMPLEMENTED_DESC = "Ces objets existent techniquement dans le jeu mais n’ont jamais été mis à la disposition des joueurs";
	--TODO: L.HIDDEN_QUEST_TRIGGERS = "Hidden Quest Triggers";
	--TODO: L.HIDDEN_QUEST_TRIGGERS_DESC = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	--TODO: L.UNSORTED_DESC_2 = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";
	--TODO: L.BOUNTY_DESC = "This list contains Unobtainable items that the ATT Discord has reported as bugs that Blizzard has yet to fix.\n\nNOTE: All filters are ignored within this list for visibility. Only items removed from the game due to negligence rather than a gigantic fire breathing dragon are present on this list.\n\nTo Blizzard Devs: Please fix the items and encounters listed below.";
	--TODO: L.OPEN_AUTOMATICALLY = "Open Automatically";
	--TODO: L.OPEN_AUTOMATICALLY_DESC = "If you aren't a Blizzard Developer, it might be a good idea to uncheck this. This was done to force Blizzard to fix and/or acknowledge these bugs.";
	--TODO: L.TWO_CLOAKS = "|cffFF0000These two cloaks have very limited confirmed drops if any and are presumed broken!|r";
	--TODO: L.OGOM_THE_MANGLER_DESC = "|cffFF0000Ogom the Mangler seems just to spawn when you are doing the Daily 'Assault on the Iron Siegeworks'. This Quest wasn't active since the start of Legion and the buyable Quest 'Missive: Assault on the Iron Siegeworks' does not work either.|r";
	--TODO: L.DIFF_COMPLETED_1 = "You have collected everything from this difficulty. Switch to ";
	--TODO: L.DIFF_COMPLETED_2 = " instead.";
	--TODO: L.MINI_LIST = "Mini List";
	--TODO: L.MINI_LIST_DESC = "This list contains the relevant information for your current zone, which cannot be found in the ATT database";
	--TODO: L.UPDATE_LOCATION_NOW = "Update Location Now";
	--TODO: L.UPDATE_LOCATION_NOW_DESC = "If you wish to forcibly refresh the data to your current Map, click this button now!";
	--TODO: L.PERSONAL_LOOT_DESC = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.\n\nClick twice to create a group automatically if you're by yourself.";
	--TODO: L.RAID_ASSISTANT = "Raid Assistant";
	--TODO: L.RAID_ASSISTANT_DESC = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!";
	--TODO: L.LOOT_SPEC_UNKNOWN = "Loot Specialization Unknown";
	--TODO: L.LOOT_SPEC = "Loot Specialization";
	--TODO: L.LOOT_SPEC_DESC = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to change it now!";
	--TODO: L.DUNGEON_DIFF = "Dungeon Difficulty";
	--TODO: L.DUNGEON_DIFF_DESC = "The difficulty setting for dungeons.\n\nClick this row to change it now!";
	--TODO: L.RAID_DIFF = "Raid Difficulty";
	--TODO: L.RAID_DIFF_DESC = "The difficulty setting for raids.\n\nClick this row to change it now!";
	--TODO: L.LEGACY_RAID_DIFF = "Legacy Raid Difficulty";
	--TODO: L.LEGACY_RAID_DIFF_DESC = "The difficulty setting for legacy raids.\n\nClick this row to change it now!";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON = "Teleport to/from Dungeon";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON_DESC = "Click here to teleport to/from your current instance.\n\nYou can utilize the Mists of Pandaria Scenarios to quickly teleport yourself outside of your current instance this way.";
	--TODO: L.RESET_INSTANCES = "Reset Instances";
	--TODO: L.RESET_INSTANCES_DESC = "Click here to reset your instances.\n\n"..ALT_KEY_TEXT.." click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!";
	--TODO: L.DELIST_GROUP = "Delist Group";
	--TODO: L.DELIST_GROUP_DESC = "Click here to delist the group. If you are by yourself, it will softly leave the group without porting you out of any instance you are in.";
	--TODO: L.LEAVE_GROUP = "Leave Group";
	--TODO: L.LEAVE_GROUP_DESC = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.";
	--TODO: L.LOOT_SPEC_DESC_2 = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.CURRENT_SPEC = "Current Specialization";
	--TODO: L.CURRENT_SPEC_DESC = "If you switch your talents, your loot specialization changes with you.";
	--TODO: L.DUNGEON_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a dungeon.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.CLICK_TO_CHANGE = "Click to change now. (if available)";
	--TODO: L.RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a raid.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.LEGACY_RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a legacy raid. (Pre-Siege of Orgrimmar)\n\nClick this row to go back to the Raid Assistant.";
	L.REROLL = "Reroll";
	--TODO: L.REROLL_DESC = "Click this button to reroll using the active filter.";
	L.APPLY_SEARCH_FILTER = "Appliquer un filtre à la recherche";
	L.APPLY_SEARCH_FILTER_DESC = "Veuillez sélectionner une option de filtre à la recherche.";
	--TODO: L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "Click this button to search... EVERYTHING.";
	--TODO: L.ACHIEVEMENT_DESC = "Click this button to select a random achievement based on what you're missing.";
	--TODO: L.ITEM_DESC = "Click this button to select a random item based on what you're missing.";
	--TODO: L.INSTANCE_DESC = "Click this button to select a random instance based on what you're missing.";
	--TODO: L.DUNGEON_DESC = "Click this button to select a random dungeon based on what you're missing.";
	--TODO: L.RAID_DESC = "Click this button to select a random raid based on what you're missing.";
	--TODO: L.MOUNT_DESC = "Click this button to select a random mount based on what you're missing.";
	--TODO: L.PET_DESC = "Click this button to select a random pet based on what you're missing.";
	--TODO: L.QUEST_DESC = "Click this button to select a random quest based on what you're missing.";
	--TODO: L.TOY_DESC = "Click this button to select a random toy based on what you're missing.";
	--TODO: L.ZONE_DESC = "Click this button to select a random zone based on what you're missing.";
	--TODO: L.GO_GO_RANDOM = "Random - Go Get 'Em!";
	--TODO: L.GO_GO_RANDOM_DESC = "This window allows you to randomly select a place or item to get. Go get 'em!";
	--TODO: L.CHANGE_SEARCH_FILTER = "Change Search Filter";
	--TODO: L.CHANGE_SEARCH_FILTER_DESC = "Click this to change your search filter.";
	--TODO: L.REROLL_2 = "Reroll: ";
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
		--TODO: L.ITEM_FILTER_TEXT = "Item Filters";
		--TODO: L.ITEM_FILTER_DESCRIPTION = "You can search the ATT Database by using a item filter.";
		--TODO: L.ITEM_FILTER_BUTTON_TEXT = "Set Item Filter";
		--TODO: L.ITEM_FILTER_BUTTON_DESCRIPTION = "Click this to change the item filter you want to search for within ATT.";
		--TODO: L.ITEM_FILTER_POPUP_TEXT = "Which Item Filter would you like to search for?";

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
	L.QUEST_ONCE_PER_ACCOUNT_FORMAT = "Complété par : %s";

-- Settings.lua
	L.SKIP_AUTO_REFRESH = "Ne pas rafraîchir les données !";
	L.SKIP_AUTO_REFRESH_TOOLTIP = "Par défaut (non coché), toute modification des paramètres susceptible d’affecter les données visibles entraînera un rafraîchissement automatique.\n\nEn activant cette option, les modifications des paramètres ne prendront effet dès que l’utilisateur effectuera un rafraîchissement complet en faisant "..SHIFT_KEY_TEXT.." + clic droit sur une fenêtre ATT.";
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

		--TODO: L.GENERAL_CONTENT = "General Content";
		--TODO: L.MERCH_BUTTON_LABEL = "Merch";
		--TODO: L.TWITCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!";
		--TODO: L.DISCORD_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Discord server.\n\nYou can share your progress/frustrations with other collectors!";
		--TODO: L.PATREON_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Patreon page.\n\nHere you can see how you can support the AddOn financially!";
		--TODO: L.MERCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
		--TODO: L.MODE_EXPLAIN_LABEL = 	"|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		--TODO: L.DEBUG_MODE = app.ccColors.Red.."Debug Mode|r (Show Everything)";
		--TODO: L.DEBUG_MODE_TOOLTIP = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
		--TODO: L.COMPLETIONIST_MODE = "+Sources";
		--TODO: L.COMPLETIONIST_MODE_TOOLTIP = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
		--TODO: L.I_ONLY_CARE_ABOUT_MY_MAIN = "Main Only";
		--TODO: L.MAIN_ONLY_MODE_TOOLTIP = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
		L.ACCOUNT_MODE = app.ccColors.Account.."Mode Compte";
		L.ACCOUNT_MODE_TOOLTIP = "Activez ce paramètre si vous souhaitez suivre tous les objets de tous vos personnages, sans tenir compte des filtres de classe et de race. Les filtres d’inaccessibilité s’appliquent toujours.";
		L.FACTION_MODE = "Faction uniquement";
		L.FACTION_MODE_TOOLTIP = "Activez ce paramètre si vous souhaitez afficher les données du mode Compte uniquement pour les races et les classes de votre faction actuelle.";
		L.PRECISION_SLIDER = "Niveau de précision";
		L.PRECISION_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser le niveau de précision souhaité dans les calculs de pourcentage.\n\nDéfaut : 2";
		L.MINIMAP_SLIDER = "Taille du bouton de la mini-carte";
		L.MINIMAP_SLIDER_TOOLTIP = "Utilisez cette option pour personnaliser la taille du bouton de la mini-carte.\n\nDéfaut: 36";
		L.ACCOUNT_THINGS_LABEL = ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." Things";	--TODO
		--TODO: L.GENERAL_THINGS_LABEL = "General Things";
		--TODO: L.EXPANSION_THINGS_LABEL = "Expansion Things";
		--TODO: L.EXTRA_THINGS_LABEL = "Additional Resources";
		--TODO: L.STRANGER_THINGS_LABEL = "Stranger Things";
		L.ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Activez cette option pour suivre les hauts faits.";
		L.TMOG_CHECKBOX_TOOLTIP = "Activez cette option pour suivre l’obtention des apparences.\n\nREMARQUE : désactiver cette option désactive également toutes les fanfares et la logique d’acquisition. Vous pouvez utiliser cette option pour éviter les pics de retard lors de la création de contenu de groupe important, mais n’oubliez pas que le calcul devra être effectué une fois l’option réactivée.";
		L.AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Activez cette option pour suivre les essences d’Azérite.\n\nPar défaut, suivi actif sur le personnage.";
		L.BATTLE_PETS_CHECKBOX_TOOLTIP = "Activez cette option pour suivre les mascottes de combat et les compagnons. Ils peuvent être trouvés dans le monde ouvert ou par l’intermédiaire des boss dans divers donjons et raids, ainsi que par l’intermédiaire des vendeurs et de la réputation.\n\n"..ACC_WIDE_DEFAULT;
		L.FLIGHT_PATHS_CHECKBOX = app.ccColors.Insane .. "Trajets Aériens & Stations de Ferries";
		L.FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Activez cette option pour suivre les trajets de vol et les stations de ferries. Pour les collecter, ouvrez le dialogue avec le maître des vols / ferries de chaque continent.\n\nREMARQUE : en raison de la technologie de mise en phase, il se peut que vous deviez passer en phase dans les autres versions d’une zone pour obtenir le crédit de ces points d’intérêt.";
		--TODO: L.FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		--TODO: L.HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter\n\n"..ACC_WIDE_DEFAULT;
		L.HEIRLOOMS_UPGRADES_CHECKBOX = app.ccColors.Insane .. "+ Améliorations";
		L.HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Activez cette option pour suivre spécifiquement la collecte des améliorations d’héritage individuelles.\n\nNous savons tous que Blizzard aime vider votre Or et votre âme, alors gardez une trace de cela avec cette option.";
		L.ILLUSIONS_CHECKBOX = app.ccColors.Insane..WEAPON_ENCHANTMENT;	--TODO: make it plural
		L.ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.\n\n"..ACC_WIDE_DEFAULT;	--TODO
		L.MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!\n\n"..ACC_WIDE_DEFAULT;	--TODO
		L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t " .. app.ccColors.Insane .. "Rouleaux à musique & Filtres des portraits";
		L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX_TOOLTIP = "Activez cette option pour suivre les rouleaux de musique et les filtres des portraits.\n\nVous pouvez utiliser votre jouet « Lecteur de musique portable » pour jouer de la musique dans le jeu et votre jouet « Appareil photo P.R.O.F.I.L. Mod.II » pour collecter des filtres pour vos portraits à certains endroits.";
		--TODO: L.QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Quests are not permanently tracked due to the nature of how Daily, Weekly, Yearly, and World Quests are tracked in the Blizzard Database.";
		L.QUESTS_LOCKED_CHECKBOX = app.ccColors.Insane .. " + Verrouillées";
		L.QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Activez cette option pour inclure spécifiquement le suivi de l’achèvement des quêtes verrouillées.\n\nLes quêtes verrouillées sont celles que le joueur n’est plus en mesure de terminer (selon les données connues d’ATT) en jouant normalement.\n\nL’obtention de ces quêtes dépend beaucoup de la fonction de synchronisation des groupes ou de l’utilisation de quêtes à l’échelle du compte pour intégrer la progression d’autres personnages.";
		--TODO: L.RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		L.REPUTATIONS_CHECKBOX = app.ccColors.Insane.."Réputations";
		--TODO: L.REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		L.RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t "..app.ccColors.Insane.."Pouvoirs de gravure runique";
		L.RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Activez cette option pour suivre l’obtention des pouvoirs de gravure runique.";
		L.DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track "..EXPANSION_NAME9.." "..DRAKE_MANUSCRIPTS;	--TODO
		--TODO: L.SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Soulbind Conduits.";
		--TODO: L.TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		L.TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!\n\n"..ACC_WIDE_DEFAULT;	--TODO
		L.MINIMAP_BUTTON_CHECKBOX = "Afficher le bouton sur la mini-carte";
		--TODO: L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.";
		L.MINIMAP_BUTTON_STYLE_CHECKBOX = "Utiliser l’ancien bouton sur la mini-carte";
		--TODO: L.MINIMAP_BUTTON_STYLE_CHECKBOX_TOOLTIP = "Some people don't like the new minimap button...\n\nThose people are wrong!\n\nIf you don't like it, here's an option to go back to the old style.";
		L.SHOW_COMPLETED_GROUPS_CHECKBOX = "Afficher les groupes complétés";
		--TODO: L.SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: L.SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
		--TODO: L.SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: L.SHOW_INCOMPLETE_THINGS_CHECKBOX = "Show All Trackable Things";
		--TODO: L.SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
		--TODO: L.SHOW_REPEATABLE_THINGS_CHECKBOX = "Collect Repeatable Quests";
		--TODO: L.SHOW_REPEATABLE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to treat repeatable daily, weekly, and yearly quests as collectible. They will appear in the list like a regular collectible quest.\n\nNOTE: This is NOT intended to be used all the time, but if you're doing a set of dailies in a zone you've otherwise completed and need to be reminded of what is there, you can use this to see them.";
		L.FIRST_TIME_CHECKBOX = "Première fois uniquement";
		--TODO: L.FIRST_TIME_CHECKBOX_TOOLTIP = "Enable this option if you want to treat repeatable daily, weekly, yearly and world quests as collected if completed at least once, ignoring quest previously completed that has been reset.\n\nNOTE: Previously completed repeatable quest are only stored if you completed the quest with the addon active and that data will be lost if removed the addon data from WTF folder.";
		--TODO: L.FILTER_THINGS_BY_LEVEL_CHECKBOX = app.ccColors.Insane .. "No Level Restrictions";
		--TODO: L.FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Enable this setting if you want to see content available regardless of player level.\n\nNOTE: Disabling this is especially useful on Starter Accounts.";
		--TODO: L.SHOW_BOE_CHECKBOX = app.ccColors.Insane .. "BoE/BoA Items";
		--TODO: L.SHOW_BOE_CHECKBOX_TOOLTIP = "Enable this setting if you want to show Bind-on-Equip/Account items.\n\nDisabling this setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.";
		--TODO: L.SHOW_PVP_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which 'may' require Player vs. Player interactions within the game.";
		--TODO: L.SHOW_ALL_SEASONAL = app.ccColors.Insane .. "All Seasonal Events";
		--TODO: L.SHOW_ALL_SEASONAL_TOOLTIP = "Enable this setting to show all seasonal events, instead of only currently active seasonal events.";
		--TODO: L.SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which requires Pet Battles within the game.";
		L.IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignorer les objets LqE / LqR";	-- Ignore BoE/BoA Item ilters : à revoir
		--TODO: L.IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE/BoA items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.";
		--TODO: L.EXPAND_DIFFICULTY_CHECKBOX = "Expand Current Difficulty";
		--TODO: L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
		--TODO: L.WARN_DIFFICULTY_CHECKBOX = "Warn Completed Difficulty";
		--TODO: L.WARN_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to be warned when you enter an instance with a difficulty setting that will result in you being unable to earn new collectibles when there is an alternative unsaved difficulty that you could enter instead.";
		--TODO: L.REPORT_COLLECTED_THINGS_CHECKBOX = "Report Collected Things";
		--TODO: L.REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		L.REPORT_COMPLETED_QUESTS_CHECKBOX = "Afficher l’ID de quête";
		L.REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher l’ID de quête pour toutes celles que vous acceptez ou terminez. (Sert à signaler des bogues, suivre des objectifs, etc.)";
		--TODO: L.REPORT_UNSORTED_CHECKBOX = "Only 'Unsourced'";
		--TODO: L.REPORT_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the QuestID if it isn't already Sourced.";
		L.BEHAVIOR_LABEL = "Comportement de la liste";
		L.DYNAMIC_CATEGORY_LABEL = "Catégories dynamiques";
		L.DYNAMIC_CATEGORY_OFF_TOOLTIP = "Ne pas générer de catégorie dynamique.";
		L.DYNAMIC_CATEGORY_SIMPLE = "Simple";
		L.DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Générer des catégories dynamiques en se basant uniquement sur la catégorie la plus haute";
		--TODO: L.DYNAMIC_CATEGORY_NESTED = "Nested";
		--TODO: L.DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
		L.DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Requiert un rechargement|r";
		L.CLICK_TO_CREATE_FORMAT = "Cliquez pour créer %s";
		--TODO: L.KEYBINDINGS_TEXT = "You can set keybindings for ATT in the game's options.";

	-- Account-Wide Checkboxes
		L.ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = TRACK_ACC_WIDE.."\n\nAchievement tracking is usually "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but there are a number of achievements exclusive to specific classes and races that you can't get on your main.";	--TODO
		L.ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = TRACK_ACC_WIDE.."\n\nAzerite Essences cannot technically be collected and used "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but if you only care about collecting them on your main character then you may prefer tracking them "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..".";	--TODO
		L.ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = TRACK_ACC_WIDE.."\n\nFlight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";	--TODO
		L.ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = TRACK_ACC_WIDE.."\n\nFollowers are typically per character, but do you really want to have to collect 243 Garrison Inn Followers on one character at a rate of 1 per week?\n\nI think not, good sir.";	--TODO
		L.ACCOUNT_WIDE_MUSIC_ROLLS_SELFIE_FILTERS_TOOLTIP = TRACK_ACC_WIDE.."\n\nMusic Rolls & Selfie Filters are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nNOTE: You can only play Music Rolls using the Jukebox Toy or snap a selfie with your S.E.L.F.I.E Camera Toy that you have collected on your current character.";	--TODO
		L.ACCOUNT_WIDE_QUESTS_TOOLTIP = TRACK_ACC_WIDE.."\n\nQuest completion is typically per Character, but this will consider a Quest as completed if ANY Character has completed that specific Quest.";	--TODO
		L.ACCOUNT_WIDE_RECIPES_TOOLTIP = TRACK_ACC_WIDE.."\n\nRecipes are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.";	--TODO
		L.ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = TRACK_ACC_WIDE.."\n\nReputations are now tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database for achievements, so turning this on may be a good idea.";	--TODO
		L.ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = TRACK_ACC_WIDE.."\n\nEnable this to consider a Soulbind Conduit as collected for all characters if at least one character has learned it.";	--TODO
		L.ACCOUNT_WIDE_TITLES_TOOLTIP = TRACK_ACC_WIDE.."\n\nMost titles are tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but some prestigious titles in WoW are locked to the character that earned them.\n\nToggle this if you don't care about that and want to see those titles marked Collected for your alts.";	--TODO

	-- Filters tab
		L.ITEM_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché si vous êtes en "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		L.CLASS_DEFAULTS_BUTTON = "Votre Classe";
		L.CLASS_DEFAULTS_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour reinitialiser tous les filtres en rapport avec votre classe acutelle.\n\nNOTE : Seuls les filtres qui sont utilisables pour votre classe peuvent être activés.";
		L.ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour activer toutes les options en même temps.";
		L.UNCHECK_ALL_BUTTON_TOOLTIP = "Cliquez sur ce bouton pour désactiver toutes les options en même temps.";
		--TODO: L.CUSTOM_FILTERS_LABEL = "Automated Content";
		L.CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché s’il est disponible pour votre personnage actuel ou si vous vous trouvez dans la section "..app.ccColors.Account.."Mode Compte|cffFFFFFF.|r";
		L.CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Activez ce paramètre pour afficher le contenu de %s même s’il n’est pas disponible pour le caractère actuel.";

	-- Unobtainables tab
		L.UNOBTAINABLES_TAB = "Inaccessibles";
		L.SEASONAL_LABEL = "Saisonnier";
		L.SEASONAL_ALL = "|cffECBC21Tous les saisonniers";
		--TODO: L.UNOBTAINABLE_LABEL = "Unobtainable Content";
		L.UNOBTAINABLE_ALL = "|cffECBC21Afficher tous les inaccessibles";
		L.NO_CHANCE_ALL = "|cffECBC21Afficher tous les \"Aucune Chance\"";
		L.HIGH_CHANCE_ALL = "|cffECBC21Afficher tous les \"Grande Chance\"";

	-- Interface tab
		L.TOOLTIP_LABEL = "Infobulles";
		L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Intégrations des infobulles";
		--TODO: L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		L.DISPLAY_IN_COMBAT_CHECKBOX = "En combat";
		--TODO: L.DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		L.TOOLTIP_MOD_LABEL = "Modifier";
		L.TOOLTIP_SHOW_LABEL = "Afficher les informations";
		--TODO: L.SHOW_COLLECTION_PROGRESS_CHECKBOX = "Collection Progress";
		--TODO: L.SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		--TODO: L.ICON_ONLY_CHECKBOX = "Icon Only";
		--TODO: L.ICON_ONLY_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
		--TODO: L.COORDINATES_CHECKBOX = "Coordinates";
		--TODO: L.COORDINATES_CHECKBOX_TOOLTIP = "Enable this option if you want to see coordinates in the tooltip when hovering over an entry in the mini list.";
		--TODO: L.DESCRIPTIONS_CHECKBOX = "Descriptions";
		--TODO: L.DESCRIPTIONS_CHECKBOX_TOOLTIP = "Enable this option to show descriptions within the tooltip. This may include the descriptive text added by a Contributor that felt some additional information was necessary.\n\nYou might want to keep this turned on.";
		--TODO: L.LORE_CHECKBOX = "Lore";
		--TODO: L.LORE_CHECKBOX_TOOLTIP = "Enable this option to show lore within the tooltip. This may include the descriptive text supplied by the Dungeon Journal or for flavor by a Contributor.";
		L.KNOWN_BY_CHECKBOX = "Connu par";
		--TODO: L.KNOWN_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
		L.COMPLETED_BY_CHECKBOX = "Complété par";
		--TODO: L.COMPLETED_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
		--TODO: L.SHOW_MODELS_CHECKBOX = "Model Preview";
		--TODO: L.SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		--TODO: L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Currency calculation";
		--TODO: L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
		--TODO: L.SHARED_APPEARANCES_CHECKBOX = "Shared Appearances";
		--TODO: L.SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
		--TODO: L.INCLUDE_ORIGINAL_CHECKBOX = "Original Source";
		--TODO: L.INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
		--TODO: L.ONLY_RELEVANT_CHECKBOX = "Only Relevant";
		--TODO: L.ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
		--TODO: L.PROFESSION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the profession requirements in the tooltip.";
		L.LEVELREQ_CHECKBOX = "Niveaux";
		--TODO: L.LEVELREQ_CHECKBOX_TOOLTIP = "Enable this option if you want to see the level requirements in the tooltip.";
		--TODO: L.CLASSES_CHECKBOX = "Classes";
		--TODO: L.CLASSES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of class requirements in the tooltip.";
		--TODO: L.RACES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of race requirements in the tooltip.";
		--TODO: L.SPEC_CHECKBOX = "Specializations";
		--TODO: L.SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		--TODO: L.SUMMARIZE_CHECKBOX = "Summarize Things";
		--TODO: L.SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		--TODO: L.CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		--TODO: L.SOURCE_LOCATIONS_CHECKBOX = "Source Locations";
		--TODO: L.SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		--TODO: L.LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		--TODO: L.COMPLETED_SOURCES_CHECKBOX = "For Completed";
		--TODO: L.COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		L.DROP_CHANCES_CHECKBOX = "Chances de tomber";
		--TODO: L.DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		--TODO: L.FOR_CREATURES_CHECKBOX = "For Creatures";
		--TODO: L.FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		--TODO: L.FOR_THINGS_CHECKBOX = "For Things";
		--TODO: L.FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		--TODO: L.FOR_UNSORTED_CHECKBOX = "For Unsorted";
		--TODO: L.FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: L.WITH_WRAPPING_CHECKBOX = "Allow Wrapping",
		--TODO: L.WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.",
		--TODO: L.SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: L.SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
		L.PERCENTAGES_CHECKBOX = "Afficher le pourcentage de réalisation";
		--TODO: L.PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		L.MORE_COLORS_CHECKBOX = "Afficher les couleurs";
		--TODO: L.MORE_COLORS_CHECKBOX_TOOLTIP = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
		L.TOOLTIP_HELP_CHECKBOX = "Afficher l’infobulle d’aide";
		L.TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez afficher les informations d’aide dans les infobulles des fenêtres ATT qui indiquent les différentes combinaisons de touches / clics pour les fonctionnalités des fenêtres ATT. Si vous connaissez déjà toutes les combinaisons de touches / clics, vous pouvez économiser de l’espace dans les infobulles et désactiver cette option.";
		L.MAIN_LIST_SLIDER_LABEL = "Échelle de la liste principale";
		L.MAIN_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle de la liste principale.\n\nDéfaut : 1";
		L.MINI_LIST_SLIDER_LABEL = "Échelle de la mini-liste";
		L.MINI_LIST_SCALE_TOOLTIP = "Utilisez cette option pour personnaliser l’échelle des mini-listes.\n\nDéfaut : 1";
		L.ADDITIONAL_LABEL = "Informations complémentaires";
		--TODO: L.WINDOW_COLORS = "Window Colors";
		--TODO: L.BACKGROUND_TOOLTIP = "Set the background color of all ATT windows.";
		--TODO: L.BORDER_TOOLTIP = "Set the border color of all ATT windows.";
		--TODO: L.RESET_TOOLTIP = "Reset the background and border color of all ATT windows.";
		--TODO: L.CLASS_BORDER = "Use Class Color For Border";
		--TODO: L.CLASS_BORDER_TOOLTIP = "Use your class color for the borders. This updates when you log onto another class.";

	-- Features tab
		L.MINIMAP_LABEL = "Bouton de la mini-carte.";
		L.MODULES_LABEL = "Modules & mini-listes";
		L.REPORTING_LABEL = "Signalement";
		--TODO: L.ADHOC_UPDATES_CHECKBOX = "Ad-Hoc Window Updates";
		--TODO: L.ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
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
		--TODO: L.CURRENCIES_IN_WQ_CHECKBOX = "Show Collectible Cost Groups";
		--TODO: L.CURRENCIES_IN_WQ_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be considered collectible and show under dynamically-populated Quests.";
		--TODO: L.AUCTION_TAB_CHECKBOX = "Show the Auction House Module Tab";
		--TODO: L.AUCTION_TAB_CHECKBOX_TOOLTIP = "Enable this option if you want to see the Auction House Module provided with ATT.\n\nSome addons are naughty and modify this frame extensively. ATT doesn't always play nice with those toys.";
		L.SORT_BY_PROGRESS_CHECKBOX = "Trier par progression";
		L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activez cette option si vous souhaitez trier les groupes ("..SHIFT_KEY_TEXT.." + clic droit) par % de progression au lieu de les trier par leur nom.";
		--TODO: L.QUEST_CHAIN_NESTED_CHECKBOX = "Show Nested Quest Chains";
		--TODO: L.QUEST_CHAIN_NESTED_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		--TODO: L.CELEBRATIONS_LABEL = "Celebrations & Sound Effects";
		--TODO: L.AUDIO_CHANNEL = "Audio Channel";
		--TODO: L.CELEBRATE_COLLECTED_CHECKBOX = "Collected Things Trigger a Celebration";
		--TODO: L.CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		--TODO: L.WARN_REMOVED_CHECKBOX = "Removed Things Trigger a Warning";
		--TODO: L.WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		--TODO: L.SCREENSHOT_COLLECTED_CHECKBOX = "Collected Things Trigger a Screenshot";
		--TODO: L.SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to take a screenshot for every Thing you collect.";
		--TODO: L.ICON_LEGEND_LABEL = "Icon Legend";
		--TODO: L.ICON_LEGEND_TEXT = app.ccColors.White .. "|TInterface\\AddOns\\AllTheThings\\assets\\status-unobtainable.blp:0|t " .. "Unobtainable" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-prerequisites.blp:0|t " .. "Obtainable only with prerequisites" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-seasonal-unavailable.blp:0|t " .. "Seasonal content" .. "\n|TInterface\\FriendsFrame\\StatusIcon-Offline:0|t " .. "Unavailable on current character";
		L.CHAT_COMMANDS_LABEL = "Commandes du chat";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFou|R /things |cffFFFFFFou|R /allthethings\n|cffFFFFFFOuvre la liste principale.\n\n|R/att mini |cffFFFFFFou|R /attmini\n|cffFFFFFFOuvre la mini-liste.\n\n|R/att bounty\n|cffFFFFFFOuvre la liste des éléments non confirmés ou buggés.\n\n|R/att ra |cffFFFFFFou|R /attra\n|cffFFFFFFOuvre l’assistant de raid.\n\n|R/att wq |cffFFFFFFou|R /attwq\n|cffFFFFFFOuvre la liste des quêtes mondiales.\n\n|R/att item:1234 |cffFFFFFFou|R /att [lien objet]\n|cffFFFFFFOuvre une fenêtre des apparences partagées. Fonctionne aussi avec d’autres éléments, tel que|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFAffiche tous les éléments futurs qui seront supprimés lors d’un patch.\n\n|R/att random |cffFFFFFFou|R /attrandom |cffFFFFFFou|R /attran\n|cffFFFFFFOuvre une liste aléatoire.\n\n|R/att unsorted\n|cffFFFFFFOuvre une liste d’éléments non sourcés. Il est préférable d'ouvrir en mode débogage.\n\n|R/rl\n|cffFFFFFFRecharge votre interface WoW.|R";

	-- Profiles tab
		L.PROFILES_PAGE = "Profils";
		L.PROFILE = "Profil";
		L.PROFILE_INITIALIZE = "Initialiser les profils";
		L.PROFILE_INITIALIZE_TOOLTIP = "Cela permettra à vos variables sauvegardées pour ATT de supporter et de contenir des données de profil. Vos paramètres et informations de fenêtre actuels seront copiés dans le profil '"..DEFAULT.."'. Ce profil ne peut pas être supprimé, mais peut être modifié et sera utilisé comme profil initial pour tous les personnages. N'oubliez pas de signaler tout comportement inhabituel ou tout bogue lié aux profils sur le Discord d'ATT !";
		L.PROFILE_INITIALIZE_CONFIRM = "Êtes-vous sûr de vouloir activer le support du profil ?";
		L.PROFILE_NEW_TOOLTIP = "Créer un nouveau profil qui sera utilisé par le personnage actuel.";
		L.PROFILE_COPY_TOOLTIP = "Copier le profil sélectionné dans le profil actuel";
		L.PROFILE_DELETE_TOOLTIP = "Supprimer le profil sélectionné";
		L.PROFILE_SWITCH_TOOLTIP = "Définir le profil sélectionné comme le profil actuel\n\n"..SHIFT_KEY_TEXT.." + clic pour accéder au profil sélectionné";
		L.SHOW_PROFILE_LOADED = "Afficher le profil qui se charge lors de la connexion ou lors du passage d'un profil à l'autre";

	-- Sync tab
		L.SYNC_PAGE = "Sync";
		L.ACCOUNT_SYNCHRONIZATION = "Synchronisation du compte";
		L.AUTO_SYNC_ACC_DATA_CHECKBOX = "Synchronisation automatique des données du compte";
		L.AUTO_SYNC_ACC_DATA_TOOLTIP = "Activez cette option si vous souhaitez qu’ATT tente de synchroniser automatiquement les données entre les comptes lors de la connexion ou du rechargement de l’interface utilisateur.";
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

	-- About tab
		L.ABOUT_PAGE = "À Propos";
		L.ABOUT_1 = " |CFFFFFFFFest un addon de suivi de collection qui vous montre où et comment obtenir tout ce qui se trouve dans le jeu ! Nous avons une grande communtauté d’utilisateurs sur notre Discord (le lien se trouve ci-dessous), vous pouvez venir nous poser des questions, soumettre des suggestions, signaler des bogues ou des éléments manquants. Si vous trouvez quelque chose à collectionner ou une quête qui n’est pas documentée, vous pouvez nous le remonter sur Discord, ou pour les plus doués techniquement, nous avons un dépôt sur GitHub auquel vous pouvez contribuer directement.\n\nBien que nous nous efforcions d’être complets, il y a beaucoup de choses qui sont ajoutées au jeu à chaque patch, donc si nous manquons quelque chose, comprenez que nous sommes une petite équipe qui essaie de suivre les changements et de collecter des choses nous-mêmes. :D\n\nN’hésitez pas à me poser des questions lorsque je suis en session de diffusion et je ferai de mon mieux pour y répondre, même si ce n’est pas directement lié à ATT (également le développement des addons WoW).\n\n- |r|Cffff8000Crieve|CFFFFFFFF\n\nPS : Il y a aussi All The Things Classic et TBC Classic !\n\nOui, j’ai l’intention de jouer à WoW Classic, mais entre le travail à plein temps et le développement des deux versions de l’addon, il n’y aura pas beaucoup de temps pour les raids.\n\nNon, ATT n’est pas un simple addon qui place des icônes sur les objets de votre sac; vous pouvez utiliser « Can I Mog It? » et « Caerdon Wardrobe » pour ça, et ils fonctionnent très bien ;)\n\nEn ce qui concerne les collections en ligne, vous pouvez consulter le site DataForAzeroth.com, créé par Shoogen !|r";
		L.ABOUT_2 = "Contributeurs supplémentaires : |CFFFFFFFF(sans ordre particulier)\nDaktar, Lucetia, Slumber, Gold, Avella, Aiue, Dead Serious, Oiche, Oxlotus, Eiltherune, Blueyleader, Iyanden, Pr3vention, BigBlaris, Talonzor, Mogwai, Heallie, Eckhardt, Boohyaka, Sadidorf, Sanctuari, Molkree, Runawaynow, Braghe, Myrhial, Darkal, Tag, Machou et tous les autres qui qui ont participés de prêt ou de loin au développement d’ALL THE THINGS. Merci aux personnes présentes sur le serveur Discord.\n\nSpéciale dédicace à AmiYuy (Can I Mog It?) et Caerdon (Caerdon Wardrobe).|r";
		L.ABOUT_3 = "\n|CFFFFFFFFVous devez absolument télécharger leurs addons pour obtenir un visuel direct des objets transmogrifiables qui sont dans vos sacs.|r";

	-- Binding Localizations
		--TODO: L.TOGGLE_ACCOUNT_MODE = "Toggle Account Mode";
		--TODO: L.TOGGLE_COMPLETIONIST_MODE = "Toggle Completionist Mode";
		--TODO: L.TOGGLE_DEBUG_MODE = "Toggle Debug Mode";
		--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";
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
		L.TOGGLE_RAID_ASSISTANT = "Afficher / masquer l’assistant de raid ATT";
		--TODO: L.TOGGLE_RANDOM = "Toggle ATT Random";
		--TODO: L.REROLL_RANDOM = "Reroll the Random Selection";

	-- Event Text
		--TODO: L.ITEM_ID_ADDED = "%s (%d) was added to your collection.";
		--TODO: L.ITEM_ID_ADDED_RANK = "%s (%d) [Rank %d] was added to your collection.";
		--TODO: L.ITEM_ID_ADDED_MISSING = "%s (%d) was added to your collection. Not found in the database. Please report to the ATT Discord!";
		--TODO: L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] were added to your collection.";
		--TODO: L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] were added to your collection. Not found in the database. Please report to the ATT Discord!";
		--TODO: L.ITEM_ID_REMOVED = "%s (%d) was removed from your collection.";
		--TODO: L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] were removed from your collection.";

	-- Tooltip Text
		L.DROP_RATE = "Taux de chance de tomber";
		--TODO: L.QUEST_GIVER = "Quest Giver";
		L.LOCKOUT = "Verrouillage";
		L.SHARED = "Partagé";
		L.SPLIT = "Par difficulté";
		L.REQUIRES_LEVEL = "Niveau requis";
		L.SECRETS_HEADER = "Secrets";
		--TODO: L.LIMITED_QUANTITY = "This has a limited quantity and may not always be present on the vendor.";
		--TODO: L.SOURCE_ID_MISSING = "Please report this Item and where it was acquired to the ATT Discord in #retail-errors!";
		--TODO: L.ADDED_WITH_PATCH_FORMAT = "This gets added in patch %s";
		--TODO: L.REMOVED_WITH_PATCH_FORMAT = "This gets removed in patch %s";

	-- Artifact Relic Completion
		--TODO: L.ARTIFACT_RELIC_CACHE = "Open your Artifact UI for all of your Artifact Weapons to cache whether this is an upgrade or not. This is useful for determining if you can trade this item to a Twink or not.";
		--TODO: L.ARTIFACT_RELIC_COMPLETION = "Artifact Relic Completion";
		--TODO: L.NOT_TRADEABLE = "Not Tradeable";
		--TODO: L.TRADEABLE = "Tradeable";

	-- Icons and Collection Text
		--TODO: L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollected*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE_OTHER"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.INCOMPLETE"] = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |cff15abffKnown on current character|r";
		--TODO: L.UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Unknown on current character|r";
		--TODO: L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffCurrency|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, le Trône ardent"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["Expansion Pre"] = "Pré",	--TODO: recheck this key
		["Expansion Features"] = "CE",	--TODO: recheck this key
		--TODO: [GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		["The Burning Crusade"] = "BC",	--TODO: recheck this key
		["Burning Crusade"] = "BC",	--TODO: recheck this key
		["The BC"] = "BC",	--TODO: recheck this key
		["Wrath of the Lich King"] = "WotLK",	--TODO: recheck this key
		["Cataclysm"] = "Cata",	--TODO: recheck this key
		["Mists of Pandaria"] = "MoP",	--TODO: recheck this key
		["Warlords of Draenor"] = "WoD",	--TODO: recheck this key
		["Battle for Azeroth"] = "BfA",	--TODO: recheck this key
		["The Shadowlands"] = "SL",	--TODO: recheck this key
		["Shadowlands"] = "SL",	--TODO: recheck this key
		["Player vs Player"] = "JcJ",	--TODO: recheck this key
		["Raid Finder"] = "LFR",	--TODO: recheck this key
		["Looking For Raid"] = "LFR",	--TODO: recheck this key
		["Normal"] = "N",	--TODO: recheck this key
		["Heroic"] = "H",	--TODO: recheck this key
		["Mythic"] = "M",	--TODO: recheck this key
		["Ny’alotha, la cité en éveil"] = "Ny’alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, le marché dissimulé"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		["10 Player"] = "10J",	--TODO: recheck this key
		["10 Player (Heroic)"] = "10J (H)",	--TODO: recheck this key
		["25 Player"] = "25J",	--TODO: recheck this key
		["25 Player (Heroic)"] = "25J (H)",	--TODO: recheck this key
		["Emissary Quests"] = "Émissaire de quêtes",	--TODO: recheck this key
		[TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		["WoW Anniversary"] = "Anniversaire",	--TODO: recheck this key
		["Covenant:"] = "Cov :",	--TODO: recheck this key
})
do a[key] = value; end

L.CUSTOM_DIFFICULTIES[-1] = "Recherche de Raid (5.4)";
L.CUSTOM_DIFFICULTIES[-2] = "Flexible (5.4)";
L.CUSTOM_DIFFICULTIES[-3] = "Normal (5.4)";
L.CUSTOM_DIFFICULTIES[-4] = "Héroïque (5.4)";

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Other
		[-211] = "Nouveau personnage",								-- New Character
	-- Fishing
		[-217] = "Appâts",											-- Lures (for Fishing)
	-- Allied Races
		[-254] = "Races alliées",									-- Allied Races
		[-255] = "Armure ancestrale",								-- Heritage
	-- BFA Outposts
		[-397] = "Avant-postes",									-- Outposts
	-- 5.3
		[-398] = "Champ de bataille : les Tarides",					-- Battlefield: Barrens
	-- BFA War Chest
		[-488] = "Coffre de Guerre",								-- Daily War Chest
	-- Misc
		[-520] = "Pré-Lancement de l’Extension",					-- Expansion Pre-Launch
		[-543] = "Invasions de Legion ",							-- Legion Invasions
	-- Cataclysm PvP Seasons
		[-672] = select(2, GetAchievementInfo(6002)).." : Saison 9",	-- Vicious Gladiator: Season 9
		[-656] = "Équipement Honneur Gladiateur sans pitié",			-- Honor Gear Ruthless Season
		[-673] = select(2, GetAchievementInfo(6124)).." : Saison 10",	-- Ruthless Gladiator: Season 10
		[-654] = "Équipement Honneur Saison Cataclysmique",				-- Honor Gear Cataclysmic Season
		[-674] = select(2, GetAchievementInfo(6938)).." : Saison 11",	-- Cataclysmic Gladiator: Season 11
	-- Mists of Pandaria PvP Seasons
		[-675] = select(2, GetAchievementInfo(8214))..": Saison 12",	-- Malevolent Gladiator: Season 12
		[-653] = "Équipement Honneur Saison Tyrannique",				-- Honor Gear Tyrannical Season
		[-676] = select(2, GetAchievementInfo(8791))..": Saison 13",	-- Tyrannical Gladiator: Season 13
		[-652] = "Équipement Honneur Saison Dramatique",				-- Honor Gear Grievous Season
		[-651] = "Équipement Honneur Saison Orgueilleux",				-- Honor Gear Prideful Season
	-- Pets
		[-795] = "Mascotte des combat des donjons",					-- Pet Battle Dungeons
	-- Chests
		[-851] = "Cache de l’Empire noir",							-- Black Empire Cache
	-- Shadowlands Header
		[-979] = "Négociant Ve'ken & Négociant Ve'nott",			-- Broker Ve'ken & Broker Ve'nott
		[-924] = "Réseau de transport",								-- Transport Network
		-- SL Bastion/Kyrian
			[-973] = "Loyauté",										-- Loyalty
			[-975] = "Humilité",									-- Humility
		-- SL Revendreth/Venthyr
			[-954] = "Inquisiteurs",								-- Inquisitors
			[-955] = "Grands inquisiteurs",							-- High Inquisitors
			[-956] = "Inquisiteurs suprêmes",						-- Grand Inquisitors
			[-967] = "Restauration de miroir",						-- Mirror Restoration
			[-968] = "Tier A",										-- Set A
			[-969] = "Tier B",										-- Set B
			[-970] = "Tier C",										-- Set C
			[-971] = "Tier D",										-- Set D
	-- Dragonflight
		[-1100] = DRAKE_MANUSCRIPTS,								-- Drakewatcher Manuscripts
		[-1101] = "Les Tempêtes Primordiales",						-- Primal Storms
		[-1102] = "Irion et Sabellian",								-- Wrathion & Sabellian
		[-1120] = "Centaure maruuk",								-- Maruuk Centaur
		[-1130] = "Rohart iskaarien",								-- Iskaara Tuskarr
		[-1143] = "Rotation Rare de DF",							-- DF Rare Rotation
		[-1150] = "Flairans de Terreau",							-- Loamm Niffen
		[-1151] = "Marchandage",									-- Bartering
		[-1200] = "Caveaux de Zskera",								-- Zskera Vaults
		[-1202] = "Assauts de Fyrakka",								-- Fyrakk Assaults
		[-1203] = "Recherches olfactives",							-- Sniffenseeking
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5200] = "Apparence de base",							-- Base Appearance
			[-5201] = "Campagne du Domaine de classe",				-- Class Hall Campaign
			[-5202] = "L’équilibre de la puissance",				-- Balance of Power
			[-5203] = "Récompenses préstigieuses",					-- Prestige Rewards
			[-5204] = "Apparence de Challenge",						-- Challenge Appearance
			[-5205] = "Apparence Cachée",							-- Hidden Appearance

	------ ACHIEVEMENT HEADERS SECTION ------
		[-10071] = "Visions de N'Zoth",								-- Visions of N'Zoth
		[-10072] = "Assaut de N'Zoth Assault",						-- N'Zoth Assault
		[-10081] = "Zone corrompue",								-- Corrupted Area
		[-10082] = "Zone perdue",									-- Lost Area
})
do a[key] = value; end

-- Fall-back 'name' values for Quests based on QuestID
local a = L.QUEST_NAMES;
for key,value in pairs({
	-- [QuestID] = "Name",
})
do a[key] = value; end

-- Fall-back 'name' values for Items based on ItemID
local a = L.ITEM_NAMES;
for key,value in pairs({
	-- [ItemID] = "Name",
})
do a[key] = value; end

--TODO:
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..("Interface\\Icons\\achievement_newplayerexperience")..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
	["HOA"] = { icon = "|T"..("Interface\\Icons\\inv_heartofazeroth")..":0|t", color = "ffe6cc80", text = GetSpellInfo(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
	["!HOA"] = { icon = "|T"..("Interface\\Icons\\mystery_azerite_chest_normal")..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellInfo(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
})
do a[key] = value; end
