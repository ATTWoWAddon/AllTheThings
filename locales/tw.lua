-- Localization for Chinese (Traditional, Taiwan) Clients.
if GetLocale() ~= "zhTW" then return; end
local app = select(2, ...);
local L = app.L;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;

-- General Text
	L.DESCRIPTION = "\"你愚昧地尋求自我毀滅，大膽地無視了那些超越你理解的力量。你拼盡全力入侵收藏者的領域，而現在，唯一的出路只剩下 — 踏上那孤獨的詛咒之路\"";
	L.THINGS_UNTIL = " 事物到 ";
	L.THING_UNTIL = " 事物到 ";
	L.YOU_DID_IT = "你做到了！";

-- Big new chunk from AllTheThings.lua
	L.PROGRESS = "進度";
	L.TRACKING_PROGRESS = "追蹤進度";
	L.COLLECTED_STRING = " 已收藏";
	L.PROVIDERS = "供應商";
	L.COLLECTION_PROGRESS = "收藏進度";
	L.CONTAINS = "包含：";
	L.FACTIONS = "陣營";
	L.COORDINATES = "座標";
	L.AND_MORE = "和 %s 更多...";	--TODO: check
	L.AND_OTHER_SOURCES = "和 %s 其他來源...";	--TODO: check
	L.PLAYER_COORDINATES = "玩家座標";
	L.NO_COORDINATES_FORMAT = "%s 沒有已知座標";
	L.TOM_TOM_NOT_FOUND = "必須安裝 TomTom 才能繪製座標。";
	L.FLIGHT_PATHS = "飛行路線";
	L.KNOWN_BY = "已知 %s";	--TODO: check
	L.REQUIRES = "需要";
	L.RACE_LOCKED = "種族限定";
	L.PLEASE_REPORT_MESSAGE = "請把錯誤回報給 ATT Discord 的 #retail-errors！謝謝！";
	L.REPORT_TIP = "\n（"..CTRL_KEY_TEXT.."+C 將多行報告複製到剪貼簿）";
	L.NOT_AVAILABLE_IN_PL = "在個人拾取中不可用。";
	L.MARKS_OF_HONOR_DESC = "榮耀印記必須在彈出視窗中查看才能看到所有正常的'包含'內容。\n(在聊天中輸入'/att' 然後 "..SHIFT_KEY_TEXT.."點擊連接的物品)\n\n|cFFfe040f之後購買和一起使用，重新登入和強制 ATT 刷新（按此順序）\n可能需要正確註冊所有物品。|r";
	L.MOP_REMIX_BRONZE_DESC = "青铜幣必須在彈出視窗中查看才能看到所有正常的'包含'內容。\n(在聊天中輸入'/att' 然後 "..SHIFT_KEY_TEXT.."點擊連接的物品)\n\n|cFFfe040f之後購買和一起使用，重新登入和強制 ATT 刷新（按此順序）\n可能需要正確註冊所有物品。|r";
	L.ITEM_GIVES_REP = "提供聲望 '";
	L.COST = "花費";
	L.COST_DESC = "這裡面包含了獲得或購買這個物品所需要的物品";
	L.COST_TOTAL = "總花費";
	L.COST_TOTAL_DESC = "其中包含獲得或購買頂級分組內所有物品所需的直觀分類。\n\n注意：目前不包括藥劑/配方需求！";
	L.SOURCES = "來源";
	L.SOURCES_DESC = "顯示這個東西的來源。\n\n特別是特定商人/NPC，任務，戰鬥，等等。";
	L.WRONG_FACTION = "可能需要在另一個陣營中查看此內容。";
	L.ARTIFACT_INTRO_REWARD = "完成該神器的介紹任務後獲得。";
	L.VISIT_FLIGHT_MASTER = "拜訪飛行管理員快取。";
	L.FLIGHT_PATHS_DESC = "當你與每個大陸上的飛行管理員交談時會快取飛行路線。\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "如果您在 ATT 中啟用此設定，則可以在整個帳號範圍內收集追隨者。\n\n必須通過 "..SHIFT_KEY_TEXT.."點擊標題手動刷新插件才能檢測到這一點。";
	L.HEIRLOOM_TEXT = "解鎖傳家寶";
	L.HEIRLOOM_TEXT_DESC = "顯示你是否已經獲得或購買了傳家寶。";
	L.FAILED_ITEM_INFO = "未能獲得物品資訊。該物品可能是無效的或者可能還沒有被快取在你的伺服器上。";
	L.HEIRLOOMS_UPGRADES_DESC = "這表明你是否已經將傳家寶升級到了一定的級別。\n\n安息吧…金幣。\n - Crieve";
	L.MUSIC_ROLLS_DESC = "這些是按角色解鎖且目前尚未在戰隊中共享。如果暴雪有人在看，如果能把這些戰隊共享的話那就太好了。\n\n必須通過 "..SHIFT_KEY_TEXT.."點擊要檢測的標題手動刷新插件。";
	L.MUSIC_ROLLS_DESC_2 = "\n\n必須首先通過在要塞中完成動感低音任務來解鎖要塞點唱機以便掉落此物品。\n\n自拍需要自拍神器玩具。";
	L.OPPOSITE_FACTION_EQ = "與敵對陣營對應：";
	L.SELFIE_DESC = "使用您的自拍 ";
	L.SELFIE_DESC_2 = " 和 |cffff8000";
	L.EXPANSION_DATA[1].lore = "海加爾山之戰的四年後，聯盟和部落之間的關係又一次緊張了起來。在貧瘠之地杜洛塔，由索爾所領導的部落安頓定居下來並繼續擴充軍隊的規模，他們邀請被遺忘者加入獸人、牛頭人和食人妖的行列。同時，矮人、地精和古老的夜精靈也發誓效忠由人類王國暴風城所領導的聯盟。在暴風城國王瓦里安·烏瑞恩神秘失蹤後，大領主伯瓦爾‧弗塔根擔任攝政王一職，但是偽裝成人類女貴族的黑龍軍團的奧妮克希亞控制他的心智，從幕後操控整個王國。正當英雄們探查奧妮克希亞的陰謀時，古老的強敵卻現身世界各地，威脅著部落和聯盟。";
	L.EXPANSION_DATA[2].lore = "燃燒的遠征是第一個資料片。它的主要內容包括將等級上限提高到70，將血精靈和德萊尼作為可玩的種族引入，以及外域世界的加入，以及許多新區域、地城、物品、任務和怪物。";
	L.EXPANSION_DATA[3].lore = "巫妖王之怒是第二個資料片。大部分資料片內容都發生在諾森德，並以巫妖王的計劃為中心。內容亮點包括將等級上限從70增加到80，引入英雄職業死亡騎士，以及新的 PvP/世界 PvP 內容。";
	L.EXPANSION_DATA[4].lore = "浩劫與重生是第三個資料片。隨著死亡之翼的回歸，重做艾澤拉斯大陸的卡林多和東部王國，他從位於元素位面深處的巢穴中破土而出，將艾澤拉斯撕成碎片。大災變讓玩家們回到艾澤拉斯的兩大洲進行大部分的活動，開闢新的區域，如海加爾山、瓦許伊爾、地深之源、奧丹姆和暮光高地。它包括兩個新的可玩的種族，狼人和哥布林。資料片將等級上限提高到85，增加了在卡林多和東部王國飛行的能力，引入考古學，並重做世界本身。";
	L.EXPANSION_DATA[5].lore = "潘達利亞之謎是第四個資料片。在潘達利亞意外重新發現之後，資料片主要重新集中在聯盟和部落之間的戰爭。冒險者重新發現了古老的熊貓人，他們的智慧將有助於引導他們走向新的命運；熊貓人帝國的古代敵人螳螂人；和他們傳說中的壓迫者神秘的魔古族。領土隨著時間的推移而變化，瓦里安．烏瑞恩和卡爾洛斯．地獄吼之間的衝突逐漸升級。內戰席捲了部落，聯盟和部落中反對地獄吼的暴力起義聯合起來直接把戰爭帶到地獄吼和被煞侵蝕的奧格瑪的盟友。";
	L.EXPANSION_DATA[6].lore = "德拉諾之霸是第五個資料片。在德拉諾的原始叢林和戰爭創傷的平原上，艾澤拉斯的英雄們將參與一場神話般的衝突，包括神秘的德萊尼冠軍和強大的獸人部落，以及在原始力量的頂峰與葛羅瑪許．地獄吼、黑手和耐奧祖等。玩家需要在這片不受歡迎的土地上搜尋盟友，以幫助建立一個絕望的防禦，對抗舊部落強大的統治，或者觀看他們自己世界上血腥的、飽受戰爭蹂躪的歷史重演。";
	L.EXPANSION_DATA[7].lore = "軍臨天下是第六個資料片。古爾丹被驅逐到艾澤拉斯，重新開啟薩格拉斯之墓和阿古斯之門，燃燒軍團開始第三次入侵。在破碎海岸被擊敗後，艾澤拉斯的防衛者們尋找創造之柱，這是在艾澤拉斯關閉薩墓中心巨大的惡魔之門的唯一希望。然而，破碎群島也有自己的危險要克服，從薩維斯到神王斯科瓦德，到夜裔精靈，再到潮汐之力艾薩拉。卡德加將達拉然遷移到這片土地的海岸，這座城市是英雄的中心樞紐。亞榭洛的死亡騎士也將他們的黯黑堡帶到了群島。艾澤拉斯的英雄們在戰鬥中尋找傳說中的神器，但也發現了意外的盟友伊利達瑞。聯盟和部落之間正在發生的衝突導致了階級秩序的形成，特殊的指揮官擱置陣營紛爭來領導他們的隊伍參加對抗軍團的戰爭。";
	L.EXPANSION_DATA[8].lore = "決戰艾澤拉斯是第七個資料片。艾澤拉斯為結束燃燒軍團的天啓付出了慘重的代價，但即使世界上的創傷得到了修復，聯盟和部落之間破碎的信任也可能是最難彌補的。在決戰艾澤拉斯中，燃燒軍團的垮台引發了一系列災難性事件，重新引發了魔獸世界中心的衝突。隨著一個新的戰爭時代開始，艾澤拉斯的英雄們必須開始招募新的盟友，爭奪世界上最強大的資源，並在多條戰線上戰鬥，以決定部落或聯盟是否會帶領艾澤拉斯進入不確定的未來。";
	L.EXPANSION_DATA[9].lore = "暗影之境是第八個資料片。你所知道的世界之外還有什麼？暗影之境。每一個世俗的人（無論是善良的還是邪惡的）都曾居住過的地方。";
	L.EXPANSION_DATA[10].lore = "巨龍崛起是第九個資料片。艾澤拉斯的巨龍軍團已經回歸，他們響應了召喚，前去保護自己世代相傳的家園：巨龍群島。巨龍群島湧動著元素魔法和艾澤拉斯的生命能量，如今它已從睡夢中甦醒，原始的奇觀和塵封已久的秘密正等待你去揭曉。";
	L.EXPANSION_DATA[11].lore = "地心之戰是第十個資料片。也是世界之魂戰記三部曲的開端。穿越前所未見的地下世界，那裡充滿了隱藏的奇觀和潛伏的危險，一直到蛛魔帝國的黑暗深處，那裡邪惡的虛空先驅正在聚集蛛魔力量，試圖讓艾澤拉斯屈服。";
	L.EXPANSION_DATA[12].lore = "至暗之夜是第十一個資料片。也是世界之魂戰記的第二部份。";
	L.EXPANSION_DATA[13].lore = "最後的泰坦是第十二個資料片。也是世界之魂戰記三部曲終章。";
	L.TITLES_DESC = "頭銜會在你的戰隊中被追蹤，但是，你的角色必須符合某些頭銜的條件才能在該角色上使用。";
	L.UPON_COMPLETION = "前置條件";
	L.UPON_COMPLETION_DESC = "以上任務需要完成後才能夠完成以下的事情。";
	L.QUEST_CHAIN_REQ = "任務鏈要求";
	L.QUEST_CHAIN_REQ_DESC = "在能夠完成最終任務之前需要完成以下任務。";
	L.AH_SEARCH_NO_ITEMS_FOUND = "搜尋中找不到快取的物品。展開組並查看物品快取名稱，然後重試。使用此搜尋只能找到裝備綁定物品。";
	L.AH_SEARCH_BOE_ONLY = "使用此搜尋只能找到裝備綁定物品。";
	L.TSM_WARNING_1 = "執行此命令可能會通過將物品重新分配到 ";
	L.TSM_WARNING_2 = " 預設。\n\n我們建議你在使用此功能時使用不同的設定檔。\n\n你還想繼續嗎?";
	L.PRESET_UPDATE_SUCCESS = "更新預設值成功。";
	L.SHOPPING_OP_MISSING_1 = "預設缺少'購物'操作分配。";
	L.SHOPPING_OP_MISSING_2 = "輸入'/tsm operations'創建或者分配一個。";
	L.AUCTIONATOR_GROUPS = "基於群組的搜尋只支援使用 Auctionator。";
	L.TSM4_ERROR = "TSM4 尚未與 ATT 相容。如果你知道如何像我們以前在 TSM3 中那樣創建預設，請在 Discord 上告訴我！";
	L.QUEST_MAY_BE_REMOVED = "擷取任務資訊失敗。這個任務可能已從遊戲中移除。";

	L.FACTION_SPECIFIC_REP = "並非所有聲望都可以在單個角色上查看。例：聯盟玩家無法看到戰歌騎手，部落玩家無法查看銀翼哨兵。";
	L.MINUMUM_STANDING_WITH_FACTION = "最低陣營聲望等級 %s 和 %s。";
	L.MAXIMUM_STANDING_WITH_FACTION = "最高陣營聲望等級 %s 和 %s。";
	L.MIN_MAX_STANDING_WITH_FACTION = "陣營聲望等級在 %s 與 %s 之間，和 %s。";

	L.ADDED_WITH_PATCH = "隨更新加入";
	L.REMOVED_WITH_PATCH = "隨更新移除";
	L.ALIVE = "存活";
	L.SPAWNED = "已生成";
	L.OBJECT_TYPE = "目標類型";
	L.OBJECTIVES = "目標";
	L.QUEST_GIVERS = "任務給予者";
	L.DURING_WQ_ONLY = "可以在世界任務啟動時完成";
	L.COMPLETED_DAILY = "可以每天完成";
	L.COMPLETED_WEEKLY = "可以每周完成";
	L.COMPLETED_MONTHLY = "可以每月完成";
	L.COMPLETED_YEARLY = "可以每年完成";
	L.COMPLETED_MULTIPLE = "可以重複多次";
	L.CRITERIA_FOR = "準則";
	L.CURRENCY_FOR = "貨幣";
	L.LOOT_TABLE_CHANCE = "拾取列表機率";
	L.BEST_BONUS_ROLL_CHANCE = "最佳額外投骰機率";
	L.BEST_PERSONAL_LOOT_CHANCE = "最佳個人拾取機率";
	L.PREREQUISITE_QUESTS = "必須先完成一些前置任務才有可能獲得：";
	L.BREADCRUMBS = "無關緊要";
	L.BREADCRUMBS_WARNING = "完成此任務後可能無法獲得無關緊要的任務：";
	L.THIS_IS_BREADCRUMB = "這是個無關緊要的任務。";
	L.BREADCRUMB_PARTYSYNC = "如果先完成這些任務中的任何一個在沒有隊伍同步的情況下可能無法完成：";
	L.BREADCRUMB_PARTYSYNC_2 = "這可以通過與另一個沒有完成這些任務的角色進行隊伍同步獲得：";
	L.BREADCRUMB_PARTYSYNC_3 = "可能需要與能夠接受此任務的角色進行隊伍同步。";
	L.BREADCRUMB_PARTYSYNC_4 = "如果嘗試通過隊伍同步獲得此任務，請在 Discord 上告訴我們结果！";
	L.DISABLE_PARTYSYNC = "即使使用隊伍同步，這個角色也可能無法完成。如果您以其他方式管理，請在 Discord 上告訴我們！";
	L.UNAVAILABLE_WARNING_FORMAT = "如果滿足以下%d項，則變為不可用：";
	L.NO_ENTRIES = "沒有找到符合篩選條件的條目。";
	L.NO_ENTRIES_DESC = "如果認為這是錯誤的，請嘗試啟動'偵錯模式'。某個篩選條件可能會限制該組的可見性。";
	L.DEBUG_LOGIN = "登錄後獲得的獎勵。\n\n幹得好！你做到了！\n\n僅在偵錯模式下可見。";
	L.UNSORTED = "未分類";
	L.UNSORTED_DESC = "此資料尚未在 ATT 中獲得 " .. app.Version .. "。";
	L.UNSORTED_DESC_2 = "這裡的物品存在於遊戲中，玩家可能會獲得，但 ATT 還沒有找到準確位置";
	L.NEVER_IMPLEMENTED = "從未實裝";
	L.NEVER_IMPLEMENTED_DESC = "這裡的物品在技術上存在於遊戲內，但從未向玩家開放過";
	L.HIDDEN_QUEST_TRIGGERS = "隱藏任務觸發";
	L.HIDDEN_QUEST_TRIGGERS_DESC = "這些任務是依據特定的標準手動確定觸發的任務，主要用於遊戲內部的追蹤目的";
	L.OPEN_AUTOMATICALLY = "自動開啟";
	L.OPEN_AUTOMATICALLY_DESC = "如果你不是暴雪開發者，最好是取消勾選此項。這樣做是為了迫使暴雪修復或承認這些錯誤。";
	L.MINI_LIST = "小列表";
	L.MINI_LIST_DESC = "該列表包含了當前區域的相關資訊而這些資訊在 ATT 資料庫中找不到";
	L.UPDATE_LOCATION_NOW = "現在更新位置";
	L.UPDATE_LOCATION_NOW_DESC = "如果想強制更新當前的地圖資料請點擊這個按鈕！";
	L.PERSONAL_LOOT_DESC = "每位玩家都有獨立的機會拾取對自己職業有用的物品…\n\n…或者像戒指這樣的無用之物。\n\n如果是自己一個人的話，點擊兩次就會自動創建一個隊伍。";
	L.RAID_ASSISTANT = "團隊助手";
	L.RAID_ASSISTANT_DESC = "再也不要用錯誤的設定進入團隊了！檢查一切是否正常！";
	L.LOOT_SPEC_UNKNOWN = "拾取專精未知";
	L.LOOT_SPEC = "拾取專精";
	L.LOOT_SPEC_DESC = "在個人拾取地城，副本和戶外事件中，此設定將決定哪些物品可供使用。\n\n點擊此行可立即更改！";
	L.DUNGEON_DIFF = "地城難度";
	L.DUNGEON_DIFF_DESC = "地城的難度設定。\n\n點擊此行可立即更改！";
	L.RAID_DIFF = "團隊難度";
	L.RAID_DIFF_DESC = "團隊難度設定。\n\n點擊此行可立即更改！";
	L.LEGACY_RAID_DIFF = "經典團隊難度";
	L.LEGACY_RAID_DIFF_DESC = "經典團隊難度設定。\n\n點擊此行可立即更改！";
	L.TELEPORT_TO_FROM_DUNGEON = "傳送至/出地城";
	L.TELEPORT_TO_FROM_DUNGEON_DESC = "點擊此處傳送到當前地城或從當前地城傳送出去。\n\n潘達利亞之謎可以這種方式快速傳送到當前副本之外。";
	L.RESET_INSTANCES = "重置所有副本";
	L.RESET_INSTANCES_DESC = "點擊此處重置所有副本。\n\n"..ALT_KEY_TEXT.."點擊可在離開地城時自動重置副本。\n\n警告：小心使用！";
	L.DELIST_GROUP = "群組除名";
	L.DELIST_GROUP_DESC = "點擊此處將群組除名。如果您獨自一人，它會輕鬆地離開該群組，而不會將您從您所在的任何實例中移出。 ";
	L.LEAVE_GROUP = "離開隊伍";
	L.LEAVE_GROUP_DESC = "點擊此處離開隊伍。在大多數情況下，這也會在60秒左右後將你送到最近的墓地。\n\n注意：只有當你在一個隊伍中或者遊戲認為你在一個隊伍中時才有效。";
	L.LOOT_SPEC_DESC_2 = "在個人拾取地城，副本和戶外事件中，此設定將決定哪些物品可供使用。\n\n點擊此行可返回團隊助手。";
	L.CURRENT_SPEC = "當前專精";
	L.CURRENT_SPEC_DESC = "如果你改變你的專精，你的戰利品就會隨之改變。";
	L.DUNGEON_DIFF_DESC_2 = "此設定允許自訂地城的難度。\n\n點擊此行可返回團隊助手。";
	L.CLICK_TO_CHANGE = "點擊立即更改。（如果可用）";
	L.RAID_DIFF_DESC_2 = "此設定允許自訂團隊難度。\n\n點擊此行可返回團隊助手。";
	L.LEGACY_RAID_DIFF_DESC_2 = "此設定允許自訂經典拾取團隊難度。（圍攻奧格瑪之前的）\n\n點擊此行可返回團隊助手。";
	L.REROLL = "重新刷新";
	L.REROLL_2 = "重新刷新：";
	L.REROLL_DESC = "點擊此按鈕可使用活動篩選器重新刷新。";
	L.APPLY_SEARCH_FILTER = "套用搜尋篩選";
	L.APPLY_SEARCH_FILTER_DESC = "請選擇一個搜尋篩選選項。";
	L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "點擊此按鈕搜尋…一切。";
	L.ACHIEVEMENT_DESC = "點擊此按鈕可依據缺少的內容選擇隨機成就。";
	L.ITEM_DESC = "點擊此按鈕可依據缺少的內容選擇隨機物品。";
	L.INSTANCE_DESC = "點擊此按鈕可依據缺少的內容選擇隨機副本。";
	L.DUNGEON_DESC = "點擊此按鈕可依據缺少的內容選擇隨機地城。";
	L.RAID_DESC = "點擊此按鈕可依據缺少的內容選擇隨機團隊。";
	L.MOUNT_DESC = "點擊此按鈕可依據缺少的內容選擇隨機坐騎。";
	L.PET_DESC = "點擊此按鈕可依據缺少的內容選擇隨機寵物。";
	L.QUEST_DESC = "點擊此按鈕可依據缺少的內容選擇隨機任務。";
	L.TOY_DESC = "點擊此按鈕可依據缺少的內容選擇隨機玩具。";
	L.ZONE_DESC = "點擊此按鈕可依據缺少的內容選擇隨機地區。";
	L.GO_GO_RANDOM = "隨機 - 去看看！";
	L.GO_GO_RANDOM_DESC = "此視窗允許隨機選擇要獲得的地點或物品。去吧！";
	L.CHANGE_SEARCH_FILTER = "更改搜尋篩選";
	L.CHANGE_SEARCH_FILTER_DESC = "點擊此按鈕可更改搜尋篩選。";
	L.NOTHING_TO_SELECT_FROM = "沒有什麼可以隨意選擇的。如果在“設定”中啟用了“臨時更新”，則必須在使用此視窗之前更新主列表（/att）。";
	L.NO_SEARCH_METHOD = "未指定搜尋方法。";
	L.PROFESSION_LIST = "專業技能列表";
	L.PROFESSION_LIST_DESC = "打開你的專業技能來快取它們。";
	L.CACHED_RECIPES_1 = "快取 ";
	L.CACHED_RECIPES_2 = " 已知配方！";
	L.WORLD_QUESTS_DESC = "這些都是世界任務和其他有時間限制的事物，目前可以在某個地方獲得。去得到他們！";
	L.QUESTS_DESC = "按數字升序顯示遊戲中所有可能的任務 ID。";
	L.UPDATE_WORLD_QUESTS = "立即更新世界任務";
	L.UPDATE_WORLD_QUESTS_DESC = "有時世界任務 API 很慢或無法返回新資料。如果希望在不更改區域的情況下強制刷新資料，請立即點擊此按鈕！\n\n"..ALT_KEY_TEXT.."點擊以包括當前可用的事物，可能不受時間限制";
	L.CLEAR_WORLD_QUESTS = "清除世界任務";
	L.CLEAR_WORLD_QUESTS_DESC = "點擊清除世界任務框架內的當前資訊";
	L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "所有可以用來獲得成就的物品都會顯示在這裡。";
	L.ALL_THE_APPEARANCES_DESC = "所有你需要的外觀都在這裡顯示。";
	L.ALL_THE_MOUNTS_DESC = "所有你尚未收藏的坐騎都會顯示在這裡。";
	L.ALL_THE_BATTLEPETS_DESC = "所有你尚未收藏的寵物都會顯示在這裡。";
	L.ALL_THE_QUESTS_DESC = "所有有目標或起始物品可以在拍賣行出售的任務都會在這裡顯示。";
	L.ALL_THE_RECIPES_DESC = "所有你尚未收藏的食譜都會顯示在這裡。";
	L.ALL_THE_ILLUSIONS_DESC = "這裡展示了附魔幻象、玩具等可以獲得收藏的物品。";
	L.ALL_THE_REAGENTS_DESC = "所有你的戰隊上的專業製作的可以使用的物品。";
	L.AH_SCAN_SUCCESSFUL_1 = "：成功掃描 ";
	L.AH_SCAN_SUCCESSFUL_2 = " 物品。";
	L.REAGENT_CACHE_OUT_OF_DATE = "快取已過期，打開專業技能介面後會重新快取！";
	L.ARTIFACT_CACHE_OUT_OF_DATE = "考古學快取已過時/不準確，將在登錄每個角色時重新快取！";
	L.QUEST_LOOP = "可能剛剛從無限源任務循環中爆發出來。";
	L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "任務 '%s' %s 將阻止收藏無關緊要的任務 '%s' %s";
	L.QUEST_OBJECTIVE_INVALID = "無效的任務目標";
	L.REFRESHING_COLLECTION = "刷新收藏…";
	L.DONE_REFRESHING = "刷新收藏完成。";
	L.ADHOC_UNIQUE_COLLECTED_INFO = "此物品是唯一收藏但由於缺少暴雪 API 資訊而未能檢測到。\n\n將在下次強制刷新後修復。";
	L.AVAILABILITY = "可用性";
	L.REQUIRES_PVP = "|CFF00FFDE需要 PvP 活動或貨幣|r";
	L.REQUIRES_PETBATTLES = "|CFF00FFDE需要寵物對戰|r";
	L.REPORT_INACCURATE_QUEST = "錯誤的任務資訊！（點擊回報）";
	L.NESTED_QUEST_REQUIREMENTS = "多重任務需要";
	L.MAIN_LIST_REQUIRES_REFRESH = "[打開主列表更新進度 ]";
	L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207該組及其內容不參與此視窗的進度，因為它來自另一個位置！|r";
	L.CURRENCY_NEEDED_TO_BUY = "需要購買物品未收藏的事物";
	L.LOCK_CRITERIA_LEVEL_LABEL = "玩家等級";
	L.LOCK_CRITERIA_QUEST_LABEL = "已完成任務";
	L.LOCK_CRITERIA_SPELL_LABEL = "已學法術/坐騎/配方";
	L.LOCK_CRITERIA_FACTION_LABEL = "陣營聲望";
	L.LOCK_CRITERIA_FACTION_FORMAT = "%s 和 %s（當前：%s）";
	L.FORCE_REFRESH_REQUIRED = "這可能需要強制刷新（"..SHIFT_KEY_TEXT.."點擊）正確已收集。";
	L.FUTURE_UNOBTAINABLE = "未來無法獲得！";
	L.FUTURE_UNOBTAINABLE_TOOLTIP = "這是已經確認或極有可能在已知的未來更新中無法獲得的內容。";
	L.NEW_WITH_PATCH = "最新加入內容";
	L.NEW_WITH_PATCH_TOOLTIP = "這會顯示遊戲最新更新中加入的所有內容。";
	L.TRADING_POST = "貿易站";

	-- Item Filter Window
		L.ITEM_FILTER_TEXT = "物品篩選";
		L.ITEM_FILTER_DESCRIPTION = "你可以通過使用物品篩選來搜尋 ATT 資料庫。";
		L.ITEM_FILTER_BUTTON_TEXT = "設定物品篩選";
		L.ITEM_FILTER_BUTTON_DESCRIPTION = "點擊這個來改變你想在 ATT 內搜尋的物品篩選。";
		L.ITEM_FILTER_POPUP_TEXT = "你想搜尋哪個物品篩選？";

