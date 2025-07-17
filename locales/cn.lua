if GetLocale() ~= "zhCN" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

L.TITLE = "|c" .. app.DefaultColors.ATT .. "ALL THE THINGS|r";
L.SHORTTITLE = "|c" .. app.DefaultColors.ATT .. "ATT|r";
L.DESCRIPTION = "“你愚蠢地寻求自己的终结，厚颜无耻地无视了你无法理解的力量。你入侵了收藏者的领域并为此努力。现在只有一条路可走了——这条孤独的路……该死的路。”";

L.NEW_VERSION_FLAVORS = {
	--TODO: "AllTheThings hungers.",
	"不然希尔瓦娜斯要拿到另一个打火机了。",
	"阿莱克丝塔萨很担心你。",
	"下次|cffffaaaa一定|r出无敌！",
	"这只是一个小挫折。",
	"是，大厨！",
	--TODO: "and Crieve will help a turtle to make it to the water.",
	"艾泽拉斯的勇士。",
};


L.MINIMAP_MOUSEOVER_TEXT = "右键改变设置。\n左键打开主列表。\n"..CTRL_KEY_TEXT.."左键打开小列表。\n"..SHIFT_KEY_TEXT.."左键刷新收藏。";
L.TOP_ROW_INSTRUCTIONS = "|cff3399ff按住并拖拽左键移动\n右键打开设置\n"..SHIFT_KEY_TEXT.."左键刷新收藏\n"..CTRL_KEY_TEXT.."左键展开/折叠列表\n"..SHIFT_KEY_TEXT.."右键单击排序组/弹出列表|r";
L.OTHER_ROW_INSTRUCTIONS = "|cff3399ff左键展开/折叠\n右键弹出小列表\n"..SHIFT_KEY_TEXT.."左键刷新收藏\n"..CTRL_KEY_TEXT.."左键展开/折叠列表\n"..SHIFT_KEY_TEXT.."右键单击排序组/弹出列表\n"..ALT_KEY_TEXT.."右键设置路径点|r";
L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ff按住并拖拽左键移动\n右键打开设置\n"..SHIFT_KEY_TEXT.."左键搜索拍卖行|r";
L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ff左键展开/折叠\n右键弹出小列表\n"..SHIFT_KEY_TEXT.."左键搜索拍卖行|r";
L.REQUIRES_SKYRIDING = "|CFF00FFDE"..(SPELL_FAILED_CUSTOM_ERROR_1029 or "需要驭空术").."|r";
L.REPORT_TIP = "\n（"..CTRL_KEY_TEXT.."+C 将多行报告复制到剪贴板）";

L.ICON_LEGEND_STATUS_TEXT = "|c" .. app.DefaultColors.White ..     "\n|T374225:0|t 当前角色不可用|T" .. app.asset("status-unobtainable") .. ":0|t 不可获得\n|T" .. app.asset("status-prerequisites") .. ":0|t 仅在满足先决条件的情况下可获得\n|T" .. app.asset("status-seasonal-available") .. ":0|t 当前可用的季节性内容\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t 当前不可用的季节性内容\n|T374225:0|t Unavailable on current character\n|T" .. app.asset("status-unsorted") .. ":0|t Unsorted in ATT";

L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";
L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";	
L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";	
L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";	
L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abff已收藏|r";
L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abff已收藏*|r";
L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未收藏|r";
L.COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成|r";
L.COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成*|r";
L.INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |cffff9333未完成|r";
L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";	

L.MARKS_OF_HONOR_DESC = "荣耀印记必须在弹出窗口中查看才能看到所有正常的'包含'内容。\n(在聊天中输入'/att' 然后 "..SHIFT_KEY_TEXT.."点击链接的物品)\n\n|cFFfe040f之后购买和一起使用，重新登录和强制 ATT 刷新（按此顺序）\n可能需要正确注册所有物品。|r";
L.MOP_REMIX_BRONZE_DESC = "青铜必须在弹出窗口中查看才能看到所有正常的'包含'内容。\n(在聊天中输入'/att' 然后 "..SHIFT_KEY_TEXT.."点击链接的物品)\n\n|cFFfe040f之后购买和一起使用，重新登录和强制 ATT 刷新（按此顺序）\n可能需要正确注册所有物品。|r";
L.FOLLOWERS_COLLECTION_DESC = "如果您在 ATT 中启用此设置，则可以在整个帐号范围内收集追随者。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击标题手动刷新插件才能检测到这一点。";
L.MUSIC_ROLLS_DESC = "这些是按角色解锁且目前尚未在战网中共享。如果暴雪有人在看，如果能把这些战网共享的话那就太好了。\n\n必须通过 "..SHIFT_KEY_TEXT.."点击要检测的标题手动刷新插件。";
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

