# Titan Reforged（泰坦重鑄）專屬資料庫規劃

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

狀態：草案；尚未實作。更新日期：2026-10-19。

本規劃涵蓋中國區 Titan Reforged（泰坦重鑄，Chrono 伺服器）的 Parser 設定、資料來源、遊戲內載入、Contributor Report，以及建置與發布交付流程。目標是為 Titan 提供獨立的資料庫產物，同時保留已確認可重用的 `standard/shared` 來源，並避免影響一般 Wrath 與其他遊戲版本。

探索基準為 `master` 的 `a4f9c0c1cd27e8dbad8eb952f3da5d72e56b2e2a`；規劃分支為 `codex/titan-database-plan`。這些文件僅涵蓋規劃。以下檔案清單、測試與實作步驟均屬後續工作；本次不包含執行 Parser 或進行實作。

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
- 目前 Parser 為 Wrath 設定 `MAX_PHASE_ID=39`。不要只新增數值更大的 Titan `u` 值，也不要為所有遊戲版本一併提高全域上限。
- `#if AFTER TRANSMOG` 比較的是現有階段編號；加入同名的能力標籤不會改變這項比較。

獨立表達 Titan 的團隊副本階段。例如，官方路線圖將 Ulduar、Karazhan、BWL 與 ICC 安排在不同 Titan 階段，並非依舊資料片順序開放。[官方更新預覽](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

第一個可用版本可使用累加式建置標籤控制已解鎖內容。如果尚未開放的內容必須在遊戲內透過階段選擇器顯示，則新增 Titan 專屬階段定義、Parser 保留／驗證政策與設定頁面；實作前先決定這些項目是否納入第一階段。不要對所有歷史階段套用映射，否則可能錯置共用某個階段的商人、貨幣與副本。

只有在局部條件無法可靠處理衝突時，才評估將 `ClientBuild` 與 `TimelinePatch` 分離。第一階段不全面重寫時間軸，也不新增 `DataPhase="TITAN"`；目前階段名稱由固定表格管理。

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

1. 將 `../Titan/Database.xml` 加入一般 Wrath 設定檔的 `extra-database-files`。為 Wrath 與 Titan 設定互斥的 `DataRequirements`。共用 Wrath 路由會列舉兩個 XML 路徑；守衛決定哪套資料集寫入本地化資料並註冊分類。Titan 維持為由已確認共用來源建置的完整獨立資料集。
2. 在現有早期 API 包裝層中計算共用判定。生成的守衛位於 `local appName, _ = ...` 之前，因此應透過程式區塊的可變參數取得插件資料表，例如 `select(2, ...)`，或對檔頭順序進行最小調整。僅提早定義判定，並不會讓區域變數 `app` 或 `_` 出現在作用域中。
3. 對生成的 Wrath 與 Titan ReferenceDB 檔案，加入僅明確指定的輸出才啟用的執行階段返回守衛。目前生成器未以 `DataRequirements` 保護 ReferenceDB，SoD XML 也未引入獨立的 SoD ReferenceDB。將這些條件全域套用，會改變現有 Era／SoD 的參照資料行為。
4. 保留通用的 `db\[Game]\ReferenceDB.lua` TOC 項目，並在其後立即加入帶有守衛的 `db\Titan\ReferenceDB.lua`，放在 `base.lua` 之前。核心初始化之前必須恰有一套完整參照資料生效：`base.lua` 會讀取 `RaceDB` 並初始化 `Presets.ALL`，而 `FactionData.lua` 會從參照資料推導 `FACTION_RACES`。若延後到 Database.xml 才選取參照資料，先前推導的狀態便可能不一致。

這些守衛會阻止未啟用資料的賦值、建構與註冊，但不會阻止檔案讀取、Lua 解析或 XML 列舉。檢查每個輸出的分類與本地化產物，包括任何另外交付的自動語系輸出。`db/Titan/` 是 ATT 內部的產物目錄，並非新的 Blizzard 遊戲類型。實作此路由前，應先驗證客戶端共用的 Wrath 路徑，並保留既有 Era／SoD 參照資料。

Blizzard 已確認 Titan 具備塑形與收藏系統，ATT 也已有部分依 API 可用性啟用功能的邏輯。逐項驗證 Titan 的能力與資料語意；不要將 Titan 設為 `IsRetail=true`，藉此啟用所有 Retail 分支。[官方功能概覽](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

先檢查實際 SavedVariables 共用情況與外觀來源收藏語意，再決定帳號同步方式。只有證明需要隔離或遷移時，才擴大變更；本規劃不假設目前已發生跨產品資料混入。

## 實作順序與完成條件

每一步都應是可獨立審查的變更。依相依關係分開處理行為、資料匯入、生成產物與交付變更。

| 順序 | 工作 | 完成條件 |
| --- | --- | --- |
| 1 | 收集下一節的客戶端資訊。確認已安裝的 `[Game]` 路徑、完整客戶端版本／組建編號、確切的 `GetBuildInfo()` 回傳值組合、專案識別資訊，以及首次發布的內容／階段範圍。記錄非 Titan 版本的基準。 | 證據能識別實際載入路徑與執行階段數值；尚未釐清的客戶端特定項目仍須明確標示。 |
| 2 | 新增 Titan 資料案例之前，先加入無法確認時維持未啟用的 Titan 判定器與共用 Wrath 載入路由。新增 Titan 設定檔與建置／除錯入口；將 `../Titan/Database.xml` 放入一般 Wrath 設定檔的 `extra-database-files`，讓 Wrath 的 `DataRequirements` 排除 Titan，而 Titan 的 `DataRequirements` 納入 Titan。加入範圍受限的執行階段 ReferenceDB 守衛與早期 Titan 參照檔案，並隔離建置階段的 ItemDB 輸入。優先使用 DBContext 與設定檔標籤。 | 固定測試案例涵蓋判定邊界及所有反例；身分未知或無效時，Titan 必須維持未啟用。Wrath 與 Titan 使用共用 Wrath 路由，Era 與 SoD 則保留 Vanilla 路由。兩個 XML 路徑都可能被列舉，但只有符合條件與執行階段守衛時才允許賦值與註冊。設定有效，且建置階段的 ItemDB 資料互斥。 |
| 3 | 使用一筆證據完整的 Titan 專屬記錄，串接 Parser、完整獨立輸出、早期參照資料與客戶端載入的端到端流程。 | Titan 啟用該記錄及其參照資料；一般 Wrath 不啟用 Titan 資料；每次登入恰使用一套完整資料庫。 |
| 4 | 加入獨立階段政策與有證據支持的內容差異；處理必要的塑形、成就、難度與設定相容性。 | 每個 Titan 階段進入正確分支；來源新增、取代與移除均符合預期，既有共用來源仍可使用。 |
| 5 | 在 Contributor Report 加入版本與設定檔資訊，並新增 Titan 問題回報版本選項。 | 報告可識別 Titan、完整客戶端版本／組建編號／介面版本號、ATT 版本與觀察情境。 |
| 6 | 接上 CI、Release 與產物檢查；完成跨遊戲版本回歸測試與遊戲內驗證。 | Titan 失敗會使整體檢查失敗；全新安裝、發布壓縮檔及適用的 db-sync 流程均包含正確產物。 |

每項遊戲資料新增或修正，都應列出受影響 ID、遊戲版本、客戶端組建編號、ATT 版本、區域、觀察日期與來源。依 `AGENTS.md` 附上遊戲內截圖、Contributor Report 或直接的 Wowhead 連結。也應記錄遊戲內容主張的獨立來源數；只有至少兩個獨立來源支持時，才標為已交叉驗證。官方概覽可支持架構背景，但不能取代個別掉落、獎勵或 ID 的證據。

## 驗證方式

| 層級 | 案例與方法 | 通過條件 |
| --- | --- | --- |
| 設定與預處理 | 比較 Titan、一般 Wrath 與其他 Classic 設定檔的標籤、階段、版本、輸入與輸出；檢查陣列取代及 `#if WRATH` 的後備判定。 | Titan 必要標籤完整，Wrath 專屬原始中繼資料不會同時進入 Titan，其他設定檔的設定保持不變。 |
| 版本邊界 | 使用現有 Titan 促銷與 ICC 競速稱號作為條件案例；測試 `3.80.0` 前後及移除邊界。 | 程式行為符合已審查的條件；資料的遊戲證據另行驗證。 |
| Titan 識別 | 使用固定測試案例：Titan 為 `(11, 38002)`、一般 Wrath 為 `(11, 30405)`、SoD 為 `(2, 11509, SeasonOfDiscovery=2)`、Era 為 `(2, 11509)`、TBC Anniversary 為 `(5, 20506)`。另測試專案 `11` 在介面版本號 `37999`、`38000`、`38999` 與 `39000` 的情況，以及其他專案、缺少全域值、nil 回傳值與錯誤型別。 | 只有數值型 Wrath 專案 ID 搭配位於 `[38000, 39000)` 的數值型介面版本號才判定為 Titan；邊界結果依序為 false／true／true／false。識別資訊缺失或無效時維持未啟用。這些介面數值是附件提供的固定測試案例，不是對目前客戶端組建的主張。 |
| 載入與隔離 | 透過共用 Wrath 路由測試 Titan 與一般 Wrath；透過既有 Vanilla 路由測試 Era 與 SoD。檢查 XML 列舉、DataRequirements、早期參照資料順序、本地化賦值、分類註冊及參照資料的副作用。 | XML 可以列舉兩個資料庫路徑，但未啟用遊戲版本的資料不進行任何賦值或註冊。Titan 專屬與 Wrath 專屬的參照資料／本地化／分類互斥；現有 Era／SoD 參照資料及 SoD 行為維持不變。不得將執行階段守衛視為阻止檔案／程式區塊載入。 |
| 階段 | 在相同 Titan 更新版本下切換內容階段，涵蓋 Ulduar、Karazhan、BWL 與 ICC。 | 解鎖進程不受歷史資料片順序誤導，Wrath 上限不會移除新階段。 |
| 合併與來源 | 使用固定樣本，涵蓋同 ID 不同值、缺少記錄、陣列欄位，以及同一物品具有多個來源。 | 明確處理衝突；取代或移除單一來源不影響其他來源；結果不依賴偶然的檔案順序。 |
| 原始資料 | 檢查快照版本、語系、hotfix 記錄與選取設定；測試遊戲版本／組建不符的輸入。 | 明確拒絕或回報不符的輸入，不能默默將其標為成功的 Titan 建置。 |
| 產物 | 在乾淨的輸出位置檢查 ReferenceDB、LocalizationDB、Database.xml、Categories，以及 XML 引用的檔案。 | 必要檔案齊全，設定檔一致，建置不依賴前次執行殘留的檔案。 |
| Lua 行為 | 遵循既有獨立 `tests/` 慣例，以 Lua 5.1 固定測試案例檢驗實際判定器、生成守衛、語系／分類註冊與參照資料副作用；不要新增測試框架，也不要只複製純判定函式進行測試。 | 所有新增或受影響的 Lua 測試僅使用 Lua 5.1；固定測試案例不能取代遊戲內相容性驗證。 |
| 完整 Parser | 在受支援的 Parser 建置環境執行資料流程，保留設定、輸入快照與錯誤記錄。 | 完整建置成功。將此記錄為工具整合驗證，並與 Lua 5.1 插件測試分開。 |
| 跨遊戲版本回歸 | 使用相同工具、快照與設定，比較 Retail、Era、SoD、TBC、Wrath、Cata、MoP 與 Forever。共用變更影響 PTR／Beta 時也納入。 | 除了事先列明的合理差異外，非 Titan 產物保持不變。差異可追溯；不得藉由忽略整個檔案來隱藏差異。 |
| 遊戲內 | 在 Titan 與一般 Wrath 登入／重新載入；測試資料搜尋、階段設定、實際副本難度、已收藏與未收藏外觀，以及 Contributor Report。必要時檢查帳號同步。 | 正確資料庫載入且沒有 Lua 錯誤，收藏狀態符合實際情況。非 Titan 的 CN 或 zhCN 客戶端不會被誤判。 |
| CI 與交付 | 刻意讓 Titan 步驟失敗，以測試整體檢查；檢查發布 zip、全新工作副本、缺少或過時的檔案，以及適用的 db-sync 雜湊檢查／本機 db 變更保護。 | `continue-on-error` 無法掩蓋失敗；交付產物包含完整 Titan 輸出。 |

完整 Parser 測試必須使用其支援的執行環境。本規劃不取代 Parser 的 NLua／原生 Lua 相依元件。分別記錄測試工具、資料快照、預期結果與實際結果；Lua 固定測試案例成功，不代表完整 Parser 或客戶端已通過驗證。

## 需要提供的 Titan 客戶端資訊

### 優先提供的資訊

不必一次提供所有資料。前四項便足以決定建置與載入調查的下一步。

| 資訊 | 建議內容 | 用途 |
| --- | --- | --- |
| 完整客戶端版本 | 登入畫面的版本文字或截圖，保留完整版本與組建編號；若知道介面版本號，也請一併提供。 | 選擇 Titan 設定檔與資料快照；不要將儲存庫中的 `38002` 當作實際客戶端版本。 |
| 產品與安裝位置 | Battle.net 選取的產品／版本，以及實際遊戲資料夾與 `Interface/AddOns/AllTheThings` 路徑。可遮蔽個人目錄名稱。 | 確認實際產品與插件位置；不要猜測 `_titan_` 等資料夾名稱。 |
| 遊戲環境 | 區域、介面語言、伺服器名稱，以及正式或測試環境。 | 建立判定正例與反例，區分 Titan、一般中國區 Wrath 及語言設定。 |
| ATT 狀態 | ATT 版本／來源或 commit、目前是否能載入，以及第一個 Lua 錯誤的完整文字（如有）。 | 識別目前產物與相容性；沒有錯誤時直接註明。 |
| 一項代表性差異 | 一個 Titan 專屬或與 Wrath 不同的物品／任務／NPC／物件 ID，附 Contributor Report、截圖或直接的 Wowhead 連結。說明預期與目前的顯示結果。 | 選擇最小端到端案例，避免用猜測的資料驗證架構。 |
| 收藏與副本樣本 | 如有，提供一個已收藏與一個未收藏外觀及相關 item／sourceID，另附重製副本的難度、首領與掉落樣本。不要猜測未知 ID。 | 驗證收藏、難度與來源差異，且不將持有物品等同於已收藏外觀。 |
| 原始資料匯出 | 若已有 Titan ItemDB 或其他收藏匯出，提供原始檔案及收集工具、版本、日期與語系。沒有時請註明。 | 評估可用輸入、資料缺口與收集方式。 |

報告應保留必要的版本、地點、難度、日期與來源。現有 Contributor Report 的 `GameBuild` 目前只記錄介面類型的版本號，無法單獨取代完整版本與組建編號。

### 透過後續診斷確認的資訊

這些是技術診斷結果，不要求使用者從遊戲介面自行推測。收到基本資訊後，再提供範圍受限、唯讀的收集方法。本次文件變更不新增或執行診斷程式碼。

- 已安裝 Titan 客戶端的確切 `GetBuildInfo()` 回傳值組合與各回傳值的型別；`WOW_PROJECT_ID` 和 `WOW_PROJECT_WRATH_CLASSIC` 的值／型別；以及 `C_Seasons.GetActiveSeason()` 行為與 `Enum.SeasonID.SeasonOfDiscovery` 的可用性。在取得這些資訊前，判定器對介面回傳值的假設仍未在使用者客戶端驗證。
- 已安裝客戶端實際將 `[Game]` 解析為哪個目錄、TOC 載入順序，以及 ReferenceDB、LocalizationDB、Categories 與補充 XML 的來源。
- 實際可用的塑形／收藏 API 函式、回傳語意及 sourceID 資料一致性；也應抽樣確認成就與難度能力。
- SavedVariables 的位置、產品間是否共用，以及帳號同步時來源資料的實際行為。
- 是否有 Titan Wago 或其他權威快照，以及其組建／語系／hotfix 涵蓋範圍。

另需決定首次發布的內容範圍：先完成載入與少量資料，或立即涵蓋指定副本／活動；以及尚未開放的內容是否必須透過遊戲內階段選擇器顯示。這些範圍決策不妨礙先完成設定檔與資料隔離。

## 預計變更的檔案

以下路徑均相對於儲存庫根目錄。「新增」表示尚不存在的規劃路徑；「視條件」表示變更需要調查或測試支持；「生成」表示由工具產生、不手動修補。目錄項目代表一組檔案；選定範圍與快照後再確定其內容。

### 設定與原始資料

| 檔案或目錄 | 類型 | 規劃內容 |
| --- | --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config` | 新增 | 獨立設定檔、完整標籤、已確認的完整版本／組建編號、輸入／輸出，以及納入 Titan 的 `DataRequirements`。共用路由的 `extra-database-files` 項目不要放在此處。 |
| `.contrib/.db/build - classic - 03 - titan.bat`, `.contrib/.db/debug - classic - 03 - titan.bat` | 新增 | 重用現有 Parser 呼叫形式，選取 Titan 設定檔。 |
| `.contrib/.db/build - all.bat`, `.contrib/.db/build - classic - all.bat` | 修改 | 將 Titan 納入對應的全版本建置集合。 |
| `.contrib/.db/standard/.config/.wago/Titan Reforged/.update.bat` 及該目錄中的 CSV 檔案 | 新增／匯入 | 已確認的 Titan 組建、語系與 hotfix 收集設定及快照，附來源記錄。 |
| `.contrib/.raw/ItemDB/<confirmed version> Titan Reforged - ItemDB.lua` | 新增／匯入 | 具有獨立 `DBContext`／`DBFileName` 的 Titan 原始 ItemDB；確認版本後確定檔名。 |
| `.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua`, `.contrib/.db/standard/.config/classic/03 - Wrath.config` | 修改 | 為一般 Wrath 原始檔案指定專屬 DBContext，例如 `WRATH_CLASSIC_ITEMDB`，只在 Wrath 設定檔啟用；Titan 使用 `TITAN_REFORGED`。將 `../Titan/Database.xml` 加入一般 Wrath 設定檔的 `extra-database-files`，並設定 Wrath 的 `DataRequirements` 排除 Titan；Titan 設定檔則包含 Titan 條件。保留原始內容與來源記錄，並使用現有生成器使建置階段 ItemDB 輸入互斥。 |
| `.contrib/.source/Item Database Consolidator/Program.cs` 及其工具產物 | 視條件 | 現有生成器已將 DBContext 轉成 `#if`；優先重用。只有標籤無法表達選取規則時才擴充 C#，之後重新建置並驗證對應的 Consolidator 工具，確保重新生成後仍維持互斥。 |
| `.contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua`、新增 `03 - Titan Reforged.lua` | 生成 | 使用 Consolidator 生成互斥資料，避免 `DataPhase=WRATH` 同時啟用兩份 ItemDB。 |
| `.contrib/.db/standard/.config/retail/retail.config` | 視條件 | 若引入 Titan JSON，調整來源選取或隔離路徑，避免 Retail 遞迴匯入時讀取 Titan JSON。 |

### Parser 與手寫資料

| 檔案或目錄 | 類型 | 規劃內容 |
| --- | --- | --- |
| `.contrib/src/Parser/Framework/Framework.cs` | 修改 | 對生成的 Wrath 與 Titan ReferenceDB 輸出加入範圍受限的執行階段返回守衛，避免未啟用遊戲版本的參照資料賦值生效。保留既有 Era／SoD 參照資料；階段設定變更仍取決於選定的階段模型。 |
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | 視條件 | 只有首次發布需要遊戲內階段支援時，才新增 Titan 階段保留／驗證政策與設定檔檢查；建置標籤已足夠時則延後。 |
| `.contrib/src/Parser/DB/WagoData.cs`, `.contrib/src/Parser/DataValidator.cs` | 視條件 | 在適當層級檢查來源版本、遊戲版本與同 ID 衝突；先確定快照中繼資料格式與錯誤行為。 |
| `.contrib/src/Parser/Program.cs`, `CustomConfiguration.cs`（同目錄） | 視條件 | 檢查設定檔載入順序與陣列取代；只有需要新的驗證入口或生成路由時才變更。現有 `db-relative` 已可選擇獨立輸出。 |
| `.contrib/src/Parser/Framework/Framework.Objects.cs` | 視條件 | 重用現有 XML 引入與分類守衛。只有透過可變參數存取插件資料表無法支援既有早期守衛時，才調整生成檔頭順序。 |
| `.contrib/.db/standard/titan/Titan Reforged.lua` | 新增 | 第一筆已驗證 Titan 專屬內容的入口，以 `TITAN_REFORGED` 限制納入範圍。內容增長時再按地點拆分。 |
| `.contrib/.db/shared/lib/Constants/Phases.lua`, `.contrib/.db/shared/functions/Shortcuts.lua` | 修改／視條件 | Titan 階段定義與必要輔助函式；保留一般 Wrath 階段語意。 |
| `.contrib/.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua`, `CN InGameShop.lua`（同目錄） | 視條件 | 逐項查證範圍與來源後才調整條件；不要移動整份檔案或批次修改時間軸。 |
| `.contrib/.db/shared/modules/MountDB.lua` 及受影響的 standard 副本／任務來源 | 視條件 | 修正有證據支持的映射、掉落、花費與獎勵差異；選定案例後列出確切路徑與 ID。 |
| `.contrib/src/Parser/FieldTypes/Timeline.cs`, `TimelineEntry.cs`（同目錄） | 後續評估 | 只有已驗證的衝突需要分離時間軸語意時才修改。 |
| `.contrib/src/Parser/Parser.csproj`, `.contrib/.tools/Parser.exe` 及相關工具產物 | 視條件／生成 | 若 C# 變更需要新的編譯項目或更新 CI 工具，依儲存庫交付流程重新建置；不要納入未驗證的二進位檔。 |

### 遊戲內與診斷

| 檔案或目錄 | 類型 | 規劃內容 |
| --- | --- | --- |
| `AllTheThings.toc`, `src/WoW API Wrappers.lua` | 修改 | 新增無法確認時維持未啟用的共用 Titan 判定，並在通用 `db/[Game]/ReferenceDB.lua` 之後、`base.lua` 之前引入早期 Titan 參照資料；保留共用 Wrath TOC 遊戲類型。確定生成路徑前先確認實際 `[Game]` 解析結果。 |
| `db/Wrath/ReferenceDB.lua`, `db/Titan/ReferenceDB.lua`, `db/Wrath/Database.xml`, `db/Titan/Database.xml`，以及兩個目錄下的 `LocalizationDB.lua` 與 `Categories/` | 生成 | 將 Titan 保留為透過 XML 引用的完整獨立資料集。一般 Wrath 設定檔將 `../Titan/Database.xml` 加入 `extra-database-files`；各設定檔的 `DataRequirements` 與執行階段守衛控制賦值／註冊，而非 XML 列舉。生成互斥的 Wrath／Titan ReferenceDB 賦值，並在 TOC 早期引入 Titan 參照檔案。根據已安裝的 `[Game]` 目錄確認確切輸出路徑。 |
| `src/Settings/Pages/Phases.lua` | 修改／視條件 | Titan 階段顯示與選取；首次發布沒有階段 UI 時延後。 |
| `src/Classes/Transmog.lua`, `src/Settings/Settings.lua`, `src/Settings/Pages/General.lua` | 視條件 | 檢查外觀收藏與設定中的版本限制；依已驗證能力更新。 |
| `src/Classes/Achievement.lua`, `Achievement.Classic.lua`, `Difficulty.lua`（同目錄）, `src/UI/Windows/Illusions.lua` | 視條件 | 僅調整測試顯示不相容的成就、難度或功能分支。 |
| `src/Modules/Contributor.lua`, `src/UI/Windows/Debugger.lua` | 修改 | 在報告中加入設定檔、完整版本／組建編號／介面版本號、語系與必要環境資訊；明確記錄未知值。 |
| `AllTheThings.lua`, `src/UI/Windows/Account Management.lua` | 視條件 | 驗證角色資料與外觀來源收藏同步；只有證明有必要時才加入隔離／遷移。 |

### 測試

| 檔案 | 類型 | 規劃內容 |
| --- | --- | --- |
| `tests/titan-flavor-loading.lua` | 新增 | 遵循既有獨立 `tests/` 慣例；使用 Lua 5.1 測試實際判定器與生成的載入守衛，包含語系／分類／參照資料副作用，以及客戶端反例的固定測試案例。不要建立新框架。 |

### 建置交付與文件

| 檔案或目錄 | 類型 | 規劃內容 |
| --- | --- | --- |
| `.github/workflows/Parser.yml` | 修改 | Titan 呼叫、觸發／驗證策略、整體成功檢查與必要產物檢查；C# 原始碼變更也需要對應驗證。 |
| `.github/workflows/Release.yml`, `Parser_Objective.yml`（同目錄） | 修改 | 將 Titan 納入 Release 與手動全版本建置。 |
| `.github/workflows/Parser_with_new_CD.yml` | 視條件 | 若保留此交付路由，更新其遊戲版本集合與整體檢查。在探索基準中，它以 `forever-beta` 為目標，不視為 master 上已啟用的正式 CD 工作流程。 |
| `.github/ISSUE_TEMPLATE/data_discrepancy.yml`, `bug_report.yml`, `feature_request.yml`（同目錄） | 修改 | 新增 Titan 遊戲版本選項，重用既有版本與情境欄位。 |
| `.pkgmeta`, `.contrib/db-sync/sync_db.py`, `.contrib/db-sync/README.md` | 視條件 | 驗證既有通用打包與同步是否能涵蓋 Titan；僅修正必要缺口，並讓文件與選定流程一致。 |
| `Link ATT to WoW.bat` | 視條件 | 確認實際產品資料夾後，評估是否需要新的安裝路徑。 |

既有 `db-sync/README.md` 描述了 commit 與公開發布資產的對應，但在探索基準中，`Parser.yml` 僅上傳一般 Actions 產物；公開套件工作流程是 `Parser_with_new_CD.yml`。交付前明確選定流程；不要只憑 README 就宣稱 master 提供此功能。

第一階段不新增獨立的 `.contrib/.db/titan/` 根目錄。若之後證明需要該實體資料樹，再設計多來源載入及明確的取代／移除語意；目前 Parser 支援 shared 搭配單一 `root-data`，沒有可自動繼承 standard 的通用覆寫層。

## 主要程式碼參照

實作前重新確認這些位置；行號以探索基準為準。

| 參照 | 相關機制 |
| --- | --- |
| [Program.cs](../src/Parser/Program.cs), 247–283, 292–349, 434–528, 914–964 | 設定組合、獨立輸出、原始資料與 Lua 載入，以及標籤／階段檢查。 |
| [CustomConfiguration.cs](../src/Parser/CustomConfiguration.cs), 212–239 | 設定物件合併與整體陣列取代。 |
| [Framework.cs](../src/Parser/Framework/Framework.cs), 59–99, 804–829；[Framework.Processing.cs](../src/Parser/Framework/Framework.Processing.cs)，約 927 | 固定階段表、DataPatch／DataPhase 與階段上限。 |
| [WagoData.cs](../src/Parser/DB/WagoData.cs), 160–176, 1225–1233；[shared 初始化](../.db/shared/.main.lua), 49–89 | CSV 來源解析與同 ID 快取；Lua 容器合併行為。 |
| [Wrath 設定檔](<../.db/standard/.config/classic/03 - Wrath.config>)；[Era 設定檔](<../.db/standard/.config/classic/01 - Classic Era.config>)；[SoD 設定檔](<../.db/standard/.config/classic/01 - Classic SOD.config>) | 既有版本設定，以及從同一來源樹產生不同遊戲版本的先例。 |
| [Item Database Consolidator](<../.source/Item Database Consolidator/Program.cs>), 15–47 | 原始 ItemDB 轉換、輸出路徑與預處理條件生成。 |
| [Framework.cs](../src/Parser/Framework/Framework.cs), 2105–2114, 3601–3606, 3654–3673；[Framework.Objects.cs](../src/Parser/Framework/Framework.Objects.cs), 1312–1317, 1381–1387, 1391–1420；[Vanilla Database.xml](../../db/Vanilla/Database.xml), 17 | 既有多檔 XML 引入、本地化／分類守衛，以及尚未生成 ReferenceDB 守衛的現況。 |
| [base.lua](../../src/base.lua), 493–496, 551–555；[FactionData.lua](../../src/Modules/FactionData.lua), 24–32 | 早期使用 ReferenceDB 的程式，需要在 base 初始化前取得 Titan 參照資料。 |
| [TOC](../../AllTheThings.toc), 6, 37–40, 96；[Contributor](../../src/Modules/Contributor.lua), 76–84, 262 | 介面宣告、資料載入入口與報告版本資訊。 |
