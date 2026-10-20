# Titan Reforged（泰坦重铸）专属数据库规划

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

状态：运行时基础实现草稿；Parser 升级期间暂停相关工作。更新：2026-10-21。

仓库基线：`master` 的 `0f963463d9f0fa1e116223809f496187df4b8687`。

本规划涵盖中国区 Titan Reforged（泰坦重铸，Chrono 服务器）的 Parser 配置、数据源、游戏内加载、Contributor Reports，以及构建和发布交付。目标是让 Titan 拥有独立的数据库产物，同时保留已确认可复用的 `standard/shared` 数据源，并将 Era、SoD、Wrath、Titan 的开放进度分开处理。

当前交付范围是运行时支持、诊断、独立 Lua 5.1 测试与文档。Parser/配置、手写数据来源适配、生成数据库及构建/发布集成，在 Parser 升级期间保留在此次交付之外。目前尚未启用生成的进度配置，也未新增 Titan 数据库加载项。

三份问题表单已提供 `Titan` 选项，Lua 回归测试工作流也会自动发现独立套件；此次实现复用这些能力。下文选定的架构将内容版本与进度分离；客户端证据清单仍为待办。

## 初始实现状态

| 范围 | 当前交付与待办 |
| --- | --- |
| 身份与能力 | 已实现暂定 `app.IsTitanReforged()` 检测、能力检查与诊断；已安装客户端数值仍未验证。 |
| 进度运行时 | 已实现命名空间配置、显示默认值、保存偏好、多来源与明确的可获取状态更新。未提供 `app.ProgressionProfile` 时沿用现有阶段处理。 |
| 内容版本 | 运行时保留各来源条件；文档与合成用例区分 SoD 重制首领/奖励及重复 NPC ID，不创建或替换掉落表。 |
| 加载与数据 | 独立 `db/Titan/`、数据库启用保护、生成配置、实际来源映射及手写 callback 适配，仍待 Parser 集成。当前 TOC 只新增运行时模块加载。 |
| 输入与交付 | 快照隔离、原始数据重新生成、Parser 修改、生成产物及 Parser/Release 工作流暂停，不纳入当前提交。 |
| 验证 | 独立 Lua 5.1 套件以固定用例执行实际运行时代码。生成数据集成与游戏内验证仍待完成；用例值不是游戏观察。 |

已实现的接口、测试命令与集成边界见 [RUNTIME_PROGRESSION.md](RUNTIME_PROGRESSION.md)。下文保留完整目标架构与待补证据；Parser 行为描述是后续集成要求，不代表已交付暂停中的修改。

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

#### 已选定架构：内容版本与开放阶段分离

此次实现采用独立进度数据，取代此前通过累积构建标签省略未来内容的方案。以下三个判断必须分开：

| 判断 | 表达方式 | 职责 |
| --- | --- | --- |
| 此 flavor 使用哪些内容？ | 现有手写来源、flavor 条件、时间线兼容性，以及副本/难度/首领/奖励分支 | 选择正确的内容版本与获取关系。 |
| 某个获取来源何时开放？ | 共享的中性来源映射，加上各 flavor 的阶段配置 | 为范围明确的来源应用独立阶段键。 |
| 当前显示选项是否允许该来源？ | 运行时阶段过滤，搭配 `u` 与活动条件 | 完整判断同一个来源，不抹除移除或活动限制。 |

SoD 不能视为只换了开放日程的 Classic 数据。重制副本可能更换首领、奖励、兑换费用与难度。映射表只标记现有来源，不会将 Classic 掉落表复制到 SoD，也不会借助 Phase 映射替换首领。不同内容版本保留各自的数据，仅共享已确认相同的部分。此次沿用现有 flavor/时间线选择方式，并未新增通用数据覆盖或替换引擎。

来源通过仓库文件路径及有序的祖先标识字段定位。只使用副本 ID 不够：Classic 与 Wrath 的 Naxxramas 都是 `754`；MC 的旧版 40 人难度 `9` 与 SoD 难度 `201` 也是不同来源。同一 NPC 还可能提供不同开放时间的奖励：现有 MC 数据中，NPC `227819` 一份清单属于 Phase 4，包含 T1 物品 `226659`；另一份属于 Phase 5，包含 T2 物品 `232099`。如果把整个 NPC 映射到 Phase 5，就会错误隐藏较早的奖励，必须保留各来源的条件。这些是仓库回归用例，不是新取得的游戏内观察。

