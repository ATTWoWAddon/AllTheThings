-- Localization for Portuguese (Brazil) Clients.
if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	--TODO: L.DESCRIPTION = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";
	--TODO: L.THINGS_UNTIL = " THINGS UNTIL ";
	--TODO: L.THING_UNTIL = " THING UNTIL ";
	--TODO: L.YOU_DID_IT = "YOU DID IT!";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "Progresso";
	L.TRACKING_PROGRESS = "Rastreando Progresso";
	L.COLLECTED_STRING = " Coletado";
	--TODO: L.PROVIDERS = "Provider(s)";
	L.COLLECTION_PROGRESS = "Progresso da Coleção";
	L.CONTAINS = "Contém:";
	L.FACTIONS = "Facções";
	L.COORDINATES = "Coordenadas";
	--TODO: L.AND_MORE = "And %s more...";
	--TODO: L.AND_OTHER_SOURCES = "And %s other sources...";
	L.PLAYER_COORDINATES = "Coordenadas do Jogador";
	L.NO_COORDINATES_FORMAT = "Sem coordenadas conhecidas para %s";
	L.TOM_TOM_NOT_FOUND = "Você precisa ter TomTom instalado para exibir as coordenadas.";
	L.FLIGHT_PATHS = "Pontos de voo";
	L.KNOWN_BY = "Conhecido como %s";
	L.REQUIRES = "Requer";
	L.RACE_LOCKED = "Travado por raça";
	L.PLEASE_REPORT_MESSAGE = "Por favor reporte isso no Discord do ATT em #retail-errors! Obrigado!";
	L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C para copiar o texto completo do report para sua área de transferência)";
	L.NOT_AVAILABLE_IN_PL = "Não disponível para saque (loot) pessoal.";
	--TODO: L.MARKS_OF_HONOR_DESC = "Marks of Honor must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the item)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	--TODO: L.MOP_REMIX_BRONZE_DESC = "Bronze must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the currency)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	L.ITEM_GIVES_REP = "Concede reputação com '";
	L.COST = "Custo";
	L.COST_DESC = "Aqui contém uma visão geral detalhada do que é necessário para obter ou comprar isso";
	L.COST_TOTAL = "Custo total";
	--TODO: L.COST_TOTAL_DESC = "This contains the visual breakdown of what is required to obtain or purchase all Things within the top-level group.\n\nNote: Does not currently include Reagents/Recipes requirements!";
	L.SOURCES = "Fonte(s)";
	L.SOURCES_DESC = "Mostra a Fonte dessa Cosia.\n\nParticularmente, um Vendedor específico/NPC, Quest, Boss, etc.";
	L.WRONG_FACTION = "Você precisa ser de outra facção para visualizar isso.";
	L.ARTIFACT_INTRO_REWARD = "Concedida por completar a missão introdutória para este Artefato.";
	L.VISIT_FLIGHT_MASTER = "Visite o Mestre de Voo para registrar.";
	L.FLIGHT_PATHS_DESC = "Pontos de voo são registrados quando você fala com um mestre de voo em cada continente.\n  - Crieve";
	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	L.HEIRLOOM_TEXT = "Herança Desbloqueada";
	L.HEIRLOOM_TEXT_DESC = "Isso indica se já adquiriu ou não a Herança.";
	L.FAILED_ITEM_INFO = "Falha ao adquirir informações sobre o item. O item pode ser inválido ou pode ainda não ter sido registrado em seu servidor.";
	L.HEIRLOOMS_UPGRADES_DESC = "Isso indica se já atualizou ou não a herança para um certo nível.\n\nR.I.P. Gold.\n - Crieve";
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "Estes são desbloqueados por personagem e não são atualmente compartilhados pela conta. Se alguém da Blizzard está lendo isso, seria muito interessante se fizesse isso em toda a conta.\n\nVocê precisa manualmente atualizar o addon apertando "..SHIFT_KEY_TEXT.." e clicando no cabeçalho para isso ser detectado.";	--TODO
	end
	--TODO: L.MUSIC_ROLLS_DESC_2 = "\n\nYou must first unlock the Music Rolls by completing the Bringing the Bass quest in your garrison for this item to drop.\n\nSelfies require the S.E.L.F.I.E Toy.";
	--TODO: L.OPPOSITE_FACTION_EQ = "Opposite faction equivalent: ";
	--TODO: L.SELFIE_DESC = "Take a selfie using your ";
	--TODO: L.SELFIE_DESC_2 = " with |cffff8000";
	--TODO: L.EXPANSION_DATA[1].lore = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.";
	--TODO: L.EXPANSION_DATA[2].lore = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.";
	--TODO: L.EXPANSION_DATA[3].lore = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.";
	--TODO: L.EXPANSION_DATA[4].lore = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.";
	--TODO: L.EXPANSION_DATA[5].lore = "Mists of Pandaria is the fourth expansion pack. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.";
	--TODO: L.EXPANSION_DATA[6].lore = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.";
	--TODO: L.EXPANSION_DATA[7].lore = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.";
	--TODO: L.EXPANSION_DATA[8].lore = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.";
	--TODO: L.EXPANSION_DATA[9].lore = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.";
	L.EXPANSION_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence
	--TODO: L.TITLES_DESC = "Titles are tracked across your account, however, your individual character must qualify for certain titles to be usable on that character.";
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
	--TODO: L.QUEST_MAY_BE_REMOVED = "Failed to acquire information. This quest may have been removed from the game. ";

	--TODO: L.FACTION_SPECIFIC_REP = "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	--TODO: L.MINUMUM_STANDING_WITH_FACTION = "Requires a minimum standing of %s with %s.";
	--TODO: L.MAXIMUM_STANDING_WITH_FACTION = "Requires a standing lower than %s with %s.";
	--TODO: L.MIN_MAX_STANDING_WITH_FACTION = "Requires a standing between %s and %s with %s.";

	--TODO: L.ADDED_WITH_PATCH = "Added With Patch";
	--TODO: L.REMOVED_WITH_PATCH = "Removed With Patch";
	--TODO: L.ALIVE = "Alive";
	--TODO: L.SPAWNED = "Spawned";
	--TODO: L.OBJECT_TYPE = "Object Type";
	--TODO: L.OBJECTIVES = "Objectives";
	--TODO: L.QUEST_GIVERS = "Quest Givers";
	--TODO: L.DURING_WQ_ONLY = "This can be completed when the world quest is active.";
	--TODO: L.COMPLETED_DAILY = "This can be completed daily.";
	--TODO: L.COMPLETED_WEEKLY = "This can be completed weekly.";
	--TODO: L.COMPLETED_MONTHLY = "This can be completed monthly.";
	--TODO: L.COMPLETED_YEARLY = "This can be completed yearly.";
	--TODO: L.COMPLETED_MULTIPLE = "This can be repeated multiple times.";
	--TODO: L.CRITERIA_FOR = "Criteria for";
	--TODO: L.CURRENCY_FOR = "Currency for";
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
	--TODO: L.NO_ENTRIES = "No entries matching your filters were found.";
	--TODO: L.NO_ENTRIES_DESC = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.";
	--TODO: L.DEBUG_LOGIN = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.";
	--TODO: L.UNSORTED = "Unsorted";
	--TODO: L.UNSORTED_DESC = "This thing hasn't been Sourced yet within ATT " .. app.Version .. ".";
	--TODO: L.NEVER_IMPLEMENTED = "Never Implemented";
	--TODO: L.NEVER_IMPLEMENTED_DESC = "Items here technically exist within the game but have never been made available to players";
	--TODO: L.HIDDEN_QUEST_TRIGGERS = "Hidden Quest Triggers";
	--TODO: L.HIDDEN_QUEST_TRIGGERS_DESC = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	--TODO: L.UNSORTED_DESC_2 = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";
	--TODO: L.OPEN_AUTOMATICALLY = "Open Automatically";
	--TODO: L.OPEN_AUTOMATICALLY_DESC = "If you aren't a Blizzard Developer, it might be a good idea to uncheck this. This was done to force Blizzard to fix and/or acknowledge these bugs.";
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
	--TODO: L.REROLL = "Reroll";
	--TODO: L.REROLL_DESC = "Click this button to reroll using the active filter.";
	--TODO: L.APPLY_SEARCH_FILTER = "Apply a Search Filter";
	--TODO: L.APPLY_SEARCH_FILTER_DESC = "Please select a search filter option.";
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
	--TODO: L.NO_SEARCH_METHOD = "No search method specified.";
	--TODO: L.PROFESSION_LIST = "Profession List";
	--TODO: L.PROFESSION_LIST_DESC = "Open your professions to cache them.";
	--TODO: L.CACHED_RECIPES_1 = "Cached ";
	--TODO: L.CACHED_RECIPES_2 = " known recipes!";
	--TODO: L.WORLD_QUESTS_DESC = "These are World Quests and other time-limited Things that are currently available somewhere. Go get 'em!";
	--TODO: L.QUESTS_DESC = "Shows all possible QuestID's in the game in ascending numeric order.";
	--TODO: L.UPDATE_WORLD_QUESTS = "Update World Quests Now";
	--TODO: L.UPDATE_WORLD_QUESTS_DESC = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	--TODO: L.CLEAR_WORLD_QUESTS = "Clear World Quests";
	--TODO: L.CLEAR_WORLD_QUESTS_DESC = "Click to clear the current information within the World Quests frame";
	--TODO: L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "All items that can be used to obtain achievements that you are missing are displayed here.";
	--TODO: L.ALL_THE_APPEARANCES_DESC = "All appearances that you need are displayed here.";
	--TODO: L.ALL_THE_MOUNTS_DESC = "All mounts that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_BATTLEPETS_DESC = "All pets that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_QUESTS_DESC = "All quests that have objective or starting items that can be sold on the auction house are displayed here.";
	--TODO: L.ALL_THE_RECIPES_DESC = "All recipes that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_ILLUSIONS_DESC = "Illusions, toys, and other items that can be used to earn collectible items are displayed here.";
	--TODO: L.ALL_THE_REAGENTS_DESC = "All items that can be used to craft an item using a profession on your account.";
	--TODO: L.AH_SCAN_SUCCESSFUL_1 = ": Successfully scanned ";
	--TODO: L.AH_SCAN_SUCCESSFUL_2 = " item(s).";
	--TODO: L.REAGENT_CACHE_OUT_OF_DATE = "Reagent Cache is out-of-date and will be re-cached when opening your professions!";
	--TODO: L.ARTIFACT_CACHE_OUT_OF_DATE = "Artifact Cache is out-of-date/inaccurate and will be re-cached when logging onto each character!";
	--TODO: L.QUEST_LOOP = "Likely just broke out of an infinite source quest loop.";
	--TODO: L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "Quest '%s' %s will prevent collection of Breadcrumb Quest '%s' %s";
	--TODO: L.QUEST_OBJECTIVE_INVALID = "Invalid Quest Objective";
	--TODO: L.REFRESHING_COLLECTION = "Refreshing collection...";
	--TODO: L.DONE_REFRESHING = "Done refreshing collection.";
	--TODO: L.ADHOC_UNIQUE_COLLECTED_INFO = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";
	--TODO: L.AVAILABILITY = "Availability";
	--TODO: L.REQUIRES_PVP = "|CFF00FFDEThis Thing requires Player vs Player activities or a currency related to those activities.|r";
	--TODO: L.REQUIRES_PETBATTLES = "|CFF00FFDEThis Thing requires Pet Battling.|r";
	--TODO: L.REPORT_INACCURATE_QUEST = "Wrong Quest Info! (Click to Report)";
	--TODO: L.NESTED_QUEST_REQUIREMENTS = "Nested Quest Requirements";
	--TODO: L.MAIN_LIST_REQUIRES_REFRESH = "[Open Main list to update progress]";
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
	L.TRADING_POST = "Posto Comercial";

	-- Item Filter Window
		--TODO: L.ITEM_FILTER_TEXT = "Item Filters";
		--TODO: L.ITEM_FILTER_DESCRIPTION = "You can search the ATT Database by using a item filter.";
		--TODO: L.ITEM_FILTER_BUTTON_TEXT = "Set Item Filter";
		--TODO: L.ITEM_FILTER_BUTTON_DESCRIPTION = "Click this to change the item filter you want to search for within ATT.";
		--TODO: L.ITEM_FILTER_POPUP_TEXT = "Which Item Filter would you like to search for?";

