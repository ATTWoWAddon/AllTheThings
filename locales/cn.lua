-- Localization for Chinese (Simplified, PRC) and Chinese (Traditional, Taiwan) Clients.
if GetLocale() ~= "zhCN" and GetLocale() ~= "zhTW" then return; end
local app = select(2, ...);
local L = app.L;

CHARACTER_TYPE_FRAME_TRIAL_BOOST_CHARACTER = "职业试玩";
CHARACTER_UPGRADE_CHARACTER_LIST_LABEL = "角色直升";
DRAKE_MANUSCRIPTS = "观龙者手稿";
TRACK_ACC_WIDE = app.ccColors.Account .. "追踪 "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R";
ACC_WIDE_DEFAULT = "已追踪 ".. app.ccColors.Account .. ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R 默认。";

-- General Text
	L.DESCRIPTION = "“你愚蠢地寻求自己的终结，厚颜无耻地无视了你无法理解的力量。你入侵了收藏者的领域并为此努力。现在只有一条路可走了——这条孤独的路……该死的路。”";
	L.THINGS_UNTIL = " 事物到 ";
	L.THING_UNTIL = " 事物到 ";
	L.YOU_DID_IT = "你做到了！|r";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "进度";
	L.TRACKING_PROGRESS = "追踪进度";
	L.COLLECTED_STRING = " 已收藏";
	L.PROVIDERS = "供应商";
	L.COLLECTION_PROGRESS = "收藏进度";
	L.CONTAINS = "包含：";
	L.FACTIONS = "阵营";
	L.COORDINATES_STRING = "坐标";
	L.NO_COORDINATES_FORMAT = "%s 没有已知坐标";
	L.TOM_TOM_NOT_FOUND = "必须安装 TomTom 才能绘制坐标。";
	L.FLIGHT_PATHS = "飞行路线";
	L.KNOWN_BY = "已知 ";
	L.REQUIRES = "需要";
	L.RACE_LOCKED = "种族锁定";
	L.PLEASE_REPORT_MESSAGE = "请把错误报告给 ATT Discord 的 #retail-errors！谢谢！";
	L.REPORT_TIP = "\n（"..CTRL_KEY_TEXT.."+C 将多行报告复制到剪贴板）";
	L.NOT_AVAILABLE_IN_PL = "在个人拾取中不可用。";
	L.MARKS_OF_HONOR_DESC = "荣耀印记必须在弹出窗口中查看才能看到所有正常的'包含'内容。\n(在聊天中输入'/att' 然后 "..SHIFT_KEY_TEXT.."点击链接的物品)\n\n|cFFfe040f之后购买和一起使用，重新登录和强制 ATT 刷新（按此顺序）\n可能需要正确注册所有物品。|r";
	L.ITEM_GIVES_REP = "提供声望 '";
	L.COST = "花费";
	L.COST_DESC = "这里面包含了获得或购买这个物品所需要的物品";
	L.SOURCES = "来源";
	L.SOURCES_DESC = "显示这个东西的来源。\n\n特别是特定商人/NPC，任务，战斗，等等。";
	L.WRONG_FACTION = "可能需要在另一个阵营中查看此内容。";
	L.ARTIFACT_INTRO_REWARD = "完成该神器的介绍任务后获得。";
	L.FACTION_SPECIFIC_REP = "并非所有声望都可以在单个角色上查看。例：联盟玩家无法看到战歌骑手，部落玩家无法查看银翼哨兵。";
	L.VISIT_FLIGHT_MASTER = "访问飞行管理员缓存。";
	L.FLIGHT_PATHS_DESC = "当你与每个大陆上的飞行管理员交谈时会缓存飞行路径。\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "如果您在 ATT 中启用此设置，则可以在整个帐号范围内收集追随者。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击标题手动刷新插件才能检测到这一点。";
	L.HEIRLOOM_TEXT = "解锁传家宝";
	L.HEIRLOOM_TEXT_DESC = "显示你是否已经获得或购买了传家宝。";
	L.FAILED_ITEM_INFO = "未能获得物品信息。该物品可能是无效的或者可能还没有被缓存在你的服务器上。";
	L.HEIRLOOMS_UPGRADES_DESC = "这表明你是否已经将传家宝升级到了一定的级别。\n\n安息吧…金币。\n - Crieve";
	L.MUSIC_ROLLS_AND_SELFIE_DESC = "这些是按角色解锁且目前尚未在战网中共享。如果暴雪有人在看，如果能把这些战网共享的话那就太好了。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击要检测的标题手动刷新插件。";
	L.MUSIC_ROLLS_AND_SELFIE_DESC_2 = "\n\n必须首先通过在要塞中完成动感低音任务来解锁塞点唱机以便掉落此物品。\n\n自拍需要自拍神器玩具。";
	L.OPPOSITE_FACTION_EQ = "与对立阵营对应：";
	L.SELFIE_DESC = "使用您的自拍 ";
	L.SELFIE_DESC_2 = " 和 |cffff8000";
	L.TIER_DATA[1].lore = "海加尔山之战的四年后，联盟和部落之间的关系又一次紧张了起来。为了能在贫瘠之地杜隆塔尔立足，萨尔邀请亡灵被遗忘者加入到兽人、牛头人和巨魔中，以扩大他的部落。与此同时，在另一边矮人、侏儒和古暗夜精灵则发誓它们将效忠人类暴风城王国所领导的新的联盟。当暴风城的国王瓦里安·乌瑞恩神秘消失之后，领主伯瓦尔·弗塔根担任摄政王，但是伯瓦尔的所做的一切被伪装成人类贵妇的黑龙奥尼克希亚通过意识控制所破坏。当英雄们正在研究对抗奥克尼希亚的手法时，古代的敌人出现在大陆上，并威胁着部落和联盟的生存。";
	L.TIER_DATA[2].lore = "燃烧的远征是第一个资料片。它的主要内容包括将等级上限提高到70，将血精灵和德莱尼作为可玩的种族引入，以及外域世界的加入，以及许多新区域、地下城、物品、任务和怪物。";
	L.TIER_DATA[3].lore = "巫妖王之怒是第二个资料片。大部分资料片内容都发生在诺森德，并以巫妖王的计划为中心。内容亮点包括将等级上限从70增加到80，引入英雄职业死亡骑士，以及新的 PvP/世界 PvP 内容。";
	L.TIER_DATA[4].lore = "大地的裂变是第三个资料片。随着死亡之翼的回归，重做艾泽拉斯大陆的卡利姆多和东部王国，他从位于元素位面深处的巢穴中破土而出，将艾泽拉斯撕成碎片。大灾难让玩家们回到艾泽拉斯的两大洲进行大部分的活动，开辟新的区域，如海加尔山、瓦斯琪尔、深岩之洲、奥丹姆和暮光高地。它包括两个新的可玩的种族，狼人和地精。资料片将等级上限提高到85，增加了在卡利姆多和东部王国飞行的能力，引入考古学和重做，并重做世界本身。";
	L.TIER_DATA[5].lore = "潘达利亚之谜是第四个资料片。在潘达利亚意外重新发现之后，资料片主要重新集中在联盟和部落之间的战争。冒险者重新发现了古老的熊猫人，他们的智慧将有助于引导他们走向新的命运; 熊猫人帝国的古代敌人螳螂妖; 和他们传说中的压迫者神秘的魔古族。领土随着时间的推移而变化，瓦里安乌瑞恩和加尔鲁什地狱咆哮之间的冲突逐渐升级。内战席卷了部落，联盟和部落中反对地狱咆哮的暴力起义联合起来直接把战争带到地狱咆哮和被煞魔侵蚀的奥格瑞玛的盟友。";
	L.TIER_DATA[6].lore = "德拉诺之王是第五个资料片。在德拉诺的原始丛林和战争创伤的平原上，艾泽拉斯的英雄们将参与一场神话般的冲突，包括神秘的德莱尼冠军和强大的兽人部落，以及在原始力量的顶峰与格罗玛什地狱咆哮、黑手和耐奥祖等。玩家需要在这片不受欢迎的土地上搜索盟友，以帮助建立一个绝望的防御，对抗旧部落强大的统治，或者观看他们自己世界上血腥的、饱受战争蹂躏的历史重演。";
	L.TIER_DATA[7].lore = "军团再临是第六个资料片。古尔丹被驱逐到艾泽拉斯，重新开放萨格拉斯之墓和阿古斯之门，开始第三次入侵燃烧军团。在破碎海岸被击败后，艾泽拉斯的卫士们寻找创造之柱，这是艾泽拉斯关闭萨墓中心巨大的恶魔之门的唯一希望。然而，破碎群岛也有自己的危险要克服，从萨维斯到神王斯科瓦德，到夜之子，再到潮汐之力艾萨拉。卡德加将达拉然迁移到这片土地的海岸，这座城市是英雄的中心枢纽。阿彻鲁斯的死亡骑士也将他们漂浮的墓地带到了群岛。艾泽拉斯的英雄们在战斗中寻找传说中的神器，但也发现了伊利达雷的意外盟友。联盟和部落之间正在发生的冲突导致了阶级秩序的形成，特殊的指挥官搁置阵营纷争来领导他们的队伍参加对抗军团的斗争。";
	L.TIER_DATA[8].lore = "决战艾泽拉斯是第七个资料片。艾泽拉斯为结束军团十字军的天启付出了惨重的代价，但即使世界上的创伤得到了修复，联盟和部落之间破碎的信任也可能是最难弥补的。在艾泽拉斯战役中，燃烧军团的垮台引发了一系列灾难性事件，重新引发了魔兽世界中心的冲突。随着一个新的战争时代的开始，艾泽拉斯的英雄们必须开始征募新的盟友，争夺世界上最强大的资源，并在多条战线上战斗，以确定部落或联盟是否会带领艾泽拉斯进入不确定的未来。";
	L.TIER_DATA[9].lore = "暗影国度是第八个资料片。你所知道的世界之外还有什么? 暗影国度。每一个世俗的人(无论是邪恶的还是邪恶的)都曾居住过的地方。";
	L.TIER_DATA[10].lore = "巨龙时代是第九个资料片。艾泽拉斯的巨龙军团已经回归，他们响应了召唤，前去保护自己世代相传的家园：巨龙群岛。巨龙群岛涌动着元素魔法和艾泽拉斯的生命能量，如今它已从睡梦中苏醒，原始的奇观和尘封已久的秘密正等待你去揭露。";
	L.TITLES_DESC = "头衔会在你的战网中被追踪，但是，你的角色必须符合某些头衔的条件才能在该角色上使用。";
	L.SHARED_APPEARANCES_LABEL = "共享外观";
	L.SHARED_APPEARANCES_LABEL_DESC = "此列表中的物品是以下物品的共享外观。在唯一外观模式下，此列表可帮助了解特定物品被标记为已收藏的原因。";
	L.UNIQUE_APPEARANCE_LABEL = "独特外观";
	L.UNIQUE_APPEARANCE_LABEL_DESC = "此列表中的物品是独特外观。你必须专门收藏这个物品以获得外观。";
	L.UPON_COMPLETION = "前置条件";
	L.UPON_COMPLETION_DESC = "以上任务需要完成后才能够完成以下的事情。";
	L.QUEST_CHAIN_REQ = "任务链要求";
	L.QUEST_CHAIN_REQ_DESC = "在能够完成最终任务之前需要完成以下任务。";
	L.AH_SEARCH_NO_ITEMS_FOUND = "搜索中找不到缓存的物品。展开组并查看物品缓存名称，然后重试。使用此搜索只能找到BOE物品。";
	L.AH_SEARCH_BOE_ONLY = "使用此搜索只能找到装备绑定物品。";
	L.TSM_WARNING_1 = "运行此命令可能会通过将物品重新分配到 ";
	L.TSM_WARNING_2 = " 预设。\n\n我们建议你在使用此功能时使用不同的配置文件。\n\n你还想继续吗?";
	L.PRESET_UPDATE_SUCCESS = "更新预设成功。";
	L.SHOPPING_OP_MISSING_1 = "预设缺少'Shopping'操作分配。";
	L.SHOPPING_OP_MISSING_2 = "键入'/tsm operations'创建或者分配一个。";
	L.AUCTIONATOR_GROUPS = "基于群组的搜索只支持使用 Auctionator。";
	L.TSM4_ERROR = "TSM4 尚未与 ATT 兼容。如果你知道如何像我们以前在 TSM3 中那样创建预设，请在 Discord 上告诉我！";
	L.QUEST_MAY_BE_REMOVED = "获取信息失败。这个任务可能已从游戏中移除。";
	L.MINUMUM_STANDING = "需要至少";
	L._WITH_ = " 和 ";
	L.MAXIMUM_STANDING = "需要站立低于";
	L.MIN_MAX_STANDING = "需要站在";
	L.AND_ = "和 ";
	L._AND = " 和";
	L._MORE = " 更多";
	L._OTHER_SOURCES = " 其他来源";
	L.DURING_WQ_ONLY = "这个可以在世界任务激活时完成。";
	L.COMPLETED_DAILY = "这个可以每天完成。";
	L.COMPLETED_WEEKLY = "这个可以每周完成。";
	L.COMPLETED_MONTHLY = "这个可以每月完成。";
	L.COMPLETED_YEARLY = "这个可以每年完成。";
	L.COMPLETED_MULTIPLE = "这个可以重复多次。";
	L.CRITERIA_FOR = "准则";
	L.CURRENCY_FOR = "货币";
	L.LOOT_TABLE_CHANCE = "拾取列表几率";
	L.BEST_BONUS_ROLL_CHANCE = "最佳额外投骰几率";
	L.BEST_PERSONAL_LOOT_CHANCE = "最佳个人拾取几率";
	L.BONUS_ROLL = "额外奖励";
	L.PREREQUISITE_QUESTS = "必须先完成一些前置任务才有可能获得：";
	L.BREADCRUMBS = "无关紧要";
	L.BREADCRUMBS_WARNING = "完成此任务后可能无法获得无关紧要的任务：";
	L.THIS_IS_BREADCRUMB = "这是个无关紧要的任务。";
	L.BREADCRUMB_PARTYSYNC = "如果先完成这些任务中的任何一个在没有小队同步的情况下可能无法完成：";
	L.BREADCRUMB_PARTYSYNC_2 = "这可以通过与另一个没有完成这些任务的角色进行小队同步获得：";
	L.BREADCRUMB_PARTYSYNC_3 = "可能需要与能够接受此任务的角色进行小队同步。";
	L.BREADCRUMB_PARTYSYNC_4 = "如果尝试通过小队同步获得此任务，请在 Discord 上告诉我们结果！";
	L.DISABLE_PARTYSYNC = "即使使用小队同步，这个角色也可能无法完成。如果您以其他方式管理，请在 Discord 上告诉我们！";
	L.UNAVAILABLE_WARNING_FORMAT = "|c%s如果满足以下%d项，则变为不可用：|r";
	L.NO_ENTRIES = "没有找到符合过滤条件的条目。";
	L.NO_ENTRIES_DESC = "如果认为这是错误的，请尝试激活'调试模式'。某个过滤条件可能会限制该组的可见性。";
	L.DEBUG_LOGIN = "登录后获得的奖励。\n\n干得好！你做到了！\n\n仅在调试模式下可见。";
	L.UNSORTED_1 = "未分类";
	L.UNSORTED_2 = " （未分类）";
	L.UNSORTED_DESC = "此数据尚未在 ATT 中获取。";
	L.NEVER_IMPLEMENTED = "从未生效";
	L.NEVER_IMPLEMENTED_DESC = "这里的物品在技术上存在于游戏内，但从未向玩家开放过";
	L.HIDDEN_QUEST_TRIGGERS = "隐藏任务触发";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "这些任务是根据特定的标准手动确定触发的任务，主要用于游戏内部的追踪目的";
	L.UNSORTED_DESC_2 = "这里的物品存在于游戏中，玩家可能会获得，但 ATT 还没有找到准确位置";
	L.BOUNTY_DESC = "此列表包含 ATT Discord 报告的无法获取的物品，这些物品是暴雪尚未修复的错误。\n\n注意：在此列表中忽略所有过滤器以获得可见性。此列表中仅显示因疏忽而从游戏中移除的物品。\n\n致暴雪开发者：请修复下面列出的物品和事件。";
	L.OPEN_AUTOMATICALLY = "自动开启";
	L.OPEN_AUTOMATICALLY_DESC = "如果你不是暴雪开发者，最好是取消勾选此项。这样做是为了迫使暴雪修复和/或承认这些错误。";
	L.TWO_CLOAKS = "|cffFF0000如果有的话，这两件披风的确认掉落非常有限，并且假定已损坏！ |r";
	L.OGOM_THE_MANGLER_DESC = "|cffFF0000绞肉机奥戈姆似乎只是在你做每日突袭钢铁军工厂的时候刷新的。这个任务从军团开始后就没有激活过，可购买的任务密报：突袭钢铁军工厂也不能用了。|r";
	L.DIFF_COMPLETED_1 = "你已经收藏了这个难度的所有物品。切换到 ";
	L.DIFF_COMPLETED_2 = " 来代替。";
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
	L.REROLL_2 = "重新刷新：";
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
	L.REQUIRES_PVP = "|CFF00FFDE这些需要 PvP 活动或与这些活动相关的货币。|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDE这些需要宠物对战。|r";
	L.REPORT_INACCURATE_QUEST = "错误任务信息！（点击报告）";
	L.NESTED_QUEST_REQUIREMENTS = "多重任务需要";
	L.MAIN_LIST_REQUIRES_REFRESH = "[打开主列表更新进度 ]";
	L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207该组及其内容不参与此窗口的进度，因为它来自另一个位置！|r";
	L.CURRENCY_NEEDED_TO_BUY = "需要购买物品未收藏的事物";
	L.LOCK_CRITERIA_LEVEL_LABEL = "玩家等级";
	L.LOCK_CRITERIA_QUEST_LABEL = "已完成任务";
	L.LOCK_CRITERIA_SPELL_LABEL = "已学法术/坐骑/配方";
	L.LOCK_CRITERIA_FACTION_LABEL = "阵营声望";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s 和 %s（当前：%s）";
	L.FORCE_REFRESH_REQUIRED = "这可能需要强制刷新（"..SHIFT_KEY_TEXT.."点击）正确已收集。";
	L.FUTURE_UNOBTAINABLE = "未来不可获取！";
	L.FUTURE_UNOBTAINABLE_TOOLTIP = "这是已经确认或极有可能在已知的未来补丁中无法获取的内容。";
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
	L.QUEST_ONCE_PER_ACCOUNT_FORMAT = "完成：%s";

