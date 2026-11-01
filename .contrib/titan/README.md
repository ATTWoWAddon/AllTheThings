# Titan Reforged and independent flavor progression

Runtime foundation draft, based on `master` at `0f963463d9f0fa1e116223809f496187df4b8687`. Parser integration is paused during its upgrade.

The current delivery implements per-flavor progression runtime, source-aware visibility, saved phase choices, candidate Titan identity/capability checks, and diagnostics. No generated progression profile is activated yet. Without a profile, existing phase handling remains active. Parser/configuration/authored-data changes, generated databases, new database includes, and Parser/Release workflows remain outside these commits.

Content versions and release schedules are separate. SoD's reworked bosses and rewards retain their own acquisition sources, including separate releases on the same NPC. A phase mapping does not create or replace a loot table. The three architecture documents describe the target integration and outstanding evidence; [RUNTIME_PROGRESSION.md](RUNTIME_PROGRESSION.md) describes the implemented runtime contract and standalone Lua 5.1 verification.

目前交付執行期階段支援、來源顯示判斷、儲存偏好、暫定 Titan 身分／能力檢查與診斷。尚未啟用生成的階段設定；沒有設定檔時維持既有處理。Parser 升級期間，其相關設定、手寫資料來源、生成資料庫與建置流程保留，不納入此次提交。SoD 重製內容與開放進程分離，同一 NPC 的不同獎勵來源也保留各自條件。

当前交付运行时阶段支持、来源显示判断、保存偏好、暂定 Titan 身份/能力检查与诊断。尚未启用生成的阶段配置；没有配置时维持现有处理。Parser 升级期间，其相关配置、手写数据来源、生成数据库与构建工作流保留，不纳入此次提交。SoD 重制内容与开放进度分离，同一 NPC 的不同奖励来源也保留各自条件。

| Language / 語言 / 语言 | Architecture and remaining evidence / 架構與待補證據 / 架构与待补证据 |
| --- | --- |
| English | [Database and progression design](TITAN_DATABASE_PLAN.md) |
| 繁體中文 | [資料庫與階段設計](TITAN_DATABASE_PLAN.zh-TW.md) |
| 简体中文 | [数据库与阶段设计](TITAN_DATABASE_PLAN.zh-CN.md) |

Keep the three architecture documents synchronized when scope, decisions, evidence, or validation status changes.

變更範圍、決策、證據或驗證狀態時，請同步更新三份架構文件。

变更范围、决策、证据或验证状态时，请同步更新三份架构文档。
