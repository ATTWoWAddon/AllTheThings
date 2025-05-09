-- Localization for Chinese (Simplified, PRC) Clients.
if GetLocale() ~= "zhCN" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	L.DESCRIPTION = "“你愚蠢地寻求自己的终结，厚颜无耻地无视了你无法理解的力量。你入侵了收藏者的领域并为此努力。现在只有一条路可走了——这条孤独的路……该死的路。”";
	L.THINGS_UNTIL = " 事物到 ";
	L.THING_UNTIL = " 事物到 ";
	L.YOU_DID_IT = "你做到了！";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "进度";
	L.TRACKING_PROGRESS = "追踪进度";
	L.COLLECTED_STRING = " 已收藏";
	L.PROVIDERS = "供应商";
	L.COLLECTION_PROGRESS = "收藏进度";
	L.CONTAINS = "包含：";
	L.FACTIONS = "阵营";
	L.COORDINATES = "坐标";
	L.AND_MORE = "和 %s 更多...";	--TODO: check
	L.AND_OTHER_SOURCES = "和 %s 其他来源...";	--TODO: check
	L.PLAYER_COORDINATES = "玩家坐标";
	L.NO_COORDINATES_FORMAT = "%s 没有已知坐标";
	L.TOM_TOM_NOT_FOUND = "必须安装 TomTom 才能绘制坐标。";
	L.FLIGHT_PATHS = "飞行路线";
	L.KNOWN_BY = "已知 %s";	--TODO: check
	L.REQUIRES = "需要";
	L.RACE_LOCKED = "种族锁定";
	L.PLEASE_REPORT_MESSAGE = "请把错误报告给 ATT Discord 的 #retail-errors！谢谢！";
	L.REPORT_TIP = "\n（"..CTRL_KEY_TEXT.."+C 将多行报告复制到剪贴板）";
	L.NOT_AVAILABLE_IN_PL = "在个人拾取中不可用。";
	L.MARKS_OF_HONOR_DESC = "荣耀印记必须在弹出窗口中查看才能看到所有正常的'包含'内容。\n(在聊天中输入'/att' 然后 "..SHIFT_KEY_TEXT.."点击链接的物品)\n\n|cFFfe040f之后购买和一起使用，重新登录和强制 ATT 刷新（按此顺序）\n可能需要正确注册所有物品。|r";
	L.MOP_REMIX_BRONZE_DESC = "青铜必须在弹出窗口中查看才能看到所有正常的'包含'内容。\n(在聊天中输入'/att' 然后 "..SHIFT_KEY_TEXT.."点击链接的物品)\n\n|cFFfe040f之后购买和一起使用，重新登录和强制 ATT 刷新（按此顺序）\n可能需要正确注册所有物品。|r";
	L.ITEM_GIVES_REP = "提供声望 '";
	L.COST = "花费";
	L.COST_DESC = "这里面包含了获得或购买这个物品所需要的物品";
	L.COST_TOTAL = "总花费";
	L.COST_TOTAL_DESC = "其中包含获取或购买顶级分组内所有物品所需的直观分类。\n\n注意：目前不包括药剂/配方需求！";
	L.SOURCES = "来源";
	L.SOURCES_DESC = "显示这个东西的来源。\n\n特别是特定商人/NPC，任务，战斗，等等。";
	L.WRONG_FACTION = "可能需要在另一个阵营中查看此内容。";
	L.ARTIFACT_INTRO_REWARD = "完成该神器的介绍任务后获得。";
	L.VISIT_FLIGHT_MASTER = "访问飞行管理员缓存。";
	L.FLIGHT_PATHS_DESC = "当你与每个大陆上的飞行管理员交谈时会缓存飞行路径。\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "如果您在 ATT 中启用此设置，则可以在整个帐号范围内收集追随者。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击标题手动刷新插件才能检测到这一点。";
	L.HEIRLOOM_TEXT = "解锁传家宝";
	L.HEIRLOOM_TEXT_DESC = "显示你是否已经获得或购买了传家宝。";
	L.FAILED_ITEM_INFO = "未能获得物品信息。该物品可能是无效的或者可能还没有被缓存在你的服务器上。";
	L.HEIRLOOMS_UPGRADES_DESC = "这表明你是否已经将传家宝升级到了一定的级别。\n\n安息吧…金币。\n - Crieve";
	L.MUSIC_ROLLS_DESC = "这些是按角色解锁且目前尚未在战网中共享。如果暴雪有人在看，如果能把这些战网共享的话那就太好了。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击要检测的标题手动刷新插件。";
	L.MUSIC_ROLLS_DESC_2 = "\n\n必须首先通过在要塞中完成动感低音任务来解锁塞点唱机以便掉落此物品。\n\n自拍需要自拍神器玩具。";
	L.OPPOSITE_FACTION_EQ = "与对立阵营对应：";
	L.SELFIE_DESC = "使用您的自拍 ";
	L.SELFIE_DESC_2 = " 和 |cffff8000";
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
	L.TITLES_DESC = "头衔会在你的战网中被追踪，但是，你的角色必须符合某些头衔的条件才能在该角色上使用。";
	L.UPON_COMPLETION = "前置条件";
	L.UPON_COMPLETION_DESC = "以上任务需要完成后才能够完成以下的事情。";
	L.QUEST_CHAIN_REQ = "任务链要求";
	L.QUEST_CHAIN_REQ_DESC = "在能够完成最终任务之前需要完成以下任务。";
	L.AH_SEARCH_NO_ITEMS_FOUND = "搜索中找不到缓存的物品。展开组并查看物品缓存名称，然后重试。使用此搜索只能找到BOE物品。";
	L.AH_SEARCH_BOE_ONLY = "使用此搜索只能找到装备绑定物品。";
	L.TSM_WARNING_1 = "运行此命令可能会通过将物品重新分配到 ";
	L.TSM_WARNING_2 = " 预设。\n\n我们建议你在使用此功能时使用不同的配置文件。\n\n你还想继续吗?";
	L.PRESET_UPDATE_SUCCESS = "更新预设成功。";
	L.SHOPPING_OP_MISSING_1 = "预设缺少'购物'操作分配。";
	L.SHOPPING_OP_MISSING_2 = "键入'/tsm operations'创建或者分配一个。";
	L.AUCTIONATOR_GROUPS = "基于群组的搜索只支持使用 Auctionator。";
	L.TSM4_ERROR = "TSM4 尚未与 ATT 兼容。如果你知道如何像我们以前在 TSM3 中那样创建预设，请在 Discord 上告诉我！";
	L.QUEST_MAY_BE_REMOVED = "获取信息失败。这个任务可能已从游戏中移除。";

	L.FACTION_SPECIFIC_REP = "并非所有声望都可以在单个角色上查看。例：联盟玩家无法看到战歌骑手，部落玩家无法查看银翼哨兵。";
	L.MINUMUM_STANDING_WITH_FACTION = "最低阵营声望等级 %s 和 %s。";
	L.MAXIMUM_STANDING_WITH_FACTION = "最高阵营声望等级 %s 和 %s。";
	L.MIN_MAX_STANDING_WITH_FACTION = "阵营声望等级在 %s 與 %s 之间，和 %s。";

	L.ADDED_WITH_PATCH = "随补丁添加";
	L.REMOVED_WITH_PATCH = "随补丁移除";
	L.ALIVE = "存活";
	L.SPAWNED = "已生成";
	L.OBJECT_TYPE = "目标类型";
	L.OBJECTIVES = "目标";
	L.QUEST_GIVERS = "任务给予者";
	L.DURING_WQ_ONLY = "可以在世界任务激活时完成";
	L.COMPLETED_DAILY = "可以每天完成";
	L.COMPLETED_WEEKLY = "可以每周完成";
	L.COMPLETED_MONTHLY = "可以每月完成";
	L.COMPLETED_YEARLY = "可以每年完成";
	L.COMPLETED_MULTIPLE = "可以重复多次";
	L.CRITERIA_FOR = "准则";
	L.CURRENCY_FOR = "货币";
	L.LOOT_TABLE_CHANCE = "拾取列表几率";
	L.BEST_BONUS_ROLL_CHANCE = "最佳额外投骰几率";
	L.BEST_PERSONAL_LOOT_CHANCE = "最佳个人拾取几率";
	L.PREREQUISITE_QUESTS = "必须先完成一些前置任务才有可能获得：";
	L.BREADCRUMBS = "无关紧要";
	L.BREADCRUMBS_WARNING = "完成此任务后可能无法获得无关紧要的任务：";
	L.THIS_IS_BREADCRUMB = "这是个无关紧要的任务。";
	L.BREADCRUMB_PARTYSYNC = "如果先完成这些任务中的任何一个在没有小队同步的情况下可能无法完成：";
	L.BREADCRUMB_PARTYSYNC_2 = "这可以通过与另一个没有完成这些任务的角色进行小队同步获得：";
	L.BREADCRUMB_PARTYSYNC_3 = "可能需要与能够接受此任务的角色进行小队同步。";
	L.BREADCRUMB_PARTYSYNC_4 = "如果尝试通过小队同步获得此任务，请在 Discord 上告诉我们结果！";
	L.DISABLE_PARTYSYNC = "即使使用小队同步，这个角色也可能无法完成。如果您以其他方式管理，请在 Discord 上告诉我们！";
	L.UNAVAILABLE_WARNING_FORMAT = "如果满足以下%d项，则变为不可用：";
	L.NO_ENTRIES = "没有找到符合过滤条件的条目。";
	L.NO_ENTRIES_DESC = "如果认为这是错误的，请尝试激活'调试模式'。某个过滤条件可能会限制该组的可见性。";
	L.DEBUG_LOGIN = "登录后获得的奖励。\n\n干得好！你做到了！\n\n仅在调试模式下可见。";
	L.UNSORTED = "未分类";
	L.UNSORTED_DESC = "此数据尚未在 ATT 中获取 " .. app.Version .. "。";
	L.UNSORTED_DESC_2 = "这里的物品存在于游戏中，玩家可能会获得，但 ATT 还没有找到准确位置";
	L.NEVER_IMPLEMENTED = "从未生效";
	L.NEVER_IMPLEMENTED_DESC = "这里的物品在技术上存在于游戏内，但从未向玩家开放过";
	L.HIDDEN_QUEST_TRIGGERS = "隐藏任务触发";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "这些任务是根据特定的标准手动确定触发的任务，主要用于游戏内部的追踪目的";
	L.OPEN_AUTOMATICALLY = "自动开启";
	L.OPEN_AUTOMATICALLY_DESC = "如果你不是暴雪开发者，最好是取消勾选此项。这样做是为了迫使暴雪修复和/或承认这些错误。";
	L.MINI_LIST = "小列表";
	L.MINI_LIST_DESC = "该列表包含了当前区域的相关信息而这些信息在 ATT 数据库中找不到";
	L.UPDATE_LOCATION_NOW = "现在更新位置";
	L.UPDATE_LOCATION_NOW_DESC = "如果想强制刷新当前的地图数据请点击这个按钮！";
	L.PERSONAL_LOOT_DESC = "每位玩家都有独立的机会拾取对自己职业有用的物品…\n\n…或者像戒指这样的无用之物。\n\n如果是自己一个人的话点击两次就会自动创建一个队伍。";
	L.RAID_ASSISTANT = "团队助手";
	L.RAID_ASSISTANT_DESC = "再也不要用错误的设置进入团队了！检查一切是否正常！";
	L.LOOT_SPEC_UNKNOWN = "拾取专精未知";
	L.LOOT_SPEC = "拾取专精";
	L.LOOT_SPEC_DESC = "在个人拾取地下城，副本和户外事件中，此设置将决定哪些物品可供使用。\n\n点击此行可立即更改！";
	L.DUNGEON_DIFF = "地下城难度";
	L.DUNGEON_DIFF_DESC = "地下城的难度设定。\n\n点击此行可立即更改！";
	L.RAID_DIFF = "团队难度";
	L.RAID_DIFF_DESC = "团队难度设定。\n\n点击此行可立即更改！";
	L.LEGACY_RAID_DIFF = "经典团队难度";
	L.LEGACY_RAID_DIFF_DESC = "经典团队难度设定。\n\n点击此行可立即更改！";
	L.TELEPORT_TO_FROM_DUNGEON = "传送到/从地下城传送";
	L.TELEPORT_TO_FROM_DUNGEON_DESC = "点击此处传送到当前副本或从当前副本传送。\n\n潘达利亚之谜以这种方式快速传送到当前副本之外。";
	L.RESET_INSTANCES = "重置副本";
	L.RESET_INSTANCES_DESC = "点击此处重置副本。\n\n"..ALT_KEY_TEXT.."点击可在离开地下城时自动重置副本。\n\n警告：小心使用！";
	L.DELIST_GROUP = "群组除名";
	L.DELIST_GROUP_DESC = "点击此处将群组除名。如果您独自一人，它会轻松地离开该组，而不会将您从您所在的任何实例中移出。 ";
	L.LEAVE_GROUP = "离开队伍";
	L.LEAVE_GROUP_DESC = "点击此处离开队伍。在大多数情况下，这也会在60秒左右后将你送到最近的墓地。\n\n注意：只有当你在一个队伍中或者游戏认为你在一个队伍中时才有效。";
	L.LOOT_SPEC_DESC_2 = "在个人拾取地下城，副本和户外事件中，此设置将决定哪些物品可供使用。\n\n点击此行可返回团队助手。";
	L.CURRENT_SPEC = "当前专精";
	L.CURRENT_SPEC_DESC = "如果你改变你的专精，你的战利品就会随之改变。";
	L.DUNGEON_DIFF_DESC_2 = "此设置允许自定义地下城的难度。\n\n点击此行可返回团队助手。";
	L.CLICK_TO_CHANGE = "点击立即更改。（如果可用）";
	L.RAID_DIFF_DESC_2 = "此设置允许自定义团队难度。\n\n点击此行可返回团队助手。";
	L.LEGACY_RAID_DIFF_DESC_2 = "此设置允许自定义经典拾取团队难度。（围攻奥格瑞玛之前的）\n\n点击此行可返回团队助手。";
	L.REROLL = "重新刷新";
	L.REROLL_2 = "重新刷新：";
	L.REROLL_DESC = "点击此按钮可使用活动过滤器重新刷新。";
	L.APPLY_SEARCH_FILTER = "应用搜索过滤";
	L.APPLY_SEARCH_FILTER_DESC = "请选择一个搜索过滤选项。";
	L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "点击此按钮搜索…一切。";
	L.ACHIEVEMENT_DESC = "点击此按钮可根据缺少的内容选择随机成就。";
	L.ITEM_DESC = "点击此按钮可根据缺少的内容选择随机物品。";
	L.INSTANCE_DESC = "点击此按钮可根据缺少的内容选择随机副本。";
	L.DUNGEON_DESC = "点击此按钮可根据缺少的内容选择随机地下城。";
	L.RAID_DESC = "点击此按钮可根据缺少的内容选择随机团队。";
	L.MOUNT_DESC = "点击此按钮可根据缺少的内容选择随机坐骑。";
	L.PET_DESC = "点击此按钮可根据缺少的内容选择随机宠物。";
	L.QUEST_DESC = "点击此按钮可根据缺少的内容选择随机任务。";
	L.TOY_DESC = "点击此按钮可根据缺少的内容选择随机玩具。";
	L.ZONE_DESC = "点击此按钮可根据缺少的内容选择随机地区。";
	L.GO_GO_RANDOM = "随机 - 去看看！";
	L.GO_GO_RANDOM_DESC = "此窗口允许随机选择要获取的地点或物品。去吧！";
	L.CHANGE_SEARCH_FILTER = "更改搜索过滤";
	L.CHANGE_SEARCH_FILTER_DESC = "点击此按钮可更改搜索过滤。";
	L.NOTHING_TO_SELECT_FROM = "没有什么可以随意选择的。如果在“设置”中启用了“临时更新”，则必须在使用此窗口之前更新主列表（/att）。";
	L.NO_SEARCH_METHOD = "未指定搜索方法。";
	L.PROFESSION_LIST = "专业列表";
	L.PROFESSION_LIST_DESC = "打开你的专业来缓存它们。";
	L.CACHED_RECIPES_1 = "缓存 ";
	L.CACHED_RECIPES_2 = " 已知配方！";
	L.WORLD_QUESTS_DESC = "这些都是世界任务和其他有时间限制的事物，目前可以在某个地方获得。去得到他们！";
	L.QUESTS_DESC = "按数字升序显示游戏中所有可能的任务 ID。";
	L.UPDATE_WORLD_QUESTS = "立即更新世界任务";
	L.UPDATE_WORLD_QUESTS_DESC = "有时世界任务 API 很慢或无法返回新数据。如果希望在不更改区域的情况下强制刷新数据，请立即点击此按钮！\n\n"..ALT_KEY_TEXT.."点击以包括当前可用的事物，可能不受时间限制";
	L.CLEAR_WORLD_QUESTS = "清除世界任务";
	L.CLEAR_WORLD_QUESTS_DESC = "点击清除世界任务框架内的当前信息";
	L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "所有可以用来获得成就的物品都会显示在这里。";
	L.ALL_THE_APPEARANCES_DESC = "所有你需要的外观都在这里显示。";
	L.ALL_THE_MOUNTS_DESC = "所有你尚未收藏的坐骑都会显示在这里。";
	L.ALL_THE_BATTLEPETS_DESC = "所有你尚未收藏的宠物都会显示在这里。";
	L.ALL_THE_QUESTS_DESC = "所有有目标或起始物品可以在拍卖行出售的任务都会在这里显示。";
	L.ALL_THE_RECIPES_DESC = "所有你尚未收藏的食谱都会显示在这里。";
	L.ALL_THE_ILLUSIONS_DESC = "这里展示了幻象、玩具等可以获得收藏的物品。";
	L.ALL_THE_REAGENTS_DESC = "所有你的战网上的专业制作的可以使用的物品。";
	L.AH_SCAN_SUCCESSFUL_1 = "：成功扫描 ";
	L.AH_SCAN_SUCCESSFUL_2 = " 物品。";
	L.REAGENT_CACHE_OUT_OF_DATE = "缓存已过期，打开专业界面后会重新缓存！";
	L.ARTIFACT_CACHE_OUT_OF_DATE = "考古缓存已过时/不准确，将在登录每个角色时重新缓存！";
	L.QUEST_LOOP = "可能刚刚从无限源任务循环中爆发出来。";
	L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "任务 '%s' %s 将阻止收藏无关紧要的任务 '%s' %s";
	L.QUEST_OBJECTIVE_INVALID = "无效的任务目标";
	L.REFRESHING_COLLECTION = "刷新收藏…";
	L.DONE_REFRESHING = "刷新收藏完成。";
	L.ADHOC_UNIQUE_COLLECTED_INFO = "此物品是唯一收藏但由于缺少暴雪 API 信息而未能检测到。\n\n将在下次强制刷新后修复。";
	L.AVAILABILITY = "可用性";
	L.REQUIRES_PVP = "|CFF00FFDE需要 PvP 活动或货币|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDE需要宠物对战|r";
	L.REQUIRES_SKYRIDING = "|CFF00FFDE"..(SPELL_FAILED_CUSTOM_ERROR_1029 or "需要驭空术").."|r";
	L.REPORT_INACCURATE_QUEST = "错误任务信息！（点击报告）";
	L.NESTED_QUEST_REQUIREMENTS = "多重任务需要";
	L.MAIN_LIST_REQUIRES_REFRESH = "[打开主列表更新进度 ]";
	L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207该组及其内容不参与此窗口的进度，因为它算在另一个位置！|r";
	L.CURRENCY_NEEDED_TO_BUY = "需要购买物品未收藏的事物";
	L.LOCK_CRITERIA_LEVEL_LABEL = "玩家等级";
	L.LOCK_CRITERIA_QUEST_LABEL = "已完成任务";
	L.LOCK_CRITERIA_SPELL_LABEL = "已学法术/坐骑/配方";
	L.LOCK_CRITERIA_FACTION_LABEL = "阵营声望";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s 和 %s（当前：%s）";
	L.FORCE_REFRESH_REQUIRED = "这可能需要强制刷新（"..SHIFT_KEY_TEXT.."点击）正确已收集。";
	L.FUTURE_UNOBTAINABLE = "未来不可获取！";
	L.FUTURE_UNOBTAINABLE_TOOLTIP = "这是已经确认或极有可能在已知的未来补丁中无法获取的内容。";
	L.NEW_WITH_PATCH = "最新添加内容";
	L.NEW_WITH_PATCH_TOOLTIP = "这会显示游戏最新补丁中添加的所有内容。";
	L.TRADING_POST = "商栈";

	-- Item Filter Window
		L.ITEM_FILTER_TEXT = "物品过滤";
		L.ITEM_FILTER_DESCRIPTION = "你可以通过使用物品过滤来搜索 ATT 数据库。";
		L.ITEM_FILTER_BUTTON_TEXT = "设置物品过滤";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "点击这个来改变你想在 ATT 内搜索的物品过滤。";
		L.ITEM_FILTER_POPUP_TEXT = "你想搜索哪个物品过滤？";