-- Settings.lua
	L.SKIP_AUTO_REFRESH = "不自动刷新！";
	L.SKIP_AUTO_REFRESH_TOOLTIP = "默认情况下(未勾选)，任何可能影响可见数据的设置变化都会导致自动刷新。\n\n通过启用该选项设置的变化将不会生效，直到玩家 "..SHIFT_KEY_TEXT.."点击 ATT 窗口执行全部刷新。";
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
			L.TITLE_SOME_THINGS = "随随便便 ";
			L.TITLE_LEVEL = "等级 ";
			L.TITLE_SOLO = "个人 ";
			L._BETA_LABEL = " |cff4AA7FF[测试]|R";

		L.GENERAL_CONTENT = "通用内容";
		L.MERCH_BUTTON_LABEL = "商店";
		L.TWITCH_BUTTON_TOOLTIP = "点击按钮复制 URL 到我的 Twitch 频道。\n\n可以在我直播的时候问问题，我会尽力回答！";
		L.DISCORD_BUTTON_TOOLTIP = "点击按钮复制 URL 到All The Things Discord 服务器。\n\n可以与其他收藏家分享进步/挫折！";
		L.PATREON_BUTTON_TOOLTIP = "点击按钮复制 URL 以进入 All The Things Patreon 页面。\n\n在这里您可以看到如何在经济上支持插件！";
		L.MERCH_BUTTON_TOOLTIP = "点击按钮复制 URL 以进入 All The Things 商店。\n\n在这里您可以在经济上支持插件并获得一些很酷的商品作为回报！ ";
		L.MODE_EXPLAIN_LABEL = "|cffFFFFFF您收藏的内容汇总在这里。启用所有 "..app.ccColors.Insane.."彩色选项|cffFFFFFF 解锁 "..app.ccColors.Insane.."疯狂模式|cffFFFFFF。";	-- "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		L.DEBUG_MODE = app.ccColors.Red.."调试模式|r（显示所有）";
		L.DEBUG_MODE_TOOLTIP = "就字面意思…游戏中的所有事情。时间。点滴。是的，所有的一切。即使是不可收藏的事物，如袋子、消耗品、试剂等也会出现在列表中。（甚至你自己！不，是真的。看。）\n\n这仅用于调试目的。不用于完成追踪。\n\n此模式绕过所有过滤，包括不可获得的。";
		L.COMPLETIONIST_MODE = "+来源";
		L.COMPLETIONIST_MODE_TOOLTIP = "启用该模式，只有当特定物品已被解锁为给定外观时才将物品视为已收藏。\n\n这意味着你需要收藏物品的每一个共享外观。\n\n注意：默认情况下一旦你收藏了共享来源，游戏就会停止告诉你未收藏的物品，这将确保未收藏的物品会被追踪。";
		L.I_ONLY_CARE_ABOUT_MY_MAIN = "仅主要";
		L.MAIN_ONLY_MODE_TOOLTIP = "如果你还想让 ATT *假装*你赢得了所有未被其他种族或职业锁定的共享外观，请启用此设置。\n\n例如，如果你从冰冠堡垒收藏了一个仅限猎人使用的物品，并且在没有职业/种族限制的情况下，有一个来自副本的共享外观，那么 ATT 将*假装*你也获得了该外观来源。\n\n注意：以这种方式解锁时，切换到其他种族/职业将错误地报告你已经获得了尚未为新角色收藏的外观来源。";
		L.ACCOUNT_MODE = app.ccColors.Account.."帐号模式";
		L.ACCOUNT_MODE_TOOLTIP = "如果要追踪所有角色的所有内容，而不考虑职业和种族筛选，请启用此设置。\n\n不可获得过滤仍然适用。";
		L.FACTION_MODE = "仅当前阵营";
		L.FACTION_MODE_TOOLTIP = "如果你想只看到你当前阵营的种族和职业的战网模式数据，请开启此设置。";
		L.PRECISION_SLIDER = "百分比精确度";
		L.PRECISION_SLIDER_TOOLTIP = '使用此选项可自定义百分比计算中所需的精度级别。\n\n默认：2';
		L.MINIMAP_SLIDER = "小地图按钮尺寸";
		L.MINIMAP_SLIDER_TOOLTIP = '使用此选项可自定义小地图按钮的大小。\n\n默认：36';
		L.ACCOUNT_THINGS_LABEL = "帐号通用事物";
		L.GENERAL_THINGS_LABEL = "通用事物";
		L.EXPANSION_THINGS_LABEL = "资料片事物";
		L.EXTRA_THINGS_LABEL = "其他资源";
		L.STRANGER_THINGS_LABEL = "陌生事物";
		L.ACHIEVEMENTS_CHECKBOX_TOOLTIP = "启用此选项可追踪成就。";
		L.TMOG_CHECKBOX_TOOLTIP = "启用此选项可追踪外观获取。\n\n注意: 禁用此选项也会禁用所有采集逻辑，你可以使用此切换来防止在执行重要组内容时出现延迟，请牢记，重新启用后将需要进行计算。\n\n"..ACC_WIDE_DEFAULT;
		L.AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "启用此选项以追踪艾泽里特精华。\n\n默认情况下每个角色都会被追踪。";
		L.BATTLE_PETS_CHECKBOX_TOOLTIP = "启用此选项可追踪战斗宠物和同伴。这些可以在开放的世界中找到，也可以通过各种地下城和团队中的boss掉落，以及从供应商和声望获取。\n\nACC_WIDE_DEFAULT";
		L.FLIGHT_PATHS_CHECKBOX = app.ccColors.Insane .. "飞行路径 & 飞艇";
		L.FLIGHT_PATHS_CHECKBOX_TOOLTIP = "启用此选项以追踪飞行路径和飞艇。\n\n要收藏这些信息，请与每个大陆的飞行点/飞艇船长对话。\n\n注意：由于分阶段技术，你可能必须分阶段到区域的其他敌方，以获得这些兴趣点的开启。";
		L.FOLLOWERS_CHECKBOX_TOOLTIP = "启用此选项可追踪随从。\n\n即：要塞随从，军团职业大厅随从，争霸艾泽拉斯随从，暗影国度随从。";
		L.HEIRLOOMS_CHECKBOX_TOOLTIP = "启用此选项可追踪你是否已解锁传家宝及其各自的升级级别。\n\n具有相关外观的传家宝将通过外观过滤进行过滤。（关闭外观仍将显示传家宝本身）\n\n一些出现史诗品质的商品也有助于提升声望，可以通过声望过滤进行过滤。\n\n"..ACC_WIDE_DEFAULT;
		L.HEIRLOOMS_UPGRADES_CHECKBOX = app.ccColors.Insane .. "+升级";
		L.HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "启用此选项可专门追踪单个传家宝升级的收藏情况。\n\n我们都知道暴雪就是喜欢消耗你的金币和灵魂，所以用这个切换来追踪你的金币。";
		L.ILLUSIONS_CHECKBOX = app.ccColors.Insane.."幻化";
		L.ILLUSIONS_CHECKBOX_TOOLTIP = "启用此选项以追踪幻化。\n\n这些看起来很酷的幻化效果，你可以应用到你的武器上！\n\n注意：你不是一个幻象，尽管所有的夜之子都这么认为。\n\n"..ACC_WIDE_DEFAULT;
		L.MOUNTS_CHECKBOX_TOOLTIP = "启用此选项以追踪坐骑。\n\n你可以骑着它们去比跑步更快的地方。谁知道！\n\n"..ACC_WIDE_DEFAULT;
		L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t " .. app.ccColors.Insane .. "乐谱&自拍滤镜";
		L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX_TOOLTIP = "启用此选项以追踪乐谱和自拍滤镜。\n\n你可以用你的点唱机播放游戏中的音乐并且你的自拍相机玩具为你的自拍收藏特定地点的滤镜。";
		L.QUESTS_CHECKBOX_TOOLTIP = "启用此选项以追踪任务。\n\n你可以右键单击列表中的任何任务，弹出它们的完整任务链，以显示你的进度和任何先决条件或后续任务。\n\n注意：每日、每周、每年和世界任务的跟踪不包含在此选项中，因为它们会在暴雪数据库中定期重置。";
		L.QUESTS_LOCKED_CHECKBOX = app.ccColors.Insane .. "+已锁定";
		L.QUESTS_LOCKED_CHECKBOX_TOOLTIP = "启用此选项可专门包括跟踪锁定任务的完成情况。\n\n锁定任务是指玩家无法再通过正常游戏完成的任务（根据已知的 ATT 数据）。\n\n获得这些任务非常依赖于小队同步功能或使用帐号通用内的任务来整合其他角色的进度。";
		L.RECIPES_CHECKBOX_TOOLTIP = "启用此选项可追踪你的专业图纸。\n\n注意：你必须打开专业列表才能缓存这些。";
		L.REPUTATIONS_CHECKBOX = app.ccColors.Insane .. "声望";
		L.REPUTATIONS_CHECKBOX_TOOLTIP = "启用此选项可追踪声望。\n\n一旦你达到了有声望的尊敬或最好的朋友，它将被标记为收藏。\n\n你可能需要手动刷新才能正确更新。";
		L.RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t "..app.ccColors.Insane.."符文铭刻之力";
		L.RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "启用此选项以追踪暗影国度的符文铭刻之力。";
		L.DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "启用此选项跟踪 "..EXPANSION_NAME9.." "..DRAKE_MANUSCRIPTS;
		L.SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "启用此选项来追踪暗影国度灵魂羁绊的导灵器。";
		L.TITLES_CHECKBOX_TOOLTIP = "启用此选项可追踪头衔。\n\n这些可以让你的角色脱颖而出，看起来你已经玩了一段时间。通常只有新玩家没有称号。";
		L.TOYS_CHECKBOX_TOOLTIP = "启用此选项可追踪玩具。\n\n这些玩具中的大多数玩具都有趣。其他的，如炉石玩具，可以用来代替你的初始炉石，并可以为你节省一个背包！他们也有有趣的效果…很好！\n\n"..ACC_WIDE_DEFAULT;
		L.MINIMAP_BUTTON_CHECKBOX = "显示小地图按钮";
		L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "如果要查看小地图按钮，请启用此选项。使用此按钮可以快速访问主列表，显示总体收藏进度，并通过右键单击访问设置菜单。\n\n有些人不喜欢混乱。或者，你可以通过在聊天框中键入'/att'来访问主列表。从那里，你可以右键单击标题以进入设置菜单。";
		L.MINIMAP_BUTTON_STYLE_CHECKBOX = "使用旧小地图风格";
		L.MINIMAP_BUTTON_STYLE_CHECKBOX_TOOLTIP = "些人不喜欢新的小地图按钮…\n\n那些人错了！\n\n如果你不喜欢它，这里可以选择回到旧风格。";
		L.SHOW_COMPLETED_GROUPS_CHECKBOX = "显示完成的组";
		L.SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "如果想在标题中看到已完成的组和完成百分比，请启用此选项。如果一个组没有与你职业相关的内容，这个设置也会让这些组出现在列表中。\n\n我们建议你关闭此设置，因为它将节省小列表中的空间，并允许你快速查看区域中缺少的内容。";
		L.SHOW_COLLECTED_THINGS_CHECKBOX = "显示已收藏事物";
		L.SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "启用此选项可以看到已经收藏事物。\n\n建议关闭此设置因为它可以节省小列表中的空间并允许快速查看在该区域遗漏的内容。";
		L.SHOW_INCOMPLETE_THINGS_CHECKBOX = "显示所有可追踪事物";
		L.SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "如果想看到可以在游戏中追踪的物品、道具、NPC 等但不一定要被认为是'可收藏的'，请启用此选项。\n\n如果你还没有获得博学者成就可以用这个来帮助你获得它。\n\n注意：开启此设置后，稀有刷新和事件也会出现在列表中。";
		L.SHOW_REPEATABLE_THINGS_CHECKBOX = "追踪可重复的任务";
		L.SHOW_REPEATABLE_THINGS_CHECKBOX_TOOLTIP = "如果要将可重复的每日，每周和每年任务视为可收藏，请启用此选项。它们将像常规的收藏任务一样出现在列表中。\n\n注意：这不是用来一直使用的，但如果你在一个你已经完成的区域内做了一组日常且需要提醒你那里有什么，你可以用这个来查看它们。";
		L.FIRST_TIME_CHECKBOX = "仅第一次";
		L.FIRST_TIME_CHECKBOX_TOOLTIP = "如果你希望将每天，每周，每年和世界范围内重复执行的任务视为已完成（至少完成一次），而忽略先前已重置的任务，则启用此选项。\n\n注意：先前完成的可重复任务仅在你通过插件激活完成任务的情况下存储，并且如果从 WTF 文件夹中删除了插件数据，则数据将丢失。";
		L.FILTER_THINGS_BY_LEVEL_CHECKBOX = app.ccColors.Insane.."无等级限制";
		L.FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "如果只想查看当前级别角色可用的事物，请启用此设置。\n\n注意：这对新战网特别有用。";
		L.SHOW_BOE_CHECKBOX = app.ccColors.Insane.."装备绑定/拾取绑定物品";
		L.SHOW_BOE_CHECKBOX_TOOLTIP = "如果要隐藏装备绑定/拾取绑定物品，请启用此设置。\n\n当你尝试为角色完成经典旧世并且不想专门用于可以在小号或拍卖行上放置的物品时，此设置非常有用。\n\n即：不要因为毁灭之锤而扰乱你的思绪。";
		L.SHOW_PVP_CHECKBOX_TOOLTIP = "如果你想隐藏任何'可能'需要在游戏中进行 PvP 互动的内容，请启用此设置。";
		L.SHOW_ALL_SEASONAL = app.ccColors.Insane .. "所有季节性事件";
		L.SHOW_ALL_SEASONAL_TOOLTIP = "启用此设置可显示所有季节性事件，而不是仅显示当前活动的季节性事件。";
		L.SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "如果您想在游戏中显示需要宠物对战的内容，请启用此设置。";
		L.IGNORE_FILTERS_FOR_BOES_CHECKBOX = "忽略装备绑定/拾取绑定的筛选";
		L.IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "如果要忽略装备绑定/拾取绑定物品的装备、武器、种族、等级或职业要求，请启用此设置。\n\n如果你正试图通过拍卖行扫描收藏你的物品，此模式可能对你有用。";
		L.EXPAND_DIFFICULTY_CHECKBOX = "展开当前难度";
		L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "如果要在进入地下城或团队副本时自动最小化小列表中未激活的难度标题，请启用此选项。\n\n比如：在普通难度地下城中最小化英雄标题。";
		L.WARN_DIFFICULTY_CHECKBOX = "警告已完成难度";
		L.WARN_DIFFICULTY_CHECKBOX_TOOLTIP = "如果希望在进入一个难度副本时被警告无法获得新的收藏，而你可以进入另一个未保存的难度，则启用此选项。";
		L.REPORT_COLLECTED_THINGS_CHECKBOX = "报告已收藏事物";
		L.REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "如果想在聊天中看到一条消息，详细说明收藏了哪些物品或从收藏中删除了哪些物品，请启用此选项。\n\n注意：这是因为暴雪默默地添加了外观和其他收藏品并且忽略了通知你可用的其他物品。\n\n我们建议你保持此设置。如果你打开了这个选项，你会听到警告声。";
		L.REPORT_COMPLETED_QUESTS_CHECKBOX = "报告任务";
		L.REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "如果希望在任务发生后立即看到你完成的任何任务的任务 ID，请启用此选项。（用于报告错误、追踪等）";
		L.REPORT_UNSORTED_CHECKBOX = "仅'无来源'";
		L.REPORT_UNSORTED_CHECKBOX_TOOLTIP = "如果只想查看任务 ID 且他还没有来源，请启用此选项。";
		L.BEHAVIOR_LABEL = "列表行为";
		L.DYNAMIC_CATEGORY_LABEL = "动态类别";
		L.DYNAMIC_CATEGORY_OFF_TOOLTIP = "不生成任何动态类别。 ";
		L.DYNAMIC_CATEGORY_SIMPLE = "简单";
		L.DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "仅根据最高的类别生成动态类别。 ";
		L.DYNAMIC_CATEGORY_NESTED = "嵌套";
		L.DYNAMIC_CATEGORY_NESTED_TOOLTIP = "根据它们的确切来源生成动态类别。这将导致在多个地方也有来源的事物重复。";
		L.DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000需要重新加载|r";
		L.CLICK_TO_CREATE_FORMAT = "点击创建 %s";
		L.KEYBINDINGS_TEXT = "可以在游戏选项中设置 ATT 的按键绑定。";

	-- Account-Wide Checkboxes
		L.ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = TRACK_ACC_WIDE.."\n\n成就追踪通常是在整个账号通用内进行的，但有一些特定职业和种族的专属成就，你无法在你的主账号上获得。";
		L.ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = TRACK_ACC_WIDE.."\n\n艾泽里特精华在技术上不能在整个战网内收藏和使用，但如果你只关心收藏你的主角色那么你可能更喜欢在整个战网上追踪它们。";
		L.ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = TRACK_ACC_WIDE.."\n\n飞行路径追踪对每个角色都非常有用，但是你真的想要在所有50个角色上收藏它们吗？";
		L.ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = TRACK_ACC_WIDE.."\n\n随从通常是每个角色的，但是你真的想以每周1个的速度在一个角色上收藏243个随从吗？\n\n我想不行，好好先生。";
		L.ACCOUNT_WIDE_MUSIC_ROLLS_SELFIE_FILTERS_TOOLTIP = TRACK_ACC_WIDE.."\n\n在暴雪的数据库中通常不会在账号通用内跟踪“音乐卷轴和自拍过滤器”，但是我们可以做到这一点。\n\n注意：你只能使用自动点唱机玩具播放音乐或使用你在当前角色上收藏的自拍相机玩具自拍。";
		L.ACCOUNT_WIDE_QUESTS_TOOLTIP = TRACK_ACC_WIDE.."\n\n任务完成通常是每个角色的，但是如果任何一个角色完成了特定的任务，这个任务就会被认为是完成了。";
		L.ACCOUNT_WIDE_RECIPES_TOOLTIP = TRACK_ACC_WIDE.."\n\n在暴雪的数据库中，图纸通常不会被账号通用追踪，但我们可以这样做。\n\n在一个角色上不可能收藏到所有的东西，所以有了这个，你就可以赋予你的小号和他们的专业以意义。";
		L.ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = TRACK_ACC_WIDE.."\n\n声望的成就现在会在暴雪的数据库中追踪账号通用，所以开启这个功能可能是个好主意。";
		L.ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = TRACK_ACC_WIDE.."\n\n启用此功能后如果至少有一个角色学会了灵魂羁绊的导灵器，则将所有角色的灵魂羁绊的导灵器视为收藏。";
		L.ACCOUNT_WIDE_TITLES_TOOLTIP = TRACK_ACC_WIDE.."\n\n大多数头衔都是在账号通用内进行追踪，但是魔兽世界中一些著名的头衔被锁定在赢得他们的角色上。\n\n如果你不关心这个并希望看到那些标记为收藏的头衔是你的小号，请切换此选项。";

	-- Filters tab
		L.ITEM_EXPLAIN_LABEL = "|cffFFFFFF始终显示此内容如果位于 "..app.ccColors.Account.."帐号模式|cffFFFFFF。|r";
		L.CLASS_DEFAULTS_BUTTON = "职业默认";
		L.CLASS_DEFAULTS_BUTTON_TOOLTIP = "点击此按钮可将所有过滤重置为职业默认。\n\n注意：只能打开可为职业收藏的过滤。";
		L.ALL_BUTTON_TOOLTIP = "点击此按钮一次启用所有设备过滤。";
		L.UNCHECK_ALL_BUTTON_TOOLTIP = "点击此按钮一次禁用所有设备过滤。";
		L.CUSTOM_FILTERS_LABEL = "自动化内容";
		L.CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFF如果当前角色可以使用此内容，或者位于 "..app.ccColors.Account.."账号模式|cffFFFFFF。|r";
		L.CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "启用此设置可强行显示%s内容，即使该内容对当前角色不可用。";

	-- Unobtainables tab
		L.UNOBTAINABLES_TAB = "不可获得";
		L.SEASONAL_LABEL = "节日";
		L.SEASONAL_ALL = "|cffECBC21切换所有节日";
		L.UNOBTAINABLE_LABEL = "无法获取的内容";
		L.UNOBTAINABLE_ALL = "|cffECBC21切换所有不可获得";
		L.NO_CHANCE_ALL = "|cffECBC21切换所有 \"没有机会\"";
		L.HIGH_CHANCE_ALL = "|cffECBC21切换所有 \"很大机会\"";

	-- Interface tab
		L.TOOLTIP_LABEL = "鼠标提示";
		L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "启用鼠标提示";
		L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "如果希望在鼠标提示中查看 ATT 提供的信息，请启用此选项。这包括其他玩家发送的物品链接，在拍卖行、在地下城助手、在你的包里、在世界、在 NPC 等等。\n\n如果你关闭了这个功能，就会严重降低你快速判断是否需要击杀首领或学习外观的能力。\n\n我们建议你保持此设置。";
		L.DISPLAY_IN_COMBAT_CHECKBOX = "在战斗中";
		L.DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "如果要在战斗中呈现鼠标提示信息，请启用此选项。\n\n如果你正在同你的公会进行史诗/大秘境活动，你可能应该关闭这个设置以尽可能节省性能。\n\n当你在单刷时它可以很有用，可以立即知道你需要从首领那里得到什么。";
		L.TOOLTIP_MOD_LABEL = "修饰";
		L.TOOLTIP_SHOW_LABEL = "显示信息";
		L.SHOW_COLLECTION_PROGRESS_CHECKBOX = "收藏进度";
		L.SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "如果希望在鼠标提示的右上角看到收藏某个对象或完成某组对象的进度，请启用此选项。\n\n我们建议你保持此设置处于打开状态。";
		L.ICON_ONLY_CHECKBOX = "只图标";
		L.ICON_ONLY_CHECKBOX_TOOLTIP = "如果只想在右上角看到图标而不是图标和已收藏/未收藏的文本，请启用此选项。\n\n有些人喜欢更小的鼠标提示…";
		L.COORDINATES_CHECKBOX = "坐标";
		L.COORDINATES_CHECKBOX_TOOLTIP = "如果你想在小列表中的条目上悬停时在鼠标提示中看到坐标，请启用此选项。";
		L.DESCRIPTIONS_CHECKBOX = "描述";
		L.DESCRIPTIONS_CHECKBOX_TOOLTIP = "启用该选项以在鼠标提示中显示描述。这可能包括地下城日志提供的描述性文字，或者贡献者认为有必要添加的自定义描述。\n\n你可能想保持这个开启。";
		L.LORE_CHECKBOX = "传言";
		L.LORE_CHECKBOX_TOOLTIP = "启用此选项可在工具提示中显示传言。这可能包括地下城日志提供的描述性文本或贡献者的趣味。";
		L.KNOWN_BY_CHECKBOX = "已知";
		L.KNOWN_BY_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中查看所有服务器上已知此配方的完整角色列表，请启用此选项。";
		L.COMPLETED_BY_CHECKBOX = "已完成";
		L.COMPLETED_BY_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中查看所有服务器上已完成任务的完整角色列表，请启用此选项。";
		L.SHOW_MODELS_CHECKBOX = "模型预览";
		L.SHOW_MODELS_CHECKBOX_TOOLTIP = "启用此选项可在预览中显示模型而不是鼠标提示上的图标。\n\n此选项可帮助你识别稀有生物或商人的模样。因为这个原因你可能想保持这个开启。";
		L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "货币计算";
		L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "启用此选项以显示收集物品所需的物品/货币的估计数量。\n\n对于不一次奖励所有可用内容的容器，估计将因此低于实际需要。";
		L.SHARED_APPEARANCES_CHECKBOX = "共享外观";
		L.SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "启用该选项可以在鼠标提示中看到外观相似的物品。\n\n注意：不符合装备类型的物品会显示在列表中。这是为了帮助你判断收藏进度。\n\n如果你对此感到困惑，从 ATT v1.5.0 开始，你可以右键单击物品，打开物品和它的共享外观，进入它们自己的独立小列表。";
		L.INCLUDE_ORIGINAL_CHECKBOX = "原始来源";
		L.INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "如果你真的喜欢在鼠标提示中的共享外观列表中看到原始来源信息，请启用此选项。";
		L.ONLY_RELEVANT_CHECKBOX = "仅相关";
		L.ONLY_RELEVANT_CHECKBOX_TOOLTIP = "如果你只想看到你的角色可以解锁的共享外观，请启用此选项。\n\n注意：我们建议你保持这个关闭，因为了解一个物品的解锁要求可以帮助识别为什么一个物品没有被收藏。";
		L.PROFESSION_CHECKBOX_TOOLTIP = "如果您想在鼠标提示中查看专业要求，请启用此选项。";
		L.LEVELREQ_CHECKBOX = "等级";
		L.LEVELREQ_CHECKBOX_TOOLTIP = "如果您想在鼠标提示中查看等级要求，请启用此选项。";
		L.CLASSES_CHECKBOX = "职业";
		L.CLASSES_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到完整的职业需求列表，请启用此选项。";
		L.RACES_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到完整的种族要求列表，请启用此选项。";
		L.SPEC_CHECKBOX = "专精";
		L.SPEC_CHECKBOX_TOOLTIP = "启用该选项，可以在游戏客户端提供的物品鼠标提示中显示物品的战利品专精信息。\n\n注意：无论该设置如何，这些图标仍将出现在 ATT 小列表中。";
		L.SUMMARIZE_CHECKBOX = "汇总事物";
		L.SUMMARIZE_CHECKBOX_TOOLTIP = "启用该选项可在鼠标提示中汇总事物。例如，如果一个事物可以变成另一个事物的商人，那么在鼠标提示中显示另一个事物，以提供其多种用途的可见性。如果一个事物作为许多其他事物的容器，这个选项将显示该容器所包含的所有其他事物。\n\n我们建议你保持此设置开启。";
		L.CONTAINS_SLIDER_TOOLTIP = '使用该功能可以自定义鼠标提示中显示的摘要事项的数量。\n\n默认：25';
		L.SOURCE_LOCATIONS_CHECKBOX = "来源位置";
		L.SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到 ATT 数据库中对象的完整来源位置路径，请启用此选项。";
		L.LOCATIONS_SLIDER_TOOLTIP = '使用该功能可以自定义鼠标提示中显示的来源位置数量。\n\n注意：这也会根据其他来源的多少来显示“X”个数量，如果这个总数等于显示的元素总数，那么就会简单地显示最后一个来源。\n\n默认：5';
		L.COMPLETED_SOURCES_CHECKBOX = "对已完成";
		L.COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "如果你想在鼠标提示中看到已完成的来源位置，请启用此选项。\n\n举个例子，如果你在灰谷完成了任务“巴斯兰的头发”，当你鼠标悬停在埃凡纳·寂语身上时，他的鼠标提示就不会再显示这个任务了。";
		L.DROP_CHANCES_CHECKBOX = "掉率";
		L.DROP_CHANCES_CHECKBOX_TOOLTIP = "启用此选项可在 ATT 窗口的工具提示中计算物品的各种掉落几率信息。\n这有助于了解在额外投骰物品时应使用哪种拾取专精。";
		L.FOR_CREATURES_CHECKBOX = "对生物";
		L.FOR_CREATURES_CHECKBOX_TOOLTIP = "如果你想查看生物的来源位置，请启用此选项。";
		L.FOR_THINGS_CHECKBOX = "对事物";
		L.FOR_THINGS_CHECKBOX_TOOLTIP = "如果你想查看事物的源位置，请启用此选项。";
		L.FOR_UNSORTED_CHECKBOX = "对未分类";
		L.FOR_UNSORTED_CHECKBOX_TOOLTIP = "如果你想查看尚未完全输入数据库的来源位置，请启用此选项。";
		L.WITH_WRAPPING_CHECKBOX = "允许换行";
		L.WITH_WRAPPING_CHECKBOX_TOOLTIP = "启用此选项允许来源在鼠标提示中换行。\n这将确保鼠标提示不会超过必要的宽度，但不幸的是在许多情况下来源信息会变得更加难以阅读。";
		L.SHOW_REMAINING_CHECKBOX = "显示剩余事物";
		L.SHOW_REMAINING_CHECKBOX_TOOLTIP = "如果你想查看剩余事物数量而不是总进度，请启用此选项。";
		L.PERCENTAGES_CHECKBOX = "显示完成百分比";
		L.PERCENTAGES_CHECKBOX_TOOLTIP = "如果想查看每行的完成百分比请启用此选项。\n\n按完成度对组进行着色不受影响。";
		L.MORE_COLORS_CHECKBOX = "显示颜色";
		L.MORE_COLORS_CHECKBOX_TOOLTIP = "如果你想看到使用更多的颜色来帮助区分列表中事物的附加条件，请启用此选项（比如职业颜色，阵营颜色等。）";
		L.TOOLTIP_HELP_CHECKBOX = "显示鼠标提示帮助";
		L.TOOLTIP_HELP_CHECKBOX_TOOLTIP = "如果你想在 ATT 窗口鼠标提示中看到帮助信息，即显示 ATT 窗口功能的各种键/点击组合，请启用此选项。\n如果你已经知道所有的键/点击组合，你可能希望节省工具提示空间并禁用此选项。";
		L.MAIN_LIST_SLIDER_LABEL = "主列表缩放";
		L.MAIN_LIST_SCALE_TOOLTIP = '使用此功能可以自定义主列表的缩放。\n\n默认：1';
		L.MINI_LIST_SLIDER_LABEL = "小列表缩放";
		L.MINI_LIST_SCALE_TOOLTIP = '使用此功能可以自定义所有小和小列表的缩放。\n\n默认：1';
		L.ADDITIONAL_LABEL = "附加信息";
		L.WINDOW_COLORS = "窗口颜色";
		L.BACKGROUND_TOOLTIP = "设置所有 ATT 窗口的背景颜色和透明度。";
		L.BORDER_TOOLTIP = "设置所有 ATT 窗口的边框颜色和透明度。";
		L.RESET_TOOLTIP = "重置所有 ATT 窗口的背景和边框。";
		L.CLASS_BORDER = "边框使用职业颜色";
		L.CLASS_BORDER_TOOLTIP = "使用职业颜色作为边框。当登录到另一个职业时，此信息会更新。";

	-- Features tab
		L.MINIMAP_LABEL = "小地图按钮";
		L.MODULES_LABEL = "模块和小列表";
		L.REPORTING_LABEL = "报告";
		L.ADHOC_UPDATES_CHECKBOX = "使用临时窗口更新";
		L.ADHOC_UPDATES_CHECKBOX_TOOLTIP = "如果你想只更新可见的 ATT 窗口请启用此选项。\n\n这可以大大减少加载时间并防止在某些情况下出现疯狂掉帧。";
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
		L.CURRENCIES_IN_WQ_CHECKBOX = "显示可回收成本组";
		L.CURRENCIES_IN_WQ_CHECKBOX_TOOLTIP = "如果您想让用于购买收藏品的物品/货币被视为收藏品并显示在动态填充的任务下，请启用此选项。 ";
		L.AUCTION_TAB_CHECKBOX = "显示拍卖行模块标签";
		L.AUCTION_TAB_CHECKBOX_TOOLTIP = "如果你想查看 ATT 提供的拍卖行模块请启用此选项。\n\n一些插件很调皮会大量修改这个框架。ATT 并不总是和那些玩具玩得很好。";
		L.SORT_BY_PROGRESS_CHECKBOX = "按进度排序";
		L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "如果你希望'排序'操作（"..SHIFT_KEY_TEXT.."右键）按每个组的总进度排序（而不是按名称）请启用此选项";
		L.QUEST_CHAIN_NESTED_CHECKBOX = "显示嵌套任务链";
		L.QUEST_CHAIN_NESTED_CHECKBOX_TOOLTIP = "如果你想让任务链要求（右键单击任务）窗口将所需任务显示为其后续任务的子组，即它们必须从内到外完成，请启用此选项。\n\n这一点很有用，不会错过个别任务，应该主要用于完成任务的考虑。\n\n否则任务链要求将以自上而下的方式显示，最早的任务在最上面。";
		L.CELEBRATIONS_LABEL = "庆祝和音效";
		L.AUDIO_CHANNEL = "声音通道";
		L.CELEBRATE_COLLECTED_CHECKBOX = "收藏事物触发庆祝音效";
		L.CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "如果你想在获得新的事物时听到庆祝'fanfare'效果请启用这个选项。\n\n这个功能可以极大地帮助你保持动力。";
		L.WARN_REMOVED_CHECKBOX = "移除事物触发警告";
		L.WARN_REMOVED_CHECKBOX_TOOLTIP = "如果你想在你不小心卖掉或交易一个给予你外观的物品从而导致收藏中失去该外观时听到警告的声音效果，请启用这个选项。\n\n如果你的商品有购买计时这可能非常有用。该插件会告诉你你犯了一个错误。";
		L.SCREENSHOT_COLLECTED_CHECKBOX = "收藏物品后触发截图";
		L.SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "如果你想为你收藏的每件物品进行截图请启用此选项。";
		L.ICON_LEGEND_LABEL = "图标图例";
		L.ICON_LEGEND_TEXT = app.ccColors.White .. "|TInterface\\AddOns\\AllTheThings\\assets\\status-unobtainable.blp:0|t " .. "不可获得" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-prerequisites.blp:0|t " .. "仅在满足先决条件的情况下获得" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-seasonal-unavailable.blp:0|t " .. "季节性内容" .. "\n|TInterface\\FriendsFrame\\StatusIcon-Offline:0|t " .. "当前角色不可用";
		L.CHAT_COMMANDS_LABEL = "聊天命令";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFF或|R /things |cffFFFFFF或|R /allthethings\n|cffFFFFFF打开主列表。\n\n|R/att mini |cffFFFFFF或|R /attmini\n|cffFFFFFF打开小列表。\n\n|R/att bounty\n|cffFFFFFF打开被出错或未确认的物品列表。\n\n|R/att ra |cffFFFFFF或|R /attra\n|cffFFFFFF打开团队助手。\n\n|R/att wq |cffFFFFFF或|R /attwq\n|cffFFFFFF打开世界任务列表。\n\n|R/att item:1234 |cffFFFFFF或|R /att [物品链接]\n|cffFFFFFF打开一个共享外观的窗口。也适用于其他事物，例如|R quest:1234|cffFFFFFF，|Rnpcid:1234|cffFFFFFF，|Rmapid:1234|cffFFFFFF 或 |Rrecipeid:1234|cffFFFFFF。\n\n|R/att rwp\n|cffFFFFFF显示所有未来用补丁删除的东西。\n\n|R/att random |cffFFFFFF或|R /attrandom |cffFFFFFF或|R /attran\n|cffFFFFFF打开随机列表。\n\n|R/att unsorted\n|cffFFFFFF打开未知源物品列表。最好在调试模式下打开。\n\n|R/rl\n|cffFFFFFF重载魔兽界面。|R";

	-- Profiles tab
		L.PROFILES_PAGE = "配置文件";
		L.PROFILE = "配置文件";
		L.PROFILE_INITIALIZE = "初始化配置文件";
		L.PROFILE_INITIALIZE_TOOLTIP = "这将使您的 ATT 保存变量能够支持和包含配置文件数据。您当前的设置和窗口信息将被复制到 '"..DEFAULT.."' 配置文件中，该配置文件无法删除，但可以修改并使用作为所有角色的初始配置文件。\n\n请务必将配置文件的任何异常行为或错误报告给 ATT Discord！";
		L.PROFILE_INITIALIZE_CONFIRM = "确定要打开配置文件支持？";
		L.PROFILE_NEW_TOOLTIP = "为当前角色创建一个空白配置文件";
		L.PROFILE_COPY_TOOLTIP = "复制已选配置文件到当前配置文件";
		L.PROFILE_DELETE_TOOLTIP = "删除已选配置文件";
		L.PROFILE_SWITCH_TOOLTIP = "将选定的配置文件设置为当前配置文件\n\n一个配置文件也可以通过 "..SHIFT_KEY_TEXT.."点击切换到它";
		L.SHOW_PROFILE_LOADED = "显示在登录期间或在配置文件之间切换时加载的配置文件";

	-- Sync tab
		L.SYNC_PAGE = "同步";
		L.ACCOUNT_SYNCHRONIZATION = "帐号同步";
		L.AUTO_SYNC_ACC_DATA_CHECKBOX = "自动同步帐号数据";
		L.AUTO_SYNC_ACC_DATA_TOOLTIP = "如果您希望 ATT 在登录或重新加载用户界面时尝试在帐号之间自动同步帐号数据，请启用此选项。";
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

	-- About tab
		L.ABOUT_PAGE = "关于";
		L.ABOUT_1 = " |CFFFFFFFF是一个收藏跟踪插件，可以向您展示在游戏中获取所有内容的位置和方式！我们的 Discord 上有大量用户社区（底部链接），您可以在其中提问、提交建议以及报告错误或丢失的物品。如果发现一些收藏品或未记录的任务，可以在 Discord 上告诉我们，或者对于更精通技术的人，我们有一个您可以直接贡献的 Git。\n\n虽然我们努力争取完成，但每个补丁都会添加很多东西，所以如果我们遗漏了什么，请理解我们是一个小团队，试图跟上变化并自己收藏东西。:D\n\n在我直播时随时问我问题，我会尽力回答，即使它与 ATT（一般魔兽插件编程也是如此）没有直接关系。\n\n- |r|Cffff8000Crieve|CFFFFFFFF\n\n另外：查看 All The Things 经典旧世和巫妖王之怒经典旧世！！|r";
		L.ABOUT_2 = "活跃贡献者：|CFFFFFFFF（排名不分先后）\nGold，Dead Serious，Sanctuari，Molkree，Runawaynow，Braghe，Myrhial，Darkal，Tag，Jezartroz，AlexSoft，Jenstonedart，以及 ALL THE THINGS Discord 其他人们！|r";
		L.ABOUT_3 = "\n名人堂：|CFFFFFFFF（排名不分先后）\nDaktar，Lucetia，Slumber，Avella，Aiue，Oiche，Oxlotus，Eiltherune，Blueyleader，Iyanden，Pr3vention，BigBlaris，Talonzor，Mogwai，Heallie，Eckhardt，Boohyaka，Sadidorf|r";
		L.ABOUT_4 = "\n\n|CFFFFFFFF特别鸣谢 AmiYuy（CanIMogIt）和 Caerdon（Caerdon Wardrobe）。绝对应该下载他们的插件，以获得包中物品的收藏图标！|r ";
		L.ABOUT_5 = "\n\n|CFFFFFFFF如需在线收集比较，请访问 Shoogen 的 DataForAzeroth.com 和 Freddie 的 WoWthing.org！|r";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "切换账号模式";
		L.TOGGLE_COMPLETIONIST_MODE = "切换完美主义者模式";
		L.TOGGLE_DEBUG_MODE = "切换调试模式";
		L.TOGGLE_FACTION_MODE = "切换阵营模式";
		L.PREFERENCES = "偏好";
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
		L.LOCKOUT = "锁定";
		L.SHARED = "共享";
		L.SPLIT = "按难度";
		L.REQUIRES_LEVEL = "需要等级";
		L.SECRETS_HEADER = "解密";
		L.LIMITED_QUANTITY = "此物品有数量限制，在商人处并非总是可见。";
		L.SOURCE_ID_MISSING = "请在 #retail-errors 中向 ATT Discord 报告此物品及其获取地点！";
		L.ADDED_WITH_PATCH_FORMAT = "这在补丁 %s 中被添加";
		L.REMOVED_WITH_PATCH_FORMAT = "这在补丁 %s 中被删除";

	-- Filter Text
		L.ACHIEVEMENT_ID = "成就 ID";
		L.ARTIFACT_ID = "神器 ID";
		L.AZERITE_ESSENCE_ID = "艾泽里特精华 ID";
		L.CREATURE_ID = "生物 ID";
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
		L.iLvl = "物品等级";

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
		L.KNOWN_ON_CHARACTER = "|T" .. app.asset("known") .. ":0|t |cff15abff当前角色已习得|r";
		L.UNKNOWN_ON_CHARACTER = "|T" .. app.asset("unknown") .. ":0|t |cffff9333当前角色未习得|r";
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ff货币|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
	["安托鲁斯，燃烧王座"] = "安托鲁斯",	-- ["Antorus, the Burning Throne"] = "Antorus"
	["资料片前夕"] = "前夕",	-- ["Expansion Pre"] = "Pre"
	[GROUP_FINDER] = "地下城和团本",	-- ["Dungeons & Raids"] = "D&R"
	["尼奥罗萨，觉醒之城"] = "尼奥罗萨",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	["塔扎维什，帷纱集市"] = "塔扎维什",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
})
do a[key] = value; end
if GetLocale() == "zhTW" then
	a["安托洛斯，燃燒王座"] = "安托洛斯"	-- ["Antorus, the Burning Throne"] = "Antorus"
	a["奈奧羅薩，甦醒之城"] = "奈奧羅薩"	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	a["『帷幕市集』塔札維許"] = "塔札維許"	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