共享映射位于 `.contrib/.db/shared/.config/progression/bindings.json`；`era.json`、`sod.json`、`wrath.json`、`titan.json` 分别提供阶段定义、显示基准、中性内容映射与明确声明的旧字段适配。例如，同一 Ulduar 来源分别映射到 `wrath:2` 与 `titan:6`；SoD MC 为 `sod:4`，旧版则为 `era:1`。键稳定且具有命名空间，只能在同一配置内比较顺序。新增配置不需要修改引擎的 flavor 白名单。

Parser 在合并来源之前应用映射，此时仍保有原始文件名与 `groups` 层级。导出节点使用 `releasePhases = { "titan:6" }`；活动配置数据放在有保护条件的 LocalizationDB，保留 Era/SoD 共享 ReferenceDB 的现有路由。实际映射命中数另存于诊断数据，不污染 AddOn 对象。

同一来源及祖先的开放条件采用 AND；不同获取来源采用 OR，但每个来源必须同时符合自己的阶段、不可获取与活动条件。已开放但已移除的来源，不能借用另一个未开放来源的可获取状态。合并与复制必须保留这些配对；callback 引起的状态变化也必须反映到界面上的数据副本。

只有明确声明的开放阶段 ID 才会在已映射范围内从 `u` 适配。`u=1`、`u=2`、其他状态与未声明的子阶段条件保留。子节点如果有不同阶段，必须明确映射，否则保留旧制兼容行为。现有 SoD 阶段别名块仍供未迁移数据使用，不能依靠已丢失原始名称的数值反推含义。

待集成的手写数据修改会将六处现有 Ulduar callback 适配为使用 `Progression.SetSourceAvailability(group, "u", value)`，只修改自己的状态字段，也适用于合并后的界面副本。通用 callback 调用方式保持不变。后续迁移某个范围时，如果旧 callback 会修改合并来源的 `u` 或 `e`，须使用这个明确的适配接口，保留其他来源条件的配对。

#### 显示策略、迁移范围与证据

- `app.ProgressionProfile` 表示活动 flavor 与显示基准。平面的 `ReleasePhases` 设置保留明确的 `false`，复制配置时不共享可变表。阶段如果声明 `legacyU`，仍尊重现有数值型偏好；Titan 不继承 Wrath 阶段偏好。
- Phase 页面提供该 flavor 的开放阶段选项，默认值来自配置，不由客户端接口版本或日历推断。未知映射默认隐藏，可明确勾选查看；无效或未知基准会被拒绝。显示选项不代表已检测服务器实际阶段。
- 只修改基准不应改变兼容的分类/来源主体；未来阶段仍保留供游戏内显示。切换阶段不会产生已被 flavor 或时间线排除的内容。
- 初期迁移部分 MC/BWL/AQ/Naxx 版本、Ulduar，以及已审查的 Titan 路线图来源。未映射来源维持旧制；不能声称所有 ATT 阶段数据都已迁移。
- Titan 暂定映射为 Ulduar 6；Karazhan/Gruul/Magtheridon 7；BWL/Onyxia/AQ20 8；AQ40/Nightmare Dragons 9；ICC/Ruby Sanctum 10。Black Temple 与 Hyjal 保留导出并标为未知；不推断早期 Titan MC/Naxx 阶段。逐条首领、掉落、费用与难度行为仍未验证。
- 发布日、生效日与观察日分开记录。官方路线图只支持暂定来源范围，不能证明全部奖励与历史数据相同。逐条变更仍需截图、Contributor Report 或直接 Wowhead 证据，并记录独立来源数与验证状态。

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
3. 为生成的 Wrath 和 Titan ReferenceDB 文件添加仅针对这两者启用的运行时返回保护条件。原生成器不会使用 `DataRequirements` 保护 ReferenceDB，SoD XML 也不包含独立的 SoD ReferenceDB。全局应用这些要求会改变现有 Era/SoD 的引用数据行为。
4. 保留通用的 `db\[Game]\ReferenceDB.lua` TOC 条目，并紧接其后加入带保护条件的 `db\Titan\ReferenceDB.lua`，位置在 `base.lua` 之前。核心初始化前必须恰好启用一套完整的引用数据：`base.lua` 会读取 `RaceDB` 并初始化 `Presets.ALL`，而 `FactionData.lua` 会从引用数据派生 `FACTION_RACES`。如果推迟到 Database.xml 才选择引用数据，先前派生的状态就可能出现问题。

