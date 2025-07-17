if GetLocale() ~= "zhTW" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

L.TITLE = "|c" .. app.DefaultColors.ATT .. "ALL THE THINGS|r";
L.SHORTTITLE = "|c" .. app.DefaultColors.ATT .. "ATT|r";
L.DESCRIPTION = "\"你愚昧地尋求自我毀滅，大膽地無視了那些超越你理解的力量。你拼盡全力入侵收藏者的領域，而現在，唯一的出路只剩下 — 踏上那孤獨的詛咒之路\"";

L.NEW_VERSION_FLAVORS = {
	--TODO: "AllTheThings hungers.",
	"要不我們給希爾瓦娜斯另一把火炬",
	"雅立史卓莎很擔心你",
	"無敵下次|cffffaaaa|肯定|r會掉落",
	"這只是一個挫折",
	--TODO:	", Yes Chef!",
	--TODO:	"and Crieve will help a turtle to make it to the water.",
	"艾澤拉斯的勇士",
};

L.MINIMAP_MOUSEOVER_TEXT = "右鍵改變設定。\n左鍵打開主列表。\n"..CTRL_KEY_TEXT.."左鍵打開小列表。\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏。";
L.TOP_ROW_INSTRUCTIONS = "|cff3399ff按住左鍵並拖拽移動\n右鍵打開設定\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏\n"..CTRL_KEY_TEXT.."左鍵展開/折疊列表\n"..SHIFT_KEY_TEXT.."點擊右鍵排序組/彈出列表|r";
L.OTHER_ROW_INSTRUCTIONS = "|cff3399ff左鍵展開/折疊\n右鍵彈出小列表\n"..SHIFT_KEY_TEXT.."左鍵刷新收藏\n"..CTRL_KEY_TEXT.."左鍵展開/折疊列表\n"..SHIFT_KEY_TEXT.."點擊右鍵排序組/彈出列表\n"..ALT_KEY_TEXT.."右鍵設定路線點|r";
L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ff左鍵按住並拖拽移動\n右鍵打開設定\n"..SHIFT_KEY_TEXT.."左鍵搜尋拍賣行|r";
L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ff左鍵展開/折疊\n右鍵彈出小列表\n"..SHIFT_KEY_TEXT.."左鍵搜尋拍賣行|r";
L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000如果你掉落了此項（除回收箱外的\n任何地方），請去 Discord 告訴我們從哪掉的！|r";
L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000提供越多資訊越好，謝謝！|r";
L.REQUIRES_PVP = "|CFF00FFDE需要 PvP 活動或貨幣|r";
L.REQUIRES_PETBATTLES = "|CFF00FFDE需要寵物對戰|r";
L.REPORT_TIP = "\n（"..CTRL_KEY_TEXT.."+C 將多行報告複製到剪貼簿）";

L.ICON_LEGEND_STATUS_TEXT = "|c" .. app.DefaultColors.White .. "|T" .. app.asset("status-unobtainable") .. ":0|t 無法獲得\n|T" .. app.asset("status-prerequisites") .. ":0|t 僅在滿足先決條件的情況下獲得\n|T" .. app.asset("status-seasonal-available") .. ":0|t 季節性內容\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t 季節性內容\n|T374225:0|t 當前角色不可用\n|T" .. app.asset("status-unsorted") .. ":0|t Unsorted in ATT";

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

L.MARKS_OF_HONOR_DESC = "榮耀印記必須在彈出視窗中查看才能看到所有正常的'包含'內容。\n(在聊天中輸入'/att' 然後 "..SHIFT_KEY_TEXT.."點擊連接的物品)\n\n|cFFfe040f之後購買和一起使用，重新登入和強制 ATT 刷新（按此順序）\n可能需要正確註冊所有物品。|r";
L.MOP_REMIX_BRONZE_DESC = "青铜幣必須在彈出視窗中查看才能看到所有正常的'包含'內容。\n(在聊天中輸入'/att' 然後 "..SHIFT_KEY_TEXT.."點擊連接的物品)\n\n|cFFfe040f之後購買和一起使用，重新登入和強制 ATT 刷新（按此順序）\n可能需要正確註冊所有物品。|r";
L.FOLLOWERS_COLLECTION_DESC = "如果您在 ATT 中啟用此設定，則可以在整個帳號範圍內收集追隨者。\n\n必須通過 "..SHIFT_KEY_TEXT.."點擊標題手動刷新插件才能檢測到這一點。";
L.MUSIC_ROLLS_DESC = "這些是按角色解鎖且目前尚未在戰隊中共享。如果暴雪有人在看，如果能把這些戰隊共享的話那就太好了。\n\n必須通過 "..SHIFT_KEY_TEXT.."點擊要檢測的標題手動刷新插件。";
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

