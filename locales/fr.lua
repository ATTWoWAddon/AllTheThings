if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

L.TITLE = "|c" .. app.DefaultColors.ATT .. "ALL THE THINGS|r";
L.SHORTTITLE = "|c" .. app.DefaultColors.ATT .. "ATT|r";
L.MINIMAP_MOUSEOVER_TEXT = "Clic droit pour ouvrir le menu des options\nClic gauche pour afficher la liste principale\n"..CTRL_KEY_TEXT.." + clic gauche pour afficher la liste de zone\n"..SHIFT_KEY_TEXT.." + clic gauche pour rafraîchir les collections.";
L.TOP_ROW_INSTRUCTIONS = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z|r";
L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rafraîchir les collections\n"..CTRL_KEY_TEXT.." + clic pour afficher / masquer toutes les listes\n"..SHIFT_KEY_TEXT.." + clic droit pour trier les listes de A à Z\n"..ALT_KEY_TEXT.." + clic droit pour tracer des points de repère|r";
L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche et faites glisser pour déplacer la fenêtre\nClic droit pour ouvrir le menu des options\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffClic gauche pour afficher / masquer\nClic droit pour afficher la mini-liste\n"..SHIFT_KEY_TEXT.." + clic pour rechercher dans l’hôtel des ventes|r";
L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.." + C pour copier le rapport multiligne dans votre presse-papiers)";
L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";
L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";	
L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";	
L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";	
L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollecté|r";
L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollecté*|r";
L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Pas Collecté|r";
L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet|r";
L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complet*|r";
L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplet|r";
L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";	
L.MARKS_OF_HONOR_DESC = "Les Marques d’honneur doivent être affichées dans une fenêtre contextuelle pour afficher tout le contenu 'normal'.\n(Tapez '/att' dans le chat puis faites "..SHIFT_KEY_TEXT.." + clic pour pour afficher l’objet)\n\n|cFFfe040fAprès l’achat et l’utilisation d’un ensemble, une nouvelle connexion et une actualisation forcée d’ATT (dans cet ordre)\npeuvent être nécessaires pour enregistrer correctement tous les objets.|r";
if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Ils sont débloqués par personnage et ne sont actuellement pas partagés sur l’ensemble de votre compte. Si une personne de chez Blizzard lit ceci, ce serait vraiment bien si vous les rendiez à l'échelle du compte. Vous devez rafraîchir manuellement l’addon via "..SHIFT_KEY_TEXT.." + clic sur l’en-tête pour que ce soit détecté.";
end
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

L.UNSORTED_DESC = "Ces données n’ont pas encore été ajoutées. ATT " .. app.Version;
L.RESET_INSTANCES_DESC = "Cliquer ici pour réinitialiser les insatnces.\n\n"..ALT_KEY_TEXT.." + clic pour activer la réinitialisation automatique de vos instances lorsque vous quittez un donjon.\n\nATTENTION : SOYEZ PRUDENT AVEC CETTE OPTION !";

L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." + clic pour bloquer cette fenêtre";
L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." + clic pour débloquer cette fenêtre";
L.TITLE_DEBUG = "|c" .. app.DefaultColors.Red .. "Debug|R ";
L.TITLE_ACCOUNT = "|c" .. app.DefaultColors.Account.."Compte|R ";
L.TITLE_INSANE = "|c" .. app.DefaultColors.Insane.."Insensé|R ";
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

SKIP_AUTO_REFRESH_TOOLTIP = "Par défaut (non coché), toute modification des paramètres susceptible d’affecter les données visibles entraînera un rafraîchissement automatique.\n\nEn activant cette option, les modifications des paramètres ne prendront effet dès que l’utilisateur effectuera un rafraîchissement complet en faisant "..SHIFT_KEY_TEXT.." + clic droit sur une fenêtre d’ATT.";


ACCOUNT_MODE = "|c" .. app.DefaultColors.Account.."Mode Compte";
ACC_WIDE_DEFAULT = "Par défaut, suivi sur ".."|c" .. app.DefaultColors.Account.."l’ensemble du compte|R.";
AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essences du Cœur d’Azeroth";
FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Sujets & Compagnons";
RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Pouvoirs de gravure runique";
SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Intermédiaires";
ITEM_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché si vous êtes en ".."|c" .. app.DefaultColors.Account.."Mode Compte|cffFFFFFF.|r";
CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFCe contenu est toujours affiché s’il est disponible pour votre personnage actuel ou si vous vous trouvez dans la section ".."|c" .. app.DefaultColors.Account.."Mode Compte|cffFFFFFF.|r";
SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Activer cette option si vous souhaitez trier les groupes ("..SHIFT_KEY_TEXT.." + clic droit) par % de progression au lieu de les trier par leur nom.";
PROFILE_INITIALIZE_TOOLTIP = "Cela permettra à vos variables sauvegardées pour ATT de supporter et de contenir des données de profil. Vos paramètres et informations de fenêtre actuels seront copiés dans le profil '"..DEFAULT.."'. Ce profil ne peut pas être supprimé, mais peut être modifié et sera utilisé comme profil initial pour tous les personnages. N’oubliez pas de signaler tout comportement inhabituel ou tout bogue lié aux profils sur le Discord d’ATT !";
PROFILE_SWITCH_TOOLTIP = "Définir le profil sélectionné comme le profil actuel\n\n"..SHIFT_KEY_TEXT.." + clic pour accéder au profil sélectionné";

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