-- Instructional Text
	L.MINIMAP_MOUSEOVER_TEXT = "右键改变设置。\n左键打开主列表。\n"..CTRL_KEY_TEXT.."左键打开小列表。\n"..SHIFT_KEY_TEXT.."左键刷新收藏。";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ff按住并拖拽左键移动\n右键打开设置\n"..SHIFT_KEY_TEXT.."左键刷新收藏\n"..CTRL_KEY_TEXT.."左键展开/折叠列表\n"..SHIFT_KEY_TEXT.."右键单击排序组/弹出列表|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ff左键展开/折叠\n右键弹出小列表\n"..SHIFT_KEY_TEXT.."左键刷新收藏\n"..CTRL_KEY_TEXT.."左键展开/折叠列表\n"..SHIFT_KEY_TEXT.."右键单击排序组/弹出列表\n"..ALT_KEY_TEXT.."右键设置路径点|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ff按住并拖拽左键移动\n右键打开设置\n"..SHIFT_KEY_TEXT.."左键搜索拍卖行|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ff左键展开/折叠\n右键弹出小列表\n"..SHIFT_KEY_TEXT.."左键搜索拍卖行|r";
	L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000如果你掉落了此项（除回收箱外的\n任何地方），请去 Discord 告诉我们从哪掉的！|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000提供越多信息越好，谢谢！|r";
	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.."点击锁定窗口";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.."点击解锁窗口";
	L.QUEST_ROW_INSTRUCTIONS = "右击查看任何任务链要求";
	L.SYM_ROW_INFORMATION = "右键单击以查看来自其他位置的其它内容";
	L.QUEST_ONCE_PER_ACCOUNT = "帐号一次性任务";
	L.COMPLETED_BY = "完成：%s";
	L.OWNED_BY = "拥有者 %s";

