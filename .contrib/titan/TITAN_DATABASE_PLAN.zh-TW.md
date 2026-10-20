# Titan Reforged（泰坦重鑄）專屬資料庫規劃

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

狀態：執行期基礎實作草稿；Parser 升級期間暫停相關工作。更新：2026-10-21。

儲存庫基準：`master` 的 `0f963463d9f0fa1e116223809f496187df4b8687`。

本規劃涵蓋中國區 Titan Reforged（泰坦重鑄，Chrono 伺服器）的 Parser 設定、資料來源、遊戲內載入、Contributor Report，以及建置與發布交付流程。目標是為 Titan 提供獨立的資料庫產物，同時保留已確認可重用的 `standard/shared` 來源，並將 Era、SoD、Wrath、Titan 的開放進程分開處理。

目前交付範圍為執行期支援、診斷、獨立 Lua 5.1 測試與文件。Parser／設定、手寫資料來源轉接、生成資料庫及建置／發布整合，於 Parser 升級期間保留在此次交付之外。目前尚未啟用生成的進程設定檔，也未新增 Titan 資料庫載入項目。

三份問題表單已提供 `Titan` 選項，Lua 回歸測試流程也會自動探索獨立套件；此次實作沿用這些能力。下文選定的架構將內容版本與進程分離；客戶端證據清單仍為待辦。

## 初始實作狀態

| 範圍 | 目前交付與待辦 |
| --- | --- |
| 身分與能力 | 已實作暫定 `app.IsTitanReforged()` 判定、能力檢查與診斷；安裝中客戶端數值仍未驗證。 |
| 進程執行期 | 已實作命名空間設定檔、顯示預設值、儲存偏好、多來源與明確的可取得狀態更新。未提供 `app.ProgressionProfile` 時沿用既有階段處理。 |
| 內容版本 | 執行期保留各來源條件；文件與合成案例區分 SoD 重製首領／獎勵及重複 NPC ID，不建立或替換掉落表。 |
| 載入與資料 | 獨立 `db/Titan/`、資料庫啟用守衛、生成設定檔、實際來源對照及手寫 callback 轉接，仍待 Parser 整合。目前 TOC 只新增執行期模組載入。 |
| 輸入與交付 | 快照隔離、原始資料重新產生、Parser 修改、生成產物及 Parser／Release 流程暫停，不納入目前提交。 |
| 驗證 | 獨立 Lua 5.1 套件以固定案例執行實際執行期程式碼。生成資料整合與遊戲內驗證仍待完成；案例值不是遊戲觀察。 |

已實作的介面、測試命令與整合界線見 [RUNTIME_PROGRESSION.md](RUNTIME_PROGRESSION.md)。下文保留完整目標架構與待補證據；Parser 行為描述是後續整合要求，不代表已交付暫停中的修改。

## 從現有資料理解問題

[中國區促銷資料](<../.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua>) 已包含 `mount(1280400)`，並以 `added 3.80.0` 與 `removed 3.80.10` 表達其版本範圍。相較之下，[ICC 競速稱號](<../.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/8 Icecrown Citadel.lua>) `title(673)`、`title(674)` 與 `title(675)` 位於 `AFTER 3.4.5` 及 `BEFORE 3.80.0` 的條件內。

如果 Titan 直接沿用目前 Wrath 設定檔的 `DataPatch = 3.4.5.63697`，這兩組資料都會進入錯誤的版本分支。獨立的 Titan 設定檔可以保留現有版本條件，但仍需要正確的原始資料、內容解鎖階段，以及客戶端能載入的輸出位置。

這些記錄適合作為現有條件的回歸測試案例。其遊戲內內容、取得方式與日期，仍須依資料來源要求另行查證；程式碼註解不能當作遊戲內證據。

## 建議架構與決策界線

### 共用來源與獨立建置

第一階段保留目前以 `shared` 搭配 `standard` 載入資料的方式，新增 Titan 設定檔，並使用明確的 `TITAN_REFORGED` 標籤。Titan 專屬的手寫資料可集中於 `standard/titan/`，並以該標籤限制納入範圍。既有地點的差異則留在相關來源附近，以明確條件排除不適用的舊節點。

以現有 Retail 基礎設定與 Classic 設定檔組合設定。分別指定 Titan 的 `wago-directories`、`json-directories`、`DataPatch` 與完整的 `PreProcessorTags`。設定陣列會整體取代，因此只加入新的 Titan 標籤並不足夠。初期除非已確立來源與隔離路徑，否則不要載入 Titan JSON；Retail 會遞迴匯入 `standard` 下的 JSON。