L.UNSORTED_DESC = "此数据尚未在 ATT 中获取 " .. app.Version .. "。";
L.RESET_INSTANCES_DESC = "点击此处重置副本。\n\n"..ALT_KEY_TEXT.."点击可在离开地下城时自动重置副本。\n\n警告：小心使用！";
L.UPDATE_WORLD_QUESTS_DESC = "有时世界任务 API 很慢或无法返回新数据。如果希望在不更改区域的情况下强制刷新数据，请立即点击此按钮！\n\n"..ALT_KEY_TEXT.."点击以包括当前可用的事物，可能不受时间限制";
L.FORCE_REFRESH_REQUIRED = "这可能需要强制刷新（"..SHIFT_KEY_TEXT.."点击）正确已收集。";

L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.."点击锁定窗口";
L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.."点击解锁窗口";

L.TITLE_DEBUG = "|c" .. app.DefaultColors.Red .. "调试|R ";
L.TITLE_ACCOUNT = "|c" .. app.DefaultColors.Account.."帐号|R ";
L.TITLE_INSANE = "|c" .. app.DefaultColors.Insane.."疯狂|R ";

L.PRESET_INSANE = "|c" .. app.DefaultColors.Insane .. "疯狂模式|R 启用所有 |c" .. app.DefaultColors.Insane .. "彩色选项|R，并给你一个真正的挑战！";
L.PRESET_ACCOUNT = "|c" .. app.DefaultColors.Account .. "账号模式|R 启用所有账号范围的追踪，并显示所有角色的进度。";


L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已保存|r";
L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ff货币|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
	["安托鲁斯，燃烧王座"] = "安托鲁斯",	-- ["Antorus, the Burning Throne"] = "Antorus"
	["资料片前夕"] = "前夕",	-- ["Expansion Pre"] = "Pre"
	["尼奥罗萨，觉醒之城"] = "尼奥罗萨",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	["塔扎维什，帷纱集市"] = "塔扎维什",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	["亚贝鲁斯，焰影熔炉"] = "亚贝鲁斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
	["阿梅达希尔，梦境之愿"] = "阿梅达希尔",	-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
	["艾拉-卡拉，回响之城"] = "回响之城",	-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
	[-5200] = "基础外观",										-- Base Appearance
	[-5201] = "职业大厅战役",										-- Class Hall Campaign
	[-5202] = "能量的平衡",										-- Balance of Power
	[-5203] = "荣誉奖励",										-- Prestige Rewards
	[-5204] = "挑战外观",										-- Challenge Appearance
	[-5205] = "隐藏外观",										-- Hidden Appearance
})
do a[key] = value; end
end

SKIP_AUTO_REFRESH_TOOLTIP = "默认情况下(未勾选)，任何可能影响可见数据的设置变化都会导致自动刷新。\n\n通过启用该选项设置的变化将不会生效，直到玩家 "..SHIFT_KEY_TEXT.."点击 ATT 窗口执行全部刷新。";
DEBUG_MODE = "|c" .. app.DefaultColors.Red.."调试模式|r（显示所有）";
ACCOUNT_MODE = "|c" .. app.DefaultColors.Account.."帐号模式";
MODE_EXPLAIN_LABEL = "|cffFFFFFF您收藏的内容汇总在这里。启用所有 ".."|c" .. app.DefaultColors.Insane.."彩色选项|cffFFFFFF 解锁 ".."|c" .. app.DefaultColors.Insane.."疯狂模式|cffFFFFFF。";
SHOW_SKYRIDING_CHECKBOX = DYNAMIC_FLIGHT or "驭空术";
ACC_WIDE_DEFAULT = "已追踪 ".. "|c" .. app.DefaultColors.Account .. "账号通用|R 默认。";
TRACK_ACC_WIDE = "|c" .. app.DefaultColors.Account .. "追踪 账号通用|R";
AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t 艾泽拉斯之心精华";
MOUNTMODS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t 坐骑定制";
FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t 追随者 & 伙伴";
RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 符文铭刻之力";
SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 导灵器";
ITEM_EXPLAIN_LABEL = "|c" .. app.DefaultColors.Account.."帐号模式|r|cffFFFFFF下，这些内容始终显示。|r";
CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFF如果当前角色可以使用此内容，或者位于 ".."|c" .. app.DefaultColors.Account.."账号模式|cffFFFFFF。|r";
SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "如果你希望'排序'操作（"..SHIFT_KEY_TEXT.."右键）按每个组的总进度排序（而不是按名称）请启用此选项";
PROFILE_INITIALIZE_TOOLTIP = "这将使您的 ATT 保存变量能够支持和包含配置文件数据。您当前的设置和窗口信息将被复制到 '"..DEFAULT.."' 配置文件中，该配置文件无法删除，但可以修改并使用作为所有角色的初始配置文件。\n\n请务必将配置文件的任何异常行为或错误报告给 ATT Discord！";
PROFILE_SWITCH_TOOLTIP = "将选定的配置文件设置为当前配置文件\n\n一个配置文件也可以通过 "..SHIFT_KEY_TEXT.."点击切换到它";

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
