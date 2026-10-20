# Titan Reforged（泰坦重铸）专属数据库规划

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

状态：草案；尚未实现。更新日期：2026-10-20。

本规划涵盖中国区 Titan Reforged（泰坦重铸，Chrono 服务器）的 Parser 配置、数据源、游戏内加载、Contributor Reports，以及构建和发布交付。目标是让 Titan 拥有独立的数据库产物，同时保留已确认可复用的 `standard/shared` 数据源，避免影响普通 Wrath 和其他游戏分支。

仓库复核基准为 `upstream/master` 上的 `5eb0692ad09ef1ad77bf630f8ff9d681dac7be0a`；规划分支为 `codex/titan-database-plan`。已于 2026-10-20 重新核对仓库假设和代码参考。这些文档仅涉及规划，不包含 Parser 执行或 Titan 实现。

该基准的三份问题表单已提供 `Titan` 选项，现有 Lua 回归测试工作流也会自动发现独立测试套件；后续应按下文复用这些能力。Titan 专属配置、数据库产物、检测和阶段策略仍为计划工作。外部客户端和路线图观察保留原始日期；本次仓库复核不代表取得新的客户端观察。

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
- `#if AFTER TRANSMOG` 比较的是现有阶段编号；添加同名的能力标签不会改变这一比较。

只有在无法通过局部条件可靠处理冲突时，才评估将 `ClientBuild` 与 `TimelinePatch` 分离。初期实现不整体重写时间线，也不新增 `DataPhase="TITAN"`；阶段名称目前由固定表管理。下文的“初期实现”指 ATT 的首次交付，而不是 Titan Phase 1。

#### 讨论：Titan Phase 代表什么？