將 Titan 完整且獨立的資料集保留於 `db/Titan/`，並透過一般 Wrath 設定檔的 `extra-database-files` 項目引入其 XML。設定檔的 `DataRequirements` 與執行階段守衛控制哪些資料生效；在 Wrath 路由上，XML 引入本身不帶條件。確定輸出路徑前，先確認已安裝的客戶端如何解析 `[Game]`。Titan 並非新的 TOC 遊戲類型；其建置設定與資料來源應維持獨立識別。

### 版本與內容階段

為 `DataPatch` 使用已確認、且與選定資料快照相符的 Titan 版本與組建編號，同時保留現有 `3.80.x` 條件的語意。暫以 `WRATH` 作為 `DataPhase` 的歷史資料相容基礎；Titan 的內容進程另行處理。

保留以下限制：

- `DataPhase="WRATH"` 會使 `#if WRATH` 成立，即使標籤未列出 `WRATH` 也是如此。一般 Wrath ItemDB 資料與遊戲版本專屬規則必須明確排除 `TITAN_REFORGED`。
- 不要直接複製 Wrath 的例外條件，例如 `NAXX_10MAN_DROPS_25MAN_LOOT`；每項例外都需要 Titan 證據。
- `#if AFTER TRANSMOG` 比較的是現有階段編號；加入同名的能力標籤不會改變這項比較。

只有在局部條件無法可靠處理衝突時，才評估將 `ClientBuild` 與 `TimelinePatch` 分離。初期實作不全面重寫時間軸，也不新增 `DataPhase="TITAN"`；目前階段名稱由固定表格管理。以下「初期實作」指 ATT 的首次交付，並非 Titan Phase 1。

#### 討論：Titan Phase 代表什麼？