end

L.CUSTOM_DIFFICULTIES[-1] = "团队查找器 (5.4)";
L.CUSTOM_DIFFICULTIES[-2] = "弹性 (5.4)";
L.CUSTOM_DIFFICULTIES[-3] = "普通 (5.4)";
L.CUSTOM_DIFFICULTIES[-4] = "英雄 (5.4)";

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Garrisons
		[-152] = "要塞战役",											-- Garrison Campaign
	-- Class Trial
		[-155] = string.format(SPELLBOOK_AVAILABLE_AT, 50).." ".."（直升）",	-- Level 50 (Boost)
	-- Fishing
		[-217] = "鱼竿",												-- Lures (for Fishing)
	-- PvP
		[-242] = "无评级",												-- Unrated
		[-243] = "赏金任务",											-- Bounty
	-- Allied Races
		[-254] = "同盟种族",												-- Allied Races
		[-255] = "传承护甲",											-- Heritage
	-- Outposts in Draenor
		[-361] = GetSpellInfo(182108).." 塔",						-- Artillery Tower
	-- BFA Outposts
		[-397] = "哨站",												-- Outposts
	-- 5.3
		[-398] = "战场：贫瘠之地",											-- Battlefield: Barrens
	-- BFA War Chest
		[-488] = "战争宝箱",											-- Daily War Chest
	-- Misc
		[-493] = "要塞任务拾取",										-- Header for WoD Mission Loot
	-- Blizzard Events and Anniversaries
		[-520] = "资料片前夕",											-- Expansion Pre-Launch
		[-543] = "军团入侵",											-- Legion Invasions
	-- Cataclysm PvP Seasons
		[-672] = select(2, GetAchievementInfo(6002)).."第9赛季",	-- Vicious Gladiator: Season 9
		[-656] = "荣誉装备冷酷赛季",									-- Honor Gear Ruthless (S10)
		[-673] = select(2, GetAchievementInfo(6124)).."第10赛季",	-- Ruthless Gladiator: Season 10
		[-654] = "荣誉装备灾变赛季",									-- Honor Gear Cataclysmic (S11)
		[-674] = select(2, GetAchievementInfo(6938)).."第11赛季",	-- Cataclysmic Gladiator: Season 11
	-- Mists of Pandaria PvP Seasons
		[-675] = select(2, GetAchievementInfo(8214)).."第12赛季",	-- Malevolent Gladiator: Season 12
		[-653] = "荣誉装备暴虐赛季",									-- Honor Gear Tyrannical (S13)
		[-676] = select(2, GetAchievementInfo(8791)).."第13赛季",	-- Tyrannical Gladiator: Season 13
		[-652] = "荣誉装备恶孽赛季",									-- Honor Gear Grievous (S14)
		[-651] = "荣誉装备骄矜赛季",									-- Honor Gear Prideful (S15)
	-- Pets
		[-795] = "宠物对战地下城",										-- Pet Battle Dungeons
	-- Chests
		[-851] = "黑暗帝国宝箱",											-- Black Empire Cache (Is a placeholder since no ObjectID are assigned to chests!)
	-- Shadowlands Header
		[-979] = "掮灵威·肯 & 掮灵威·诺特",									-- Broker Ve'ken & Broker Ve'nott
		[-924] = "传送网络",											-- Transport Network
		-- SL Bastion/Kyrian
			[-973] = "忠诚",											-- Loyalty
			[-975] = "谦逊",											-- Humility
		-- SL Revendreth/Venthyr
			[-954] = "审判官",											-- Inquisitors
			[-955] = "高阶审判官",										-- High Inquisitors
			[-956] = "大审判官",										-- Grand Inquisitors
			[-967] = "破镜重圆",										-- Mirror Restoration
			[-968] = "组 A",											-- Set A
			[-969] = "组 B",											-- Set B
			[-970] = "组 C",											-- Set C
			[-971] = "组 D",											-- Set D
	-- Dragonflight
		[-1100] = DRAKE_MANUSCRIPTS,								-- Drakewatcher Manuscripts
		[-1101] = "原始风暴",											-- Primal Storms
		[-1102] = "拉希奥和萨贝里安",										-- Wrathion & Sabellian
		[-1120] = "马鲁克半人马",											-- Maruuk Centaur
		[-1130] = "伊斯卡拉海象人",										-- Iskaara Tuskarr
		[-1143] = "每30分钟稀有",										-- DF Rare Rotation (Every 30 min Rare)
		[-1150] = "峈姆鼹鼠人",											-- Loamm Niffen
		[-1151] = "以物易物",								            -- Bartering
		[-1200] = "兹斯克拉宝库",										-- Zskera Vaults
		[-1202] = "菲莱克突袭",											-- Fyrakk Assaults
		[-1203] = "嗅味探寻",							                -- Sniffenseeking
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5200] = "基础外观",										-- Base Appearance
			[-5201] = "职业大厅战役",										-- Class Hall Campaign
			[-5202] = "能量的平衡",										-- Balance of Power
			[-5203] = "荣誉奖励",										-- Prestige Rewards
			[-5204] = "挑战外观",										-- Challenge Appearance
			[-5205] = "隐藏外观",										-- Hidden Appearance

	------ ACHIEVEMENT HEADERS SECTION ------
		[-10071] = "恩佐斯的幻象",										-- Visions of N'Zoth
		[-10072] = "恩佐斯突袭",											-- N'Zoth Assault
		[-10081] = "腐化区域",											-- Corrupted Area
		[-10082] = "失落区域",											-- Lost Area
})
do a[key] = value; end
if GetLocale() == "zhTW" then
	a[-1101] = "洪荒風暴";												-- Primal Storms
	a[-1120] = "莫魯克半人馬";											-- Maruuk Centaur
	a[-1130] = "伊斯凱拉巨牙海民";										-- Iskaara Tuskarrccord