-- Instructional Text
	L.MINIMAP_MOUSEOVER_TEXT = "右鍵改變設定。\n左鍵打開主列表。\n"..CTRL_KEY_TEXT.."左鍵打開小列表。\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏。";
	L.TOP_ROW_INSTRUCTIONS = "|cff3399ff按住左鍵並拖拽移動\n右鍵打開設定\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏\n"..CTRL_KEY_TEXT.."左鍵展開/折疊列表\n"..SHIFT_KEY_TEXT.."點擊右鍵排序組/彈出列表|r";
	L.OTHER_ROW_INSTRUCTIONS = "|cff3399ff左鍵展開/折疊\n右鍵彈出小列表\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏\n"..CTRL_KEY_TEXT.."左鍵展開/折疊列表\n"..SHIFT_KEY_TEXT.."點擊右鍵排序組/彈出列表\n"..ALT_KEY_TEXT.."右鍵設定路線點|r";
	L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ff左鍵按住並拖拽移動\n右鍵打開設定\n"..SHIFT_KEY_TEXT.."左鍵搜尋拍賣行|r";
	L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ff左鍵展開/折疊\n右鍵彈出小列表\n"..SHIFT_KEY_TEXT.."左鍵搜尋拍賣行|r";
	L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000如果你掉落了此項（除回收箱外的\n任何地方），請去 Discord 告訴我們從哪掉的！|r";
	L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000提供越多資訊越好，謝謝！|r";
	L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.."點擊鎖定視窗";
	L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.."點擊解鎖視窗";
	L.QUEST_ROW_INSTRUCTIONS = "右擊查看任何任務鏈要求";
	L.SYM_ROW_INFORMATION = "點擊右鍵以查看來自其他位置的其它內容";
	L.QUEST_ONCE_PER_ACCOUNT = "帳號一次性任務";
	L.COMPLETED_BY = "完成：%s";
	L.OWNED_BY = "擁有者 %s";