L.UNSORTED_DESC = "此資料尚未在 ATT 中獲得 " .. app.Version .. "。";
L.RESET_INSTANCES_DESC = "點擊此處重置所有副本。\n\n"..ALT_KEY_TEXT.."點擊可在離開地城時自動重置副本。\n\n警告：小心使用！";
L.UPDATE_WORLD_QUESTS_DESC = "有時世界任務 API 很慢或無法返回新資料。如果希望在不更改區域的情況下強制刷新資料，請立即點擊此按鈕！\n\n"..ALT_KEY_TEXT.."點擊以包括當前可用的事物，可能不受時間限制";
L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207該組及其內容不參與此視窗的進度，因為它來自另一個位置！|r";
L.FORCE_REFRESH_REQUIRED = "這可能需要強制刷新（"..SHIFT_KEY_TEXT.."點擊）正確已收集。";
L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.."點擊鎖定視窗";
L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.."點擊解鎖視窗";
L.TITLE_DEBUG = "|c" .. app.DefaultColors.Red .. "偵錯|R ";
L.TITLE_ACCOUNT = "|c" .. app.DefaultColors.Account.."帳號|R ";
L.TITLE_INSANE = "|c" .. app.DefaultColors.Insane.."瘋狂|R ";
L._BETA_LABEL = " |cff4AA7FF[測試]|R";
L.SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已保存|r";
L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ff貨幣|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
	["資料片前夕"] = "前夕",
	["安托洛斯，燃燒王座"] = "安托洛斯",		-- ["Antorus, the Burning Throne"] = "Antorus"
	["奈奧羅薩，甦醒之城"] = "奈奧羅薩",		-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
	["『帷幕市集』塔札維許"] = "塔札維許",		-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
	["『朧影實驗場』亞貝魯斯"] = "亞貝魯斯",	-- ["Aberrus, the Shadowed Crucible"] = "Aberrus"
	["『夢境希望』埃達希爾"] = "埃達希爾",		-- ["Amirdrassil, the Dream's Hope"] = "Amirdrassil"
	["『回音之城』厄拉卡拉"] = "厄拉卡拉",		-- ["Ara-Kara, City of Echoes"] = "Ara-Kara"
})
do a[key] = value; end

if app.IsRetail then
	local a = L.HEADER_NAMES;
	for key,value in pairs({
		[-5200] = "基礎外觀",										-- Base Appearance
		[-5201] = "職業大廳戰役",									-- Class Hall Campaign
		[-5202] = "能量的平衡",										-- Balance of Power
		[-5203] = "榮譽獎勵",										-- Prestige Rewards
		[-5204] = "挑戰外觀",										-- Challenge Appearance
		[-5205] = "隱藏外觀",										-- Hidden Appearance
	})
	do a[key] = value; end
end

SKIP_AUTO_REFRESH_TOOLTIP = "預設情況下(未勾選)，任何可能影響可見資料的設定變化都會導致自動刷新。\n\n通過啟用該選項設定的變化將不會生效，直到玩家 "..SHIFT_KEY_TEXT.."點擊 ATT 視窗執行全部刷新。";

ABOUT_TOP = " |CFFFFFFFF是一個收藏追蹤插件，可以向您展示在遊戲中獲得所有內容的位置和方式！我們的 Discord 上有大量用戶社群（底部連結），您可以在其中提問、提交建議以及回報錯誤或丟失的物品。如果發現一些收藏品或未記錄的任務，可以在 Discord 上告訴我們，或者對於更精通技術的人，我們有一個您可以直接貢獻的 Git。\n\n雖然我們努力爭取完成，但每次更新都會加入很多東西，所以如果我們遺漏了什麼，請理解我們是一個小團隊，試圖跟上變化並自己收藏東西。:D\n\n在我直播時隨時問我問題，我會盡力回答，即使它與 ATT（一般魔獸插件程式也是如此）沒有直接關係。\n\n- |r|Cffff8000Crieve|r";

DEBUG_MODE = "|c" .. app.DefaultColors.Red.."偵錯模式|r（顯示所有）";
ACCOUNT_MODE = "|c" .. app.DefaultColors.Account.."帳號模式";
MODE_EXPLAIN_LABEL = "|cffFFFFFF您收藏的內容總結在這裡。啟用所有 ".."|c" .. app.DefaultColors.Insane.."彩色選項|cffFFFFFF 解鎖 ".."|c" .. app.DefaultColors.Insane.."瘋狂模式|cffFFFFFF。";
ACC_WIDE_DEFAULT = "已追蹤 ".. "|c" .. app.DefaultColors.Account .. "帳號通用|R 預設。";
TRACK_ACC_WIDE = "|c" .. app.DefaultColors.Account .. "追蹤 帳號通用|R";
AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t 艾澤拉斯精華";
DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t 觀龍者手稿";
DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "啟用此選項追蹤 巨龍崛起 觀龍者手稿";
FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t 追隨者 & 伙伴";
RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 符文銘刻之力";
SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 導靈器";
ITEM_EXPLAIN_LABEL = "|cffFFFFFF始終顯示此內容如果位於 ".."|c" .. app.DefaultColors.Account.."帳號模式|cffFFFFFF。|r";
CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFF如果當前角色可以使用此內容，或者位於 ".."|c" .. app.DefaultColors.Account.."帳號模式|cffFFFFFF。|r";
SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "如果你希望'排序'操作（"..SHIFT_KEY_TEXT.."右鍵）按每個組的總進度排序（而不是按名稱）請啟用此選項";
PROFILE_INITIALIZE_TOOLTIP = "這將使您的 ATT 保存變數能夠支援和包含設定檔資料。您當前的設定和視窗資訊將被複製到 '"..DEFAULT.."' 設定檔中，該設定檔無法刪除，但可以修改並使用作為所有角色的初始設定檔。\n\n請務必必將設定檔的任何異常行為或錯誤回報給 ATT Discord！";
PROFILE_SWITCH_TOOLTIP = "將選定的設定檔設定為當前設定檔\n\n一個設定檔也可以通過 "..SHIFT_KEY_TEXT.."點擊切換到它";

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
