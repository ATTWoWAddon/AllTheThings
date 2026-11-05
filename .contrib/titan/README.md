# Titan Reforged runtime support

Titan runtime support depends on the separately reviewed [independent progression runtime](../progression/RUNTIME_PROGRESSION.md). The Titan change adds candidate identity/capability checks, diagnostics, and these architecture documents. Parser integration is developed and validated on a separate CI branch; it is excluded from both runtime pull requests.

No generated progression profile is activated yet. Without a profile, existing phase handling remains active. Authored data, generated databases, new database includes, and build/release integration remain outside the runtime changes. Content versions and release schedules are separate: shared item, NPC, or instance IDs do not establish identical acquisition sources or substitute loot tables.

Titan 執行期支援依賴另行審查的通用 Phase 執行期，交付暫定身分／能力檢查、診斷與架構文件。Parser 整合於獨立分支透過 CI 開發與驗證，不納入這兩個執行期 PR。尚未啟用生成的進程設定檔；沒有設定檔時維持既有處理。手寫資料、生成資料庫、資料庫載入與建置／發布整合不在執行期變更範圍內。

Titan 运行时支持依赖另行审查的通用 Phase 运行时，交付暂定身份/能力检查、诊断与架构文档。Parser 集成在独立分支通过 CI 开发与验证，不纳入这两个运行时 PR。尚未启用生成的进度配置；没有配置时维持现有处理。手写数据、生成数据库、数据库加载与构建/发布集成不在运行时变更范围内。

| Language / 語言 / 语言 | Architecture and remaining evidence / 架構與待補證據 / 架构与待补证据 |
| --- | --- |
| English | [Database and progression design](TITAN_DATABASE_PLAN.md) |
| 繁體中文 | [資料庫與階段設計](TITAN_DATABASE_PLAN.zh-TW.md) |
| 简体中文 | [数据库与阶段设计](TITAN_DATABASE_PLAN.zh-CN.md) |

Keep the three architecture documents synchronized when scope, decisions, evidence, or validation status changes. Their original repository baseline and dated source observations remain historical context.

變更範圍、決策、證據或驗證狀態時，請同步更新三份架構文件；原始儲存庫基準與附日期的來源觀察仍保留為歷史脈絡。

变更范围、决策、证据或验证状态时，请同步更新三份架构文档；原始仓库基线与带日期的来源观察仍保留为历史背景。

## Candidate Titan checks and reports

`app.IsTitanReforged()` requires numeric project identifiers equal to the candidate Wrath value `11` and a numeric interface in `[38000, 39000)`. Locale and region do not establish identity. This remains a candidate heuristic pending installed-client confirmation.

Appearance defaults require the collection functions used by the runtime module. Missing required functions retain item fallback. The implementation preserves `IsClassic`, `IsRetail`, and `IsForever` classification.

Contributor Reports and Raw/Readable Debugger exports include captured client identity and types, region/locale/realm, reference metadata, active progression profile, and visibility baseline. The existing interface-only `GameBuild` field remains. Reports identify actual server progression as unknown; visibility settings do not observe the server.

## Standalone verification

Run from the repository root with Lua 5.1:

```text
lua5.1 tests/titan-client.lua .
```

The existing Lua regression workflow discovers this suite alongside the progression suite inherited from the Phase change. The fixtures verify runtime behavior; installed-client identity, database loading, authoritative Titan data, and actual server progression remain unverified.