-- Social Module
	L.NEW_VERSION_AVAILABLE = "%s 已有更新的版本。請更新插件 %s。";
	L.NEW_VERSION_FLAVORS = {
		"要不我們給希爾瓦娜斯另一把火炬",
		"雅立史卓莎很擔心你",
		"無敵下次|cffffaaaa|肯定|r會掉落",
		"這只是一個挫折",
		"是時候降低你的百分比了",
		"一隻海龜成功入水",
		"艾澤拉斯的勇士",
	};
	L.SOCIAL_PROGRESS = "社交進度";

-- Settings.lua
	L.AFTER_REFRESH = "刷新後";

	-- General tab
		-- Mode Title
			L.MODE = "模式";
			L.TITLE_COMPLETIONIST = "完美主義者 ";
			L.TITLE_UNIQUE_APPEARANCE = "獨特外觀 ";
			L.TITLE_DEBUG = app.ccColors.Red .. "偵錯|R ";
			L.TITLE_ACCOUNT = app.ccColors.Account.."帳號|R ";
			L.TITLE_MAIN_ONLY = " （僅主要）";
			L.TITLE_NONE_THINGS = "一無所有 ";
			L.TITLE_ONLY = " 僅 ";
			L.TITLE_INSANE = app.ccColors.Insane.."瘋狂|R ";
			L.TITLE_SOME_THINGS = "隨隨便便 ";
			L.TITLE_LEVEL = "等級 ";
			L.TITLE_SOLO = "單人 ";
			L._BETA_LABEL = " |cff4AA7FF[測試]|R";

		L.MINIMAP_SLIDER = "小地圖按鈕尺寸";
		L.MINIMAP_SLIDER_TOOLTIP = '使用此選項可自訂小地圖按鈕的大小。\n\n預設：36';
		L.EXTRA_THINGS_LABEL = "其他資源";
		L.MINIMAP_BUTTON_CHECKBOX = "顯示小地圖按鈕";
		L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "如果要查看小地圖按鈕，請啟用此選項。使用此按鈕可以快速拜訪主列表，顯示總體收藏進度，並通過點擊右鍵拜訪設定菜單。\n\n有些人不喜歡混亂。或者，你可以通過在聊天框中鍵入'/att'來拜訪主列表。從那里，你可以點擊右鍵標題以進入設定菜單。";
		L.WORLDMAP_BUTTON_CHECKBOX = "顯示世界地圖按鈕";
		L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP = "如果要在世界地圖上看到 ATT 按鈕，請啟用此選項。使用此按鈕可以快速拜訪當前顯示區域的迷你列表。通常情況下，你需要親自前往該區域才能看到迷你列表上的內容，你可以通過在聊天框中鍵入'/att mini'來拜訪迷你列表。";
		L.CLICK_TO_CREATE_FORMAT = "點擊創建 %s";
		L.KEYBINDINGS_TEXT = "可以在遊戲選項中設定 ATT 的按鍵綁定。";

	-- Interface tab
		L.DESCRIPTIONS = "描述";
		L.LORE = "傳言";
		L.CLASSES = "職業";
		L.ADDITIONAL_LABEL = "附加資訊";

	-- Features tab
		L.MINIMAP_LABEL = "小地圖按鈕";
		L.MODULES_LABEL = "模組和小列表";
		L.SKIP_CUTSCENES_CHECKBOX = "自動跳過過場動畫";
		L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "如果想讓 ATT 代替你自動跳過所有過場動畫請啟用此選項。";
		L.AUTO_BOUNTY_CHECKBOX = "自動打開獎勵列表";
		L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "如果想查看具有傑出收藏獎勵的物品，請啟用此選項。如果設法抓住顯示在此列表中的物品之一，可以賺到一筆不錯的金幣。\n\n快捷命令：/attbounty";
		L.AUTO_MAIN_LIST_CHECKBOX = "自動打開主列表";
		L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "如果你想在登錄時自動打開主列表請啟用此選項。\n\n你也可以將此設定綁定到一個鍵上：\n\n按鍵設定 -> 插件 -> ALL THE THINGS -> 打開/關閉主列表\n\n快捷命令：/att";
		L.AUTO_MINI_LIST_CHECKBOX = "自動打開小列表";
		L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "如果你想查看在當前區域內可以收藏的所有資訊請啟用此選項。當改變區域時列表將自動切換。有些人不喜歡這個功能，但是當你單刷的時候這個功能是非常有用的。\n\n你也可以將此設定綁定到一個按鍵上。\n\n按鍵設定 -> 插件 -> ALL THE THINGS -> 打開/關閉小列表\n\n快捷命令：/att mini";
		L.AUTO_PROF_LIST_CHECKBOX = "自動打開專業列表";
		L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "如果你希望 ATT 在你打開專業技能時打開並刷新專業技能列表請啟用此選項。由於暴雪 API 限制，只有在打開專業技能介面時，插件才能與專業技能資料進行互動。當你換成其他專業技能時列表會自動切換。\n\n我們不建議停用此選項，因為它可能會阻止配方的正確追蹤。\n\n你也可以將此設定綁定到一個按鍵上。（僅在打開專業技能時工作）\n\n按鍵設定 -> 插件 -> ALL THE THINGS -> 打開/關閉專業技能列表";
		L.AUTO_RAID_ASSISTANT_CHECKBOX = "自動打開團隊助手";
		L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "如果你想看到一個名為'團隊助手'的替代組/隊伍/團隊設定管理器請啟用此選項。每當隊伍設定改變時列表會自動更新。\n\n你也可以將此設定綁定到一個按鍵上。\n\n按鍵設定 -> 插件 -> ALL THE THINGS -> 打開/關閉團隊助手\n\n快捷命令：/attra";
		L.AUTO_WQ_LIST_CHECKBOX = "自動打開世界任務列表";
		L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "如果你想讓'世界任務'列表自動出現請啟用此選項。每當你切換區域時列表將自動更新。\n\n你也可以將此設定綁定到一個按鍵上。\n\n按鍵設定 -> 插件 -> ALL THE THINGS -> 打開/關閉世界任務列表\n\n快捷命令：/attwq";
		L.AUCTION_TAB_CHECKBOX = "顯示拍賣行模組標籤";
		L.AUCTION_TAB_CHECKBOX_TOOLTIP = "如果你想查看 ATT 提供的拍賣行模組請啟用此選項。\n\n一些插件很調皮會大量修改這個框架。ATT 並不總是和那些玩具玩得很好。";
		L.ICON_LEGEND_LABEL = "圖標圖例";
		L.ICON_LEGEND_TEXT = app.ccColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t " .. "無法獲得" .. "\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "僅在滿足先決條件的情況下獲得" .. "\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. AVAILABLE .."季節性內容" .. "\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. UNAVAILABLE .. "季節性內容" .. "\n|T374225:0|t " .. "當前角色不可用";	--TODO: check (un)available seasonal content
		L.CHAT_COMMANDS_LABEL = "聊天命令";
		L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFF或|R /things |cffFFFFFF或|R /allthethings\n|cffFFFFFF打開主列表。\n\n|R/att mini |cffFFFFFF或|R /attmini\n|cffFFFFFF打開小列表。\n\n|R/att bounty\n|cffFFFFFF打開被出錯或未確認的物品列表。\n\n|R/att ra |cffFFFFFF或|R /attra\n|cffFFFFFF打開團隊助手。\n\n|R/att wq |cffFFFFFF或|R /attwq\n|cffFFFFFF打開世界任務列表。\n\n|R/att item:1234 |cffFFFFFF或|R /att [物品連接]\n|cffFFFFFF打開一個共享外觀的視窗。也適用於其他事物，例如|R quest:1234|cffFFFFFF，|Rnpcid:1234|cffFFFFFF，|Rmapid:1234|cffFFFFFF 或 |Rrecipeid:1234|cffFFFFFF。\n\n|R/att rwp\n|cffFFFFFF顯示所有未來用更新刪除的東西。\n\n|R/att random |cffFFFFFF或|R /attrandom |cffFFFFFF或|R /attran\n|cffFFFFFF打開隨機列表。\n\n|R/att unsorted\n|cffFFFFFF打開未知來源物品列表。最好在偵錯模式下打開。\n\n|R/rl\n|cffFFFFFF重載魔獸介面。|R";

	-- Sync Window
		L.ACCOUNT_MANAGEMENT = "帳號管理";
		L.ACCOUNT_MANAGEMENT_TOOLTIP = "此列表顯示了與同步帳號資料相關的所有功能。";
		L.ADD_LINKED_CHARACTER_ACCOUNT = "加入關聯角色/帳號";
		L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "單擊此處將角色或帳號連接到您的帳號。";
		L.ADD_LINKED_POPUP = "請輸入要連接的角色或暴雪戰隊帳號的名稱。";
		L.SYNC_CHARACTERS_TOOLTIP = "這會顯示您帳號中的所有角色。";
		L.NO_CHARACTERS_FOUND = "未找到角色。";
		L.LINKED_ACCOUNTS = "已連接帳號";
		L.LINKED_ACCOUNTS_TOOLTIP = "這將顯示迄今為止定義的所有關聯帳號。";
		L.NO_LINKED_ACCOUNTS = "未找到連接帳號。";
		L.LINKED_ACCOUNT_TOOLTIP = "此角色的帳號將在登錄時自動同步。為了獲得最佳遊戲效果，您應該將銀行角色而不是您的主要角色列入白名單，以免在同步帳號資料時影響您玩的角色功能。";
		L.DELETE_LINKED_CHARACTER = "右擊刪除此連接角色";
		L.DELETE_LINKED_ACCOUNT = "右擊刪除此連接帳號";
		L.DELETE_CHARACTER = "右擊刪除此角色";
		L.CONFIRM_DELETE = "\n \n確定刪除此項？";

	-- Binding Localizations
		L.TOGGLE_ACCOUNT_MODE = "切換帳號模式";
		L.TOGGLE_COMPLETIONIST_MODE = "切換完美主義者模式";
		L.TOGGLE_DEBUG_MODE = "切換偵錯模式";
		L.TOGGLE_FACTION_MODE = "切換陣營模式";
		L.TOGGLE_COMPLETEDTHINGS = "隱藏/顯示已完成組和項目";
		L.TOGGLE_COMPLETEDGROUPS = "隱藏/顯示已完成組";
		L.TOGGLE_COLLECTEDTHINGS = "隱藏/顯示已收藏項目";
		L.TOGGLE_BOEITEMS = "切換裝備綁定/拾取綁定物品";
		L.TOGGLE_SOURCETEXT = "隱藏/顯示來源地點";
		L.MODULES = "模組";
		L.TOGGLE_MAINLIST = "打開/關閉主列表";
		L.TOGGLE_MINILIST = "打開/關閉小列表";
		L.TOGGLE_PROFESSION_LIST = "打開/關閉專業技能列表";
		L.TOGGLE_WORLD_QUESTS_LIST = "打開/關閉世界任務列表";
		L.TOGGLE_RAID_ASSISTANT = "打開/關閉團隊助手";
		L.TOGGLE_RANDOM = "打開/關閉隨機列表";
		L.REROLL_RANDOM = "重新生成隨機列表";

	-- Event Text
		L.ITEM_ID_ADDED = "%s (%d) 已加入收藏。";
		L.ITEM_ID_ADDED_RANK = "%s (%d) [等級%d] 已加入收藏。";
		L.ITEM_ID_ADDED_MISSING = "%s (%d) 已加入收藏。在資料庫中未找到，請向作者提交回報！";
		L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] 已加入收藏。";
		L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] 已加入收藏。在資料庫中未找到，請向作者提交回報！";
		L.ITEM_ID_REMOVED = "%s (%d) 已從收藏中移除。";
		L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] 已從收藏中移除。";

	-- Tooltip Text
		L.DROP_RATE = "掉落率";
		L.QUEST_GIVER = "任務給予者";
		L.EVENT_SCHEDULE = "事件時程表";
		L.EVENT_ACTIVE = "啟動:";
		L.EVENT_START = "開始:";
		L.EVENT_END = "結束:";
		L.EVENT_WHERE = "地點:";
		L.REQUIRES_EVENT = "需要事件";
		L.LOCKOUT = "鎖定";
		L.RESETS = "重置";
		L.SHARED = "共享";
		L.SPLIT = "按難度";
		L.REQUIRES_LEVEL = "需要等級";
		L.SECRETS_HEADER = "解密";
		L.LIMITED_QUANTITY = "此物品有數量限制，在商人處並非總是可見。";
		L.SOURCE_ID_MISSING = "請在 ATT Discord 的 #retail-errors 中回報此物品及其獲得地點！";
		--TODO: recheck these patch strings
		L.ADDED_WITH_PATCH_FORMAT = "更新 %s 中加入";
		L.WAS_ADDED_WITH_PATCH_FORMAT = "最新更新 %s 中加入";
		L.ADDED_BACK_WITH_PATCH_FORMAT = "更新 %s 中加入回歸";
		L.WAS_ADDED_BACK_WITH_PATCH_FORMAT = "最新更新 %s 中加入回歸";
		L.REMOVED_WITH_PATCH_FORMAT = "更新 %s 中被刪除";

	-- Filter Text
		L.ARTIFACT_ID = "神器 ID";
		L.AZERITE_ESSENCE_ID = "艾澤拉斯精華 ID";
		L.CREATURE_ID = "生物 ID";
		L.CREATURES_COUNT = "[%s 生物]";
		L.CREATURES_LIST = "生物列表";
		L.CURRENCY_ID = "貨幣 ID";
		L.DIFFICULTY_ID = "難度 ID";
		L.ENCOUNTER_ID = "首領戰鬥 ID";
		L.EXPANSION_ID = "資料片 ID";
		L.FILTER_ID = "濾鏡 ID";
		L.FOLLOWER_ID = "追隨者 ID";
		L.HEADER_ID = "標頭 ID";
		L.ILLUSION_ID = "幻象 ID";
		L.INSTANCE_ID = "副本 ID";
		L.ITEM_ID = "物品 ID";
		L.FACTION_ID = "陣營 ID";
		L.FLIGHT_PATH_ID = "飛行路線 ID";
		L.MAP_ID = "地圖 ID";
		L.MOUNT_ID = "坐騎 ID";
		L.MUSIC_ROLL_ID = "樂譜 ID";
		L.NPC_ID = "NPC ID";
		L.OBJECT_ID = "道具 ID";
		L.QUEST_ID = "任務 ID";
		L.SET_ID = "套裝 ID";
		L.SOURCE_ID = "來源 ID";
		L.SPECIES_ID = "品種 ID";
		L.SPELL_ID = "法術 ID";
		L.TITLE_ID = "頭銜 ID";
		L.TOY_ID = "玩具 ID";
		L.VISUAL_ID = "外觀 ID";
		L.ITEM_LEVEL = "物品等級";

	-- Artifact Relic Completion
		L.ARTIFACT_RELIC_CACHE = "打開所有神器武器的用戶介面以快取這是否是升級。這對於確定您是否可以將此物品交易給小伙伴很有用。 ";
		L.ARTIFACT_RELIC_COMPLETION = "神器聖物完成度";
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
		L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ff貨幣|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
	-- Events
	["資料片前夕"] = "前夕",
	-- Legion
	["安托洛斯，燃燒王座"] = "安托洛斯",		-- ["Antorus, the Burning Throne"] = "Antorus"
	-- BfA
	["奈奧羅薩，甦醒之城"] = "奈奧羅薩",		-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	-- SL
	["『帷幕市集』塔札維許"] = "塔札維許",		-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	-- DF
	["『朧影實驗場』亞貝魯斯"] = "亞貝魯斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
	["『夢境希望』埃達希爾"] = "埃達希爾",		-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
	-- TWW
	["『回音之城』厄拉卡拉"] = "厄拉卡拉",		-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
})
do a[key] = value; end

