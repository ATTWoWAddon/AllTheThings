# Titan Reforged（泰坦重铸）专属数据库规划

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

状态：草案；尚未实现。更新日期：2026-10-19。

本规划涵盖中国区 Titan Reforged（泰坦重铸，Chrono 服务器）的 Parser 配置、数据源、游戏内加载、Contributor Reports，以及构建和发布交付。目标是让 Titan 拥有独立的数据库产物，同时保留已确认可复用的 `standard/shared` 数据源，避免影响普通 Wrath 和其他游戏分支。

本次探索的基准为 `master` 上的 `a4f9c0c1cd27e8dbad8eb952f3da5d72e56b2e2a`；规划分支为 `codex/titan-database-plan`。这些文档仅涉及规划。下文的文件清单、测试和实施步骤均属于后续工作；本次不包含 Parser 执行或功能实现。

## 从现有数据理解问题

[中国区促销数据](<../.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua>)中已经包含 `mount(1280400)`，并用 `added 3.80.0` 和 `removed 3.80.10` 表达其版本范围。相比之下，[ICC 竞速称号](<../.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/8 Icecrown Citadel.lua>) `title(673)`、`title(674)` 和 `title(675)` 位于 `AFTER 3.4.5` 与 `BEFORE 3.80.0` 的条件之内。

如果 Titan 直接复用当前 Wrath 配置中的 `DataPatch = 3.4.5.63697`，这两组数据都会进入错误的版本分支。独立的 Titan 配置可以保留现有版本条件，但也需要正确的原始数据、内容解锁阶段，以及客户端能够加载的输出位置。

这些记录适合作为现有条件的回归测试用例。其游戏内内容、获取方式和日期仍需依照数据来源要求单独验证；代码注释不能作为游戏内证据。

## 建议架构与决策边界

### 共享数据源与独立构建

第一阶段保留当前 `shared` 加 `standard` 的数据加载方式，新增 Titan 配置，并使用明确的 `TITAN_REFORGED` 标签。Titan 专属的手工编写数据可以集中放在 `standard/titan/` 下，并由该标签控制。现有地点的差异仍放在相关数据源附近，通过明确的条件排除不适用的旧节点。

使用现有 Retail 基础配置和一个 Classic 配置进行组合。分别指定 Titan 的 `wago-directories`、`json-directories`、`DataPatch` 和完整的 `PreProcessorTags`。配置数组会整体替换，因此只添加新的 Titan 标签并不足够。初期不要加载 Titan JSON，除非已经确定其来源和隔离路径；Retail 会递归导入 `standard` 下的 JSON。

将 Titan 完整且独立的数据集保存在 `db/Titan/` 下，通过普通 Wrath 配置的 `extra-database-files` 条目引入其 XML。配置中的 `DataRequirements` 和运行时保护条件控制哪些数据生效；在 Wrath 加载路径上，XML 引入本身是无条件的。确定输出路径前，先确认已安装客户端如何解析 `[Game]`。Titan 不是新的 TOC 游戏类型；其构建配置和数据源仍须保持独立标识。

### 版本与内容阶段

为 `DataPatch` 使用经过确认、与所选数据快照匹配的 Titan 版本和构建号，同时保留现有 `3.80.x` 条件的语义。暂时将 `WRATH` 用作 `DataPhase` 的历史数据兼容基准；Titan 的内容进度另行处理。

保留以下约束：

- `DataPhase="WRATH"` 会使 `#if WRATH` 成立，即使标签中没有列出 `WRATH`。必须从普通 Wrath ItemDB 数据和该游戏分支专属规则中明确排除 `TITAN_REFORGED`。
- 不要直接复制 Wrath 的例外规则，例如 `NAXX_10MAN_DROPS_25MAN_LOOT`；每项例外都需要 Titan 证据支持。
- 当前 Parser 为 Wrath 设置了 `MAX_PHASE_ID=39`。不能只添加更大的 Titan `u` 值，也不要为所有游戏分支提高全局上限。
- `#if AFTER TRANSMOG` 比较的是现有阶段编号；添加同名的能力标签不会改变这一比较。