end

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

local a = L.UNOBTAINABLE_ITEM_REASONS;
for key,value in pairs({
	-- Arbitrary Filters
	[1] = {1, "|CFFFF0000此项玩家永远无法获得。|r", "从未实施"}, -- No Hope
	[2] = {1, "|CFFFF0000此项已从游戏中删除。|r", "从游戏中移除"}, -- No Hope
	[4] = {3, "|CFFFF0000除非您拥有所需的 PvP 头衔、所需的 PvP 等级或处于该赛季的前 %，否则无法再购买或解锁幻化。|r", "PvP 精良/角斗士"},
	[9] = {3, "|CFFFF0000获得它的原始来源已被删除，现在只能通过黑市拍卖行获得。|r", "黑市拍卖行 [BMAH]"},
	[10] = {3, "|CFFFF0000最初通过不再印刷的 TCG 卡获得，但仍可通过黑市、游戏内或现实中的拍卖行获得。|r", "集换式卡牌游戏 [TCG]"},
	[11] = {3, "|CFFFF0000除非您认识可以使用用于召唤首领的物品的人，否则这将不再可用。|r", "需要召唤物品"},
	[15] = {1, "|CFFFF0000这不能永久学习或用于幻化。|r", "不可学"},
	[35] = {3, "|CFFFF0000这被锁定在付费墙后面，例如游戏内商店、另一个暴雪产品或战友招募服务。|r", "暴雪礼品卡"},
	[38] = {1, "|CFFFF0000这仅适用于在《熊猫人之谜》或通过黑市拍卖行完成传奇披风任务链的玩家。|r", "斡耳朵斯 - 传奇披风"},
	[45] = {1, "|CFFFF0000暴雪的拾取更改损坏了几件物品，使其无法获得。\n贵族披风/古拉巴什帝国大氅（同为《争霸艾泽拉斯》使者奖励），“绞肉机”奥戈姆，《德拉诺之王》任务拾取和奥杜尔英雄模式物品目前已损坏，需要修复。|r", "拾取损坏"},
})
do a[key] = value; end

local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..("Interface\\Icons\\achievement_newplayerexperience")..":0|t", color = "ff5bc41d", text = "新玩家体验", desc = "只有新角色可以收藏这个。" },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "命运丝线", desc = "只有选择跳过暗影国度故事线的角色才能收藏这个。" },
	["HOA"] = { icon = "|T"..("Interface\\Icons\\inv_heartofazeroth")..":0|t", color = "ffe6cc80", text = GetSpellInfo(275825), desc = "只有角色获得 |cffe6cc80"..GetSpellInfo(275825).."|r 可以收集。" },
	["!HOA"] = { icon = "|T"..("Interface\\Icons\\mystery_azerite_chest_normal")..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellInfo(275825), desc = "只有角色 |cffff0000没有|r 获得 |cffe6cc80"..GetSpellInfo(275825).."|r 可以收集。" },
})
do a[key] = value; end