这些保护条件阻止未启用数据的赋值、构造和注册；不会阻止文件读取、Lua 解析或 XML 枚举。检查每个生成的分类和本地化产物，包括任何单独交付的 auto-locale 输出。`db/Titan/` 是 ATT 内部的产物目录，不是新的 Blizzard 游戏类型。实施此加载方案前，验证客户端共用的 Wrath 路径，并保留现有 Era/SoD 引用数据。

Blizzard 已确认 Titan 具备幻化和收藏系统，ATT 也已有一些根据 API 是否可用来启用功能的逻辑。逐项验证 Titan 的能力和数据语义；不要将 Titan 设为 `IsRetail=true` 来启用全部 Retail 路径。[官方功能概览](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

先检查实际的 SavedVariables 共享情况和来源收集语义，再决定账号同步方式。只有证明确实需要隔离或迁移时，才扩大改动范围；本规划不预设已经存在跨产品数据污染。

## 实现顺序与完成条件

| 顺序 | 工作 | 完成条件 |
| --- | --- | --- |
| 1 | 记录暂定客户端身份、证据与未修改的 master 基准。 | 未知值明确列为后续客户端确认项，不阻塞此次已授权的 bootstrap。 |
| 2 | 隔离 Titan 输入/输出，加入共享 Wrath 路由的加载保护。 | 无效身份不启用 Titan；普通 Wrath 快照不会混入；只有活动数据集注册。 |
| 3 | 将范围明确的内容版本映射至各 flavor 的阶段配置。 | 真实来源命中；重复的副本/NPC ID 不混合不同首领、奖励或阶段；只改基准不裁剪数据主体。 |
| 4 | 串接过滤、设置、多来源与 callback 更新。 | AND/OR 判断保留移除及活动限制、现有偏好与界面副本的更新。 |
| 5 | 加入能力检查、诊断与构建/产物验证。 | 报告区分假设与观察；Titan 缺失文件或失败会使整体检查失败。 |
| 6 | 在 Windows 构建当前 Parser，生成正式 flavor 矩阵，审查后更新 draft。 | 记录精确输入、工具/输出哈希、完成日志及回归结果；游戏内验证仍另列待办。 |

代码、生成产物与文档应可分别审查。数据主张须列出 ID、flavor/构建、ATT 版本、观察情境与证据。依 `AGENTS.md`，逐条变更使用截图、Contributor Report 或直接 Wowhead 链接；官方概述或 AI 说明不能替代。少于两个独立来源支持的主张仍标为未验证。

## 验证方式

| 层次 | 用例与方法 | 通过标准 |
| --- | --- | --- |
| 配置与预处理 | 比较 Titan、普通 Wrath 和其他 Classic 配置的标签、阶段、补丁版本、输入和输出；检查数组替换与 `#if WRATH` 回退行为。 | Titan 所需标签完整，Wrath 专属原始元数据不会同时进入 Titan，其他配置设置保持不变。 |
| 版本边界 | 使用现有 Titan 促销和 ICC 竞速称号作为条件用例；测试 `3.80.0` 前后及移除边界。 | 程序行为符合经过审查的条件；数据的游戏证据另行验证。 |
| Titan 识别 | 使用测试夹具：Titan 的 `(11, 38002)`、普通 Wrath 的 `(11, 30405)`、SoD 的 `(2, 11509, SeasonOfDiscovery=2)`、Era 的 `(2, 11509)` 和 TBC Anniversary 的 `(5, 20506)`。还要测试项目 `11` 搭配接口版本 `37999`、`38000`、`38999` 和 `39000`，以及其他项目、缺失的全局变量、nil 返回值和错误类型。 | 仅数值类型的 Wrath 项目 ID 加上 `[38000, 39000)` 范围内的数值接口版本才判定为 Titan；边界结果依次为 false/true/true/false。标识缺失或无效时不启用 Titan。这些接口版本值是附件中的测试夹具，不是对当前客户端构建的断言。 |
| 加载与隔离 | 通过共用 Wrath 路径测试 Titan 和普通 Wrath；通过现有 Vanilla 路径测试 Era 和 SoD。检查 XML 枚举、DataRequirements、早期引用数据顺序、本地化赋值、分类注册和引用数据副作用。 | XML 可以枚举两个数据库路径，但未启用游戏分支的数据不会赋值或注册。Titan 专属与 Wrath 专属的引用数据、本地化和分类互斥；现有 Era/SoD 引用数据及 SoD 行为保持完整。不能将运行时保护条件视为阻止文件或代码块加载的机制。 |
| 阶段与内容版本 | 测试同构建不同基准的数据主体、配置隔离、未来/未知显示、`u`/活动配对、重复副本/NPC ID、不同首领/奖励、较晚子来源、保存偏好，以及六处 Ulduar callback 对原始来源与界面副本的更新；检查实际生成的映射与内容。 | 不因 Phase 裁剪、不混入其他版本掉落、不覆盖移除状态，也不拼接不同来源的可获取条件；保留已有明确偏好。 |
| 合并与来源 | 使用固定样本，覆盖同一 ID 的不同值、缺失记录、数组字段，以及一个物品具有多个来源的情况。 | 明确处理冲突；替换或移除一个来源不会影响其他来源；结果不依赖偶然的文件顺序。 |
| 原始数据 | 检查快照版本、语言区域、热修复记录和选择设置；测试错误游戏分支或构建号的输入。 | 不匹配的输入会被明确拒绝或报告，不能在没有提示的情况下被标记为成功的 Titan 构建。 |
| 产物 | 在干净的输出位置检查 ReferenceDB、LocalizationDB、Database.xml、Categories 和 XML 引用的文件。 | 所需文件齐全、配置一致，构建不依赖上一次运行留下的文件。 |
| Lua 行为 | 遵循现有独立 `tests/` 的约定，使用 Lua 5.1 测试夹具测试实际检测器、生成的保护条件、本地化和分类注册，以及引用数据副作用。现有工作流会自动发现嵌套套件；不要添加注册列表、框架，或仅复制纯判定逻辑进行测试。 | 所有新增或受影响的 Lua 测试仅使用 Lua 5.1；每个套件在新进程中执行，失败会传递至汇总检查。测试夹具不能替代游戏内兼容性验证。 |
| 完整 Parser | 在受支持的 Parser 构建环境中运行数据流水线，保留配置、输入快照和错误记录。 | 完整构建成功。将其记录为工具集成验证，与 Lua 5.1 插件测试分开记录。 |
| 跨版本回归 | 比较全新 master 与候选版本的 Retail、Era、SoD、TBC、Wrath、Cata、Mists、Forever 输出，另生成 Titan；此次不运行 Beta。 | Era/SoD/Wrath 差异须符合明确列出的进度/保护条件变更；未启用新模型的版本应保持等价，不能忽略整个文件来掩盖差异。 |
| 游戏内 | 在 Titan 和普通 Wrath 中登录或重载；测试数据搜索、阶段设置、实际副本难度、已收集和未收集外观，以及 Contributor Reports。必要时检查账号同步。 | 正确数据库加载且没有 Lua 错误，收藏状态与实际状态相符。不会把非 Titan 的中国区或 zhCN 客户端误判为 Titan。 |
| CI 与交付 | 故意让 Titan 步骤失败以测试整体关卡；检查发布 zip、干净检出、缺失和过期文件，以及适用的 db-sync 哈希和 dirty-db 保护。 | `continue-on-error` 不能吞掉失败；交付产物包含完整的 Titan 输出。 |

完整 Parser 测试必须使用其受支持的执行环境。本规划不会替换 Parser 的 NLua/原生 Lua 依赖。分别记录测试工具、数据快照、预期结果和实际结果；Lua 测试夹具通过，不能证明完整 Parser 或客户端已经验证。

现有 [Lua 回归测试工作流](../../.github/workflows/LuaRegression.yml) 会自动发现独立套件，并各自使用新的 Lua 5.1 进程。此次沿用现有源码/测试触发条件，不修改工作流；依赖 Titan 生成数据的测试保留至 Parser 恢复集成后再提交。

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

Contributor Reports 保留现有 `GameBuild` 接口版本字段，并新增完整采集的客户端版本/构建/接口、类型、project ID、地区/语言区域/服务器，以及生成数据库的配置/阶段假设。未知值和服务器实际进度明确保留。

### 通过后续诊断确认的信息

以下是技术诊断结果，不要求用户从游戏界面自行推断。目前 Contributor Reports 和 Raw/Readable Debugger 导出已包含只读诊断字段。这些字段报告能力是否存在和观察值，不代表已验证收藏 API 语义、服务器进度或已安装客户端的 `[Game]` 替换结果。

- 已安装 Titan 客户端上确切的 `GetBuildInfo()` 返回值元组和各值类型；`WOW_PROJECT_ID` 与 `WOW_PROJECT_WRATH_CLASSIC` 的值和类型；以及 `C_Seasons.GetActiveSeason()` 的行为与 `Enum.SeasonID.SeasonOfDiscovery` 是否可用。采集完成前，检测器对于接口版本返回值的假设仍未在用户客户端上验证。
- 已安装客户端上 `[Game]` 实际解析到的目录、TOC 加载顺序，以及 ReferenceDB、LocalizationDB、Categories 和补充 XML 的来源。
- 实际可用的幻化和收藏 API 函数、返回语义及 sourceID 数据一致性；同时采样检查成就和难度能力。
- SavedVariables 位置、产品之间是否共享，以及账号同步时来源数据的实际行为。
- 是否有 Titan Wago 或其他权威快照，以及其构建号、语言区域和热修复覆盖范围。

此次交付建立运行时基础、能力检查与诊断。数据库路由、来源映射及生成数据验证仍待 Parser 集成；新增或替换 Titan 内容仍需逐条证据。

## 实现文件清单

此清单涵盖完整目标架构。当前仅交付运行时 Lua、独立运行时测试、可选性能测量工具与文档；下列 Parser/配置/手写数据来源/生成产物/工作流仍待集成，未提交。路径相对于仓库根目录，生成主体必须由匹配工具产生。

| 文件 | 用途 |
| --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config`、Era/SoD/Wrath 配置、`shared/.config/root.config` | Titan 隔离配置与独立进度配置。 |
| `.contrib/.db/shared/.config/progression/{bindings,era,sod,wrath,titan}.json` | 限定来源的映射与各 flavor 阶段定义/默认值。 |
| `.contrib/src/Parser/{ProgressionCatalog,TitanProfile,CustomConfiguration}.cs`、`Parser.csproj` | 映射表、快照验证与导出支持。 |
| `.contrib/src/Parser/Framework/{Framework,Framework.Merge,Framework.Objects}.cs` | 合并前映射、不同条件的来源分离、活动配置与引用保护导出。 |
| Wrath 原始 ItemDB 与生成的 `.dynamic/03 - Wrath.lua` | 普通 Wrath 专用原始数据 context，通过 Consolidator 重新生成。 |
| `.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua` | 旧 Wrath callback 使用独立阶段偏好，不推断 Titan 成就行为。 |
| `AllTheThings.toc`、`src/WoW API Wrappers.lua`、`src/Modules/Progression.lua` | 早期识别/加载与运行时进度引擎。 |
| `src/DataHandling.lua`、`src/Classes/base.lua`、`src/Modules/Filter.lua`、Settings 与 Phases 页面 | 来源合并/复制、递归过滤、保存偏好及阶段控制。 |
| Transmog、General 设置、Contributor、Debugger 模块 | 限定范围的能力回退与诊断导出。 |
| `db/{Titan,Wrath,Vanilla,VanillaSOD}/`、`.contrib/.tools/Parser.exe` | 工具生成的数据库与匹配 Parser；其他 flavor 仅由已验证运行更新。 |
| 构建/调试入口、`.contrib/build-parser.ps1`、`.contrib/validate-db.py`、四条 Parser/Release 流程 | 构建当前源码、生成 Titan、验证全新输出并汇总失败。 |
| `tests/{flavor-progression,titan-flavor-loading}.lua`、`.contrib/titan/` 测试与产物验证测试 | Lua 5.1、编译后 Parser、快照及交付验证。 |
| `.contrib/titan/`、Titan Wago 目录、`.contrib/db-sync/README.md` | 三语架构、操作说明、隔离快照工具与交付文档。 |

此次不虚构 Titan 原始 ItemDB/Wago 快照，也不新增独立 `.db/titan` 根目录、全面重写时间线或迁移全部旧阶段。新的 Titan 记录、替换掉落表与安装快捷方式仍需后续证据。

## 主要代码参考

请按当前符号查阅：`ProgressionCatalog.cs`、`TitanProfile.cs`、[运行时进度](../../src/Modules/Progression.lua)、[阶段设置](../../src/Settings/Pages/Phases.lua)、[过滤](../../src/Modules/Filter.lua)、[来源合并](../../src/DataHandling.lua)、[旧阶段定义](../.db/shared/lib/Constants/Phases.lua)、[共享快捷方式](../.db/shared/functions/Shortcuts.lua)。