Ulduar 可以說明問題：ATT 的歷史 Wrath 階段為 `WRATH_PHASE_TWO`，Titan 卻將 Ulduar 放在 Phase 6，更早的 Karazhan 則在 Phase 7。客戶端／資料快照、Parser 的歷史相容基礎，以及 Titan 解鎖進程，必須分開處理。[官方路線圖](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

[Chrono Wiki](https://warcraft.wiki.gg/wiki/Titan_Reforged_-_Chrono) 可作為討論索引，但不是已確認的階段清單。2026-10-19 直接存取回傳 403；搜尋索引中的開放清單將 Ruins of Ahn'Qiraj 列在 Phase 9，官方路線圖則列在 Phase 8。匯入對照前，應以附日期的證據釐清這類差異；路線圖中的未來項目仍屬預定內容。

日期也可能代表不同事件：[Phase 6 公告](https://wow.blizzard.cn/news/20260924/43790_1315082.html) 顯示發布日為 2026-09-25，內文卻安排於 2026-10-08 開放階段、2026-10-12 開放挑戰榜。[Ulduar 已實裝調整](https://wow.blizzard.cn/news/trr/20261009/43039_1316105.html) 支持至遲於 2026-10-09 已運作，但不是第二份確認確切開門時間的紀錄。發布日、生效日與觀察日應分別記錄。

透過官方文字索引核對的[官方進程規則](https://wow.blizzard.cn/news/20251031/40565_1268140.html) 說明，後續階段開放後，先前團隊副本仍可進入。因此，Phase 6 基準應保留仍適用的早期來源。這不代表每筆舊掉落都維持不變；副本開放、個別獎勵、升級花費與限時活動仍須分別取得證據。

#### 已選定架構：內容版本與開放階段分離

此次實作採用獨立進程資料，取代先前以累積建置標籤省略未來內容的方案。以下三個判斷必須分開：

| 判斷 | 表達方式 | 責任 |
| --- | --- | --- |
| 此 flavor 使用哪些內容？ | 既有手寫來源、flavor 條件、時間軸相容性，以及副本／難度／首領／獎勵分支 | 選擇正確的內容版本與取得關係。 |
| 某個取得來源何時開放？ | 共用的中性來源對照，加上各 flavor 的階段設定 | 對具明確範圍的來源套用獨立階段鍵值。 |
| 目前顯示選項是否允許該來源？ | 執行期階段過濾，搭配 `u` 與活動條件 | 完整判斷同一個來源，不抹除移除或活動限制。 |

SoD 不能視為只換了開放日程的 Classic 資料。重製副本可能更換首領、獎勵、兌換花費與難度。對照表只標記現有來源，不會將 Classic 掉落表複製到 SoD，也不會藉由 Phase 對照替換首領。不同內容版本保留各自的資料，僅共用已確認相同的部分。此次沿用既有 flavor／時間軸選擇方式，並未新增通用資料覆蓋或替換引擎。

來源以儲存庫檔案路徑及有順序的祖先識別欄位定位。只用副本 ID 不足：Classic 與 Wrath 的 Naxxramas 都是 `754`；MC 的舊版 40 人難度 `9` 與 SoD 難度 `201` 也是不同來源。同一 NPC 也可能有不同開放時間的獎勵：現有 MC 資料中，NPC `227819` 一份清單屬 Phase 4，包含 T1 物品 `226659`；另一份屬 Phase 5，包含 T2 物品 `232099`。若把整個 NPC 對照到 Phase 5，就會錯誤隱藏較早的獎勵，必須保留各來源的條件。這些是儲存庫回歸案例，不是新取得的遊戲內觀察。

共用對照位於 `.contrib/.db/shared/.config/progression/bindings.json`；`era.json`、`sod.json`、`wrath.json`、`titan.json` 分別提供階段定義、顯示基準、中性內容對照與明列的舊欄位轉接。例如，同一 Ulduar 來源分別對照 `wrath:2` 與 `titan:6`；SoD MC 為 `sod:4`，舊版則為 `era:1`。鍵值穩定且有命名空間，只能在同一設定檔內比較順序。新增設定檔不需修改引擎的 flavor 白名單。

Parser 在合併來源之前套用對照，此時仍保有原始檔名與 `groups` 階層。輸出節點使用 `releasePhases = { "titan:6" }`；啟用中的設定檔資料放在有守衛的 LocalizationDB，保留 Era／SoD 共用 ReferenceDB 的既有路由。實際對照命中數另存於診斷資料，不污染 AddOn 物件。

同一來源及祖先的開放條件採 AND；不同取得來源採 OR，但每個來源必須同時符合自己的階段、不可取得與活動條件。已開放但已移除的來源，不能借用另一個未開放來源的可取得狀態。合併與複製必須保留這些配對；callback 引起的狀態變更也必須反映到畫面上的資料副本。

只有明列的開放階段 ID 才會在已對照範圍內從 `u` 轉接。`u=1`、`u=2`、其他狀態與未宣告的子階段條件保留。子節點若有不同階段，必須明確對照，否則保留舊制相容行為。既有 SoD 階段別名區塊仍供未遷移資料使用，不能靠已失去原始名稱的數值反推其意義。

待整合的手寫資料修改會將六處既有 Ulduar callback 轉接為使用 `Progression.SetSourceAvailability(group, "u", value)`，只改變自己的狀態欄位，也適用於合併後的畫面副本。通用 callback 呼叫方式維持不變。未來遷移某個範圍時，若舊 callback 會修改合併來源的 `u` 或 `e`，須使用這個明確轉接介面，保留其他來源條件的配對。

#### 顯示政策、遷移範圍與證據

- `app.ProgressionProfile` 表示啟用中的 flavor 與顯示基準。平面的 `ReleasePhases` 設定保留明確的 `false`，複製設定檔時不共用可變表格。階段若宣告 `legacyU`，仍尊重既有數值型偏好；Titan 不沿用 Wrath 階段偏好。
- Phase 頁面提供該 flavor 的開放階段選項，預設值來自設定檔，不由客戶端介面版本或日曆推定。未知對照預設隱藏，可明確勾選檢視；無效或未知基準會被拒絕。顯示選項不代表已偵測伺服器實際階段。
- 只改基準不應改變相容的分類／來源主體；未來階段仍保留供遊戲內顯示。切換階段不會產生已被 flavor 或時間軸排除的內容。
- 初期遷移部分 MC／BWL／AQ／Naxx 版本、Ulduar，以及已審查的 Titan 路線圖來源。未對照來源維持舊制；不能宣稱所有 ATT 階段資料都已遷移。
- Titan 暫定對照為 Ulduar 6；Karazhan／Gruul／Magtheridon 7；BWL／Onyxia／AQ20 8；AQ40／Nightmare Dragons 9；ICC／Ruby Sanctum 10。Black Temple 與 Hyjal 保留輸出並標為未知；不推定早期 Titan MC／Naxx 階段。逐筆首領、掉落、花費與難度行為仍未驗證。
- 發布日、生效日與觀察日分開記錄。官方路線圖只支持暫定來源範圍，不能證明全部獎勵與歷史資料相同。逐筆變更仍須截圖、Contributor Report 或直接 Wowhead 證據，並記錄獨立來源數與驗證狀態。

### 原始資料與同一 ID 的差異

每次 Titan 建置應只選取 Titan 的權威 ItemDB／Wago 快照，並註明其版本、區域、語系、hotfix 狀態與取得日期。缺少的 Titan 資料應標為缺口；不要預設將 Wrath 快照視為已驗證的 Titan 資料。

目前各處理流程的合併規則不同：Wago 對相同類型與 ID 保留最先載入的記錄；Lua 全域容器會填補缺值並遞迴合併；C# 則依欄位處理覆寫或合併。因此，單純新增目錄或改變載入順序，並不會自動形成可靠的 Titan 覆寫機制。

區分三種資料操作：新增取得來源、取代特定來源的欄位，以及移除特定來源節點。同一 itemID 可能還有其他有效的取得方式，因此全域刪除該 ID 不能代替移除特定掉落或任務獎勵。重製副本難度、巢狀掉落、花費、任務關係及 sourceID 均應依證據處理。

### 客戶端身分與判定

以共用 Wrath 路由作為規劃基礎。以下證據支持此選擇，但已安裝客戶端的確切數值與載入路徑仍待確認：

- 社群託管、內容由 Blizzard 編寫的 UI 匯出鏡像，在 SHA `65729e5e6fee59b5ced83eb7f9120e1e412ea2a7` 的 [version.txt](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/version.txt) 記錄了 `3.80.2.70372`。其[匯出工作流程](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/.github/workflows/export.yml) 標示產品為 `wow_classic_titan`、區域為 `cn`。2026-10-19 查詢公開的 [Blizzard 版本端點](https://us.version.battle.net/wow_classic_titan/versions) 時，也回傳 CN 版本 `3.80.2.70372`、組建編號 `70372`。這些觀察不能證明使用者已安裝的組建編號或介面版本號。
- 在該 Titan 快照中，[Wrath 常數](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Wrath/Constants.lua#L118-L124) 定義 `WOW_PROJECT_WRATH_CLASSIC = 11`，並將該專案指定給 `WOW_PROJECT_ID`。[FrameXMLBase Wrath TOC](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Blizzard_FrameXMLBase_Wrath.toc#L1-L17) 宣告 `AllowLoadGameType: wrath`，並載入這些常數。這支持 Wrath 系列路由，但不能直接證明執行階段的 `[Game]` 或 `[Family]` 替換結果。
- ATT 的 [API 包裝層](<../../src/WoW API Wrappers.lua>) 已將 `GetBuildInfo()` 的第四個回傳值存為 `GameBuildVersion`。ATT 的 [TOC](../../AllTheThings.toc) 宣告介面版本號 `38002`，並使用通用的 `db\[Game]\ReferenceDB.lua` 與 `db\[Game]\Database.xml` 路徑。這些是儲存庫中的觀察。在將其視為客戶端觀察結果之前，應先取得 Titan 完整的回傳值組合與實際解析路徑。

針對目前的 3.80.x 分支，候選判定規則要求數值型專案 ID 與數值型的 `WOW_PROJECT_WRATH_CLASSIC` 常數相符，且數值型介面版本號位於 `[38000, 39000)`。這是依版本範圍推定的規則，並非官方永久的 Titan 識別方式。客戶端系列改變時應重新評估；若另一個客戶端共用這兩項輸入，則須先取得實際觀察到的區別資訊，再擴充規則。不要僅憑語系、區域或伺服器名稱推定身分。

比較 ID 前先檢查型別，以免缺少的全域值因 `nil == nil` 而通過判定。當 `GetBuildInfo` 不可用或不可呼叫、專案／常數缺失或非數值型，或介面版本號結果無效時，Titan 必須維持未啟用。這是判定器的失敗處理行為，不代表整個既有插件在缺少核心 API 時仍能初始化。保留 `IsClassic`／`IsRetail` 的語意，並讓生成的守衛共用一個早期 Titan 判定。

另行保留現有 SoD 規則。Classic Era 匯出 `8165d4cd6e48d606369336cc3a7977902310e81e`（[版本 `1.15.9.70003`](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/version.txt)）宣告 [GetActiveSeason](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsDocumentation.lua#L5-L16) 回傳可能為 nil 的數值型賽季 ID，並將 [SeasonOfDiscovery](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsConstantsDocumentation.lua#L15) 定義為 `2`。這些宣告不能證明 Titan 實際回傳的賽季值。

將 `DataPatch` 使用的完整版本／組建編號與介面版本號分開。`3.80.2.70372` 是與資料快照相符時可採用的候選版本；儲存庫中的介面宣告 `38002` 不能取代它。

### 遊戲內載入與能力

ATT 已透過 `extra-database-files`，從 Era XML 引入 SoD 的本地化與分類資料庫。其 `DataRequirements` 會為 LocalizationDB 與每個分類生成提前返回的守衛。Wrath／Titan 應重用此機制：

1. 將 `../Titan/Database.xml` 加入一般 Wrath 設定檔的 `extra-database-files`。為 Wrath 與 Titan 設定互斥的 `DataRequirements`。共用 Wrath 路由會列舉兩個 XML 路徑；守衛決定哪套資料集寫入本地化資料並註冊分類。Titan 維持為由暫定選用之共用手寫來源建置的完整獨立資料集。
2. 在現有早期 API 包裝層中計算共用判定。生成的守衛位於 `local appName, _ = ...` 之前，因此應透過程式區塊的可變參數取得插件資料表，例如 `select(2, ...)`，或對檔頭順序進行最小調整。僅提早定義判定，並不會讓區域變數 `app` 或 `_` 出現在作用域中。
3. 對生成的 Wrath 與 Titan ReferenceDB 檔案，加入僅明確指定的輸出才啟用的執行階段返回守衛。原生成器未以 `DataRequirements` 保護 ReferenceDB，SoD XML 也未引入獨立的 SoD ReferenceDB。將這些條件全域套用，會改變現有 Era／SoD 的參照資料行為。
4. 保留通用的 `db\[Game]\ReferenceDB.lua` TOC 項目，並在其後立即加入帶有守衛的 `db\Titan\ReferenceDB.lua`，放在 `base.lua` 之前。核心初始化之前必須恰有一套完整參照資料生效：`base.lua` 會讀取 `RaceDB` 並初始化 `Presets.ALL`，而 `FactionData.lua` 會從參照資料推導 `FACTION_RACES`。若延後到 Database.xml 才選取參照資料，先前推導的狀態便可能不一致。

這些守衛會阻止未啟用資料的賦值、建構與註冊，但不會阻止檔案讀取、Lua 解析或 XML 列舉。檢查每個輸出的分類與本地化產物，包括任何另外交付的自動語系輸出。`db/Titan/` 是 ATT 內部的產物目錄，並非新的 Blizzard 遊戲類型。實作此路由前，應先驗證客戶端共用的 Wrath 路徑，並保留既有 Era／SoD 參照資料。

Blizzard 已確認 Titan 具備塑形與收藏系統，ATT 也已有部分依 API 可用性啟用功能的邏輯。逐項驗證 Titan 的能力與資料語意；不要將 Titan 設為 `IsRetail=true`，藉此啟用所有 Retail 分支。[官方功能概覽](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

先檢查實際 SavedVariables 共用情況與外觀來源收藏語意，再決定帳號同步方式。只有證明需要隔離或遷移時，才擴大變更；本規劃不假設目前已發生跨產品資料混入。

## 實作順序與完成條件

| 順序 | 工作 | 完成條件 |
| --- | --- | --- |
| 1 | 記錄暫定客戶端身分、證據與未修改的 master 基準。 | 未知值明列為後續客戶端確認項目，不阻擋此次已授權的 bootstrap。 |
| 2 | 隔離 Titan 輸入／輸出，加入共用 Wrath 路由的載入守衛。 | 無效身分不啟用 Titan；一般 Wrath 快照不會混入；只有啟用中的資料集註冊。 |
| 3 | 將具明確範圍的內容版本對照至各 flavor 的階段設定。 | 真實來源命中；重複的副本／NPC ID 不混合不同首領、獎勵或階段；只改基準不裁剪資料主體。 |
| 4 | 串接過濾、設定、多來源與 callback 更新。 | AND／OR 判斷保留移除及活動限制、既有偏好與畫面副本的更新。 |
| 5 | 加入能力檢查、診斷與建置／產物驗證。 | 報告區分假設與觀察；Titan 缺檔或失敗會使整體檢查失敗。 |
| 6 | 在 Windows 建置目前 Parser，產生正式 flavor 矩陣，審查後更新 draft。 | 記錄精確輸入、工具／輸出雜湊、完成日誌及回歸結果；遊戲內驗證仍另列待辦。 |

程式、生成產物與文件應可分別審查。資料主張須列出 ID、flavor／組建、ATT 版本、觀察情境與證據。依 `AGENTS.md`，逐筆變更使用截圖、Contributor Report 或直接 Wowhead 連結；官方概要或 AI 說明不能取代。少於兩個獨立來源支持的主張仍標為未驗證。

## 驗證方式

| 層級 | 案例與方法 | 通過條件 |
| --- | --- | --- |
| 設定與預處理 | 比較 Titan、一般 Wrath 與其他 Classic 設定檔的標籤、階段、版本、輸入與輸出；檢查陣列取代及 `#if WRATH` 的後備判定。 | Titan 必要標籤完整，Wrath 專屬原始中繼資料不會同時進入 Titan，其他設定檔的設定保持不變。 |
| 版本邊界 | 使用現有 Titan 促銷與 ICC 競速稱號作為條件案例；測試 `3.80.0` 前後及移除邊界。 | 程式行為符合已審查的條件；資料的遊戲證據另行驗證。 |
| Titan 識別 | 使用固定測試案例：Titan 為 `(11, 38002)`、一般 Wrath 為 `(11, 30405)`、SoD 為 `(2, 11509, SeasonOfDiscovery=2)`、Era 為 `(2, 11509)`、TBC Anniversary 為 `(5, 20506)`。另測試專案 `11` 在介面版本號 `37999`、`38000`、`38999` 與 `39000` 的情況，以及其他專案、缺少全域值、nil 回傳值與錯誤型別。 | 只有數值型 Wrath 專案 ID 搭配位於 `[38000, 39000)` 的數值型介面版本號才判定為 Titan；邊界結果依序為 false／true／true／false。識別資訊缺失或無效時維持未啟用。這些介面數值是附件提供的固定測試案例，不是對目前客戶端組建的主張。 |
| 載入與隔離 | 透過共用 Wrath 路由測試 Titan 與一般 Wrath；透過既有 Vanilla 路由測試 Era 與 SoD。檢查 XML 列舉、DataRequirements、早期參照資料順序、本地化賦值、分類註冊及參照資料的副作用。 | XML 可以列舉兩個資料庫路徑，但未啟用遊戲版本的資料不進行任何賦值或註冊。Titan 專屬與 Wrath 專屬的參照資料／本地化／分類互斥；現有 Era／SoD 參照資料及 SoD 行為維持不變。不得將執行階段守衛視為阻止檔案／程式區塊載入。 |
| 階段與內容版本 | 測試同組建不同基準的資料主體、設定檔隔離、未來／未知顯示、`u`／活動配對、重複副本／NPC ID、不同首領／獎勵、較晚子來源、儲存偏好，以及六處 Ulduar callback 對原始來源與畫面副本的更新；檢查實際生成的對照與內容。 | 不因 Phase 裁剪、不混入其他版本掉落、不覆寫移除狀態，也不拼接不同來源的可取得條件；保留舊有明確偏好。 |
| 合併與來源 | 使用固定樣本，涵蓋同 ID 不同值、缺少記錄、陣列欄位，以及同一物品具有多個來源。 | 明確處理衝突；取代或移除單一來源不影響其他來源；結果不依賴偶然的檔案順序。 |
| 原始資料 | 檢查快照版本、語系、hotfix 記錄與選取設定；測試遊戲版本／組建不符的輸入。 | 明確拒絕或回報不符的輸入，不能默默將其標為成功的 Titan 建置。 |
| 產物 | 在乾淨的輸出位置檢查 ReferenceDB、LocalizationDB、Database.xml、Categories，以及 XML 引用的檔案。 | 必要檔案齊全，設定檔一致，建置不依賴前次執行殘留的檔案。 |
| Lua 行為 | 遵循既有獨立 `tests/` 慣例，以 Lua 5.1 固定測試案例檢驗實際判定器、生成守衛、語系／分類註冊與參照資料副作用。既有流程會自動探索巢狀套件；不要新增註冊清單、框架，或只複製純判定函式進行測試。 | 所有新增或受影響的 Lua 測試僅使用 Lua 5.1；每個套件在新的處理程序執行，失敗會傳至整體檢查。固定測試案例不能取代遊戲內相容性驗證。 |
| 完整 Parser | 在受支援的 Parser 建置環境執行資料流程，保留設定、輸入快照與錯誤記錄。 | 完整建置成功。將此記錄為工具整合驗證，並與 Lua 5.1 插件測試分開。 |
| 跨遊戲版本回歸 | 比較全新 master 與候選版本的 Retail、Era、SoD、TBC、Wrath、Cata、Mists、Forever 輸出，另產生 Titan；此次不執行 Beta。 | Era／SoD／Wrath 差異須符合明列的進程／守衛變更；未啟用新模型的版本應維持等價，不能忽略整個檔案以掩蓋差異。 |
| 遊戲內 | 在 Titan 與一般 Wrath 登入／重新載入；測試資料搜尋、階段設定、實際副本難度、已收藏與未收藏外觀，以及 Contributor Report。必要時檢查帳號同步。 | 正確資料庫載入且沒有 Lua 錯誤，收藏狀態符合實際情況。非 Titan 的 CN 或 zhCN 客戶端不會被誤判。 |
| CI 與交付 | 刻意讓 Titan 步驟失敗，以測試整體檢查；檢查發布 zip、全新工作副本、缺少或過時的檔案，以及適用的 db-sync 雜湊檢查／本機 db 變更保護。 | `continue-on-error` 無法掩蓋失敗；交付產物包含完整 Titan 輸出。 |

完整 Parser 測試必須使用其支援的執行環境。本規劃不取代 Parser 的 NLua／原生 Lua 相依元件。分別記錄測試工具、資料快照、預期結果與實際結果；Lua 固定測試案例成功，不代表完整 Parser 或客戶端已通過驗證。

現有 [Lua 回歸測試流程](../../.github/workflows/LuaRegression.yml) 會自動探索獨立套件，並各自使用新的 Lua 5.1 程序。此次沿用既有原始碼／測試觸發條件，不修改工作流程；依賴 Titan 生成資料的測試保留至 Parser 恢復整合後再提交。

## 需要提供的 Titan 客戶端資訊

### 優先提供的資訊

不必一次提供所有資料。前四項便足以決定建置與載入調查的下一步。

| 資訊 | 建議內容 | 用途 |
| --- | --- | --- |
| 完整客戶端版本 | 登入畫面的版本文字或截圖，保留完整版本與組建編號；若知道介面版本號，也請一併提供。 | 選擇 Titan 設定檔與資料快照；不要將儲存庫中的 `38002` 當作實際客戶端版本。 |
| 產品與安裝位置 | Battle.net 選取的產品／版本，以及實際遊戲資料夾與 `Interface/AddOns/AllTheThings` 路徑。可遮蔽個人目錄名稱。 | 確認實際產品與插件位置；不要猜測 `_titan_` 等資料夾名稱。 |
| 遊戲環境 | 區域、介面語言、伺服器名稱，以及正式或測試環境。 | 建立判定正例與反例，區分 Titan、一般中國區 Wrath 及語言設定。 |
| ATT 狀態 | ATT 版本／來源或 commit、目前是否能載入，以及第一個 Lua 錯誤的完整文字（如有）。 | 識別目前產物與相容性；沒有錯誤時直接註明。 |
| 階段觀察 | 目前階段與一個仍可進入的早期副本／來源；如有尚未開放來源或獨立活動期間，也請提供。附日期／時區、伺服器、組建、ATT 版本，以及截圖或 Contributor Report。 | 區分累積可取得狀態、活動日期與客戶端版本；不要由可進入副本推定每項獎勵。 |
| 一項代表性差異 | 一個 Titan 專屬或與 Wrath 不同的物品／任務／NPC／物件 ID，附 Contributor Report、截圖或直接的 Wowhead 連結。說明預期與目前的顯示結果。 | 選擇最小端到端案例，避免用猜測的資料驗證架構。 |
| 收藏與副本樣本 | 如有，提供一個已收藏與一個未收藏外觀及相關 item／sourceID，另附重製副本的難度、首領與掉落樣本。不要猜測未知 ID。 | 驗證收藏、難度與來源差異，且不將持有物品等同於已收藏外觀。 |
| 原始資料匯出 | 若已有 Titan ItemDB 或其他收藏匯出，提供原始檔案及收集工具、版本、日期與語系。沒有時請註明。 | 評估可用輸入、資料缺口與收集方式。 |

Contributor Report 保留既有 `GameBuild` 介面版本欄位，並新增完整擷取的客戶端版本／組建／介面、型別、project ID、區域／語系／伺服器，以及生成資料庫的設定檔／階段假設。未知值與伺服器實際進程明確保留。

### 透過後續診斷確認的資訊

這些是技術診斷結果，不要求使用者從遊戲介面自行推測。目前 Contributor Report 與 Raw／Readable Debugger 匯出已包含唯讀診斷欄位。這些欄位回報能力是否存在及觀察值，不代表已驗證收藏 API 語意、伺服器進程或已安裝客戶端的 `[Game]` 替換結果。

- 已安裝 Titan 客戶端的確切 `GetBuildInfo()` 回傳值組合與各回傳值的型別；`WOW_PROJECT_ID` 和 `WOW_PROJECT_WRATH_CLASSIC` 的值／型別；以及 `C_Seasons.GetActiveSeason()` 行為與 `Enum.SeasonID.SeasonOfDiscovery` 的可用性。在取得這些資訊前，判定器對介面回傳值的假設仍未在使用者客戶端驗證。
- 已安裝客戶端實際將 `[Game]` 解析為哪個目錄、TOC 載入順序，以及 ReferenceDB、LocalizationDB、Categories 與補充 XML 的來源。
- 實際可用的塑形／收藏 API 函式、回傳語意及 sourceID 資料一致性；也應抽樣確認成就與難度能力。
- SavedVariables 的位置、產品間是否共用，以及帳號同步時來源資料的實際行為。
- 是否有 Titan Wago 或其他權威快照，以及其組建／語系／hotfix 涵蓋範圍。

此次交付建立執行期基礎、能力檢查與診斷。資料庫路由、來源對照及生成資料驗證仍待 Parser 整合；新增或替換 Titan 內容仍須逐筆證據。

## 實作檔案清單

此清單涵蓋完整目標架構。目前僅交付執行期 Lua、獨立執行期測試、選用的效能測量工具與文件；下列 Parser／設定／手寫資料來源／生成產物／工作流程仍待整合，未提交。路徑相對於儲存庫根目錄，生成主體必須由相符工具產生。

| 檔案 | 用途 |
| --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config`、Era／SoD／Wrath 設定、`shared/.config/root.config` | Titan 隔離設定與獨立進程設定。 |
| `.contrib/.db/shared/.config/progression/{bindings,era,sod,wrath,titan}.json` | 限定來源的對照與各 flavor 階段定義／預設值。 |
| `.contrib/src/Parser/{ProgressionCatalog,TitanProfile,CustomConfiguration}.cs`、`Parser.csproj` | 對照表、快照驗證與輸出支援。 |
| `.contrib/src/Parser/Framework/{Framework,Framework.Merge,Framework.Objects}.cs` | 合併前對照、不同條件的來源分離、啟用中設定與參照守衛輸出。 |
| Wrath 原始 ItemDB 與生成的 `.dynamic/03 - Wrath.lua` | 一般 Wrath 專用原始資料 context，透過 Consolidator 重新產生。 |
| `.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua` | 舊 Wrath callback 使用獨立階段偏好，不推定 Titan 成就行為。 |
| `AllTheThings.toc`、`src/WoW API Wrappers.lua`、`src/Modules/Progression.lua` | 早期判定／載入與執行期進程引擎。 |
| `src/DataHandling.lua`、`src/Classes/base.lua`、`src/Modules/Filter.lua`、Settings 與 Phases 頁面 | 來源合併／複製、遞迴過濾、儲存偏好及階段控制。 |
| Transmog、General 設定、Contributor、Debugger 模組 | 限定範圍的能力回退與診斷匯出。 |
| `db/{Titan,Wrath,Vanilla,VanillaSOD}/`、`.contrib/.tools/Parser.exe` | 工具產生的資料庫與相符 Parser；其他 flavor 僅由已驗證執行更新。 |
| 建置／除錯入口、`.contrib/build-parser.ps1`、`.contrib/validate-db.py`、四條 Parser／Release 流程 | 建置目前原始碼、產生 Titan、驗證全新輸出並彙整失敗。 |
| `tests/{flavor-progression,titan-flavor-loading}.lua`、`.contrib/titan/` 測試與產物驗證測試 | Lua 5.1、編譯後 Parser、快照及交付驗證。 |
| `.contrib/titan/`、Titan Wago 目錄、`.contrib/db-sync/README.md` | 三語架構、操作說明、隔離快照工具與交付文件。 |

此次不捏造 Titan 原始 ItemDB／Wago 快照，也不新增獨立 `.db/titan` 根目錄、全面改寫時間軸或遷移全部舊階段。新的 Titan 記錄、替換掉落表與安裝捷徑仍須後續證據。

## 主要程式碼參考

請依目前符號查閱：`ProgressionCatalog.cs`、`TitanProfile.cs`、[執行期進程](../../src/Modules/Progression.lua)、[階段設定](../../src/Settings/Pages/Phases.lua)、[過濾](../../src/Modules/Filter.lua)、[來源合併](../../src/DataHandling.lua)、[舊階段定義](../.db/shared/lib/Constants/Phases.lua)、[共用捷徑](../.db/shared/functions/Shortcuts.lua)。