Ulduar 可以说明问题：ATT 的历史 Wrath 阶段是 `WRATH_PHASE_TWO`，Titan 却将 Ulduar 放在 Phase 6，更早的 Karazhan 则在 Phase 7。客户端/数据快照、Parser 的历史兼容基准以及 Titan 解锁进度，必须分开处理。[官方路线图](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

[Chrono Wiki](https://warcraft.wiki.gg/wiki/Titan_Reforged_-_Chrono) 可作为讨论索引，但不是已经确认的阶段清单。2026-10-19 直接访问返回 403；搜索索引中的开放清单将 Ruins of Ahn'Qiraj 列在 Phase 9，官方路线图则列在 Phase 8。导入映射前，应以带日期的证据解决这类差异；路线图中的未来项目仍属于计划内容。

日期也可能代表不同事件：[Phase 6 公告](https://wow.blizzard.cn/news/20260924/43790_1315082.html) 显示发布日期为 2026-09-25，正文却安排在 2026-10-08 开放阶段、2026-10-12 开放挑战榜。[Ulduar 已实装调整](https://wow.blizzard.cn/news/trr/20261009/43039_1316105.html) 支持最迟于 2026-10-09 已运行，但不是第二份确认确切开放时间的记录。发布日期、生效日期和观察日期应分别记录。

通过官方文本索引核对的[官方进度规则](https://wow.blizzard.cn/news/20251031/40565_1268140.html) 说明，后续阶段开放后，先前团队副本仍可进入。因此，Phase 6 基准应保留仍然适用的早期来源。这不代表每项旧掉落都保持不变；副本开放、具体奖励、升级花费和限时活动仍需分别取得证据。

#### 讨论：实现选项

现有机制具有以下约束：

- 在 Wrath 的 `MAX_PHASE_ID=39` 下，Parser 的阶段上限检查允许 `u <= 39` 或 `1000 <= u < 4000` 通过；通过的阶段定义仍需验证。超出范围的节点及其子节点可能在导出前被移除，游戏内设置无法恢复未导出的数据。不要为所有游戏分支提高全局上限。
- `u=1` 和 `u=2` 已分别表示从未实装和已移除，其他小编号也已被使用。不能直接将 Titan 阶段数字用作 ID。时间线处理先于阶段检查，而且可能覆盖 `u`，因此单个字段不会自动同时保留解锁阶段和移除状态。
- 现有设置是逐 ID 的 `Unobtainable[u]` 显示开关，使用历史构建/日期默认值以及硬编码的资料片页面，并非单个当前阶段选择器。新增定义不会自动创建 Titan 页面；稳定 ID 必须保留已有保存选项。
- 应用外层阶段无法处理所有嵌套规则：`applyclassicphase` 通常只填补缺失值，运行时的递归过滤则会检查祖先节点。强制覆盖可能抹去子节点的不可获取状态。Ulduar 的 `ach(17341)` 规则还会直接读取 `WRATH_PHASE_THREE` 并改变自身 `u`，这类规则须逐项审查。这是代码回归案例，不能证明该成就在 Titan 存在。

| 选项 | 适用范围 | 权衡与必要检查 |
| --- | --- | --- |
| A. 累积构建标签 | 首次发布只包含已验证的开放内容。 | 使用已支持的布尔标签；数值型 `#if PHASE > 5` 仍是 TODO。每次进度变化都须重新构建；未导出的未来内容无法通过游戏内设置预览。 |
| B. Titan 专用 `u` ID | 保留未来内容，并复用现有阶段显示控制。 | 选择唯一且稳定的 ID；验证 Parser 保留行为、来源映射、父节点限制、Titan UI/默认值和保存设置。C# 改动视条件而定：符合现有策略的 ID 可能不需修改。须证明阶段和不可获取状态仍然正确。 |
| C. 独立进度数据字段 | 具体案例需要独立的阶段和可获取状态，而选项 B 无法准确表示。 | 设计验证、导出、继承、过滤、来源合并、计数、显示和设置。字段名称及结构尚未决定；这是较大的改动，不代表需要整体重写时间线。 |

讨论起点：首次交付只需已开放内容时可使用 A；需要显示未来内容时评估 B。如果有证据支持的需求无法用 B 安全表示，再考虑 C。本文档未选定任何方案、阶段 ID 或数据结构，也不对历史阶段进行全局重新映射。

#### 实施前需要决定的事项

1. **显示范围：** 仅已开放内容，还是包含未来内容预览？定义控件选择的是累积基准还是历史快照；选择 Phase 6 不应悄然变成“只显示 Phase 6”。计数和完成度必须区分预览来源与当前可获取来源。
2. **判定依据与未知状态：** 维护经过审查、独立于 `DataPatch` 的阶段清单，记录稳定阶段键/名称、来源范围、计划/已开放/未验证状态、发布和生效日期、地区/时区、观察到的构建及证据。服务器实际进度与用户显示选项应分开。没有已验证的映射时，不得从接口版本、语言区域、日历或 `C_Seasons.GetActiveSeason()` 推断进度。未知进度必须明确保留，不得默认为最高阶段。
3. **映射粒度：** 按获取来源判断，包括首领/难度、商人、任务奖励、货币/花费和活动时间窗口。同一物品可能有多个来源，且可获取状态不同。副本开放不代表每项奖励或升级也在同日开放；后续阶段也不会自动移除先前来源。
4. **历史规则与偏好设置：** 审查内嵌 Wrath 条件、父子过滤和多来源合并。根据实际观察到的 SavedVariables 行为决定默认值及必要迁移，并保留普通 Wrath 设置。不要假设阶段 ID 的数值顺序就是 Titan 进度。

新增数据前，请用户提供一份当前阶段及仍可进入的早期副本/来源的客户端观察，附日期/时区、服务器、构建、ATT 版本，以及截图或 Contributor Report；如果有尚未开放的来源或独立活动时间窗口，也一并提供。不要要求用户猜测阶段 API 数值。官方概述可用于架构讨论，但不能替代下文要求的逐条记录证据。

未来验证矩阵须覆盖 Phase 5 到 Phase 6 的累积行为、副本/活动各自日期、未知进度、ID 冲突与保留边界、阶段与移除状态共存、嵌套及合并来源，以及非 Titan 设置保留。使用同构建/不同阶段的测试夹具验证独立性；这些是合成案例，不代表引用的实际阶段转换共用同一构建。

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
| 1 | 收集下方客户端信息。确认已安装客户端的 `[Game]` 路径、完整客户端版本和构建号、确切的 `GetBuildInfo()` 返回值元组、项目标识，以及首个版本的内容范围。决定仅显示已开放内容还是包含未来内容，并记录阶段证据基准与非 Titan 基准。 | 证据能够确定运行时值和加载路径；阶段假设与所选方案明确，未知的客户端特定事项保持标记。 |
| 2 | 添加 Titan 数据用例之前，先加入失败时不启用 Titan 的检测器和共用 Wrath 加载路径。添加 Titan 配置及构建和调试入口；将 `../Titan/Database.xml` 放入普通 Wrath 配置的 `extra-database-files`，使 Wrath 的 `DataRequirements` 排除 Titan、Titan 的 `DataRequirements` 包含 Titan。添加范围受限的运行时 ReferenceDB 保护条件和早期 Titan 引用文件，并隔离构建时 ItemDB 输入。优先使用 DBContext 和配置标签。 | 测试夹具覆盖检测器边界和全部反例；身份未知或无效时，Titan 必须保持未启用。Wrath 和 Titan 共用 Wrath 加载路径，Era 和 SoD 保留 Vanilla 路径。两个 XML 路径都可能被枚举，但只有符合要求和运行时保护条件的数据才能赋值和注册。配置有效，且构建时 ItemDB 数据互斥。 |
| 3 | 使用一条有完整证据支持的 Titan 专属记录，端到端贯通 Parser、完整独立输出、早期引用数据和客户端加载。 | Titan 启用该记录及其引用数据；普通 Wrath 不启用 Titan 数据；每次登录恰好使用一套完整数据库。 |
| 4 | 实现选定的阶段策略和有证据支持的内容差异；处理所需的幻化、成就、难度和设置兼容性。 | 累积解锁、未知进度、来源添加/替换/移除、活动时间窗口和保存选项符合审查结果；现有有效来源仍然可用。 |
| 5 | 向 Contributor Reports 添加版本和配置信息；复用现有问题表单中的 `Titan` 选项及相关版本/背景字段。 | 报告能够识别 Titan、完整客户端版本、构建号和接口版本号、ATT 版本及观察背景；不重复添加游戏分支选项。 |
| 6 | 接入 CI、Release 和产物检查；完成跨游戏分支回归和游戏内验证。 | Titan 失败会使整体检查失败；全新安装、发布归档和适用的 db-sync 流水线均包含正确产物。 |

每项游戏数据新增或修正都要列出受影响的 ID、游戏分支、客户端构建号、ATT 版本、地区、观察日期和来源。按照 `AGENTS.md`，附上游戏内截图、Contributor Report 或 Wowhead 直接链接。同时记录游戏内容主张的独立来源数量；只有至少两个独立来源支持时，才能标记为已交叉验证。官方概览可以支持架构背景，但不能替代个别掉落、奖励或 ID 的证据。

## 验证方式

| 层次 | 用例与方法 | 通过标准 |
| --- | --- | --- |
| 配置与预处理 | 比较 Titan、普通 Wrath 和其他 Classic 配置的标签、阶段、补丁版本、输入和输出；检查数组替换与 `#if WRATH` 回退行为。 | Titan 所需标签完整，Wrath 专属原始元数据不会同时进入 Titan，其他配置设置保持不变。 |
| 版本边界 | 使用现有 Titan 促销和 ICC 竞速称号作为条件用例；测试 `3.80.0` 前后及移除边界。 | 程序行为符合经过审查的条件；数据的游戏证据另行验证。 |
| Titan 识别 | 使用测试夹具：Titan 的 `(11, 38002)`、普通 Wrath 的 `(11, 30405)`、SoD 的 `(2, 11509, SeasonOfDiscovery=2)`、Era 的 `(2, 11509)` 和 TBC Anniversary 的 `(5, 20506)`。还要测试项目 `11` 搭配接口版本 `37999`、`38000`、`38999` 和 `39000`，以及其他项目、缺失的全局变量、nil 返回值和错误类型。 | 仅数值类型的 Wrath 项目 ID 加上 `[38000, 39000)` 范围内的数值接口版本才判定为 Titan；边界结果依次为 false/true/true/false。标识缺失或无效时不启用 Titan。这些接口版本值是附件中的测试夹具，不是对当前客户端构建的断言。 |
| 加载与隔离 | 通过共用 Wrath 路径测试 Titan 和普通 Wrath；通过现有 Vanilla 路径测试 Era 和 SoD。检查 XML 枚举、DataRequirements、早期引用数据顺序、本地化赋值、分类注册和引用数据副作用。 | XML 可以枚举两个数据库路径，但未启用游戏分支的数据不会赋值或注册。Titan 专属与 Wrath 专属的引用数据、本地化和分类互斥；现有 Era/SoD 引用数据及 SoD 行为保持完整。不能将运行时保护条件视为阻止文件或代码块加载的机制。 |
| 阶段 | 使用同构建/不同阶段的合成测试夹具，覆盖 Phase 5 到 Phase 6 的累积行为、未来预览、未知进度、ID 冲突/保留边界、阶段与移除共存、嵌套/合并来源，以及副本/活动各自日期。审查内嵌的 `ach(17341)` Wrath 规则。 | 保留有效的早期来源；预览不代表当前可获取；没有非预期裁剪或移除状态覆盖；父节点限制和多来源行为明确；普通 Wrath 设置保持不变。 |
| 合并与来源 | 使用固定样本，覆盖同一 ID 的不同值、缺失记录、数组字段，以及一个物品具有多个来源的情况。 | 明确处理冲突；替换或移除一个来源不会影响其他来源；结果不依赖偶然的文件顺序。 |
| 原始数据 | 检查快照版本、语言区域、热修复记录和选择设置；测试错误游戏分支或构建号的输入。 | 不匹配的输入会被明确拒绝或报告，不能在没有提示的情况下被标记为成功的 Titan 构建。 |
| 产物 | 在干净的输出位置检查 ReferenceDB、LocalizationDB、Database.xml、Categories 和 XML 引用的文件。 | 所需文件齐全、配置一致，构建不依赖上一次运行留下的文件。 |
| Lua 行为 | 遵循现有独立 `tests/` 的约定，使用 Lua 5.1 测试夹具测试实际检测器、生成的保护条件、本地化和分类注册，以及引用数据副作用。现有工作流会自动发现嵌套套件；不要添加注册列表、框架，或仅复制纯判定逻辑进行测试。 | 所有新增或受影响的 Lua 测试仅使用 Lua 5.1；每个套件在新进程中执行，失败会传递至汇总检查。测试夹具不能替代游戏内兼容性验证。 |
| 完整 Parser | 在受支持的 Parser 构建环境中运行数据流水线，保留配置、输入快照和错误记录。 | 完整构建成功。将其记录为工具集成验证，与 Lua 5.1 插件测试分开记录。 |
| 跨游戏分支回归 | 使用相同工具、快照和设置，比较 Retail、Era、SoD、TBC、Wrath、Cata、MoP 和 Forever。共享改动影响 PTR/Beta 时，也将其纳入。 | 除预先列出的合理差异外，非 Titan 产物保持不变。差异可追溯，不能通过忽略整个文件来掩盖差异。 |
| 游戏内 | 在 Titan 和普通 Wrath 中登录或重载；测试数据搜索、阶段设置、实际副本难度、已收集和未收集外观，以及 Contributor Reports。必要时检查账号同步。 | 正确数据库加载且没有 Lua 错误，收藏状态与实际状态相符。不会把非 Titan 的中国区或 zhCN 客户端误判为 Titan。 |
| CI 与交付 | 故意让 Titan 步骤失败以测试整体关卡；检查发布 zip、干净检出、缺失和过期文件，以及适用的 db-sync 哈希和 dirty-db 保护。 | `continue-on-error` 不能吞掉失败；交付产物包含完整的 Titan 输出。 |

完整 Parser 测试必须使用其受支持的执行环境。本规划不会替换 Parser 的 NLua/原生 Lua 依赖。分别记录测试工具、数据快照、预期结果和实际结果；Lua 测试夹具通过，不能证明完整 Parser 或客户端已经验证。

现有 [Lua 回归测试工作流](../../.github/workflows/LuaRegression.yml) 会递归发现 `tests/**/*.lua`，按路径排序，并为每个套件启动新的 `lua5.1` 进程。当前路径过滤覆盖 `AllTheThings.lua`、`src/**`、`lib/**`、`tests/**` 和工作流本身。当 Titan 测试夹具检验 TOC 加载或生成的保护条件时，应按需将相关的 `AllTheThings.toc`、`db/**` 或 `.contrib/**` 依赖路径纳入触发条件；目前仅修改这些路径不会触发该工作流。应同时验证套件发现与汇总失败报告。本次文档更新未执行这些套件。

## 需要提供的 Titan 客户端信息

### 优先提供的信息

不必一次提供全部信息。前四项足以决定构建和加载调查的下一步。

| 信息 | 建议内容 | 用途 |
| --- | --- | --- |
| 完整客户端版本 | 登录界面的版本文本或截图，保留完整版本和构建号；如果知道接口版本号，也一并提供。 | 选择 Titan 配置和数据快照；不要把仓库中的 `38002` 当作实际客户端版本。 |
| 产品与安装位置 | Battle.net 中选择的产品和版本，以及实际游戏文件夹和 `Interface/AddOns/AllTheThings` 路径。个人目录名称可以遮盖。 | 确认实际产品和插件位置；不要猜测 `_titan_` 等文件夹名称。 |
| 游戏环境 | 地区、界面语言、服务器名称，以及正式服或测试环境。 | 建立识别正例和反例，区分 Titan、普通中国区 Wrath 和语言设置。 |
| ATT 状态 | ATT 版本、来源或提交，当前是否能加载，以及首个 Lua 错误的完整文本（如有）。 | 识别当前产物和兼容性；没有错误时直接说明。 |
| 阶段观察 | 当前阶段与一个仍可进入的早期副本/来源；如果有尚未开放的来源或独立活动时间窗口，也请提供。附日期/时区、服务器、构建、ATT 版本，以及截图或 Contributor Report。 | 区分累积可获取状态、活动日期和客户端版本；不要从可进入副本推断每项奖励。 |
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

以下路径均相对于仓库根目录。“新增”表示尚不存在的计划路径；“视条件修改”表示改动需要调查或测试支持；“生成”表示由工具生成，不手动修补；“复用/验证”表示现有能力，除非发现缺口，否则不计划修改。目录条目代表一组文件；选定范围和快照后再确定其完整内容。

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
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | 视条件修改 | 验证所选阶段模型的保留上限与时间线交互。仅当现有规则无法保留并验证所需表示方式时才修改；游戏内阶段界面本身不代表需要 C# 改动。 |
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
| `src/Settings/Pages/Phases.lua` | 视条件修改 | 选择 B 或 C 时添加 Titan 阶段控件和默认值，区分实际进度与显示选项；首个发布版本没有阶段界面时推迟处理。 |
| `src/Modules/Filter.lua`, `src/DataHandling.lua`, `src/Settings/Settings.lua` | 视条件修改 | 审查父子过滤、按阶段状态合并来源、保存的数字 ID 和默认值。仅按所选模型或已证实的迁移需求修改，保留非 Titan 选项。 |
| `src/Classes/Transmog.lua`, `src/Settings/Settings.lua`, `src/Settings/Pages/General.lua` | 视条件修改 | 检查外观收集和设置中的版本条件；依据已验证能力更新。 |
| `src/Classes/Achievement.lua`、同目录下的 `Achievement.Classic.lua`、`Difficulty.lua`，以及 `src/UI/Windows/Illusions.lua` | 视条件修改 | 仅调整测试证明不兼容的成就、难度或功能路径。 |
| `src/Modules/Contributor.lua`, `src/UI/Windows/Debugger.lua` | 修改 | 向报告添加配置、完整版本、构建号和接口版本号、语言区域，以及必要的环境详情；明确记录未知值。 |
| `AllTheThings.lua`, `src/UI/Windows/Account Management.lua` | 视条件修改 | 验证角色数据和来源收集同步；仅在证明确有必要时添加隔离或迁移。 |

### 测试

| 文件 | 类型 | 计划内容 |
| --- | --- | --- |
| `tests/titan-flavor-loading.lua` | 新增 | 遵循现有独立 `tests/` 的约定；使用 Lua 5.1 测试实际检测器和生成的加载保护条件，包括本地化、分类和引用数据副作用，以及非匹配客户端测试夹具。不要创建新框架。 |
| `tests/titan-phases.lua` | 新增/视条件修改 | 计划使用 Lua 5.1 测试夹具验证所选运行时阶段模型，包括来源过滤/合并、不可获取状态、未知进度和保存设置。Parser 裁剪检查保留在支持的 Parser 流水线中，不以模拟结果证明完整 Parser 行为。 |

### 构建交付与文档

| 文件或目录 | 类型 | 计划内容 |
| --- | --- | --- |
| `.github/workflows/Parser.yml` | 修改 | Titan 调用、触发和验证策略、整体成功检查，以及必要的产物检查；C# 源码改动也需要相应验证。 |
| `.github/workflows/LuaRegression.yml` | 视条件修改 | 复用自动发现计划 Titan 套件的能力和汇总检查。仅针对测试夹具实际检验的 TOC、生成数据库或 Parser/来源依赖扩展触发条件；不需要手动套件注册列表。 |
| `.github/workflows/Release.yml`、同目录下的 `Parser_Objective.yml` | 修改 | 将 Titan 纳入 Release 和手动全版本构建。 |
| `.github/workflows/Parser_with_new_CD.yml` | 视条件修改 | 如果保留此交付路径，则更新其游戏分支集合和整体检查。在探索基准中，该工作流针对 `forever-beta`，不视为 master 上正在使用的生产 CD 工作流。 |
| `.github/ISSUE_TEMPLATE/data_discrepancy.yml`、同目录下的 `bug_report.yml`、`feature_request.yml` | 复用/验证 | 三份表单均已包含 `Titan`。复用现有选项和相关版本/背景字段；仅在报告整合发现具体缺口时修改。 |
| `.pkgmeta`, `.contrib/db-sync/sync_db.py`, `.contrib/db-sync/README.md` | 视条件修改 | 验证现有通用打包和同步机制能否承载 Titan；仅修复必要缺口，并使文档与所选流水线一致。 |
| `Link ATT to WoW.bat` | 视条件修改 | 确认实际产品文件夹后，评估是否需要新增安装路径。 |

现有 `db-sync/README.md` 描述了提交与公开发布资源的映射，但在探索基准中，`Parser.yml` 只上传通用 Actions 产物；公开打包工作流为 `Parser_with_new_CD.yml`。交付前必须明确选择流水线；不能仅凭 README 就声称 master 已提供这一能力。

第一阶段不新增独立的 `.contrib/.db/titan/` 根目录。如果后续证明必须建立这一实体数据树，再设计多来源加载与明确的替换和移除语义；当前 Parser 支持 shared 加单个 `root-data`，没有能自动继承 standard 的通用覆盖层。

## 主要代码参考

实施前重新检查这些位置；行号对应上述仓库复核基准。

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
| [阶段常量](../.db/shared/lib/Constants/Phases.lua)，41–53、84–122、2366–2402；[Shortcuts](../.db/shared/functions/Shortcuts.lua)，681–695、1264–1265 | 已占用 ID、Wrath 阶段定义，以及填补缺失值与强制应用阶段的区别。 |
| [Framework.Processing.cs](../src/Parser/Framework/Framework.Processing.cs)，919–942、5002–5062；[Program.cs](../src/Parser/Program.cs)，965–970 | 时间线裁剪/覆盖先于阶段保留检查；数值型阶段预处理仍是 TODO。 |
| [阶段设置](../../src/Settings/Pages/Phases.lua)，21–68、95–191；[Settings](../../src/Settings/Settings.lua)，591–623、1174–1180 | 逐 ID 显示、历史默认值、硬编码页面和保存选项。 |
| [Filter](../../src/Modules/Filter.lua)，575–580、617–624；[DataHandling](../../src/DataHandling.lua)，803–831、932–955；[Ulduar](<../.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua>)，643–655 | 父链过滤、来源合并，以及需要审查的内嵌 Wrath 成就阶段规则。 |
| [数据差异表单](../../.github/ISSUE_TEMPLATE/data_discrepancy.yml)，25；[错误报告表单](../../.github/ISSUE_TEMPLATE/bug_report.yml)，25；[功能提案表单](../../.github/ISSUE_TEMPLATE/feature_request.yml)，26 | 应复用的现有 Titan 选项。 |
| [LuaRegression.yml](../../.github/workflows/LuaRegression.yml)，3–22、51–61、77–92 | 当前路径过滤、自动套件发现、新的 Lua 5.1 进程和汇总失败检查。 |