独立表示 Titan 团队副本阶段。例如，官方路线图将 Ulduar、Karazhan、BWL 和 ICC 安排在不同的 Titan 阶段，而不是按照旧资料片顺序开放。[官方更新预览](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

首个可用版本可以使用累积的构建标签控制已解锁内容。如果尚未开放的内容必须在游戏内显示，并提供阶段选择器，则添加 Titan 专属阶段定义、Parser 保留与验证策略，以及设置页面；实施前须决定这些是否纳入第一阶段。不要映射全部历史阶段，否则可能错误归置共用某个阶段的商人、货币和副本。

只有在无法通过局部条件可靠处理冲突时，才评估将 `ClientBuild` 与 `TimelinePatch` 分离。第一阶段不整体重写时间线，也不新增 `DataPhase="TITAN"`；阶段名称目前由固定表管理。

### 原始数据与同一 ID 的差异

每次 Titan 构建应只选择 Titan 的权威 ItemDB/Wago 快照，并注明版本、地区、语言区域、热修复状态和获取日期。将缺失的 Titan 数据标记为缺口；不要默认将 Wrath 快照视为已经验证的 Titan 数据。

当前各条流水线采用不同的合并规则：Wago 对类型和 ID 相同的记录保留最先加载的一条；Lua 全局容器填充缺失值并递归合并；C# 按字段处理覆盖或合并。因此，仅添加目录或改变加载顺序，并不能形成可靠的 Titan 覆盖机制。

区分三种数据操作：添加来源、替换某个来源上的字段，以及移除某个来源节点。同一 itemID 可能还有其他有效的获取方式，因此全局删除该 ID 不能代替移除某个特定掉落或任务奖励。依据证据处理重制副本难度、嵌套掉落、花费、任务关系和 sourceID。

### 客户端身份与检测

以共用 Wrath 加载路径作为规划基础。以下证据支持这一选择，但已安装客户端的确切值和加载路径仍待确认：

- 由社区托管、内容由 Blizzard 编写的 UI 导出镜像，在 SHA `65729e5e6fee59b5ced83eb7f9120e1e412ea2a7` 的 [version.txt](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/version.txt) 中记录了 `3.80.2.70372`。其[导出工作流](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/.github/workflows/export.yml)标明产品为 `wow_classic_titan`、地区为 `cn`。2026-10-19 检查时，公开的 [Blizzard 版本端点](https://us.version.battle.net/wow_classic_titan/versions)也返回了中国区版本 `3.80.2.70372`、构建号 `70372`。这些观察不能确定用户已安装客户端的构建号或接口版本号。
- 该 Titan 快照中的 [Wrath 常量](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Wrath/Constants.lua#L118-L124)定义了 `WOW_PROJECT_WRATH_CLASSIC = 11`，并将该项目赋给 `WOW_PROJECT_ID`。[FrameXMLBase Wrath TOC](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Blizzard_FrameXMLBase_Wrath.toc#L1-L17) 声明了 `AllowLoadGameType: wrath` 并加载这些常量。这支持采用 Wrath 系列加载路径，但不能直接证明运行时 `[Game]` 或 `[Family]` 的替换结果。
- ATT 的 [API 封装](<../../src/WoW API Wrappers.lua>)已经将 `GetBuildInfo()` 的第四个返回值保存为 `GameBuildVersion`。ATT 的 [TOC](../../AllTheThings.toc) 声明接口版本为 `38002`，并使用通用的 `db\[Game]\ReferenceDB.lua` 和 `db\[Game]\Database.xml` 路径。这些是仓库中的观察结果。必须先采集 Titan 的完整返回值元组和实际解析路径，才能将其视为客户端观察结果。

对于当前 3.80.x 分支，候选检测器要求：项目 ID 为数值，且与数值类型的 `WOW_PROJECT_WRATH_CLASSIC` 常量相等；接口版本号也是数值，并位于 `[38000, 39000)` 范围内。这是基于版本范围的启发式判断，不是官方永久 Titan 标识。客户端系列变化时需重新评估；如果另一个客户端具有相同的两个输入，则须先取得经过实际观察的区分条件，再扩展规则。不要仅凭语言区域、地区或服务器名称推断身份。

比较 ID 前先检查类型，避免缺失的全局变量通过 `nil == nil` 判定。`GetBuildInfo` 不可用或不可调用、项目或常量缺失或不是数值、接口版本返回结果无效时，都必须使 Titan 保持未启用状态。这是检测器遇到失败时的行为，并不保证现有插件整体能够在缺少核心 API 时初始化。保留 `IsClassic`/`IsRetail` 的语义，让生成的保护条件共用一个在早期求值的 Titan 判定。

单独保留现有 SoD 规则。Classic Era 导出 `8165d4cd6e48d606369336cc3a7977902310e81e`（[版本 `1.15.9.70003`](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/version.txt)）声明 [GetActiveSeason](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsDocumentation.lua#L5-L16) 返回可能为 nil 的数值赛季 ID，并将 [SeasonOfDiscovery](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsConstantsDocumentation.lua#L15) 声明为 `2`。这些声明不能确定 Titan 实际返回的赛季值。

将 `DataPatch` 使用的完整版本和构建号与接口版本号区分开。`3.80.2.70372` 是与相应数据快照匹配的候选版本；仓库中的接口版本声明 `38002` 不能替代它。

### 游戏内加载与能力

ATT 已经通过 `extra-database-files` 从 Era XML 引入 SoD 的本地化和分类数据库。其 `DataRequirements` 会为 LocalizationDB 和每个分类生成提前返回的保护条件。在 Wrath/Titan 中复用这一机制：

1. 将 `../Titan/Database.xml` 加入普通 Wrath 配置的 `extra-database-files`。为 Wrath 和 Titan 设置互斥的 `DataRequirements`。两个 XML 路径都会在共用的 Wrath 加载路径上被枚举；由保护条件决定哪套数据写入本地化并注册分类。Titan 仍是由已确认可共享的数据源构建的完整独立数据集。
2. 在现有的早期 API 封装中求值共享判定。生成的保护条件位于 `local appName, _ = ...` 之前，因此应通过代码块的可变参数访问插件表，例如 `select(2, ...)`，或对头部顺序作最小调整。仅将判定定义提前，并不会让 `app` 或 `_` 局部变量进入作用域。
3. 为生成的 Wrath 和 Titan ReferenceDB 文件添加仅针对这两者启用的运行时返回保护条件。当前生成器不会使用 `DataRequirements` 保护 ReferenceDB，SoD XML 也不包含独立的 SoD ReferenceDB。全局应用这些要求会改变现有 Era/SoD 的引用数据行为。
4. 保留通用的 `db\[Game]\ReferenceDB.lua` TOC 条目，并紧接其后加入带保护条件的 `db\Titan\ReferenceDB.lua`，位置在 `base.lua` 之前。核心初始化前必须恰好启用一套完整的引用数据：`base.lua` 会读取 `RaceDB` 并初始化 `Presets.ALL`，而 `FactionData.lua` 会从引用数据派生 `FACTION_RACES`。如果推迟到 Database.xml 才选择引用数据，先前派生的状态就可能出现问题。

这些保护条件阻止未启用数据的赋值、构造和注册；不会阻止文件读取、Lua 解析或 XML 枚举。检查每个生成的分类和本地化产物，包括任何单独交付的 auto-locale 输出。`db/Titan/` 是 ATT 内部的产物目录，不是新的 Blizzard 游戏类型。实施此加载方案前，验证客户端共用的 Wrath 路径，并保留现有 Era/SoD 引用数据。

Blizzard 已确认 Titan 具备幻化和收藏系统，ATT 也已有一些根据 API 是否可用来启用功能的逻辑。逐项验证 Titan 的能力和数据语义；不要将 Titan 设为 `IsRetail=true` 来启用全部 Retail 路径。[官方功能概览](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

先检查实际的 SavedVariables 共享情况和来源收集语义，再决定账号同步方式。只有证明确实需要隔离或迁移时，才扩大改动范围；本规划不预设已经存在跨产品数据污染。

## 实施顺序与完成标准

每一步都应是可独立审查的改动。根据依赖关系，分别处理行为、数据导入、生成产物和交付改动。

| 顺序 | 工作 | 完成标准 |
| --- | --- | --- |
| 1 | 收集下一节中的客户端信息。确认已安装客户端的 `[Game]` 路径、完整客户端版本和构建号、确切的 `GetBuildInfo()` 返回值元组、项目标识，以及首个版本的内容和阶段范围。记录非 Titan 基准。 | 证据能够确定实际加载路径和运行时值；尚未解决的客户端特定事项保持明确标记。 |
| 2 | 添加 Titan 数据用例之前，先加入失败时不启用 Titan 的检测器和共用 Wrath 加载路径。添加 Titan 配置及构建和调试入口；将 `../Titan/Database.xml` 放入普通 Wrath 配置的 `extra-database-files`，使 Wrath 的 `DataRequirements` 排除 Titan、Titan 的 `DataRequirements` 包含 Titan。添加范围受限的运行时 ReferenceDB 保护条件和早期 Titan 引用文件，并隔离构建时 ItemDB 输入。优先使用 DBContext 和配置标签。 | 测试夹具覆盖检测器边界和全部反例；身份未知或无效时，Titan 必须保持未启用。Wrath 和 Titan 共用 Wrath 加载路径，Era 和 SoD 保留 Vanilla 路径。两个 XML 路径都可能被枚举，但只有符合要求和运行时保护条件的数据才能赋值和注册。配置有效，且构建时 ItemDB 数据互斥。 |
| 3 | 使用一条有完整证据支持的 Titan 专属记录，端到端贯通 Parser、完整独立输出、早期引用数据和客户端加载。 | Titan 启用该记录及其引用数据；普通 Wrath 不启用 Titan 数据；每次登录恰好使用一套完整数据库。 |
| 4 | 添加独立阶段策略和有证据支持的内容差异；处理所需的幻化、成就、难度和设置兼容性。 | 每个 Titan 阶段进入正确分支；来源的添加、替换和移除按预期工作，现有共享来源仍然可用。 |
| 5 | 向 Contributor Reports 添加版本和配置信息，并在问题模板中添加 Titan 游戏分支选项。 | 报告能够识别 Titan、完整客户端版本、构建号和接口版本号、ATT 版本及观察背景。 |
| 6 | 接入 CI、Release 和产物检查；完成跨游戏分支回归和游戏内验证。 | Titan 失败会使整体检查失败；全新安装、发布归档和适用的 db-sync 流水线均包含正确产物。 |

每项游戏数据新增或修正都要列出受影响的 ID、游戏分支、客户端构建号、ATT 版本、地区、观察日期和来源。按照 `AGENTS.md`，附上游戏内截图、Contributor Report 或 Wowhead 直接链接。同时记录游戏内容主张的独立来源数量；只有至少两个独立来源支持时，才能标记为已交叉验证。官方概览可以支持架构背景，但不能替代个别掉落、奖励或 ID 的证据。

## 验证方式

| 层次 | 用例与方法 | 通过标准 |
| --- | --- | --- |
| 配置与预处理 | 比较 Titan、普通 Wrath 和其他 Classic 配置的标签、阶段、补丁版本、输入和输出；检查数组替换与 `#if WRATH` 回退行为。 | Titan 所需标签完整，Wrath 专属原始元数据不会同时进入 Titan，其他配置设置保持不变。 |
| 版本边界 | 使用现有 Titan 促销和 ICC 竞速称号作为条件用例；测试 `3.80.0` 前后及移除边界。 | 程序行为符合经过审查的条件；数据的游戏证据另行验证。 |
| Titan 识别 | 使用测试夹具：Titan 的 `(11, 38002)`、普通 Wrath 的 `(11, 30405)`、SoD 的 `(2, 11509, SeasonOfDiscovery=2)`、Era 的 `(2, 11509)` 和 TBC Anniversary 的 `(5, 20506)`。还要测试项目 `11` 搭配接口版本 `37999`、`38000`、`38999` 和 `39000`，以及其他项目、缺失的全局变量、nil 返回值和错误类型。 | 仅数值类型的 Wrath 项目 ID 加上 `[38000, 39000)` 范围内的数值接口版本才判定为 Titan；边界结果依次为 false/true/true/false。标识缺失或无效时不启用 Titan。这些接口版本值是附件中的测试夹具，不是对当前客户端构建的断言。 |
| 加载与隔离 | 通过共用 Wrath 路径测试 Titan 和普通 Wrath；通过现有 Vanilla 路径测试 Era 和 SoD。检查 XML 枚举、DataRequirements、早期引用数据顺序、本地化赋值、分类注册和引用数据副作用。 | XML 可以枚举两个数据库路径，但未启用游戏分支的数据不会赋值或注册。Titan 专属与 Wrath 专属的引用数据、本地化和分类互斥；现有 Era/SoD 引用数据及 SoD 行为保持完整。不能将运行时保护条件视为阻止文件或代码块加载的机制。 |
| 阶段 | 在同一个 Titan 补丁版本下切换内容阶段，覆盖 Ulduar、Karazhan、BWL 和 ICC。 | 解锁进度不会受历史资料片顺序误导，Wrath 上限不会移除新增阶段。 |
| 合并与来源 | 使用固定样本，覆盖同一 ID 的不同值、缺失记录、数组字段，以及一个物品具有多个来源的情况。 | 明确处理冲突；替换或移除一个来源不会影响其他来源；结果不依赖偶然的文件顺序。 |
| 原始数据 | 检查快照版本、语言区域、热修复记录和选择设置；测试错误游戏分支或构建号的输入。 | 不匹配的输入会被明确拒绝或报告，不能在没有提示的情况下被标记为成功的 Titan 构建。 |
| 产物 | 在干净的输出位置检查 ReferenceDB、LocalizationDB、Database.xml、Categories 和 XML 引用的文件。 | 所需文件齐全、配置一致，构建不依赖上一次运行留下的文件。 |
| Lua 行为 | 遵循现有独立 `tests/` 的约定，使用 Lua 5.1 测试夹具测试实际检测器、生成的保护条件、本地化和分类注册，以及引用数据副作用；不要添加测试框架，也不要仅复制纯判定逻辑进行测试。 | 所有新增或受影响的 Lua 测试仅使用 Lua 5.1；测试夹具不能替代游戏内兼容性验证。 |
| 完整 Parser | 在受支持的 Parser 构建环境中运行数据流水线，保留配置、输入快照和错误记录。 | 完整构建成功。将其记录为工具集成验证，与 Lua 5.1 插件测试分开记录。 |
| 跨游戏分支回归 | 使用相同工具、快照和设置，比较 Retail、Era、SoD、TBC、Wrath、Cata、MoP 和 Forever。共享改动影响 PTR/Beta 时，也将其纳入。 | 除预先列出的合理差异外，非 Titan 产物保持不变。差异可追溯，不能通过忽略整个文件来掩盖差异。 |
| 游戏内 | 在 Titan 和普通 Wrath 中登录或重载；测试数据搜索、阶段设置、实际副本难度、已收集和未收集外观，以及 Contributor Reports。必要时检查账号同步。 | 正确数据库加载且没有 Lua 错误，收藏状态与实际状态相符。不会把非 Titan 的中国区或 zhCN 客户端误判为 Titan。 |
| CI 与交付 | 故意让 Titan 步骤失败以测试整体关卡；检查发布 zip、干净检出、缺失和过期文件，以及适用的 db-sync 哈希和 dirty-db 保护。 | `continue-on-error` 不能吞掉失败；交付产物包含完整的 Titan 输出。 |

完整 Parser 测试必须使用其受支持的执行环境。本规划不会替换 Parser 的 NLua/原生 Lua 依赖。分别记录测试工具、数据快照、预期结果和实际结果；Lua 测试夹具通过，不能证明完整 Parser 或客户端已经验证。

## 需要提供的 Titan 客户端信息

### 优先提供的信息

不必一次提供全部信息。前四项足以决定构建和加载调查的下一步。

| 信息 | 建议内容 | 用途 |
| --- | --- | --- |
| 完整客户端版本 | 登录界面的版本文本或截图，保留完整版本和构建号；如果知道接口版本号，也一并提供。 | 选择 Titan 配置和数据快照；不要把仓库中的 `38002` 当作实际客户端版本。 |
| 产品与安装位置 | Battle.net 中选择的产品和版本，以及实际游戏文件夹和 `Interface/AddOns/AllTheThings` 路径。个人目录名称可以遮盖。 | 确认实际产品和插件位置；不要猜测 `_titan_` 等文件夹名称。 |
| 游戏环境 | 地区、界面语言、服务器名称，以及正式服或测试环境。 | 建立识别正例和反例，区分 Titan、普通中国区 Wrath 和语言设置。 |
| ATT 状态 | ATT 版本、来源或提交，当前是否能加载，以及首个 Lua 错误的完整文本（如有）。 | 识别当前产物和兼容性；没有错误时直接说明。 |
| 一个有代表性的差异 | 一个 Titan 专属或与 Wrath 不同的物品、任务、NPC 或对象 ID，并附 Contributor Report、截图或 Wowhead 直接链接。描述预期和当前显示。 | 选择最小端到端用例，避免用猜测的数据验证架构。 |
| 收藏与副本样本 | 如有，提供一个已收集和一个未收集外观及其相关物品/sourceID，以及一个重制副本的难度、首领和掉落样本。不要猜测未知 ID。 | 验证收藏、难度和来源差异，避免将持有物品等同于已收集外观。 |
| 原始数据导出 | 如果有 Titan ItemDB 或其他采集导出，提供原始文件及采集工具、版本、日期和语言区域。没有时直接说明。 | 评估可用输入、数据缺口和采集方案。 |

报告应保留必要的版本、地点、难度、日期和来源。现有 Contributor Report 的 `GameBuild` 目前只记录一个接口版本类型的数字，单凭该值不能替代完整版本和构建号。

### 通过后续诊断确认的信息

以下是技术诊断结果，不要求用户从游戏界面自行推断。收到基本信息后，再提供范围明确、只读的采集方法。本次文档改动不添加或运行诊断代码。

- 已安装 Titan 客户端上确切的 `GetBuildInfo()` 返回值元组和各值类型；`WOW_PROJECT_ID` 与 `WOW_PROJECT_WRATH_CLASSIC` 的值和类型；以及 `C_Seasons.GetActiveSeason()` 的行为与 `Enum.SeasonID.SeasonOfDiscovery` 是否可用。采集完成前，检测器对于接口版本返回值的假设仍未在用户客户端上验证。
- 已安装客户端上 `[Game]` 实际解析到的目录、TOC 加载顺序，以及 ReferenceDB、LocalizationDB、Categories 和补充 XML 的来源。
- 实际可用的幻化和收藏 API 函数、返回语义及 sourceID 数据一致性；同时采样检查成就和难度能力。
- SavedVariables 位置、产品之间是否共享，以及账号同步时来源数据的实际行为。
- 是否有 Titan Wago 或其他权威快照，以及其构建号、语言区域和热修复覆盖范围。

同时决定首个发布版本的内容范围：从加载和少量数据开始，还是立即覆盖指定副本或活动；以及尚未开放的内容是否必须显示并提供游戏内阶段选择器。这些范围决策不妨碍先完成配置和数据隔离。

## 预计修改文件

以下路径均相对于仓库根目录。“新增”表示尚不存在的拟议路径；“视条件修改”表示改动需要调查或测试支持；“生成”表示由工具产出，不手工打补丁。目录条目代表一组文件；选择范围和快照后再确定具体内容。

### 配置与原始数据

| 文件或目录 | 类型 | 计划内容 |
| --- | --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config` | 新增 | 独立配置、完整标签、已确认的完整版本和构建号、输入与输出，以及包含 Titan 的 `DataRequirements`。不要把共用加载路径的 `extra-database-files` 条目放在这里。 |
| `.contrib/.db/build - classic - 03 - titan.bat`, `.contrib/.db/debug - classic - 03 - titan.bat` | 新增 | 复用现有 Parser 调用形式，并选择 Titan 配置。 |
| `.contrib/.db/build - all.bat`, `.contrib/.db/build - classic - all.bat` | 修改 | 将 Titan 纳入对应的全版本构建集合。 |
| `.contrib/.db/standard/.config/.wago/Titan Reforged/.update.bat` 及该目录中的 CSV 文件 | 新增/导入 | 已确认的 Titan 构建号、语言区域和热修复采集设置及快照，并附来源记录。 |
| `.contrib/.raw/ItemDB/<confirmed version> Titan Reforged - ItemDB.lua` | 新增/导入 | 使用独立 `DBContext`/`DBFileName` 的 Titan 原始 ItemDB；确认版本后确定文件名。 |
| `.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua`, `.contrib/.db/standard/.config/classic/03 - Wrath.config` | 修改 | 为普通 Wrath 原始文件指定专用 DBContext，例如 `WRATH_CLASSIC_ITEMDB`，只在 Wrath 配置中启用；Titan 使用 `TITAN_REFORGED`。将 `../Titan/Database.xml` 加入普通 Wrath 配置的 `extra-database-files`，并设置 Wrath 的 `DataRequirements` 以排除 Titan；Titan 配置包含 Titan 要求。保留原始内容和来源记录，使用现有生成器使构建时 ItemDB 输入互斥。 |
| `.contrib/.source/Item Database Consolidator/Program.cs` 及其工具产物 | 视条件修改 | 现有生成器已将 DBContext 转换为 `#if`；优先复用。仅当标签无法表达选择规则时才扩展 C#，之后重新构建并验证对应的 Consolidator 工具，确保重新生成后仍保持互斥。 |
| `.contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua`、新增的 `03 - Titan Reforged.lua` | 生成 | 通过 Consolidator 生成互斥数据，避免 `DataPhase=WRATH` 同时启用两个 ItemDB。 |
| `.contrib/.db/standard/.config/retail/retail.config` | 视条件修改 | 如果引入 Titan JSON，则调整来源选择或隔离路径，避免 Retail 递归导入时读取 Titan JSON。 |

### Parser 与手工编写数据

| 文件或目录 | 类型 | 计划内容 |
| --- | --- | --- |
| `.contrib/src/Parser/Framework/Framework.cs` | 修改 | 为生成的 Wrath 和 Titan ReferenceDB 输出添加范围受限的运行时返回保护条件，使未启用游戏分支的引用数据赋值不执行。保留现有 Era/SoD 引用数据；阶段设置改动仍取决于所选阶段模型。 |
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | 视条件修改 | 仅当首个发布版本需要游戏内阶段支持时，才添加 Titan 阶段保留与验证策略和配置检查；构建标签足够时推迟处理。 |
| `.contrib/src/Parser/DB/WagoData.cs`, `.contrib/src/Parser/DataValidator.cs` | 视条件修改 | 在适当层次检查来源版本、游戏分支和同 ID 冲突；先确定快照元数据格式和错误处理行为。 |
| `.contrib/src/Parser/Program.cs`、同目录下的 `CustomConfiguration.cs` | 视条件修改 | 检查配置加载顺序和数组替换；仅当需要新的验证入口或生成加载路径时才改动。现有 `db-relative` 已经可以选择独立输出。 |
| `.contrib/src/Parser/Framework/Framework.Objects.cs` | 视条件修改 | 复用现有 XML 引入和分类保护条件。仅当通过可变参数访问插件表无法支持现有早期保护条件时，才调整生成的头部顺序。 |
| `.contrib/.db/standard/titan/Titan Reforged.lua` | 新增 | 首批已验证 Titan 专属内容的入口，由 `TITAN_REFORGED` 保护。随着内容增长，按地点拆分。 |
| `.contrib/.db/shared/lib/Constants/Phases.lua`, `.contrib/.db/shared/functions/Shortcuts.lua` | 修改/视条件修改 | Titan 阶段定义和所需辅助函数；保留普通 Wrath 阶段语义。 |
| `.contrib/.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua`、同目录下的 `CN InGameShop.lua` | 视条件修改 | 调整条件前逐项验证范围和来源；不要移动整个文件，也不要批量修改时间线。 |
| `.contrib/.db/shared/modules/MountDB.lua` 及受影响的 standard 副本/任务数据源 | 视条件修改 | 修正有证据支持的映射、掉落、花费和奖励差异；选定用例后列出确切路径和 ID。 |
| `.contrib/src/Parser/FieldTypes/Timeline.cs`、同目录下的 `TimelineEntry.cs` | 后续评估 | 仅当已验证的冲突要求分离时间线语义时才修改。 |
| `.contrib/src/Parser/Parser.csproj`, `.contrib/.tools/Parser.exe` 及相关工具产物 | 视条件修改/生成 | 如果 C# 改动需要新的编译项或更新 CI 工具，则按照仓库交付流程重新构建；不要纳入未经验证的二进制文件。 |

### 游戏内与诊断

| 文件或目录 | 类型 | 计划内容 |
| --- | --- | --- |
| `AllTheThings.toc`, `src/WoW API Wrappers.lua` | 修改 | 添加失败时不启用 Titan 的共享判定，并在通用 `db/[Game]/ReferenceDB.lua` 之后、`base.lua` 之前尽早引入 Titan 引用数据；保留共用 Wrath TOC 游戏类型。确定生成路径前，确认 `[Game]` 的实际解析结果。 |
| `db/Wrath/ReferenceDB.lua`, `db/Titan/ReferenceDB.lua`, `db/Wrath/Database.xml`, `db/Titan/Database.xml`，以及这两个目录下的 `LocalizationDB.lua` 和 `Categories/` | 生成 | 将 Titan 保持为通过 XML 引用的完整独立数据集。普通 Wrath 配置将 `../Titan/Database.xml` 加入 `extra-database-files`；各配置的 `DataRequirements` 和运行时保护条件控制赋值与注册，而非 XML 枚举。生成互斥的 Wrath/Titan ReferenceDB 赋值，并在 TOC 中尽早引入 Titan 引用文件。对照已安装客户端的 `[Game]` 目录确认确切输出路径。 |
| `src/Settings/Pages/Phases.lua` | 修改/视条件修改 | Titan 阶段显示和选择；首个发布版本没有阶段界面时推迟处理。 |
| `src/Classes/Transmog.lua`, `src/Settings/Settings.lua`, `src/Settings/Pages/General.lua` | 视条件修改 | 检查外观收集和设置中的版本条件；依据已验证能力更新。 |
| `src/Classes/Achievement.lua`、同目录下的 `Achievement.Classic.lua`、`Difficulty.lua`，以及 `src/UI/Windows/Illusions.lua` | 视条件修改 | 仅调整测试证明不兼容的成就、难度或功能路径。 |
| `src/Modules/Contributor.lua`, `src/UI/Windows/Debugger.lua` | 修改 | 向报告添加配置、完整版本、构建号和接口版本号、语言区域，以及必要的环境详情；明确记录未知值。 |
| `AllTheThings.lua`, `src/UI/Windows/Account Management.lua` | 视条件修改 | 验证角色数据和来源收集同步；仅在证明确有必要时添加隔离或迁移。 |

### 测试

| 文件 | 类型 | 计划内容 |
| --- | --- | --- |
| `tests/titan-flavor-loading.lua` | 新增 | 遵循现有独立 `tests/` 的约定；使用 Lua 5.1 测试实际检测器和生成的加载保护条件，包括本地化、分类和引用数据副作用，以及非匹配客户端测试夹具。不要创建新框架。 |

### 构建交付与文档

| 文件或目录 | 类型 | 计划内容 |
| --- | --- | --- |
| `.github/workflows/Parser.yml` | 修改 | Titan 调用、触发和验证策略、整体成功检查，以及必要的产物检查；C# 源码改动也需要相应验证。 |
| `.github/workflows/Release.yml`、同目录下的 `Parser_Objective.yml` | 修改 | 将 Titan 纳入 Release 和手动全版本构建。 |
| `.github/workflows/Parser_with_new_CD.yml` | 视条件修改 | 如果保留此交付路径，则更新其游戏分支集合和整体检查。在探索基准中，该工作流针对 `forever-beta`，不视为 master 上正在使用的生产 CD 工作流。 |
| `.github/ISSUE_TEMPLATE/data_discrepancy.yml`、同目录下的 `bug_report.yml`、`feature_request.yml` | 修改 | 添加 Titan 游戏分支选项，复用现有版本和背景字段。 |
| `.pkgmeta`, `.contrib/db-sync/sync_db.py`, `.contrib/db-sync/README.md` | 视条件修改 | 验证现有通用打包和同步机制能否承载 Titan；仅修复必要缺口，并使文档与所选流水线一致。 |
| `Link ATT to WoW.bat` | 视条件修改 | 确认实际产品文件夹后，评估是否需要新增安装路径。 |

现有 `db-sync/README.md` 描述了提交与公开发布资源的映射，但在探索基准中，`Parser.yml` 只上传通用 Actions 产物；公开打包工作流为 `Parser_with_new_CD.yml`。交付前必须明确选择流水线；不能仅凭 README 就声称 master 已提供这一能力。

第一阶段不新增独立的 `.contrib/.db/titan/` 根目录。如果后续证明必须建立这一实体数据树，再设计多来源加载与明确的替换和移除语义；当前 Parser 支持 shared 加单个 `root-data`，没有能自动继承 standard 的通用覆盖层。

## 主要代码参考

实施前重新检查这些位置；行号对应本次探索基准。

| 参考 | 相关机制 |
| --- | --- |
| [Program.cs](../src/Parser/Program.cs)，247–283、292–349、434–528、914–964 | 配置组合、独立输出、原始数据和 Lua 加载，以及标签和阶段检查。 |
| [CustomConfiguration.cs](../src/Parser/CustomConfiguration.cs)，212–239 | 配置对象合并与整个数组替换。 |
| [Framework.cs](../src/Parser/Framework/Framework.cs)，59–99、804–829；[Framework.Processing.cs](../src/Parser/Framework/Framework.Processing.cs)，约 927 行 | 固定阶段表、DataPatch/DataPhase 和阶段上限。 |
| [WagoData.cs](../src/Parser/DB/WagoData.cs)，160–176、1225–1233；[shared 初始化](../.db/shared/.main.lua)，49–89 | CSV 来源解析和同 ID 缓存；Lua 容器合并行为。 |
| [Wrath 配置](<../.db/standard/.config/classic/03 - Wrath.config>)；[Era 配置](<../.db/standard/.config/classic/01 - Classic Era.config>)；[SoD 配置](<../.db/standard/.config/classic/01 - Classic SOD.config>) | 现有版本设置，以及从同一数据源树生成不同游戏分支的先例。 |
| [Item Database Consolidator](<../.source/Item Database Consolidator/Program.cs>)，15–47 | 原始 ItemDB 转换、输出路径和预处理条件生成。 |
| [Framework.cs](../src/Parser/Framework/Framework.cs)，2105–2114、3601–3606、3654–3673；[Framework.Objects.cs](../src/Parser/Framework/Framework.Objects.cs)，1312–1317、1381–1387、1391–1420；[Vanilla Database.xml](../../db/Vanilla/Database.xml)，17 | 现有多文件 XML 引入、本地化和分类保护条件，以及生成的 ReferenceDB 缺少保护条件的现状。 |
| [base.lua](../../src/base.lua)，493–496、551–555；[FactionData.lua](../../src/Modules/FactionData.lua)，24–32 | 早期使用 ReferenceDB 的代码，要求 Titan 引用数据在 base 初始化之前就绪。 |
| [TOC](../../AllTheThings.toc)，6、37–40、96；[Contributor](../../src/Modules/Contributor.lua)，76–84、262 | 接口版本声明、数据加载入口和报告版本信息。 |