if app.IsRetail then
	local a = L.HEADER_NAMES;
	for key,value in pairs({
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5200] = "基礎外觀",										-- Base Appearance
			[-5201] = "職業大廳戰役",									-- Class Hall Campaign
			[-5202] = "能量的平衡",										-- Balance of Power
			[-5203] = "榮譽獎勵",										-- Prestige Rewards
			[-5204] = "挑戰外觀",										-- Challenge Appearance
			[-5205] = "隱藏外觀",										-- Hidden Appearance
	})
	do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({
	-- Common Header
		SKIP_AUTO_REFRESH = "不自動刷新！";
		SKIP_AUTO_REFRESH_TOOLTIP = "預設情況下(未勾選)，任何可能影響可見資料的設定變化都會導致自動刷新。\n\n通過啟用該選項設定的變化將不會生效，直到玩家 "..SHIFT_KEY_TEXT.."點擊 ATT 視窗執行全部刷新。";

	-- About Page
		ABOUT_PAGE = "關於";
		ABOUT_TOP = " |CFFFFFFFF是一個收藏追蹤插件，可以向您展示在遊戲中獲得所有內容的位置和方式！我們的 Discord 上有大量用戶社群（底部連結），您可以在其中提問、提交建議以及回報錯誤或丟失的物品。如果發現一些收藏品或未記錄的任務，可以在 Discord 上告訴我們，或者對於更精通技術的人，我們有一個您可以直接貢獻的 Git。\n\n雖然我們努力爭取完成，但每次更新都會加入很多東西，所以如果我們遺漏了什麼，請理解我們是一個小團隊，試圖跟上變化並自己收藏東西。:D\n\n在我直播時隨時問我問題，我會盡力回答，即使它與 ATT（一般魔獸插件程式也是如此）沒有直接關係。\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "活躍貢獻者：|CFFFFFFFF（排名不分先後）\n%s！\n|r名人堂：|CFFFFFFFF（排名不分先後）\n%s\n\n特別鳴謝 AmiYuy（CanIMogIt）和 Caerdon（Caerdon Wardrobe）。絕對應該下載他們的插件，以獲得背包中物品的收藏圖標！ %s %s %s\n\n如需線上收藏比較，請拜訪 Shoogen 的 DataForAzeroth.com 和 Freddie 的 WoWthing.org！|r";	--TODO: now in alphabetical order
		CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C 複製到剪貼簿。";
		CURSEFORGE_BUTTON_TOOLTIP = "單擊按鈕複製 URL 到 Curse 的 ALL THE THINGS 插件頁面。\n\n您也可以將此連接發送給您的朋友，讓他們也毀掉自己的生活！他們最終會原諒你……也許吧。";
		DISCORD_BUTTON_TOOLTIP = "點擊按鈕複製 URL 到All The Things Discord 伺服器。\n\n可以與其他收藏家分享進步/挫折！";
		MERCH_BUTTON_LABEL = "商店";
		MERCH_BUTTON_TOOLTIP = "點擊按鈕複製 URL 以進入 All The Things 商店。\n\n在這裡您可以在經濟上支援此插件並獲得一些很酷的商品作為回報！ ";
		PATREON_BUTTON_TOOLTIP = "點擊按鈕複製 URL 以進入 All The Things Patreon 頁面。\n\n在這裡您可以看到如何在經濟上支援此插件！";
		TWITCH_BUTTON_TOOLTIP = "點擊按鈕複製 URL 到我的 Twitch 頻道。\n\n可以在我直播的時候問問題，我會盡力回答！";
		WAGO_BUTTON_TOOLTIP = "點擊按鈕複製 URL 到 Wago.io 的 ALL THE THINGS 插件頁面。\n\n您也可以將此連接發送給您的朋友，讓他們也毀掉自己的生活！他們最終會原諒你……也許吧。";

	-- General Page
		DEBUG_MODE = app.ccColors.Red.."偵錯模式|r（顯示所有）";
		DEBUG_MODE_TOOLTIP = "就字面意思…遊戲中的所有事情。時間。點滴。是的，所有的一切。即使是不可收藏的事物，如袋子、消耗品、試劑等也會出現在列表中。（甚至你自己！不，是真的。看。）\n\n這僅用於偵錯目的。不用於完成追蹤。\n\n此模式將忽略所有篩選，包括無法獲得的。";
		ACCOUNT_MODE = app.ccColors.Account.."帳號模式";
		ACCOUNT_MODE_TOOLTIP = "如果要追蹤所有角色的所有內容，而不考慮職業和種族篩選，請啟用此設定。\n\n無法獲得篩選仍然適用。";
		FACTION_MODE = "僅當前陣營";
		FACTION_MODE_TOOLTIP = "如果你想只看到你當前陣營的種族和職業的戰隊模式資料，請開啟此設定。";
		LOOT_MODE = "拾取模式";
		LOOT_MODE_TOOLTIP = "啟用此選項可以顯示來自所有來源的戰利品。\n\n您可以依據“篩選器”標籤更改顯示的戰利品類型。";
		MODE_EXPLAIN_LABEL = "|cffFFFFFF您收藏的內容總結在這裡。啟用所有 "..app.ccColors.Insane.."彩色選項|cffFFFFFF 解鎖 "..app.ccColors.Insane.."瘋狂模式|cffFFFFFF。";
		COMPLETIONIST_MODE = "+來源";
		COMPLETIONIST_MODE_TOOLTIP = "啟用該模式，只有當特定物品已被解鎖為給定外觀時才將物品視為已收藏。\n\n這意味著你需要收藏每一個共享外觀的物品。\n\n注意：預設情況下一旦你收藏了共享來源，遊戲就會停止告訴你未收藏的物品，這將確保未收藏的物品會被追蹤。";
		MAIN_ONLY = "僅主要";
		MAIN_ONLY_TOOLTIP = "如果你還想讓 ATT *假裝*你贏得了所有未被其他種族或職業鎖定的共享外觀，請啟用此設定。\n\n例如，如果你從冰冠城塞收藏了一個僅限獵人使用的物品，並且在沒有職業/種族限制的情況下，有一個來自副本的共享外觀，那麼 ATT 將*假裝*你也獲得了該外觀來源。\n\n注意：以這種方式解鎖時，切換到其他種族/職業將錯誤地回報你已經獲得了尚未為新角色收藏的外觀來源。";
		ONLY_RWP = "僅‘隨更新移除’";
		ONLY_RWP_TOOLTIP = "啟用此選項僅追蹤未來會從遊戲中刪除的幻化。只有標記為“隨更新移除”的資料的物品才會計入此資料。如果您發現未標記但應標記的物品，請告訴我！\n\n您可以依據“篩選器”選項卡更改顯示的戰利品類型。";
		ONLY_NOT_TRASH = "排除垃圾物品";
		ONLY_NOT_TRASH_TOOLTIP = "啟用此選項可忽略白色/灰色物品。暴雪尚未在經典懷舊服中提供 API。";
		UNOFFICIAL_SUPPORT_TOOLTIP = "注意：目前，WoW 的 API 不提供官方支援，但 ATT 可以追蹤物品或任務完成情況，以使其在插件中發揮作用。";

	-- General Content
		GENERAL_CONTENT = "通用內容";
		SHOW_INCOMPLETE_THINGS_CHECKBOX = "顯示所有可追蹤事物";
		SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "如果想看到可以在遊戲中追蹤的物品、道具、NPC 等但不一定要被認為是'可收藏的'，請啟用此選項。\n\n如果你還沒有獲得博學者成就可以用這個來幫助你獲得它。\n\n注意：開啟此設定後，稀有刷新和事件也會出現在列表中。";
		SHOW_COMPLETED_GROUPS_CHECKBOX = "顯示完成的群組";
		SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "如果想在標題中看到已完成的組和完成百分比，請啟用此選項。如果一個組沒有與你職業相關的內容，這個設定也會讓這些組出現在列表中。\n\n我們建議你關閉此設定，因為它將節省小列表中的空間，並允許你快速查看區域中缺少的內容。";
		SHOW_COLLECTED_THINGS_CHECKBOX = "顯示已收藏事物";
		SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "啟用此選項可以看到已經收藏事物。\n\n建議關閉此設定因為它可以節省小列表中的空間並允許快速查看在該區域遺漏的內容。";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "等級限制";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "如果只想查看當前級別角色可用的事物，請啟用此設定。\n\n注意：這對新戰隊特別有用。";
		SHOW_BOE_CHECKBOX = "裝備綁定/拾取綁定物品";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "無技能等級限制";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "如果您只想查看遊戲環境中可用的最高技能級別可用的內容，請停用此設定。";
		SHOW_BOE_CHECKBOX_TOOLTIP = "如果要隱藏裝備綁定/拾取綁定物品，請啟用此設定。\n\n當你嘗試為角色完成經典舊世並且不想專門用於可以在小號或拍賣行上放置的物品時，此設定非常有用。\n\n即：不要因為毀滅之錘而擾亂你的思緒。";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "忽略裝備綁定/拾取綁定的篩選";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "如果要忽略裝備綁定/拾取綁定物品的裝備、武器、種族、等級或職業要求，請啟用此設定。\n\n如果你正試圖通過拍賣行掃描收藏你的物品，此模式可能對你有用。";
		SHOW_ALL_SEASONAL = "所有季節性事件";
		SHOW_ALL_SEASONAL_TOOLTIP = "啟用此設定可顯示所有季節性事件，而不是僅顯示當前活動的季節性事件。\n\n注意：季節性活動將提前7天自動顯示為活動狀態。";
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "如果您想在遊戲中顯示需要寵物對戰的內容，請啟用此設定。";
		SHOW_PVP_CHECKBOX_TOOLTIP = "如果你想隱藏任何'可能'需要在遊戲中進行 PvP 互動的內容，請啟用此設定。";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "所有可學的任務獎勵";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "停用此選項可隱藏任務中列為“在個人拾取中不可用”的物品。\n\n這對於追蹤您的職業無法在世界掉落中使用的物品很有用，但仍會將任務標記為已完成。\n\n某些物品可能被錯誤標記：此設定將隱藏您可以獲得的物品！";

		-- Collectible Things
		ACC_WIDE_DEFAULT = "已追蹤 ".. app.ccColors.Account .. "帳號通用|R 預設。";
		TRACK_ACC_WIDE = app.ccColors.Account .. "追蹤 帳號通用|R";
		ACCOUNT_THINGS_LABEL = "帳號通用事物";
		GENERAL_THINGS_LABEL = "通用事物";
		STRANGER_THINGS_LABEL = "陌生事物";

		--TODO: ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤成就。";
		APPEARANCES_CHECKBOX = "外觀";
		APPEARANCES_CHECKBOX_TOOLTIP = "啟用此選項可追蹤外觀獲得。\n\n注意: 停用此選項也會停用所有採集邏輯，你可以使用此切換來防止在執行重要組內容時出現延遲，請牢記，重新啟用後將需要進行計算。";
		BATTLE_PETS_CHECKBOX = "戰鬥寵物";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤戰鬥寵物和同伴。這些可以在開放的世界中找到，也可以通過各種地城和團隊中的首領掉落，以及從供應商和聲望獲得。";
		DEATHS_CHECKBOX = "死亡";
		DEATHS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤您的角色每次死亡的情況，並將其顯示為插件中的收藏品部分。\n\n注意：如果您關閉此選項，我們仍會追蹤它，但除非您處於偵錯模式，否則我們不會顯示統計資訊。";
		EXPLORATION_CHECKBOX = "地圖探索(不精準)";
		EXPLORATION_CHECKBOX_TOOLTIP = "啟用此選項可以追蹤戶外地圖的探索完成情況。\n\n目前這個選項所提供的資訊並不準確，需要加強，請謹慎使用。";
		FLIGHT_PATHS_CHECKBOX = "飛行路線";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "啟用此選項以追蹤飛行路線和飛艇。\n\n要收藏這些資訊，請與每個大陸的飛行點/飛艇船長對話。\n\n注意：由於分階段技術，你可能必須分階段到區域的其他敵方，以獲得這些興趣點的開啟。";
		--TODO: HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		HEIRLOOMS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤你是否已解鎖傳家寶及其各自的升級級別。\n\n具有相關外觀的傳家寶將通過外觀篩選進行篩選。（關閉外觀仍將顯示傳家寶本身）\n\n一些出現史詩品質的商品也有助於提升聲望，可以通過聲望篩選進行篩選。";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+升級";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "啟用此選項可專門追蹤單個傳家寶升級的收藏情況。\n\n我們都知道暴雪就是喜歡消耗你的金幣和靈魂，所以用這個切換來追蹤你的金幣。";
		ILLUSIONS_CHECKBOX = "附魔幻象";
		ILLUSIONS_CHECKBOX_TOOLTIP = "啟用此選項以追蹤附魔幻象。\n\n這些看起來很酷的幻化效果，你可以套用到你的武器上！\n\n注意：你不是一個幻象，儘管所有的夜裔精靈都這麼認為。";
		--TODO: MOUNTS_CHECKBOX = MOUNTS;
		MOUNTS_CHECKBOX_TOOLTIP = "啟用此選項以追蹤坐騎。\n\n你可以騎著它們比跑步更快去別的地方。誰知道！";
		--TODO: QUESTS_CHECKBOX = QUESTS_LABEL;
		QUESTS_CHECKBOX_TOOLTIP = "啟用此選項以追蹤任務。\n\n你可以點擊右鍵列表中的任何任務，彈出它們的完整任務鏈，以顯示你的進度和任何先決條件或後續任務。\n\n注意：每日、每周、每年和世界任務的追蹤不包含在此選項中，因為它們會在暴雪資料庫中定期重置。";
		QUESTS_LOCKED_CHECKBOX = "+已鎖定";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "啟用此選項可專門包括追蹤鎖定任務的完成情況。\n\n鎖定任務是指玩家無法再通過正常遊戲完成的任務（依據已知的 ATT 資料）。\n\n獲得這些任務非常依賴於隊伍同步功能或使用帳號通用內的任務來整合其他角色的進度。";
		RECIPES_CHECKBOX = "配方";
		RECIPES_CHECKBOX_TOOLTIP = "啟用此選項可追蹤你的專業技能圖紙。\n\n注意：你必須打開專業技能列表才能快取這些。";
		REPUTATIONS_CHECKBOX = "聲望";
		REPUTATIONS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤聲望。\n\n一旦你達到了尊敬或最好的朋友，它將被標記為收藏。\n\n你可能需要手動刷新才能正確更新。";
		TITLES_CHECKBOX = "頭銜";
		TITLES_CHECKBOX_TOOLTIP = "啟用此選項可追蹤頭銜。\n\n這些可以讓你的角色脫穎而出，看起來你已經玩了一段時間。通常只有新玩家沒有頭銜。";
		--TODO: TOYS_CHECKBOX = TOY_BOX;
		TOYS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤玩具。\n\n這些玩具中的大多數玩具都有趣。其他的，如爐石玩具，可以用來代替你的初始爐石，並可以為你節省一個背包！他們也有有趣的效果…很好！";

		-- Expansion Things
		EXPANSION_THINGS_LABEL = "資料片事物";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t 艾澤拉斯精華";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "啟用此選項以追蹤艾澤拉斯精華。\n\n預設情況下每個角色都會被追蹤。";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t 觀龍者手稿";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "啟用此選項追蹤 巨龍崛起 觀龍者手稿";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t 追隨者 & 伙伴";
		FOLLOWERS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤追隨者。\n\n即：要塞追隨者，軍團職業大廳追隨者，決戰艾澤拉斯追隨者，暗影之境追隨者。";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 符文銘刻之力";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "啟用此選項以追蹤暗影之境的符文銘刻之力。";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 導靈器";
		SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "啟用此選項來追蹤暗影之境靈魂羈絆的導靈器。";

		CHARACTERUNLOCKS_CHECKBOX = "角色解鎖";
		CHARACTERUNLOCKS_CHECKBOX_TOOLTIP = "啟用此選項可追蹤角色解鎖。這些是基於角色的各種解鎖，無法明確歸類為其他類型（例如 妖術變體、變形術變體、獵人物種馴服解鎖、波可波克自訂等）。\n\n預設情況下按角色追蹤。";

		-- Account-Wide Checkboxes
		ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = "成就追蹤通常是在整個帳號通用內進行的，但有一些特定職業和種族的專屬成就，你無法在你的主要角色上獲得。";
		ACCOUNT_WIDE_APPEARANCES_TOOLTIP = "外觀應該在整個帳號範圍內收集。某些物品並非每個職業都能學會，因此 ATT 將盡力只向您展示你當前角色可以收集的物品。";
		ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = "艾澤拉斯精華在技術上不能在整個戰隊內收藏和使用，但如果你只關心收藏你的主要角色那麼你可能更喜歡在整個戰隊上追蹤它們。";
		ACCOUNT_WIDE_BATTLE_PETS_TOOLTIP = "伙伴寵物可在多個角色上收集，並且實際上需要你擁有大量的背包空間才能將它們全部收集在一個角色上。\n\n我們建議您保持此功能開啟，但你可以自己刷。";
		ACCOUNT_WIDE_CHARACTERUNLOCKS_TOOLTIP = "如果任一角色已經收集了角色解鎖的物品，則將其視為已收集。";
		ACCOUNT_WIDE_DEATHS_TOOLTIP = "死亡追蹤實際上只存在於巫妖王之怒懷舊服之前，當時沒有統計資料來了解這些資訊。成就系統實裝後，此功能將直接從統計 API 獲得資料。您可以使用死亡追蹤器上的提示來查看";
		ACCOUNT_WIDE_EXPLORATION_TOOLTIP = "地圖探索追蹤僅對每個角色都非常有用，但你真的想在所有50個角色上收藏它們嗎？";
		ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = "飛行路線追蹤對每個角色都非常有用，但是你真的想要在所有50個角色上收藏它們嗎？";
		ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = "追隨者通常是每個角色的，但是你真的想以每周1個的速度在一個角色上收藏243個追隨者嗎？\n\n我想不行，好好先生。";
		ACCOUNT_WIDE_QUESTS_TOOLTIP = "任務完成通常是每個角色的，但是如果任何一個角色完成了特定的任務，這個任務就會被認為是已完成。";
		ACCOUNT_WIDE_RECIPES_TOOLTIP = "在暴雪的資料庫中，配方通常不會被帳號通用追蹤，但我們可以這樣做。\n\n在一個角色上不可能收藏到所有的東西，所以有了這個，你就可以賦予你的小號和他們的專業以意義。";
		ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = "聲望的成就現在會在暴雪的資料庫中追蹤帳號通用，所以開啟這個功能可能是個好主意。";
		ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = "啟用此功能後如果至少有一個角色學會了靈魂羈絆的導靈器，則將所有角色的靈魂羈絆的導靈器視為收藏。";
		ACCOUNT_WIDE_TITLES_TOOLTIP = "大多數頭銜都是在帳號通用內進行追蹤，但是魔獸世界中一些著名的頭銜被鎖定在贏得他們的角色上。\n\n如果你不關心這個並希望看到那些標記為收藏的頭銜是你的小號，請切換此選項。";

	-- General: Filters Page
		ITEM_EXPLAIN_LABEL = "|cffFFFFFF始終顯示此內容如果位於 "..app.ccColors.Account.."帳號模式|cffFFFFFF。|r";
		CLASS_DEFAULTS_BUTTON = "職業預設";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "點擊此按鈕可將所有篩選重置為職業預設。\n\n注意：只能打開可為職業收藏的篩選。";
		ALL_BUTTON_TOOLTIP = "點擊此按鈕一次啟用所有裝備篩選。";
		UNCHECK_ALL_BUTTON_TOOLTIP = "點擊此按鈕一次停用所有裝備篩選。";

	-- General: Phases Page
	-- Classic Only, fully dynamic from within parser.

	-- General: Unobtainables Page
		UNOBTAINABLES_PAGE = "無法獲得";
		UNOBTAINABLE_LABEL = "無法獲得的內容";
		CUSTOM_FILTERS_LABEL = "自動化內容";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFF如果當前角色可以使用此內容，或者位於 "..app.ccColors.Account.."帳號模式|cffFFFFFF。|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "啟用此設定可強行顯示%s內容，即使該內容對當前角色不可用。";

	-- Interface Page
		TOOLTIP_LABEL = "指標提示";
		TOOLTIP_HELP_CHECKBOX = "顯示指標提示幫助";
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "如果你想在 ATT 視窗指標提示中看到幫助資訊，即顯示 ATT 視窗功能的各種鍵/點擊組合，請啟用此選項。\n如果你已經知道所有的鍵/點擊組合，你可能希望節省工具提示空間並停用此選項。";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "啟用指標提示";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "如果希望在指標提示中查看 ATT 提供的資訊，請啟用此選項。這包括其他玩家發送的物品連接，在拍賣行、在地城助手、在你的背包裡、在世界、在 NPC 等等。\n\n如果你關閉了這個功能，就會嚴重降低你快速判斷是否需要擊殺首領或學習外觀的能力。\n\n我們建議你保持此設定。";
		DISPLAY_IN_COMBAT_CHECKBOX = "在戰鬥中";
		DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "如果要在戰鬥中呈現指標提示資訊，請啟用此選項。\n\n如果你正在同你的公會進行史詩/大秘境活動，你可能應該關閉這個設定以盡可能節省性能。\n\n當你在單刷時它可以很有用，可以立即知道你需要從首領那裡得到什麼。";
		TOOLTIP_MOD_LABEL = "修飾鍵";
		TOOLTIP_SHOW_LABEL = "顯示資訊";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "收藏進度";
		SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "如果希望在指標提示的右上角看到收藏某個對象或完成某組對象的進度，請啟用此選項。\n\n我們建議你保持此設定處於打開狀態。";
		ICON_ONLY_CHECKBOX = "僅圖標";
		ICON_ONLY_CHECKBOX_TOOLTIP = "如果只想在右上角看到圖標而不是圖標和已收藏/未收藏的文字，請啟用此選項。\n\n有些人喜歡更小的指標提示…";
		KNOWN_BY_CHECKBOX = "已知";
		KNOWN_BY_CHECKBOX_TOOLTIP = "如果你想在指標提示中查看所有伺服器上已知此配方的完整角色列表，請啟用此選項。";
		COMPLETED_BY_CHECKBOX = "已完成";
		COMPLETED_BY_CHECKBOX_TOOLTIP = "如果你想在指標提示中查看所有伺服器上已完成任務的完整角色列表，請啟用此選項。";
		SHOW_CRAFTED_ITEMS_CHECKBOX = "顯示專業製作的物品";
		SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "如果您想在指標提示中看到任何角色可以使用某種材料製作的所有物品的列表，請啟用此選項。";
		SHOW_RECIPES_CHECKBOX = "顯示配方";
		SHOW_RECIPES_CHECKBOX_TOOLTIP = "如果您想在指標提示中看到任何角色可以用某種材料製作的所有配方列表，請啟用此選項。";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "僅非低等級";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "如果你只想在配方列表中看到非低等級的配方，請啟用此選項。";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "貨幣計算";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "啟用此選項以顯示收集物品所需的物品/貨幣的估計數量。\n\n對於不一次獎勵所有可用內容的容器，估計將因此低於實際需要。";
		SHARED_APPEARANCES_CHECKBOX = "共享外觀";
		SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "啟用該選項可以在指標提示中看到外觀相似的物品。\n\n注意：不符合裝備類型的物品會顯示在列表中。這是為了幫助你判斷收藏進度。\n\n如果你對此感到困惑，從 ATT v1.5.0 開始，你可以點擊右鍵物品，打開物品和它的共享外觀，進入它們自己的獨立小列表。";
		INCLUDE_ORIGINAL_CHECKBOX = "原始來源";
		INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "如果你真的喜歡在指標提示中的共享外觀列表中看到原始來源資訊，請啟用此選項。";
		ONLY_RELEVANT_CHECKBOX = "僅相關";
		ONLY_RELEVANT_CHECKBOX_TOOLTIP = "如果你只想看到你的角色可以解鎖的共享外觀，請啟用此選項。\n\n注意：我們建議你保持這個關閉，因為了解一個物品的解鎖要求可以幫助識別為什麼一個物品沒有被收藏。";
		SPEC_CHECKBOX = "專精";
		SPEC_CHECKBOX_TOOLTIP = "啟用該選項，可以在遊戲客戶端提供的物品指標提示中顯示物品的戰利品專精資訊。\n\n注意：無論該設定如何，這些圖標仍將出現在 ATT 小列表中。";
		SUMMARIZE_CHECKBOX = "總結事物";
		SUMMARIZE_CHECKBOX_TOOLTIP = "啟用該選項可在指標提示中總結事物。例如，如果一個事物可以變成另一個事物的商人，那麼在指標提示中顯示另一個事物，以提供其多種用途的可見性。如果一個事物作為許多其他事物的容器，這個選項將顯示該容器所包含的所有其他事物。\n\n我們建議你保持此設定開啟。";
		CONTAINS_SLIDER_TOOLTIP = '使用該功能可以自訂指標提示中顯示的摘要事項的數量。\n\n預設：25';
		SOURCE_LOCATIONS_CHECKBOX = "來源位置";
		SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "如果你想在指標提示中看到 ATT 資料庫中對象的完整來源位置路線，請啟用此選項。";
		LOCATIONS_SLIDER_TOOLTIP = '使用該功能可以自訂指標提示中顯示的來源位置數量。\n\n注意：這也會依據其他來源的多少來顯示“X”個數量，如果這個總數等於顯示的元素總數，那麼就會簡單地顯示最後一個來源。\n\n預設：5';
		COMPLETED_SOURCES_CHECKBOX = "對已完成";
		COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "如果你想在指標提示中看到已完成的來源位置，請啟用此選項。\n\n舉個例子，如果你在梣谷完成了任務“巴斯蘭的頭髮”，當你指標懸停在艾芙娜·寂語身上時，他的指標提示就不會再顯示這個任務了。";
		DROP_CHANCES_CHECKBOX = "掉落率";
		DROP_CHANCES_CHECKBOX_TOOLTIP = "啟用此選項可在 ATT 視窗的工具提示中計算物品的各種掉落機率資訊。\n這有助於了解在額外投骰物品時應使用哪種拾取專精。";
		FOR_CREATURES_CHECKBOX = "對生物";
		FOR_CREATURES_CHECKBOX_TOOLTIP = "如果你想查看生物的來源位置，請啟用此選項。";
		FOR_THINGS_CHECKBOX = "對事物";
		FOR_THINGS_CHECKBOX_TOOLTIP = "如果你想查看事物的來源位置，請啟用此選項。";
		FOR_UNSORTED_CHECKBOX = "對未分類";
		FOR_UNSORTED_CHECKBOX_TOOLTIP = "如果你想查看尚未完全輸入資料庫的來源位置，請啟用此選項。";
		WITH_WRAPPING_CHECKBOX = "允許換行";
		WITH_WRAPPING_CHECKBOX_TOOLTIP = "啟用此選項允許來源在指標提示中換行。\n這將確保指標提示不會超過必要的寬度，但不幸的是在許多情況下來源資訊會變得更加難以閱讀。";

		BEHAVIOR_LABEL = "列表行為";
		MAIN_LIST_SLIDER_LABEL = "主列表縮放";
		MAIN_LIST_SCALE_TOOLTIP = '使用此功能可以自訂主列表的縮放。\n\n預設：1';
		MINI_LIST_SLIDER_LABEL = "小列表縮放";
		MINI_LIST_SCALE_TOOLTIP = '使用此功能可以自訂所有小和小列表的縮放。\n\n預設：1';
		ADHOC_UPDATES_CHECKBOX = "使用臨時視窗更新";
		ADHOC_UPDATES_CHECKBOX_TOOLTIP = "如果你想只更新可見的 ATT 視窗請啟用此選項。\n\n這可以大大減少載入時間並防止在某些情況下出現瘋狂掉幀。";
		EXPAND_DIFFICULTY_CHECKBOX = "展開當前難度";
		EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "如果要在進入地城或團隊副本時自動最小化小列表中未啟動的難度標題，請啟用此選項。\n\n比如：在普通難度地城中最小化英雄標題。";
		SHOW_ICON_PORTRAIT_CHECKBOX = "圖標頭像";
		SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "如果你想看到生物圖標頭像而不是非任務對象類型的預設圖標，請啟用此選項。\n\n也就是說：當查看首領時，此選項將顯示首領的頭像而不是難度圖標。\n\n預設：開啟";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "對任務";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "如果你想看到生物圖標頭像而不是任務對象類型的預設圖標，請啟用此選項。\n\n也就是說：查看任務時，此選項將顯示任務給予者的頭像，而不是任務類型圖標。\n\n預設：開啟";
		SHOW_MODELS_CHECKBOX = "模型預覽";
		SHOW_MODELS_CHECKBOX_TOOLTIP = "啟用此選項可在預覽中顯示模型而不是指標提示上的圖標。\n\n此選項可幫助你識別稀有生物或商人的模樣。因為這個原因你可能想保持這個開啟。";
		FILL_DYNAMIC_QUESTS_CHECKBOX = "顯示可回收成本組";
		FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "如果您想讓用於購買收藏品的物品/貨幣被視為收藏品並顯示在動態填充的任務下，請啟用此選項。 ";
		FILL_NPC_DATA_CHECKBOX = "顯示嵌套 NPC 資料";
		FILL_NPC_DATA_CHECKBOX_TOOLTIP = "如果希望在迷你列表中顯示時將所有相關資料嵌套到給定的 NPC（常見首領掉落、掉落等），請啟用此選項。此選項可能會導致大量重複，但其想法是該 NPC 將在迷你列表中保持可見，就好像需要特定於該 NPC 的內容一樣。\n\n預設：關閉";
		NESTED_QUEST_CHAIN_CHECKBOX = "顯示嵌套任務鏈";
		NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "如果你想讓任務鏈要求（點擊右鍵任務）視窗將所需任務顯示為其後續任務的子組，即它們必須從內到外完成，請啟用此選項。\n\n這一點很有用，不會錯過個別任務，應該主要用於完成任務的考慮。\n\n否則任務鏈要求將以自上而下的方式顯示，最早的任務在最上面。";
		SORT_BY_PROGRESS_CHECKBOX = "按進度排序";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "如果你希望'排序'操作（"..SHIFT_KEY_TEXT.."右鍵）按每個組的總進度排序（而不是按名稱）請啟用此選項";
		SHOW_REMAINING_CHECKBOX = "顯示剩餘事物";
		SHOW_REMAINING_CHECKBOX_TOOLTIP = "如果你想查看剩餘事物數量而不是總進度，請啟用此選項。";
		PERCENTAGES_CHECKBOX = "顯示完成百分比";
		PERCENTAGES_CHECKBOX_TOOLTIP = "如果想查看每行的完成百分比請啟用此選項。\n\n按完成度對組進行著色不受影響。";
		PRECISION_SLIDER = "百分比精確度";
		PRECISION_SLIDER_TOOLTIP = '使用此選項可自訂百分比計算中所需的精度級別。\n\n預設：2';
		DYNAMIC_CATEGORY_LABEL = "動態類別";
		DYNAMIC_CATEGORY_SIMPLE = "簡單";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "僅依據最高的類別生成動態類別。 ";
		DYNAMIC_CATEGORY_NESTED = "嵌套";
		DYNAMIC_CATEGORY_NESTED_TOOLTIP = "依據它們的確切來源生成動態類別。這將導致在多個地方也有來源的事物重複。";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000生成時套用|r";
		MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "最大頂線長度";

	-- Interface: Accessibility Page
		--TODO: ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		--TODO: ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		COLORS_ICONS = "顏色和圖標";
		LOCKED_QUESTS = "鎖定任務";
		MORE_COLORS_CHECKBOX = "顯示顏色";
		MORE_COLORS_CHECKBOX_TOOLTIP = "如果你想看到使用更多的顏色來幫助區分列表中事物的附加條件，請啟用此選項（比如職業顏色，陣營顏色等。）";
		WINDOW_COLORS = "視窗顏色";
		--TODO: BACKGROUND = EMBLEM_BACKGROUND;
		BACKGROUND_TOOLTIP = "設定所有 ATT 視窗的背景顏色和透明度。";
		--TODO: BORDER = EMBLEM_BORDER;
		BORDER_TOOLTIP = "設定所有 ATT 視窗的邊框顏色和透明度。";
		RESET_TOOLTIP = "恢復預設設定。";
		CLASS_BORDER = "邊框使用職業顏色";
		CLASS_BORDER_TOOLTIP = "使用職業顏色作為邊框。當登錄到另一個職業時，此資訊會更新。";

	-- Interface: Information Page
		ACHIEVEMENT_ID = "成就 ID";
		ACHIEVEMENT_CATEGORY_ID = "成就類別 ID";
		ADDED_WITH_PATCH_CLASSIC_FORMAT = "該物品是隨更新 %s 加入的";
		READDED_WITH_PATCH_CLASSIC_FORMAT = "該物品是隨更新 %s 重新加入的";
		REMOVED_WITH_PATCH_CLASSIC_FORMAT = "該物品是隨更新 %s 移除的";
		WAS_ADDED_WITH_PATCH_CLASSIC_FORMAT = "該物品曾是隨更新 %s 加入的";


	-- Features Page

	-- Features: Audio Page
		CELEBRATIONS_LABEL = "慶祝和音效";
		AUDIO_CHANNEL = "聲音通道";
		CELEBRATE_COLLECTED_CHECKBOX = "收藏事物觸發慶祝音效";
		CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "如果你想在獲得新的事物時聽到慶祝'fanfare'效果請啟用這個選項。\n\n這個功能可以極大地幫助你保持動力。";
		SOUNDPACK = "聲音包";
		PLAY_DEATH_SOUND_CHECKBOX = "死亡時播放音效";
		PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "如果你想在死亡時聽到音效，請啟用此選項。";
		WARN_REMOVED_CHECKBOX = "移除事物觸發警告";
		WARN_REMOVED_CHECKBOX_TOOLTIP = "如果你想在你不小心賣掉或交易一個給予你外觀的物品從而導致收藏中失去該外觀時聽到警告的聲音效果，請啟用這個選項。\n\n如果你的商品有購買計時這可能非常有用。該插件會告訴你你犯了一個錯誤。";
		SCREENSHOT_COLLECTED_CHECKBOX = "收藏物品後觸發截圖";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "如果你想為你收藏的每件物品進行截圖請啟用此選項。";

	-- Features: Reporting Page
		REPORTING_LABEL = "回報";
		REPORT_COLLECTED_THINGS_CHECKBOX = "回報已收藏事物";
		REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "如果想在聊天中看到一條訊息，詳細說明收藏了哪些物品或從收藏中刪除了哪些物品，請啟用此選項。\n\n注意：這是因為暴雪默默的加入了外觀和其他收藏品並且忽略了通知你可用的其他物品。\n\n我們建議你保持此設定。如果你打開了這個選項，你會聽到警告聲。";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "回報任務";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "如果希望在任務發生後立即看到你完成的任何任務的任務 ID，請啟用此選項。（用於回報錯誤、追蹤等）";
		REPORT_UNSORTED_CHECKBOX = "僅'無來源'";
		REPORT_UNSORTED_CHECKBOX_TOOLTIP = "如果只想查看任務 ID 且他還沒有來源，請啟用此選項。";
		REPORT_NEARBY_CONTENT_CHECKBOX = "回報附近的內容";
		REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP = "如果你想在聊天中看到附近的內容（例如小寶箱），請啟用此選項。使用此功能時提供彈出視窗和路線點。";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX = "自動繪製路線點";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP = "如果你想 ATT 自動為附近內容繪製路線點，請啟用此選項。";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX = "自動清除";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP = "如果你想在內容本身不可用或你超出範圍時，ATT 自動清除附近內容功能繪製的路線點，請啟用此選項。";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX = "包含生物";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP = "如果你想查看附近被視為生物的內容通知，請啟用此選項。（稀有怪、世界首領、NPC）";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX = "包含寶藏";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP = "如果你想查看附近被視為寶藏的物品的通知，請啟用此選項。（箱子、雕像、背包）";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX = "包含已完成";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP = "如果你想要查看依據 ATT 的篩選器中已完成的附近內容通知，請啟用此選項。";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX = "包括未知/無來源";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP = "如果你想查看非 ATT 已知來源的附近內容通知，請啟用此選項。";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX = "閃爍任務欄";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP = "如果你希望 ATT 在檢測到附近內容時閃爍任務欄，請啟用此選項。";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX = "播放音效";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP = "如果你希望 ATT 在檢測到附近內容時也播放通知音效，請啟用此選項。";

	-- Features: Sync Page
	-- Retail Only, deprecated.
		SYNC_PAGE = "同步";
		ACCOUNT_SYNCHRONIZATION = "帳號同步";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "自動同步帳號資料";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "如果您希望 ATT 在登錄或重新載入用戶介面時嘗試在帳號之間自動同步帳號資料，請啟用此選項。";

	-- Features: Windows Page
	-- Classic Only, nothing localizable atm.
		--TODO: WINDOWS_PAGE = "Windows";

	-- Profiles Page
		PROFILES_PAGE = "設定檔";
		PROFILE = "設定檔";
		PROFILE_INITIALIZE = "初始化設定檔";
		PROFILE_INITIALIZE_TOOLTIP = "這將使您的 ATT 保存變數能夠支援和包含設定檔資料。您當前的設定和視窗資訊將被複製到 '"..DEFAULT.."' 設定檔中，該設定檔無法刪除，但可以修改並使用作為所有角色的初始設定檔。\n\n請務必必將設定檔的任何異常行為或錯誤回報給 ATT Discord！";
		PROFILE_INITIALIZE_CONFIRM = "確定要打開設定檔支援？";
		PROFILE_NEW_TOOLTIP = "為當前角色創建一個空白設定檔";
		PROFILE_COPY_TOOLTIP = "複製已選設定檔到當前設定檔";
		PROFILE_DELETE_TOOLTIP = "刪除已選設定檔";
		PROFILE_SWITCH_TOOLTIP = "將選定的設定檔設定為當前設定檔\n\n一個設定檔也可以通過 "..SHIFT_KEY_TEXT.."點擊切換到它";
		SHOW_PROFILE_LOADED = "顯示在登錄期間或在設定檔之間切換時載入的設定檔";
})
do a[key] = value; end

if app.IsRetail then
	local a = L.CUSTOM_COLLECTS_REASONS;
	for key,value in pairs({
		["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "新玩家體驗", desc = "只有新角色可以收藏這個。" },
		["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "命運絲線", desc = "只有選擇跳過暗影之境故事線的角色才能收集這個。" },
		["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "只有角色獲得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。" },
		["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "只有角色 |cffff0000沒有|r 獲得 |cffe6cc80"..GetSpellName(275825).."|r 可以收集。" },
	})
	do a[key] = value; end
end