-- Social Module
	L.NEW_VERSION_AVAILABLE = "%s 的新版本发布了。去更新插件，%s";
	L.NEW_VERSION_FLAVORS = {
		"不然希尔瓦娜斯要拿到另一个打火机了。",
		"阿莱克丝塔萨很担心你。",
		"下次|cffffaaaa一定|r出无敌！",
		"这只是一个小挫折。",
		"是，大厨！",
		"帮助海龟成功入水。",
		"艾泽拉斯的勇士。",
	};
	L.SOCIAL_PROGRESS = "社交进度";

-- Settings.lua
	L.AFTER_REFRESH = "刷新后";

	-- General tab
		-- Mode Title
			L.MODE = "模式";
			L.TITLE_COMPLETIONIST = "完美主义 ";
			L.TITLE_UNIQUE_APPEARANCE = "独特外观 ";
			L.TITLE_DEBUG = app.ccColors.Red .. "调试|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account.."帐号|R ";
			L.TITLE_MAIN_ONLY = " （仅主要）";
			L.TITLE_NONE_THINGS = "一无所有 ";
			L.TITLE_ONLY = " 仅 ";
			L.TITLE_INSANE = app.ccColors.Insane.."疯狂|R ";
			--TODO: L.TITLE_RANKED = "Ranked ";
			--TODO: L.TITLE_CORE = "Core ";
			L.TITLE_SOME_THINGS = "随随便便 ";
			L.TITLE_LEVEL = "等级 ";
			L.TITLE_SOLO = "个人 ";
			L._BETA_LABEL = " |cff4AA7FF[测试]|R";

			--TODO: L.PRESET_TOOLTIP = "Enable this preset. This will adjust only the relevant tracking options of the current profile.";
			--TODO: L.PRESET_NONE = "None of the Things Mode disables the tracking of all collectibles. Way to challenge yourself.";
			--TODO: L.PRESET_CORE = "Core Mode enables the collectibles visible in the game's Warband Collections journal.";
			--TODO: L.PRESET_RANKED = "Ranked Mode enables the collectibles tracked by websites such as Data For Azeroth and WoWthing.";
			--TODO: L.PRESET_INSANE = app.ccColors.Insane .. "Insane Mode|R enables all " .. app.ccColors.Insane .. "colored options|R and gives you a real challenge!";
			--TODO: L.PRESET_ACCOUNT = app.ccColors.Account .. "Account Mode|R enables all account-wide tracking, and will show progress from all of your characters.";
			--TODO: L.PRESET_SOLO = "Solo Mode disables all account-wide tracking, and will only show progress for your current character.";
			--TODO: L.PRESET_UNIQUE = "Unique Mode disables Sources, marking gear as collected when you have learned their unique appearance. This will still show gear if you only know a class-locked version of that appearance.";
			--TODO: L.PRESET_COMP = "Completionist Mode enables Sources, only marking gear as collected when you have learned the appearance from that specific item.";

		L.MINIMAP_SLIDER = "小地图按钮尺寸";
		L.MINIMAP_SLIDER_TOOLTIP = '使用此选项可自定义小地图按钮的大小。\n\n默认：36';
		L.EXTRA_THINGS_LABEL = "其他资源";
		L.MINIMAP_BUTTON_CHECKBOX = "显示小地图按钮";
		L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "如果要查看小地图按钮，请启用此选项。使用此按钮可以快速访问主列表，显示总体收藏进度，并通过右键单击访问设置菜单。\n\n有些人不喜欢混乱。或者，你可以通过在聊天框中键入'/att'来访问主列表。从那里，你可以右键单击标题以进入设置菜单。";
		L.WORLDMAP_BUTTON_CHECKBOX = "显示世界地图按钮";
		L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "如果要在世界地图上看到 ATT 按钮，请启用此选项。使用此按钮可以快速访问当前显示区域的迷你列表。通常情况下，你需要亲自前往该区域才能看到迷你列表上的内容，你可以通过在聊天框中键入'/att mini'来访问迷你列表。";
		L.CLICK_TO_CREATE_FORMAT = "点击创建 %s";
		L.KEYBINDINGS_TEXT = "可以在游戏选项中设置 ATT 的按键绑定。";

	-- Interface tab
		L.DESCRIPTIONS = "描述";
		L.LORE = "传言";
		L.CLASSES = "职业";
		L.ADDITIONAL_LABEL = "附加信息";

	-- Features tab
		L.MINIMAP_LABEL = "小地图按钮";
		L.MODULES_LABEL = "模块和小列表";
		L.SKIP_CUTSCENES_CHECKBOX = "自动跳过场景动画";
		L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "如果想让 ATT 代表你自动跳过所有场景动画请启用此选项。";
		L.AUTO_BOUNTY_CHECKBOX = "自动打开奖励列表";
		L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "如果想查看具有杰出收藏奖励的物品，请启用此选项。如果设法抓住显示在此列表中的物品之一，可以赚到一笔不错的金币。\n\n快捷命令：/attbounty";
		L.AUTO_MAIN_LIST_CHECKBOX = "自动打开主列表";
		L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "如果你想在登录时自动打开主列表请启用此选项。\n\n你也可以将此设置绑定到一个键上：\n\n按键设置 -> 插件 -> ALL THE THINGS -> 打开/关闭主列表\n\n快捷命令：/att";
		L.AUTO_MINI_LIST_CHECKBOX = "自动打开小列表";
		L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "如果你想查看在当前区域内可以收藏的所有信息请启用此选项。当改变区域时列表将自动切换。有些人不喜欢这个功能，但是当你单刷的时候这个功能是非常有用的。\n\n你也可以将此设置绑定到一个键上。\n\n按键设置 -> 插件 -> ALL THE THINGS -> 打开/关闭小列表\n\n快捷命令：/att mini";
		L.AUTO_PROF_LIST_CHECKBOX = "自动打开专业列表";
		L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "如果你希望 ATT 在你打开专业时打开并刷新专业列表请启用此选项。由于暴雪 API 限制，只有在打开专业界面时，插件才能与专业数据进行交互。当你换成其他专业时列表会自动切换。\n\n我们不建议禁用此选项因为它可能会阻止图纸的正确追踪。\n\n你也可以将此设置绑定到一个键上。（仅在打开专业时工作）\n\n按键设置 -> 插件 -> ALL THE THINGS -> 打开/关闭专业技能列表";
		L.AUTO_RAID_ASSISTANT_CHECKBOX = "自动打开团队助手";
		L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "如果你想看到一个名为'团队助手'替代组/队伍/团队设置管理器请启用此选项。每当队伍设置改变时列表会自动更新。\n\n你也可以将此设置绑定到一个键上。\n\n按键设置 -> 插件 -> ALL THE THINGS -> 打开/关闭团队助手\n\n快捷命令：/attra";
		L.AUTO_WQ_LIST_CHECKBOX = "自动打开世界任务列表";
		L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "如果你想让'世界任务'列表自动出现请启用此选项。每当你切换区域时列表将自动更新。\n\n你也可以将此设置绑定到一个键上。\n\n按键设置 -> 插件 -> ALL THE THINGS -> 打开/关闭世界任务列表\n\n快捷命令：/attwq";
		L.AUCTION_TAB_CHECKBOX = "显示拍卖行模块标签";
		L.AUCTION_TAB_CHECKBOX_TOOLTIP = "如果你想查看 ATT 提供的拍卖行模块请启用此选项。\n\n一些插件很调皮会大量修改这个框架。ATT 并不总是和那些玩具玩得很好。";
		L.ICON_LEGEND_LABEL = "图标图例";
		L.ICON_LEGEND_TEXT = app.ccColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t " .. "不可获得" .. "\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "仅在满足先决条件的情况下获得" .. "\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. AVAILABLE .."季节性内容" .. "\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. UNAVAILABLE .. "季节性内容" .. "\n|T374225:0|t " .. "当前角色不可用";	--TODO: check (un)available seasonal content
		L.CHAT_COMMANDS_LABEL = "聊天命令";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFF或|R /things |cffFFFFFF或|R /allthethings\n|cffFFFFFF打开主列表。\n\n|R/att mini |cffFFFFFF或|R /attmini\n|cffFFFFFF打开小列表。\n\n|R/att bounty\n|cffFFFFFF打开被出错或未确认的物品列表。\n\n|R/att ra |cffFFFFFF或|R /attra\n|cffFFFFFF打开团队助手。\n\n|R/att wq |cffFFFFFF或|R /attwq\n|cffFFFFFF打开世界任务列表。\n\n|R/att item:1234 |cffFFFFFF或|R /att [物品链接]\n|cffFFFFFF打开一个共享外观的窗口。也适用于其他事物，例如|R quest:1234|cffFFFFFF，|Rnpcid:1234|cffFFFFFF，|Rmapid:1234|cffFFFFFF 或 |Rrecipeid:1234|cffFFFFFF。\n\n|R/att rwp\n|cffFFFFFF显示所有未来用补丁删除的东西。\n\n|R/att random |cffFFFFFF或|R /attrandom |cffFFFFFF或|R /attran\n|cffFFFFFF打开随机列表。\n\n|R/att unsorted\n|cffFFFFFF打开未知源物品列表。最好在调试模式下打开。\n\n|R/rl\n|cffFFFFFF重载魔兽界面。|R";

	-- Sync Window
		L.ACCOUNT_MANAGEMENT = "帐号管理";
		L.ACCOUNT_MANAGEMENT_TOOLTIP = "此列表显示了与同步帐号数据相关的所有功能。";
		L.ADD_LINKED_CHARACTER_ACCOUNT = "添加关联角色/帐号";
		L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "单击此处将角色或帐号链接到您的帐号。";
		L.ADD_LINKED_POPUP = "请输入要链接的角色或暴雪战网帐号的名称。";
		L.SYNC_CHARACTERS_TOOLTIP = "这会显示您帐号中的所有角色。";
		L.NO_CHARACTERS_FOUND = "未找到角色。";
		L.LINKED_ACCOUNTS = "链接帐号";
		L.LINKED_ACCOUNTS_TOOLTIP = "这将显示迄今为止定义的所有关联帐号。";
		L.NO_LINKED_ACCOUNTS = "未找到链接帐号。";
		L.LINKED_ACCOUNT_TOOLTIP = "此角色的帐号将在登录时自动同步。为了获得最佳游戏效果，您应该将银行角色而不是您的主要角色列入白名单，以免在同步帐户数据时影响您玩角色的功能。";
		L.DELETE_LINKED_CHARACTER = "右击删除此链接角色";
		L.DELETE_LINKED_ACCOUNT = "右击删除此链接帐号";
		L.DELETE_CHARACTER = "右击删除此角色";
		L.CONFIRM_DELETE = "\n \n确定删除此项？";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "切换账号模式";
		L.TOGGLE_COMPLETIONIST_MODE = "切换完美主义者模式";
		L.TOGGLE_DEBUG_MODE = "切换调试模式";
		L.TOGGLE_FACTION_MODE = "切换阵营模式";
		L.TOGGLE_COMPLETEDTHINGS = "隐藏/显示已完成组和项";
		L.TOGGLE_COMPLETEDGROUPS = "隐藏/显示已完成组";
		L.TOGGLE_COLLECTEDTHINGS = "隐藏/显示已收藏项";
		L.TOGGLE_BOEITEMS = "切换装备绑定/拾取绑定物品";
		L.TOGGLE_SOURCETEXT = "隐藏/显示来源地点";
		L.MODULES = "模块";
		L.TOGGLE_MAINLIST = "打开/关闭主列表";
		L.TOGGLE_MINILIST = "打开/关闭小列表";
		L.TOGGLE_PROFESSION_LIST = "打开/关闭专业技能列表";
		L.TOGGLE_WORLD_QUESTS_LIST = "打开/关闭世界任务列表";
		L.TOGGLE_RAID_ASSISTANT = "打开/关闭团队助手";
		L.TOGGLE_RANDOM = "打开/关闭随机列表";
		L.REROLL_RANDOM = "重新生成随机列表";

	-- Event Text
		L.ITEM_ID_ADDED = "%s (%d) 已加入收藏。";
		L.ITEM_ID_ADDED_RANK = "%s (%d) [等级%d] 已加入收藏。";
		L.ITEM_ID_ADDED_MISSING = "%s (%d) 已加入收藏。在数据库中未找到，请向作者提交报告！";
		L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] 已加入收藏。";
		L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] 已加入收藏。在数据库中未找到，请向作者提交报告！";
		L.ITEM_ID_REMOVED = "%s (%d) 已从收藏中移除。";
		L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] 已从收藏中移除。";

	-- Tooltip Text
		L.DROP_RATE = "掉率";
		L.QUEST_GIVER = "任务发放者";
		L.EVENT_SCHEDULE = "事件时间表";
		L.EVENT_ACTIVE = "激活:";
		L.EVENT_START = "开始:";
		L.EVENT_END = "结束:";
		L.EVENT_WHERE = "地点:";
		L.REQUIRES_EVENT = "需要事件";
		L.LOCKOUT = "锁定";
		L.RESETS = "重置";
		L.SHARED = "共享";
		L.SPLIT = "按难度";
		L.REQUIRES_LEVEL = "需要等级";
		L.SECRETS_HEADER = "解密";
		L.LIMITED_QUANTITY = "此物品有数量限制，在商人处并非总是可见。";
		L.SOURCE_ID_MISSING = "请在 ATT Discord 的 #retail-errors 中报告此物品及其获取地点！";
		--TODO: recheck these patch strings
		L.ADDED_WITH_PATCH_FORMAT = "补丁 %s 中添加";
		L.WAS_ADDED_WITH_PATCH_FORMAT = "最新补丁 %s 中添加";
		L.ADDED_BACK_WITH_PATCH_FORMAT = "补丁 %s 中添加回归";
		L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "最新补丁 %s 中添加回归";
		L.REMOVED_WITH_PATCH_FORMAT = "补丁 %s 中被删除";

	-- Filter Text
		L.ARTIFACT_ID = "神器 ID";
		L.AZERITE_ESSENCE_ID = "艾泽里特精华 ID";
		L.CREATURE_ID = "生物 ID";
		L.CREATURES_COUNT = "[%s 生物]";
		L.CREATURES_LIST = "生物列表";
		L.CURRENCY_ID = "货币 ID";
		L.DIFFICULTY_ID = "难度 ID";
		L.ENCOUNTER_ID = "首领战斗 ID";
		L.EXPANSION_ID = "资料片 ID";
		L.FILTER_ID = "滤镜 ID";
		L.FOLLOWER_ID = "追随者 ID";
		L.HEADER_ID = "标头 ID";
		L.ILLUSION_ID = "幻象 ID";
		L.INSTANCE_ID = "副本 ID";
		L.ITEM_ID = "物品 ID";
		L.FACTION_ID = "阵营 ID";
		L.FLIGHT_PATH_ID = "飞行路线 ID";
		L.MAP_ID = "地图 ID";
		L.MOUNT_ID = "坐骑 ID";
		L.MUSIC_ROLL_ID = "乐谱 ID";
		L.NPC_ID = "NPC ID";
		L.OBJECT_ID = "道具 ID";
		L.QUEST_ID = "任务 ID";
		L.SET_ID = "套装 ID";
		L.SOURCE_ID = "来源 ID";
		L.SPECIES_ID = "品种 ID";
		L.SPELL_ID = "法术 ID";
		L.TITLE_ID = "头衔 ID";
		L.TOY_ID = "玩具 ID";
		L.VISUAL_ID = "外观 ID";
		L.ITEM_LEVEL = "物品等级";

	-- Artifact Relic Completion
		L.ARTIFACT_RELIC_CACHE = "打开所有神器武器的神器用户界面以缓存这是否是升级。这对于确定您是否可以将此物品交易给小伙伴很有用。 ";
		L.ARTIFACT_RELIC_COMPLETION = "神器圣物完成度";
		L.NOT_TRADEABLE = "不可交易";
		L.TRADEABLE = "可交易";

	-- Icons and Collection Text
		L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abff已收藏|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abff已收藏*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未收藏|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成*|r";	-- Acquired the colors and icon from CanIMogIt.
		L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cffff9333未完成|r";	-- Acquired the colors and icon from CanIMogIt.
		L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已保存|r";	-- Acquired the colors and icon from CanIMogIt.
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ff货币|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
	["安托鲁斯，燃烧王座"] = "安托鲁斯",	-- ["Antorus, the Burning Throne"] = "Antorus"
	["资料片前夕"] = "前夕",	-- ["Expansion Pre"] = "Pre"
	["尼奥罗萨，觉醒之城"] = "尼奥罗萨",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	["塔扎维什，帷纱集市"] = "塔扎维什",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	-- DF
	["亚贝鲁斯，焰影熔炉"] = "亚贝鲁斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
	["阿梅达希尔，梦境之愿"] = "阿梅达希尔",	-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
	-- TWW
	["艾拉-卡拉，回响之城"] = "回响之城",	-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5200] = "基础外观",										-- Base Appearance
			[-5201] = "职业大厅战役",										-- Class Hall Campaign
			[-5202] = "能量的平衡",										-- Balance of Power
			[-5203] = "荣誉奖励",										-- Prestige Rewards
			[-5204] = "挑战外观",										-- Challenge Appearance
			[-5205] = "隐藏外观",										-- Hidden Appearance
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		SKIP_AUTO_REFRESH = "不自动刷新！";
		SKIP_AUTO_REFRESH_TOOLTIP = "默认情况下(未勾选)，任何可能影响可见数据的设置变化都会导致自动刷新。\n\n通过启用该选项设置的变化将不会生效，直到玩家 "..SHIFT_KEY_TEXT.."点击 ATT 窗口执行全部刷新。";

	-- About Page
		ABOUT_PAGE = "关于";
		ABOUT_TOP = " |CFFFFFFFF是一个收藏跟踪插件，可以向您展示在游戏中获取所有内容的位置和方式！我们的 Discord 上有大量用户社区（底部链接），您可以在其中提问、提交建议以及报告错误或丢失的物品。如果发现一些收藏品或未记录的任务，可以在 Discord 上告诉我们，或者对于更精通技术的人，我们有一个您可以直接贡献的 Git。\n\n虽然我们努力争取完成，但每个补丁都会添加很多东西，所以如果我们遗漏了什么，请理解我们是一个小团队，试图跟上变化并自己收藏东西。:D\n\n在我直播时随时问我问题，我会尽力回答，即使它与 ATT（一般魔兽插件编程也是如此）没有直接关系。\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "活跃贡献者：|CFFFFFFFF（排名不分先后）\n%s！\n|r名人堂：|CFFFFFFFF（排名不分先后）\n%s\n\n特别鸣谢 AmiYuy（CanIMogIt）和 Caerdon（Caerdon Wardrobe）。绝对应该下载他们的插件，以获得包中物品的收藏图标！ %s %s %s\n\n如需在线收集比较，请访问 Shoogen 的 DataForAzeroth.com 和 Freddie 的 WoWthing.org！|r";	--TODO: now in alphabetical order
		CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C 复制到剪贴板。";
		CURSEFORGE_BUTTON_TOOLTIP = "单击按钮复制 URL 到 Curse 的 ALL THE THINGS 插件地址。\n\n您也可以将此链接发送给您的朋友，让他们也毁掉自己的生活！他们最终会原谅你……也许吧。";
		DISCORD_BUTTON_TOOLTIP = "点击按钮复制 URL 到All The Things Discord 服务器。\n\n可以与其他收藏家分享进步/挫折！";
		GITHUB_BUTTON_TOOLTIP = "点击按钮复制 URL 到All The Things GitHub 地址。\n\n您可以直接克隆软件源代码，而无需使用第三方插件管理器！";
		MERCH_BUTTON_LABEL = "商店";
		MERCH_BUTTON_TOOLTIP = "点击按钮复制 URL 以进入 All The Things 商店。\n\n在这里您可以在经济上支持插件并获得一些很酷的商品作为回报！ ";
		PATREON_BUTTON_TOOLTIP = "点击按钮复制 URL 以进入 All The Things Patreon 页面。\n\n在这里您可以看到如何在经济上支持插件！";
		TWITCH_BUTTON_TOOLTIP = "点击按钮复制 URL 到我的 Twitch 频道。\n\n可以在我直播的时候问问题，我会尽力回答！";
		WAGO_BUTTON_TOOLTIP = "单击按钮复制 URL 到 Wago.io 的 ALL THE THINGS 插件地址。\n\n您也可以将此链接发送给您的朋友，让他们也毁掉自己的生活！他们最终会原谅你……也许吧。";

	-- General Page
		DEBUG_MODE = app.ccColors.Red.."调试模式|r（显示所有）";
		DEBUG_MODE_TOOLTIP = "就字面意思…游戏中的所有事情。时间。点滴。是的，所有的一切。即使是不可收藏的事物，如袋子、消耗品、试剂等也会出现在列表中。（甚至你自己！不，是真的。看。）\n\n这仅用于调试目的。不用于完成追踪。\n\n此模式绕过所有过滤，包括不可获得的。";
		ACCOUNT_MODE = app.ccColors.Account.."帐号模式";
		ACCOUNT_MODE_TOOLTIP = "如果要追踪所有角色的所有内容，而不考虑职业和种族筛选，请启用此设置。\n\n不可获得过滤仍然适用。";
		FACTION_MODE = "仅当前阵营";
		FACTION_MODE_TOOLTIP = "如果你想只看到你当前阵营的种族和职业的战网模式数据，请开启此设置。";
		LOOT_MODE = "拾取模式";
		LOOT_MODE_TOOLTIP = "启用此选项可以显示来自所有来源的战利品。\n\n您可以根据“过滤器”标签更改显示的战利品类型。";
		MODE_EXPLAIN_LABEL = "|cffFFFFFF您收藏的内容汇总在这里。启用所有 "..app.ccColors.Insane.."彩色选项|cffFFFFFF 解锁 "..app.ccColors.Insane.."疯狂模式|cffFFFFFF。";
		COMPLETIONIST_MODE = "+来源";
		COMPLETIONIST_MODE_TOOLTIP = "启用该模式，只有当特定物品已被解锁为给定外观时才将物品视为已收藏。\n\n这意味着你需要收藏物品的每一个共享外观。\n\n注意：默认情况下一旦你收藏了共享来源，游戏就会停止告诉你未收藏的物品，这将确保未收藏的物品会被追踪。";
		MAIN_ONLY = "仅主要";
		MAIN_ONLY_TOOLTIP = "如果你还想让 ATT *假装*你赢得了所有未被其他种族或职业锁定的共享外观，请启用此设置。\n\n例如，如果你从冰冠堡垒收藏了一个仅限猎人使用的物品，并且在没有职业/种族限制的情况下，有一个来自副本的共享外观，那么 ATT 将*假装*你也获得了该外观来源。\n\n注意：以这种方式解锁时，切换到其他种族/职业将错误地报告你已经获得了尚未为新角色收藏的外观来源。";
		ONLY_RWP = "仅‘随补丁移除’";
		ONLY_RWP_TOOLTIP = "启用此选项仅跟踪将来会从游戏中删除的幻化。只有标记为“随补丁移除”的数据的物品才会计入此数据。如果您发现未标记但应标记的物品，请告诉我！\n\n您可以根据“过滤器”选项卡更改显示的战利品类型。";
		ONLY_NOT_TRASH = "过滤垃圾物品";
		ONLY_NOT_TRASH_TOOLTIP = "启用此选项可忽略白色/灰色物品。暴雪尚未在经典怀旧服中提供 API。";
		UNOFFICIAL_SUPPORT_TOOLTIP = "注意：目前，WoW 的 API 不提供官方支持，但 ATT 可以跟踪物品或任务完成情况，以使其在插件中发挥作用。";

	-- General Content
		GENERAL_CONTENT = "通用内容";
		SHOW_INCOMPLETE_THINGS_CHECKBOX = "显示所有可追踪事物";
		SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "如果想看到可以在游戏中追踪的物品、道具、NPC 等但不一定要被认为是'可收藏的'，请启用此选项。\n\n如果你还没有获得博学者成就可以用这个来帮助你获得它。\n\n注意：开启此设置后，稀有刷新和事件也会出现在列表中。";
		SHOW_COMPLETED_GROUPS_CHECKBOX = "显示完成的组";
		SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "如果想在标题中看到已完成的组和完成百分比，请启用此选项。如果一个组没有与你职业相关的内容，这个设置也会让这些组出现在列表中。\n\n我们建议你关闭此设置，因为它将节省小列表中的空间，并允许你快速查看区域中缺少的内容。";
		SHOW_COLLECTED_THINGS_CHECKBOX = "显示已收藏事物";
		SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "启用此选项可以看到已经收藏事物。\n\n建议关闭此设置因为它可以节省小列表中的空间并允许快速查看在该区域遗漏的内容。";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "不限制等级";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "启用此选项会忽略玩家等级限制显示内容。\n\n\n\n注意：对于新账号，禁用此项特别有用。";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "无技能等级限制";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "如果您只想查看游戏环境中可用的最高技能级别可用的内容，请禁用此设置。";
		SHOW_BOE_CHECKBOX = "装备绑定/战团绑定物品";
		SHOW_BOE_CHECKBOX_TOOLTIP = "启用此选项以显示装备绑定/战团绑定物品。\n\n如果你在为某个角色刷一些经典地下城，而且不想在那些之后能用其他小号刷，或者在拍卖行获取的物品，禁用此选项会很有用。\n\n即：别在刷厄运钟摆时磨失了智。";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "忽略装备绑定/战团绑定的筛选";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "启用此选项以忽略装备绑定/战团绑定物品的护甲、武器、种族、职业或专业技能要求。\n\n如果你正试图通过拍卖行扫描给小号收集物品，此模式可能对你有用。";
		SHOW_ALL_SEASONAL = "所有季节性事件";
		SHOW_ALL_SEASONAL_TOOLTIP = "启用此设置可显示所有季节性事件，而不是仅显示当前活动的季节性事件。\n\n注意：季节性活动将提前7天自动显示为活动状态。";
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "如果您想在游戏中显示需要宠物对战的内容，请启用此设置。";
		SHOW_PVP_CHECKBOX_TOOLTIP = "如果你想隐藏任何'可能'需要在游戏中进行 PvP 互动的内容，请启用此设置。";
		SHOW_SKYRIDING_CHECKBOX = DYNAMIC_FLIGHT or "驭空术";
		SHOW_SKYRIDING_CHECKBOX_TOOLTIP = "如果想在游戏中显示需要驭空术的内容，请启用此设置。";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "所有可学的任务奖励";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "禁用此选项可隐藏任务中列为“在个人拾取中不可用”的物品。\n\n这对于追踪您的职业无法在世界掉落中使用的物品很有用，但仍会将任务标记为已完成。\n\n某些物品可能被错误标记：此设置将隐藏您可以获得的物品！";

		-- Collectible Things
		ACC_WIDE_DEFAULT = "已追踪 ".. app.ccColors.Account .. "账号通用|R 默认。";
		TRACK_ACC_WIDE = app.ccColors.Account .. "追踪 账号通用|R";
		ACCOUNT_THINGS_LABEL = "帐号通用事物";
		GENERAL_THINGS_LABEL = "通用事物";
		STRANGER_THINGS_LABEL = "陌生事物";

		--TODO: ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "启用此选项可追踪成就。";
		APPEARANCES_CHECKBOX = "外观";
		APPEARANCES_CHECKBOX_TOOLTIP = "启用此选项可追踪外观获取。\n\n注意: 禁用此选项也会禁用所有采集逻辑，你可以使用此切换来防止在执行重要组内容时出现延迟，请牢记，重新启用后将需要进行计算。";
		BATTLE_PETS_CHECKBOX = "战斗宠物";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "启用此选项可追踪战斗宠物和同伴。这些可以在开放的世界中找到，也可以通过各种地下城和团队中的boss掉落，以及从供应商和声望获取。";
		DEATHS_CHECKBOX = "死亡";
		DEATHS_CHECKBOX_TOOLTIP = "启用此选项可跟踪您的角色每次死亡的情况，并将其显示为插件中的收藏品部分。\n\n注意：如果您关闭此选项，我们仍会跟踪它，但除非您处于调试模式，否则我们不会显示统计信息。";
		EXPLORATION_CHECKBOX = "探索(不精准)";
		EXPLORATION_CHECKBOX_TOOLTIP = "启用此选项可以跟踪户外地图的探索完成情况。\n\n目前这个选项所提供的资讯并不准确，需要加强，请谨慎使用。";
		FLIGHT_PATHS_CHECKBOX = "飞行路径";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "启用此选项以追踪飞行路径和飞艇。\n\n要收藏这些信息，请与每个大陆的飞行点/飞艇船长对话。\n\n注意：由于分阶段技术，你可能必须分阶段到区域的其他敌方，以获得这些兴趣点的开启。";
		--TODO: HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		HEIRLOOMS_CHECKBOX_TOOLTIP = "启用此选项可追踪你是否已解锁传家宝及其各自的升级级别。\n\n具有相关外观的传家宝将通过外观过滤进行过滤。（关闭外观仍将显示传家宝本身）\n\n一些出现史诗品质的商品也有助于提升声望，可以通过声望过滤进行过滤。";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+升级";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "启用此选项可专门追踪单个传家宝升级的收藏情况。\n\n我们都知道暴雪就是喜欢消耗你的金币和灵魂，所以用这个切换来追踪你的金币。";
		ILLUSIONS_CHECKBOX = "附魔幻象";
		ILLUSIONS_CHECKBOX_TOOLTIP = "启用此选项以追踪附魔幻象。\n\n这些看起来很酷的幻化效果，你可以应用到你的武器上！\n\n注意：你不是一个幻象，尽管所有的夜之子都这么认为。";
		--TODO: MOUNTS_CHECKBOX = MOUNTS;
		MOUNTS_CHECKBOX_TOOLTIP = "启用此选项以追踪坐骑。\n\n你可以骑着它们去比跑步更快的地方。谁知道！";
		--TODO: QUESTS_CHECKBOX = QUESTS_LABEL;
		QUESTS_CHECKBOX_TOOLTIP = "启用此选项以追踪任务。\n\n你可以右键单击列表中的任何任务，弹出它们的完整任务链，以显示你的进度和任何先决条件或后续任务。\n\n注意：每日、每周、每年和世界任务的跟踪不包含在此选项中，因为它们会在暴雪数据库中定期重置。";
		QUESTS_LOCKED_CHECKBOX = "+已锁定";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "启用此选项可专门包括跟踪锁定任务的完成情况。\n\n锁定任务是指玩家无法再通过正常游戏完成的任务（根据已知的 ATT 数据）。\n\n获得这些任务非常依赖于小队同步功能或使用帐号通用内的任务来整合其他角色的进度。";
		RECIPES_CHECKBOX = "配方";
		RECIPES_CHECKBOX_TOOLTIP = "启用此选项可追踪你的专业图纸。\n\n注意：你必须打开专业列表才能缓存这些。";
		REPUTATIONS_CHECKBOX = "声望";
		REPUTATIONS_CHECKBOX_TOOLTIP = "启用此选项可追踪声望。\n\n一旦你达到了有声望的尊敬或最好的朋友，它将被标记为收藏。\n\n你可能需要手动刷新才能正确更新。";
		TITLES_CHECKBOX = "头衔";
		TITLES_CHECKBOX_TOOLTIP = "启用此选项可追踪头衔。\n\n这些可以让你的角色脱颖而出，看起来你已经玩了一段时间。通常只有新玩家没有称号。";
		--TODO: TOYS_CHECKBOX = TOY_BOX;
		TOYS_CHECKBOX_TOOLTIP = "启用此选项可追踪玩具。\n\n这些玩具中的大多数玩具都有趣。其他的，如炉石玩具，可以用来代替你的初始炉石，并可以为你节省一个背包！他们也有有趣的效果…很好！";

		-- Expansion Things
		EXPANSION_THINGS_LABEL = "资料片事物";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t 艾泽拉斯之心精华";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "启用此选项以追踪艾泽里特精华。\n\n默认情况下每个角色都会被追踪。";
		MOUNTMODS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t 坐骑定制";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "启用此选项追踪坐骑定制选项";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t 追随者 & 伙伴";
		FOLLOWERS_CHECKBOX_TOOLTIP = "启用此选项可追踪随从。\n\n即：要塞随从，军团职业大厅随从，争霸艾泽拉斯随从，暗影国度随从。";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 符文铭刻之力";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "启用此选项以追踪暗影国度的符文铭刻之力。";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 导灵器";
		SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "启用此选项来追踪暗影国度灵魂羁绊的导灵器。";

		CHARACTERUNLOCKS_CHECKBOX = "角色解锁";
		CHARACTERUNLOCKS_CHECKBOX_TOOLTIP = "启用此选项可跟踪角色解锁。这些是基于角色的各种解锁，无法明确归类为其他类型（例如 妖术变体、变形术变体、猎人物种驯服解锁、波可波克自定义等）。\n\n默认情况下按角色跟踪。";

		-- Account-Wide Checkboxes
		ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = "成就追踪通常是在整个账号通用内进行的，但有一些特定职业和种族的专属成就，你无法在你的主账号上获得。";
		ACCOUNT_WIDE_APPEARANCES_TOOLTIP = "幻化应该在整个账号范围内收集。某些物品并非每个职业都能学会，因此 ATT 将尽力只向您展示你当前角色可以收集的物品。";
		ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = "艾泽里特精华在技术上不能在整个战网内收藏和使用，但如果你只关心收藏你的主角色那么你可能更喜欢在整个战网上追踪它们。";
		ACCOUNT_WIDE_BATTLE_PETS_TOOLTIP = "伙伴宠物可在多个角色上收集，并且实际上需要你拥有大量的背包空间才能将它们全部收集在一个角色上。\n\n我们建议您保持此功能开启，但你可以自己刷。";
		ACCOUNT_WIDE_CHARACTERUNLOCKS_TOOLTIP = "如果任一角色已经收集了角色解锁的物品，则将其视为已收集。";
		ACCOUNT_WIDE_DEATHS_TOOLTIP = "死亡追踪实际上只存在于巫妖王之怒怀旧服之前，当时没有统计数据来了解这些信息。成就实现后，此功能将直接从统计 API 获取数据。您可以使用死亡追踪器上的提示来查看";
		ACCOUNT_WIDE_EXPLORATION_TOOLTIP = "探索追踪仅对每个角色都非常有用，但你真的想在所有50个角色上收藏它们吗？";
		ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = "飞行路径追踪对每个角色都非常有用，但是你真的想要在所有50个角色上收藏它们吗？";
		ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = "随从通常是每个角色的，但是你真的想以每周1个的速度在一个角色上收藏243个随从吗？\n\n我想不行，好好先生。";
		ACCOUNT_WIDE_QUESTS_TOOLTIP = "任务完成通常是每个角色的，但是如果任何一个角色完成了特定的任务，这个任务就会被认为是完成了。";
		ACCOUNT_WIDE_RECIPES_TOOLTIP = "在暴雪的数据库中，图纸通常不会被账号通用追踪，但我们可以这样做。\n\n在一个角色上不可能收藏到所有的东西，所以有了这个，你就可以赋予你的小号和他们的专业以意义。";
		ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = "声望的成就现在会在暴雪的数据库中追踪账号通用，所以开启这个功能可能是个好主意。";
		ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = "启用此功能后如果至少有一个角色学会了灵魂羁绊的导灵器，则将所有角色的灵魂羁绊的导灵器视为收藏。";
		ACCOUNT_WIDE_TITLES_TOOLTIP = "大多数头衔都是在账号通用内进行追踪，但是魔兽世界中一些著名的头衔被锁定在赢得他们的角色上。\n\n如果你不关心这个并希望看到那些标记为收藏的头衔是你的小号，请切换此选项。";

	-- General: Filters Page
		ITEM_EXPLAIN_LABEL = app.ccColors.Account.."帐号模式|r|cffFFFFFF下，这些内容始终显示。|r";
		CLASS_DEFAULTS_BUTTON = "职业默认";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "点击此按钮可将所有选项重置为职业默认。\n\n注意：仅打开你的职业可以收集的选项。";
		ALL_BUTTON_TOOLTIP = "点击此按钮一键启用所有选项。";
		UNCHECK_ALL_BUTTON_TOOLTIP = "点击此按钮一键禁用所有选项。";
		STORE_IN_PROFILE_BUTTON = "储存在配置文件中",
		STORE_IN_PROFILE_BUTTON_TOOLTIP = "默认情况下，ATT按每个角色存储这些过滤器。\n\n选择此选项可将这些“过滤器”存储在当前配置文件中，而不是按角色存储。",

	-- General: Phases Page
	-- Classic Only, fully dynamic from within parser.

	-- General: Unobtainables Page
		UNOBTAINABLES_PAGE = "不可获得";
		UNOBTAINABLE_LABEL = "无法获取的内容";
		CUSTOM_FILTERS_LABEL = "自动化内容";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFF如果当前角色可以使用此内容，或者位于 "..app.ccColors.Account.."账号模式|cffFFFFFF。|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "启用此设置可强行显示%s内容，即使该内容对当前角色不可用。";

	-- Interface Page
		TOOLTIP_LABEL = "鼠标提示";
		TOOLTIP_HELP_CHECKBOX = "显示鼠标提示帮助";
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "如果你想在 ATT 窗口鼠标提示中看到帮助信息，即显示 ATT 窗口功能的各种键/点击组合，请启用此选项。\n如果你已经知道所有的键/点击组合，你可能希望节省工具提示空间并禁用此选项。";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "启用鼠标提示";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "如果希望在鼠标提示中查看 ATT 提供的信息，请启用此选项。这包括其他玩家发送的物品链接，在拍卖行、在地下城助手、在你的包里、在世界、在 NPC 等等。\n\n如果你关闭了这个功能，就会严重降低你快速判断是否需要击杀首领或学习外观的能力。\n\n我们建议你保持此设置。";
		DISPLAY_IN_COMBAT_CHECKBOX = "在战斗中";
		DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "如果要在战斗中呈现鼠标提示信息，请启用此选项。\n\n如果你正在同你的公会进行史诗/大秘境活动，你可能应该关闭这个设置以尽可能节省性能。\n\n当你在单刷时它可以很有用，可以立即知道你需要从首领那里得到什么。";
		TOOLTIP_MOD_LABEL = "修饰键";
		TOOLTIP_SHOW_LABEL = "显示信息";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "收藏进度";
		SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "如果希望在鼠标提示的右上角看到收藏某个对象或完成某组对象的进度，请启用此选项。\n\n我们建议你保持此设置处于打开状态。";
		ICON_ONLY_CHECKBOX = "仅图标";
		ICON_ONLY_CHECKBOX_TOOLTIP = "如果只想在右上角看到图标而不是图标和已收藏/未收藏的文本，请启用此选项。\n\n有些人喜欢更小的鼠标提示…";
		KNOWN_BY_CHECKBOX = "已知";
		KNOWN_BY_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中查看所有服务器上已知此配方的完整角色列表，请启用此选项。";
		COMPLETED_BY_CHECKBOX = "已完成";
		COMPLETED_BY_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中查看所有服务器上已完成任务的完整角色列表，请启用此选项。";
		SHOW_CRAFTED_ITEMS_CHECKBOX = "展示制作的物品";
		SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "如果您想在鼠标提示中看到任何角色可以使用某种材料制作的所有物品的列表，请启用此选项。";
		SHOW_RECIPES_CHECKBOX = "显示配方";
		SHOW_RECIPES_CHECKBOX_TOOLTIP = "如果您想在鼠标提示中看到任何角色可以用某种材料制作的所有配方列表，请启用此选项。";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "仅非低等级";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "如果你只想在食谱列表中看到非低等级的食谱，请启用此选项。";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "货币计算";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "启用此选项以显示收集物品所需的物品/货币的估计数量。\n\n对于不一次奖励所有可用内容的容器，估计将因此低于实际需要。";
		SHARED_APPEARANCES_CHECKBOX = "共享外观";
		SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "启用该选项可以在鼠标提示中看到外观相似的物品。\n\n注意：不符合装备类型的物品会显示在列表中。这是为了帮助你判断收藏进度。\n\n如果你对此感到困惑，从 ATT v1.5.0 开始，你可以右键单击物品，打开物品和它的共享外观，进入它们自己的独立小列表。";
		INCLUDE_ORIGINAL_CHECKBOX = "原始来源";
		INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "如果你真的喜欢在鼠标提示中的共享外观列表中看到原始来源信息，请启用此选项。";
		ONLY_RELEVANT_CHECKBOX = "仅相关";
		ONLY_RELEVANT_CHECKBOX_TOOLTIP = "如果你只想看到你的角色可以解锁的共享外观，请启用此选项。\n\n注意：我们建议你保持这个关闭，因为了解一个物品的解锁要求可以帮助识别为什么一个物品没有被收藏。";
		SPEC_CHECKBOX = "专精";
		SPEC_CHECKBOX_TOOLTIP = "启用该选项，可以在游戏客户端提供的物品鼠标提示中显示物品的战利品专精信息。\n\n注意：无论该设置如何，这些图标仍将出现在 ATT 小列表中。";
		SUMMARIZE_CHECKBOX = "汇总事物";
		SUMMARIZE_CHECKBOX_TOOLTIP = "启用该选项可在鼠标提示中汇总事物。例如，如果一个事物可以变成另一个事物的商人，那么在鼠标提示中显示另一个事物，以提供其多种用途的可见性。如果一个事物作为许多其他事物的容器，这个选项将显示该容器所包含的所有其他事物。\n\n我们建议你保持此设置开启。";
		CONTAINS_SLIDER_TOOLTIP = '使用该功能可以自定义鼠标提示中显示的摘要事项的数量。\n\n默认：25';
		SOURCE_LOCATIONS_CHECKBOX = "来源位置";
		SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到 ATT 数据库中对象的完整来源位置路径，请启用此选项。";
		LOCATIONS_SLIDER_TOOLTIP = '使用该功能可以自定义鼠标提示中显示的来源位置数量。\n\n注意：这也会根据其他来源的多少来显示“X”个数量，如果这个总数等于显示的元素总数，那么就会简单地显示最后一个来源。\n\n默认：5';
		COMPLETED_SOURCES_CHECKBOX = "对已完成";
		COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到已完成的来源位置，请启用此选项。\n\n举个例子，如果你在灰谷完成了任务“巴斯兰的头发”，当你鼠标悬停在埃凡纳·寂语身上时，他的鼠标提示就不会再显示这个任务了。";
		DROP_CHANCES_CHECKBOX = "掉率";
		DROP_CHANCES_CHECKBOX_TOOLTIP = "启用此选项可在 ATT 窗口的工具提示中计算物品的各种掉落几率信息。\n这有助于了解在额外投骰物品时应使用哪种拾取专精。";
		FOR_CREATURES_CHECKBOX = "对生物";
		FOR_CREATURES_CHECKBOX_TOOLTIP = "如果你想查看生物的来源位置，请启用此选项。";
		FOR_THINGS_CHECKBOX = "对事物";
		FOR_THINGS_CHECKBOX_TOOLTIP = "如果你想查看事物的源位置，请启用此选项。";
		FOR_UNSORTED_CHECKBOX = "对未分类";
		FOR_UNSORTED_CHECKBOX_TOOLTIP = "如果你想查看尚未完全输入数据库的来源位置，请启用此选项。";
		WITH_WRAPPING_CHECKBOX = "允许换行";
		WITH_WRAPPING_CHECKBOX_TOOLTIP = "启用此选项允许来源在鼠标提示中换行。\n这将确保鼠标提示不会超过必要的宽度，但不幸的是在许多情况下来源信息会变得更加难以阅读。";

		BEHAVIOR_LABEL = "列表行为";
		MAIN_LIST_SLIDER_LABEL = "主列表缩放";
		MAIN_LIST_SCALE_TOOLTIP = '使用此功能可以自定义主列表的缩放。\n\n默认：1';
		MINI_LIST_SLIDER_LABEL = "小列表缩放";
		MINI_LIST_SCALE_TOOLTIP = '使用此功能可以自定义所有小和小列表的缩放。\n\n默认：1';
		ADHOC_UPDATES_CHECKBOX = "使用临时窗口更新";
		ADHOC_UPDATES_CHECKBOX_TOOLTIP = "如果你想只更新可见的 ATT 窗口请启用此选项。\n\n这可以大大减少加载时间并防止在某些情况下出现疯狂掉帧。";
		EXPAND_DIFFICULTY_CHECKBOX = "展开当前难度";
		EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "如果要在进入地下城或团队副本时自动最小化小列表中未激活的难度标题，请启用此选项。\n\n比如：在普通难度地下城中最小化英雄标题。";
		SHOW_ICON_PORTRAIT_CHECKBOX = "图标头像";
		SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "如果你想看到生物图标头像而不是非任务对象类型的默认图标，请启用此选项。\n\n也就是说：当查看 Boss 时，此选项将显示 Boss 的脸而不是难度图标。\n\n默认：开启";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "对任务";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "如果你想看到生物图标头像而不是任务对象类型的默认图标，请启用此选项。\n\n也就是说：查看任务时，此选项将显示任务给予者的脸，而不是任务类型图标。\n\n默认：开启";
		SHOW_MODELS_CHECKBOX = "模型预览";
		SHOW_MODELS_CHECKBOX_TOOLTIP = "启用此选项可在预览中显示模型而不是鼠标提示上的图标。\n\n此选项可帮助你识别稀有生物或商人的模样。因为这个原因你可能想保持这个开启。";
		FILL_DYNAMIC_QUESTS_CHECKBOX = "显示可回收成本组";
		FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "如果您想让用于购买收藏品的物品/货币被视为收藏品并显示在动态填充的任务下，请启用此选项。 ";
		FILL_NPC_DATA_CHECKBOX = "显示嵌套 NPC 数据";
		FILL_NPC_DATA_CHECKBOX_TOOLTIP = "如果希望在迷你列表中显示时将所有相关数据嵌套到给定的 NPC（常见首领掉落、掉落等），请启用此选项。此选项可能会导致大量重复，但其想法是该 NPC 将在迷你列表中保持可见，就好像需要特定于该 NPC 的内容一样。\n\n默认：关闭";
		NESTED_QUEST_CHAIN_CHECKBOX = "显示嵌套任务链";
		NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "如果你想让任务链要求（右键单击任务）窗口将所需任务显示为其后续任务的子组，即它们必须从内到外完成，请启用此选项。\n\n这一点很有用，不会错过个别任务，应该主要用于完成任务的考虑。\n\n否则任务链要求将以自上而下的方式显示，最早的任务在最上面。";
		SORT_BY_PROGRESS_CHECKBOX = "按进度排序";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "如果你希望'排序'操作（"..SHIFT_KEY_TEXT.."右键）按每个组的总进度排序（而不是按名称）请启用此选项";
		SHOW_REMAINING_CHECKBOX = "显示剩余事物";
		SHOW_REMAINING_CHECKBOX_TOOLTIP = "如果你想查看剩余事物数量而不是总进度，请启用此选项。";
		PERCENTAGES_CHECKBOX = "显示完成百分比";
		PERCENTAGES_CHECKBOX_TOOLTIP = "如果想查看每行的完成百分比请启用此选项。\n\n按完成度对组进行着色不受影响。";
		PRECISION_SLIDER = "百分比精确度";
		PRECISION_SLIDER_TOOLTIP = '使用此选项可自定义百分比计算中所需的精度级别。\n\n默认：2';
		DYNAMIC_CATEGORY_LABEL = "动态类别";
		DYNAMIC_CATEGORY_SIMPLE = "简单";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "仅根据最高的类别生成动态类别。 ";
		DYNAMIC_CATEGORY_NESTED = "嵌套";
		DYNAMIC_CATEGORY_NESTED_TOOLTIP = "根据它们的确切来源生成动态类别。这将导致在多个地方也有来源的事物重复。";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000生成时应用|r";
		MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "最大顶线长度";

	-- Interface: Accessibility Page
		--TODO: ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		--TODO: ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		COLORS_ICONS = "颜色和图标";
		LOCKED_QUESTS = "锁定任务";
		MORE_COLORS_CHECKBOX = "显示颜色";
		MORE_COLORS_CHECKBOX_TOOLTIP = "如果你想看到使用更多的颜色来帮助区分列表中事物的附加条件，请启用此选项（比如职业颜色，阵营颜色等。）";
		WINDOW_COLORS = "窗口颜色";
		--TODO: BACKGROUND = EMBLEM_BACKGROUND;
		BACKGROUND_TOOLTIP = "设置所有 ATT 窗口的背景颜色和透明度。";
		--TODO: BORDER = EMBLEM_BORDER;
		BORDER_TOOLTIP = "设置所有 ATT 窗口的边框颜色和透明度。";
		RESET_TOOLTIP = "恢复默认设置。";
		CLASS_BORDER = "边框使用职业颜色";
		CLASS_BORDER_TOOLTIP = "使用职业颜色作为边框。当登录到另一个职业时，此信息会更新。";

	-- Interface: Information Page
		ACHIEVEMENT_ID = "成就 ID";
		ACHIEVEMENT_CATEGORY_ID = "成就类别 ID";
		ADDED_WITH_PATCH_CLASSIC_FORMAT = "该物品是随补丁 %s 添加的";
		READDED_WITH_PATCH_CLASSIC_FORMAT = "该物品是随补丁 %s 重新添加的";
		REMOVED_WITH_PATCH_CLASSIC_FORMAT = "该物品是随补丁 %s 移除的";
		WAS_ADDED_WITH_PATCH_CLASSIC_FORMAT = "该物品曾是随补丁 %s 添加的";


	-- Features Page

	-- Features: Audio Page
		CELEBRATIONS_LABEL = "庆祝和音效";
		AUDIO_CHANNEL = "声音通道";
		CHANNEL_MASTER = "主要";
		CHANNEL_MUSIC = "音乐";
		CHANNEL_SFX = "音效";
		CHANNEL_AMBIENCE = "环境";
		CHANNEL_DIALOG = "对话";
		CELEBRATE_COLLECTED_CHECKBOX = "收藏事物触发庆祝音效";
		CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "如果你想在获得新的事物时听到庆祝'fanfare'效果请启用这个选项。\n\n这个功能可以极大地帮助你保持动力。";
		SOUNDPACK = "声音包";
		PLAY_DEATH_SOUND_CHECKBOX = "死亡时播放音效";
		PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "如果你想在死亡时听到音效，请启用此选项。";
		WARN_REMOVED_CHECKBOX = "移除事物触发警告";
		WARN_REMOVED_CHECKBOX_TOOLTIP = "如果你想在你不小心卖掉或交易一个给予你外观的物品从而导致收藏中失去该外观时听到警告的声音效果，请启用这个选项。\n\n如果你的商品有购买计时这可能非常有用。该插件会告诉你你犯了一个错误。";
		SCREENSHOT_COLLECTED_CHECKBOX = "收藏物品后触发截图";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "如果你想为你收藏的每件物品进行截图请启用此选项。";

	-- Features: Reporting Page
		REPORTING_LABEL = "报告";
		REPORT_COLLECTED_THINGS_CHECKBOX = "报告已收藏事物";
		REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "如果想在聊天中看到一条消息，详细说明收藏了哪些物品或从收藏中删除了哪些物品，请启用此选项。\n\n注意：这是因为暴雪默默地添加了外观和其他收藏品并且忽略了通知你可用的其他物品。\n\n我们建议你保持此设置。如果你打开了这个选项，你会听到警告声。";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "报告任务";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "如果希望在任务发生后立即看到你完成的任何任务的任务 ID，请启用此选项。（用于报告错误、追踪等）";
		REPORT_UNSORTED_CHECKBOX = "仅'无来源'";
		REPORT_UNSORTED_CHECKBOX_TOOLTIP = "如果只想查看任务 ID 且他还没有来源，请启用此选项。";
		REPORT_NEARBY_CONTENT_CHECKBOX = "报告附近的内容";
		REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP = "如果你想在聊天中看到附近的内容（例如小宝箱），请启用此选项。使用此功能时提供弹出窗口和路径点。";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX = "自动绘制路径点";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP = "如果你想 ATT 自动为附近内容绘制路径点，请启用此选项。";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX = "自动清除";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP = "如果你想在内容本身不可用或你超出范围时，ATT 自动清除附近内容功能绘制的路径点，请启用此选项。";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX = "包含生物";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP = "如果你想查看附近被视为生物的内容通知，请启用此选项。（稀有怪、世界首领、NPC）";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX = "包含宝藏";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP = "如果你想查看附近被视为宝藏的物品的通知，请启用此选项。（箱子、雕像、背包）";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX = "包含已完成";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP = "如果你想要查看根据 ATT 的过滤器中已完成的附近内容通知，请启用此选项。";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX = "包括未知/无来源";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP = "如果你想查看非 ATT 已知来源的附近内容通知，请启用此选项。";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX = "闪烁任务栏";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP = "如果你希望 ATT 在检测到附近内容时闪烁任务栏，请启用此选项。";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX = "播放音效";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP = "如果你希望 ATT 在检测到附近内容时也播放通知音效，请启用此选项。";

	-- Features: Sync Page
	-- Retail Only, deprecated.
		SYNC_PAGE = "同步";
		ACCOUNT_SYNCHRONIZATION = "帐号同步";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "自动同步帐号数据";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "如果您希望 ATT 在登录或重新加载用户界面时尝试在帐号之间自动同步帐号数据，请启用此选项。";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		PROFILES_PAGE = "配置文件";
		PROFILE = "配置文件";
		PROFILE_INITIALIZE = "初始化配置文件";
		PROFILE_INITIALIZE_TOOLTIP = "这将使您的 ATT 保存变量能够支持和包含配置文件数据。您当前的设置和窗口信息将被复制到 '"..DEFAULT.."' 配置文件中，该配置文件无法删除，但可以修改并使用作为所有角色的初始配置文件。\n\n请务必将配置文件的任何异常行为或错误报告给 ATT Discord！";
		PROFILE_INITIALIZE_CONFIRM = "确定要打开配置文件支持？";
		PROFILE_NEW_TOOLTIP = "为当前角色创建一个空白配置文件";
		PROFILE_COPY_TOOLTIP = "复制已选配置文件到当前配置文件";
		PROFILE_DELETE_TOOLTIP = "删除已选配置文件";
		PROFILE_SWITCH_TOOLTIP = "将选定的配置文件设置为当前配置文件\n\n一个配置文件也可以通过 "..SHIFT_KEY_TEXT.."点击切换到它";
		SHOW_PROFILE_LOADED = "显示在登录期间或在配置文件之间切换时加载的配置文件";
})
do a[key] = value; end

if app.IsRetail then
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "新玩家体验", desc = "只有新角色可以收藏这个。" },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "命运丝线", desc = "只有选择跳过暗影国度故事线的角色才能收藏这个。" },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "只有角色获得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。" },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "只有角色 |cffff0000没有|r 获得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。" },
})
do a[key] = value; end
end