-- Instructional Text
	--TODO: L.MINIMAP_MOUSEOVER_TEXT = "Right click to change settings.\nLeft click to open the Main List.\n"..CTRL_KEY_TEXT.." click to open the Mini List.\n"..SHIFT_KEY_TEXT.." click to Refresh Collections.";
	--TODO: L.TOP_ROW_INSTRUCTIONS = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists\n"..ALT_KEY_TEXT.." right click to Plot Waypoints|r";
	--TODO: L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000The more information, the better.  Thanks!|r";
	--TODO: L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." click to Lock this Window";
	--TODO: L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." click to Unlock this Window";
	--TODO: L.QUEST_ROW_INSTRUCTIONS = "Right Click to see any Quest Chain Requirements";
	--TODO: L.SYM_ROW_INFORMATION = "Right Click to see additional content which is Sourced in another location";
	--TODO: L.QUEST_ONCE_PER_ACCOUNT = "Once-Per-Account Quest";
	--TODO: L.COMPLETED_BY = "Completed By: %s";
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
	--TODO: L.AFTER_REFRESH = "After Refresh";

	-- General tab
		-- Mode Title
			L.MODE = "Modo";
			L.TITLE_COMPLETIONIST = "Complecionista ";
			L.TITLE_UNIQUE_APPEARANCE = "Única ";
			-- L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account .. "Conta|R ";
			L.TITLE_MAIN_ONLY = " (Apenas main)";
			L.TITLE_NONE_THINGS = "Nenhuma das Coisas ";
			L.TITLE_ONLY = " Apenas ";
			L.TITLE_INSANE = app.ccColors.Insane.."Insano|R ";
			L.TITLE_SOME_THINGS = "Alguams das Coisas ";
			L.TITLE_LEVEL = "Nível ";
			L.TITLE_SOLO = "Solo ";
			-- L._BETA_LABEL = " |cff4AA7FF[Beta]|R";

		L.MINIMAP_SLIDER = "Tamanho do botão do minimapa";
		L.MINIMAP_SLIDER_TOOLTIP = 'Use isso para customizar o tamanho do Botão no Minimapa.\n\nPadrão: 36';
		L.EXTRA_THINGS_LABEL = "Recursos Adicionais";
		L.MINIMAP_BUTTON_CHECKBOX = "Mostrar Botão no Minimapa";
		L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Ative essa opção se você deseja ver o botão no minimapa. Esse botão permite que acesse rapidamente a Lista Principal, mostre a Visão Geral do Progresso da Coleção e acessar as Configurações clicando com o botão direito.\n\nAlgumas pessoas não gostam de desordem. Alternativamente, você pode acessar essas informações digitando '/att' no chat. Dalí, você pode clicar com o botão direito no cabeçalho (AllTheThings na primeira linha) para acessar as configurações.";
		L.WORLDMAP_BUTTON_CHECKBOX = "Show the World Map Button";
		L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the ATT button on your world map. This button allows you to quickly access the Mini List for the currently displayed zone. Regularly, you'd need to physically travel to the zone in order to see the content on the mini list that you can access by typing '/att mini' in your chatbox.";
		L.CLICK_TO_CREATE_FORMAT = "Click to Create %s";
		L.KEYBINDINGS_TEXT = "You can set keybindings for ATT in the game's options.";

	-- Interface tab
		L.ADDITIONAL_LABEL = "Informações Adicionais";
		L.DESCRIPTIONS = "Descrições";
		L.LORE = "História";
		-- L.CLASSES = "Classes";

	-- Features tab
		--TODO: L.MINIMAP_LABEL = "Minimap Button";
		--TODO: L.MODULES_LABEL = "Modules & Mini Lists";
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
		--TODO: L.CHAT_COMMANDS_LABEL = "Chat Commands";
		--TODO: L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFOpens the Main List.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFOpens the Mini List.\n\n|R/att bounty\n|cffFFFFFFOpens a list of bugged or unconfirmed items.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFOpens the Raid Assistant.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFOpens the World Quests List.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Item Link]\n|cffFFFFFFOpens a window with shared appearances. Also works with other things, such as|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFShows all future Removed With Patch things.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFOpens the Random List.\n\n|R/att unsorted\n|cffFFFFFFOpens a list of unsourced items. Best opened in Debug Mode.\n\n|R/rl\n|cffFFFFFFReload your WoW interface.|R";

	-- Sync Window
		--TODO: L.ACCOUNT_MANAGEMENT = "Account Management";
		--TODO: L.ACCOUNT_MANAGEMENT_TOOLTIP = "This list shows you all of the functionality related to syncing account data.";
		--TODO: L.ADD_LINKED_CHARACTER_ACCOUNT = "Add Linked Character / Account";
		--TODO: L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "Click here to link a character or account to your account.";
		--TODO: L.ADD_LINKED_POPUP = "Please type the name of the character or BNET account to link to.";
		--TODO: L.SYNC_CHARACTERS_TOOLTIP = "This shows all of the characters on your account.";
		--TODO: L.NO_CHARACTERS_FOUND = "No characters found.";
		--TODO: L.LINKED_ACCOUNTS = "Linked Accounts";
		--TODO: L.LINKED_ACCOUNTS_TOOLTIP = "This shows all of the linked accounts you have defined so far.";
		--TODO: L.NO_LINKED_ACCOUNTS = "No linked accounts found.";
		--TODO: L.LINKED_ACCOUNT_TOOLTIP = "This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.";
		--TODO: L.DELETE_LINKED_CHARACTER = "Right Click to Delete this Linked Character";
		--TODO: L.DELETE_LINKED_ACCOUNT = "Right Click to Delete this Linked Account";
		--TODO: L.DELETE_CHARACTER = "Right Click to Delete this Character";
		--TODO: L.CONFIRM_DELETE = "\n \nAre you sure you want to delete this?";

	-- Binding Localizations
		--TODO: L.TOGGLE_ACCOUNT_MODE = "Toggle Account Mode";
		--TODO: L.TOGGLE_COMPLETIONIST_MODE = "Toggle Completionist Mode";
		--TODO: L.TOGGLE_DEBUG_MODE = "Toggle Debug Mode";
		--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";
		--TODO: L.TOGGLE_COMPLETEDTHINGS = "Toggle Completed Things (Both)";
		--TODO: L.TOGGLE_COMPLETEDGROUPS = "Toggle Completed Groups";
		--TODO: L.TOGGLE_COLLECTEDTHINGS = "Toggle Collected Things";
		--TODO: L.TOGGLE_BOEITEMS = "Toggle BoE/BoA Items";
		--TODO: L.TOGGLE_SOURCETEXT = "Toggle Source Locations";
		--TODO: L.MODULES = "Modules";
		--TODO: L.TOGGLE_MAINLIST = "Toggle ATT Main List";
		--TODO: L.TOGGLE_MINILIST = "Toggle ATT Mini List";
		--TODO: L.TOGGLE_PROFESSION_LIST = "Toggle ATT Profession List";
		--TODO: L.TOGGLE_WORLD_QUESTS_LIST = "Toggle ATT World Quests";
		--TODO: L.TOGGLE_RAID_ASSISTANT = "Toggle ATT Raid Assistant";
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
		--TODO: L.DROP_RATE = "Drop Rate";
		--TODO: L.QUEST_GIVER = "Quest Giver";
		--TODO: L.EVENT_SCHEDULE = "Event Schedule";
		--TODO: L.EVENT_ACTIVE = "Active:";
		--TODO: L.EVENT_START = "Start:";
		--TODO: L.EVENT_END = "End:";
		--TODO: L.EVENT_WHERE = "Where:";
		--TODO: L.REQUIRES_EVENT = "Requires Event";
		--TODO: L.LOCKOUT = "Lockout";
		--TODO: L.RESETS = "Resets";
		--TODO: L.SHARED = "Shared";
		--TODO: L.SPLIT = "Per Difficulty";
		--TODO: L.REQUIRES_LEVEL = "Requires Level";
		--TODO: L.SECRETS_HEADER = "Secrets";
		--TODO: L.LIMITED_QUANTITY = "This has a limited quantity and may not always be present on the vendor.";
		--TODO: L.SOURCE_ID_MISSING = "Please report this Item and where it was acquired to the ATT Discord in #retail-errors!";
		--TODO: L.ADDED_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.WAS_ADDED_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.ADDED_BACK_WITH_PATCH_FORMAT = "Re-added in %s";
		--TODO: L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "Added in %s";
		--TODO: L.REMOVED_WITH_PATCH_FORMAT = "Removed in %s";

	-- Filter Text
		--TODO: L.CREATURES_COUNT = "[%s Creatures]";
		--TODO: L.CREATURES_LIST = "Creatures List";

	-- Artifact Relic Completion
		--TODO: L.ARTIFACT_RELIC_CACHE = "Open your Artifact UI for all of your Artifact Weapons to cache whether this is an upgrade or not. This is useful for determining if you can trade this item to a Twink or not.";
		--TODO: L.ARTIFACT_RELIC_COMPLETION = "Artifact Relic Completion";
		--TODO: L.NOT_TRADEABLE = "Not Tradeable";
		--TODO: L.TRADEABLE = "Tradeable";

	-- Keybind usage
		--TODO: L.ENABLED = "enabled";
		--TODO: L.DISABLED = "disabled";

	-- Icons and Collection Text
		--TODO: L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollected*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE_OTHER"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.INCOMPLETE"] = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Saved|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffCurrency|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, o Trono Ardente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		--TODO: ["Expansion Pre"] = "Pre",
		--TODO: ["Expansion Features"] = "EF",
		--TODO: [GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		--TODO: ["The Burning Crusade"] = "BC",
		--TODO: ["Burning Crusade"] = "BC",
		--TODO: ["The BC"] = "BC",
		--TODO: ["Wrath of the Lich King"] = "WotLK",
		--TODO: ["Cataclysm "] = "Cata ",
		--TODO: ["Mists of Pandaria"] = "MoP",
		--TODO: ["Warlords of Draenor"] = "WoD",
		--TODO: ["Battle for Azeroth"] = "BFA",
		--TODO: ["The Shadowlands"] = "SL",
		--TODO: ["Shadowlands"] = "SL",
		--TODO: ["Player vs Player"] = "PvP",
		--TODO: ["Raid Finder"] = "LFR",
		--TODO: ["Looking For Raid"] = "LFR",
		--TODO: ["Normal"] = "N",
		--TODO: ["Heroic"] = "H",
		--TODO: ["Mythic"] = "M",
		["Ny'alotha, a Cidade Desperta"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, o Mercado Oculto"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		--TODO: ["10 Player"] = "10M",
		--TODO: ["10 Player (Heroic)"] = "10M (H)",
		--TODO: ["25 Player"] = "25M",
		--TODO: ["25 Player (Heroic)"] = "25M (H)",
		--TODO: ["Emissary Quests"] = "Emissary",
		--TODO: [TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		--TODO: ["WoW Anniversary"] = "Anniversary",
		--TODO: ["Covenant:"] = "Cov:",
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5202] = "Equilíbrio de poder",						-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		--TODO: SKIP_AUTO_REFRESH = "Skip Settings-Toggle Data Refreshes!";
		--TODO: SKIP_AUTO_REFRESH_TOOLTIP = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";

	-- About Page
		--TODO: ABOUT_PAGE = "About";
		--TODO: ABOUT_TOP = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|r";
		--TODO: ABOUT_BOTTOM = "Active Contributors: |CFFFFFFFF(Alphabetical Order)\n%s\n\n|rHall of Fame: |CFFFFFFFF(Alphabetical Order)\n%s\n\nSpecial Shoutout to AmiYuy (CanIMogIt) and Caerdon (Caerdon Wardrobe). You should absolutely download their addons to get the collection icons on items in your bags! %s %s %s\n\nFor online collection comparing check out DataForAzeroth.com from Shoogen and WoWthing.org from Freddie!|r";
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
		--TODO: ACCOUNT_MODE = app.ccColors.Account.."Account Mode";
		--TODO: ACCOUNT_MODE_TOOLTIP = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.";
		--TODO: FACTION_MODE = "Faction Only";
		--TODO: FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
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
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX = "Show Completed Groups";
		--TODO: SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
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
		--TODO: ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. "Nome da Conta|R by default.";
		--TODO: TRACK_ACC_WIDE = app.ccColors.Account .. "Track Nome da Conta|R";
		--TODO: ACCOUNT_THINGS_LABEL = "Account-Wide Things";
		--TODO: GENERAL_THINGS_LABEL = "General Things";
		--TODO: STRANGER_THINGS_LABEL = "Stranger Things";

		--TODO: ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		--TODO: ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Enable this option to track achievements.";
		APPEARANCES_CHECKBOX = "Aparências";
		--TODO: APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to track appearance acquisition.\n\nNOTE: Disabling this option also disables all fanfares and acquisition logic.  You can use this toggle as a way to prevent lag spikes while doing important group content, but bear in mind the computation will need to occur once re-enabled.";
		BATTLE_PETS_CHECKBOX = "Mascotes de Batalha";
		--TODO: BATTLE_PETS_CHECKBOX_TOOLTIP = "Enable this option to track battle pets and companions. These can be found in the open world or via boss drops in various Dungeons and Raids as well as from Vendors and Reputation.";
		--TODO: DEATHS_CHECKBOX = "Deaths";
		--TODO: DEATHS_CHECKBOX_TOOLTIP = "Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.";
		--TODO: EXPLORATION_CHECKBOX = "Exploration";
		--TODO: EXPLORATION_CHECKBOX_TOOLTIP = "Enable this option to track exploration completion for outdoor maps.";
		--TODO: FLIGHT_PATHS_CHECKBOX = "Flight Paths";
		--TODO: FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\nNOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.";
		--TODO: HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		--TODO: HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.";
		--TODO: HEIRLOOMS_UPGRADES_CHECKBOX = "+Upgrades";
		--TODO: HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
		--TODO: ILLUSIONS_CHECKBOX = "Illusions";
		--TODO: ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.";
		--TODO: MOUNTS_CHECKBOX = MOUNTS;
		--TODO: MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!";
		--TODO: QUESTS_CHECKBOX = QUESTS_LABEL;
		--TODO: QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
		--TODO: QUESTS_LOCKED_CHECKBOX = "+Locked";
		--TODO: QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using Account-Wide Quests to incorporate progress from other characters.";
		RECIPES_CHECKBOX = "Receitas";
		--TODO: RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		--TODO: REPUTATIONS_CHECKBOX = "Reputations";
		--TODO: REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		TITLES_CHECKBOX = "Títulos";
		--TODO: TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		--TODO: TOYS_CHECKBOX = TOY_BOX;
		--TODO: TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!";

		-- Expansion Things
		--TODO: EXPANSION_THINGS_LABEL = "Expansion Things";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Essências do Coração de Azeroth";
		--TODO: AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Manuscrito de Vigia-dracos";
		--TODO: DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track Dragonflight Manuscrito de Vigia-dracos";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Seguidores & Companheiros";
		--TODO: FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Poder de Runogravura";
		--TODO: RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Runecarving Powers.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conduítes";
		--TODO: SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Conduítes.";

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
		--TODO: UNOBTAINABLES_PAGE = "Unobtainables";
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
		--TODO: DISPLAY_IN_COMBAT_CHECKBOX = "In Combat";
		--TODO: DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		--TODO: TOOLTIP_MOD_LABEL = "Modifier";
		--TODO: TOOLTIP_MOD_NONE = NONE_KEY;
		--TODO: TOOLTIP_MOD_SHIFT = SHIFT_KEY_TEXT;
		--TODO: TOOLTIP_MOD_CTRL = CTRL_KEY_TEXT;
		--TODO: TOOLTIP_MOD_ALT = ALT_KEY_TEXT;
		--TODO: TOOLTIP_MOD_CMD = CMD_KEY_TEXT;
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
		--TODO: SPEC_CHECKBOX = "Specializations";
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
		--TODO: FOR_CREATURES_CHECKBOX = "For Creatures";
		--TODO: FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		--TODO: FOR_THINGS_CHECKBOX = "For Things";
		--TODO: FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		--TODO: FOR_UNSORTED_CHECKBOX = "For Unsorted";
		--TODO: FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: WITH_WRAPPING_CHECKBOX = "Allow Wrapping";
		--TODO: WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.";

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
		--TODO: SHOW_MODELS_CHECKBOX = "Model Preview";
		--TODO: SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX = "Fill Dynamic Quests";
		--TODO: FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be filled with those purchases when under automatically-populated Quests.\n\nFor example, this will cause the [World Quests] window to behave like the minilist rather than the Main list regarding Cost display.\nNote that in most cases, this will drastically increase the apparent content within the window.";
		--TODO: FILL_NPC_DATA_CHECKBOX = "Fill NPC Data";
		--TODO: FILL_NPC_DATA_CHECKBOX_TOOLTIP = "Enable this option if you want to fill all relevant data for a given NPC (Common Boss Drops, Drops, etc) when shown in a mini list. This option may cause a significant amount of duplication, but the idea is that the NPC will remain visible on the mini list if you need something available from that NPC.\n\nNote: A lot of Dragonflight outdoors content relies on this setting being enabled for accuracy due to how many Rares share common drops.\n\nDefault: Off";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX = "Show Nested Quest Chains";
		--TODO: NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		--TODO: SORT_BY_PROGRESS_CHECKBOX = "Sort By Progress";
		--TODO: SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." right click) to sort by the total progress of each group (instead of by Name)";
		--TODO: SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
		--TODO: PERCENTAGES_CHECKBOX = "Show Percentage Completion";
		--TODO: PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		--TODO: PRECISION_SLIDER = "Precision Level";
		--TODO: PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
		--TODO: DYNAMIC_CATEGORY_LABEL = "Dynamic Categories";
		--TODO: DYNAMIC_CATEGORY_SIMPLE = "Simple";
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
		--TODO: SYNC_PAGE = "Sync";
		--TODO: ACCOUNT_SYNCHRONIZATION = "Account Synchronization";
		--TODO: AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatically Sync Account Data";
		--TODO: AUTO_SYNC_ACC_DATA_TOOLTIP = "Enable this option if you want ATT to attempt to automatically synchronize account data between accounts when logging in or reloading the UI.";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		--TODO: PROFILES_PAGE = "Profiles";
		--TODO: PROFILE = "Profile";
		--TODO: PROFILE_INITIALIZE = "Initialize Profiles";
		--TODO: PROFILE_INITIALIZE_TOOLTIP = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
		--TODO: PROFILE_INITIALIZE_CONFIRM = "Are you sure you want to enable Profile support?";
		--TODO: PROFILE_NEW_TOOLTIP = "Create a blank Profile to be used by the current Character";
		--TODO: PROFILE_COPY_TOOLTIP = "Copy the Selected Profile into the Current Profile";
		--TODO: PROFILE_DELETE_TOOLTIP = "Delete the Selected Profile";
		--TODO: PROFILE_SWITCH_TOOLTIP = "Set the Selected Profile as the Current Profile\n\nA Profile can also be "..SHIFT_KEY_TEXT.." clicked to Switch to it";
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