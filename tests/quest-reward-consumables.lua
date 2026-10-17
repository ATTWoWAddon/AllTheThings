-- Lua 5.1 regression tests for ordinary consumable source windows and tooltip paths.
-- Run: lua5.1 tests/quest-reward-consumables.lua [repository-root]
-- Loads the real classifier, source builder, source searcher, object cloning/merging,
-- active UpdateGroups/TopLevelUpdateGroup, search processing, popout entry points and checkbox.
-- Native UI, cache indexing and collection switches are fixture services.
-- Source-window relationships are synthetic; tooltip cases load actual Camelot quest/item payloads.

---@class ATTQuestWindowTestNode: ATTQuestSourceView
---@field hash? string Raw fixture inputs omit this field; the constructed base class computes it lazily.
---@field [string] ATTQuestWindowTestValue Dynamic identifiers and fixture metadata.
---@field g? ATTQuestWindowTestNode[] Original or displayed children.
---@field parent? ATTQuestWindowTestNode Original containing node.
---@field sourceParent? ATTQuestWindowTestNode Existing clone fallback.
---@field link? string Synthetic native item link.
---@field text? string Display label.
---@field name? string Display name.
---@field isBaseSearchResult? boolean Existing search-result marker.
---@field sourceIgnored? boolean Existing exclusion from parent collection totals.
---@field collectible? boolean|integer Existing collection flag.
---@field collected? boolean|integer Existing completion flag.
---@field total? number Calculated collection denominator.
---@field progress? number Calculated collection progress.
---@field costTotal? number Calculated cost contribution.
---@field upgradeTotal? number Calculated upgrade contribution.
---@field isDaily? boolean Daily reset input.
---@field isWeekly? boolean Weekly reset input.
---@field isMonthly? boolean Monthly reset input.
---@field isYearly? boolean Yearly reset input.
---@field isWorldQuest? boolean World quest reset input.
---@field headerID? ATTHeaderID Classification identifier.
---@field filterID? FilterID Classification identifier.
---@field factionID? FactionID Specialized item class selector.
---@field type? string Specialized item class selector.
---@field qItemID? ItemID Quest-start item association.
---@field spellID? SpellID Spell association.
---@field sourceID? SourceID Appearance source carried by the unrelated quest reward.
---@field recipeID? RecipeID Crafting source identifier.
---@field characterUnlock? boolean Specialized collection marker.
---@field nomerge? boolean Existing unique-hash flag.
---@field rank? number Existing hash rank.
---@field IgnorePopout? boolean Existing row-click guard.
---@field OnPopout? fun(self: ATTQuestWindowTestNode): ATTQuestWindowTestNode Existing popout replacement.
---@alias ATTQuestWindowTestValue nil|boolean|number|string|ATTQuestWindowTestWindow|ATTQuestWindowTestNode|ATTQuestWindowTestNode[]|ATTProvider[]|ATTCost[]|CreatureID[]|string[]|ATTQuestWindowTestVariant[]|ATTQuestSourceUpdate|ATTQuestSourceSetVisibility
---@alias ATTQuestWindowTestGetter fun(node: ATTQuestWindowTestNode): ATTQuestWindowTestValue
---@alias ATTQuestWindowTestClassMember ATTQuestWindowTestValue|ATTQuestWindowTestGetter
---@alias ATTQuestWindowTestFields { [string]: ATTQuestWindowTestClassMember }
---@alias ATTQuestWindowTestPredicate fun(node: ATTQuestWindowTestNode): boolean|integer|nil
---@alias ATTQuestWindowTestSubclass string|ATTQuestWindowTestFields|ATTQuestWindowTestPredicate
---@alias ATTQuestWindowTestConstructor fun(id: integer|string, fields?: ATTQuestWindowTestNode): ATTQuestWindowTestNode
---@class ATTQuestWindowTestVariant
---@field __name? string Production variant metadata.
---@field __condition? ATTQuestWindowTestPredicate Production variant predicate, not exercised here.
---@alias ATTQuestWindowTestFlags { [string]: boolean }
---@alias ATTQuestWindowTestSources { [ItemID]: ATTQuestWindowTestNode[] }
---@alias ATTQuestWindowTestObjects { [string]: ATTQuestWindowTestNode }
---@alias ATTQuestWindowTestEvents { [string]: ATTQuestWindowTestEvent[] }
---@alias ATTQuestWindowTestEvent fun(...: boolean|string|ATTQuestWindowTestNode): nil
---@alias ATTQuestWindowTestWindows { [string]: ATTQuestWindowTestWindow }
---@alias ATTQuestWindowTestSearch fun(search: string): ATTQuestWindowTestNode[]?, string?, number?
---@alias ATTQuestWindowTestModule fun(addonName: string, app: ATTQuestWindowTestApp): nil
---@alias ATTQuestWindowTestResetFactory fun(): ATTQuestWindowTestPredicate
---@alias ATTQuestWindowTestClick fun(row: {index: integer}, reference: ATTQuestWindowTestNode, window?: ATTQuestWindowTestWindow): nil
---@alias ATTQuestWindowTestClickFactory fun(): ATTQuestWindowTestClick
---@alias ATTQuestWindowTestWindowChunk fun(window: ATTQuestWindowTestWindow): nil
---@alias ATTQuestWindowTestCheckboxChunk fun(child: ATTQuestWindowTestCheckboxParent, settings: ATTQuestWindowTestSettings, labels: ATTQuestWindowTestLabels): nil
---@alias ATTQuestWindowTestChunk ATTQuestTooltipTestLeaveFactory|ATTQuestTooltipTestSettingsChunk|ATTQuestTooltipTestSetDataFactory|ATTQuestTooltipTestPayloadChunk|ATTQuestTooltipTestAttachFactory|ATTQuestWindowTestModule|ATTQuestWindowTestResetFactory|ATTQuestWindowTestClickFactory|ATTQuestWindowTestWindowChunk|ATTQuestWindowTestCheckboxChunk

---@class ATTQuestWindowTestSettings
---@field Collectibles ATTQuestWindowTestFlags Existing tracking toggles.
---@field Get fun(self: ATTQuestWindowTestSettings, key: string): boolean? General switch.
---@field GetTooltipSetting fun(self: ATTQuestWindowTestSettings, key: string): boolean|number|nil Tooltip switch or location limit.
---@field Refresh fun(self: ATTQuestWindowTestSettings): nil Settings-page refresh boundary.
---@field CreateInformationType? fun(name: string, definition: ATTQuestTooltipTestInformation): nil Captures the real source-location processor.
---@field Set fun(self: ATTQuestWindowTestSettings, key: string, value?: boolean): nil Sets the general switch.
---@field UpdateMode fun(self: ATTQuestWindowTestSettings, mode: string): nil Forbidden global collection-mode refresh spy.

---@class ATTQuestWindowTestWindow
---@field Suffix string Existing window identity.
---@field data ATTQuestWindowTestNode Popout root assigned by real OnInitForPopout.
---@field visible? boolean Simulated frame visibility.
---@field updates integer Number of actual data updates.
---@field Toggle fun(self: ATTQuestWindowTestWindow): nil Toggles the existing frame.
---@field SetVisible fun(self: ATTQuestWindowTestWindow, visible: boolean): nil Frame visibility mock.
---@field SetData fun(self: ATTQuestWindowTestWindow, node: ATTQuestWindowTestNode): nil Real root/window association.
---@field AssignChildren fun(self: ATTQuestWindowTestWindow): nil Uses fixture parent assignment.
---@field ExpandData fun(self: ATTQuestWindowTestWindow, expanded: boolean): nil No-op native display expansion.
---@field Update fun(self: ATTQuestWindowTestWindow, force?: boolean): nil Runs actual UpdateGroups for this root.
---@field AddEventHandler fun(self: ATTQuestWindowTestWindow, event: string, callback: ATTQuestWindowTestEvent, immediate?: boolean): nil Connects the actual window refresh callback.
---@class ATTQuestWindowTestDefinition
---@field OnInit fun(window: ATTQuestWindowTestWindow): nil Real mini-list initializer.
---@field OnLoad? fun(window: ATTQuestWindowTestWindow, settings: ATTQuestWindowTestFlags): nil Not executed by the fixture frame.

---@class ATTQuestWindowTestLabels
---@field UNSORTED? string Unsorted-source path marker.
---@field HIDDEN_QUEST_TRIGGERS? string Hidden-source path marker.
---@field AND_OTHER_SOURCES? string Source overflow summary format.
---@field UNOBTAINABLE_ITEM_TEXTURES? { [integer]: string } Source availability textures.
---@field SOURCES? string Source header label.
---@field SOURCES_DESC? string Source description.
---@field SHOW_QUEST_REWARD_CONSUMABLES_CHECKBOX? string Setting label.
---@field SHOW_QUEST_REWARD_CONSUMABLES_CHECKBOX_TOOLTIP? string Setting tooltip.

---@class ATTQuestWindowTestFilters
---@field ItemUnbound fun(): false Existing binding filter.
---@field InGame? fun(node: ATTQuestWindowTestNode): true Tooltip fixture's availability filter.
---@class ATTQuestWindowTestModules
---@field QuestRewardVisibility ATTQuestRewardVisibilityAPI Actual feature API.
---@field Filter {Set: {ItemUnbound: fun(active?: boolean): nil}, Get: {ItemUnbound: fun(): false}, Filters: ATTQuestWindowTestFilters} UpdateGroups dependencies; category behavior is outside this source-window fixture.
---@field Reagent {GetReagentCollector: fun(group: ATTQuestWindowTestNode, info: ATTQuestWindowTestNode): nil} Unused asynchronous collector boundary.
---@field Upgrade {CollectibleAsUpgrade?: ATTQuestWindowTestPredicate} Getter imported by real Item declarations but not executed here.
---@field Item {CleanLink: fun(link: string): string} Plain item command normalization.
---@field Color? {Colorize: fun(text: string): string} Absent; actual UpdateGroups installs its fallback.

---@class ATTQuestWindowTestApp
---@field Modules ATTQuestWindowTestModules Loaded feature and update dependencies.
---@field L ATTQuestWindowTestLabels Existing localization lookup.
---@field Settings ATTQuestWindowTestSettings Mutable simulated settings.
---@field ThingKeys ATTQuestWindowTestFlags Real production thing-key registry.
---@field HeaderConstants { [string]: ATTHeaderID } Optional source headers; empty here.
---@field ReagentsDB { [ItemID]: { [RecipeID]: integer[] } } Synthetic recipe output index.
---@field GlobalVariants {AndLockCriteria: ATTQuestWindowTestFields, AndFactionBonus: ATTQuestWindowTestVariant} Actual Item-class registration inputs.
---@field CallbackHandlers {DelayedCallback?: ATTQuestWindowTestEvent, Callback?: ATTQuestWindowTestEvent} Captured but unused by synchronous update fixture.
---@field CreateRunner fun(name: string): ATTQuestWindowTestRunner Inert captured runner.
---@field CreateClass fun(name: string, key: string, fields: ATTQuestWindowTestFields, ...: ATTQuestWindowTestSubclass): ATTQuestWindowTestConstructor Actual Item declarations use this fixture class engine.
---@field CreateItem ATTQuestWindowTestConstructor Actual Item constructor.
---@field CreateNPC ATTQuestWindowTestConstructor NPC fixture constructor.
---@field CreateObject ATTQuestWindowTestConstructor World-object fixture constructor.
---@field CreateSpell ATTQuestWindowTestConstructor Spell fixture constructor.
---@field CreateRecipe ATTQuestWindowTestConstructor Recipe fixture constructor.
---@field CreateClassInstance fun(id: nil, key: nil, fields: ATTQuestWindowTestNode): ATTQuestWindowTestNode Raw-object normalization.
---@field CreateRawText fun(text: string, fields: ATTQuestWindowTestNode): ATTQuestWindowTestNode Text-header constructor.
---@field CreateVisualHeaderWithGroups fun(node: ATTQuestWindowTestNode): ATTQuestWindowTestNode Identity map-header mock.
---@field CreateHash fun(node: ATTQuestWindowTestNode): string Actual production hash generator.
---@field AddEventHandler fun(event: string, callback: ATTQuestWindowTestEvent, immediate?: boolean): nil Registers handlers without running them.
---@field HandleEvent fun(event: string, ...: boolean|string|ATTQuestWindowTestNode): nil Dispatches captured handlers.
---@field WipeSearchCache fun(): nil Actual search/tooltip cache invalidation.
---@field WipeTooltipInfoCache fun(): nil Actual tooltip cache reset, or no-op before loading tooltip cases.
---@field GetCachedData fun(key: string, method: ATTQuestTooltipTestSearchBuilder, ...: ATTQuestTooltipTestSearchArgument): ATTQuestWindowTestNode?, boolean? Actual search-result cache.
---@field GetRawField fun(field: string, id: number): ATTQuestWindowTestNode[]? Original occurrence lookup.
---@field SearchForObject fun(field: string, id: number, mode?: string, all?: boolean): ATTQuestWindowTestNode|ATTQuestWindowTestNode[]|nil Fixture search index.
---@field SearchForField fun(field: string, id: number): ATTQuestWindowTestNode[]? Fixture raw-index lookup.
---@field SearchForLink ATTQuestWindowTestSearch Synthetic source-array search; real search-result processing is loaded below.
---@field SourceSearcher {itemID: fun(field: string, id: number): ATTQuestWindowTestNode[]?, boolean?} Actual item source dispatch.
---@field GetCachedSearchResults fun(method: ATTQuestWindowTestSearch, search: string, id?: number, options?: {SkipFill: boolean, IgnoreCache: boolean}): ATTQuestWindowTestNode?, boolean? Actual search-result processing.
---@field GetGroupItemIDWithModID fun(node?: ATTQuestWindowTestNode, itemID?: number, modID?: number, bonusID?: number): number Actual item-ID encoding.
---@field GroupBestMatchingItems fun(nodes: ATTQuestWindowTestNode[], id: number): { [integer]: ATTQuestWindowTestNode[] } Item ID matching fixture.
---@field GroupMatchesParams fun(node: ATTQuestWindowTestNode, key: string, id: number): boolean Stable identifier matcher.
---@field GetRelativeValue fun(node: ATTQuestWindowTestNode, field: string): ATTQuestWindowTestValue Existing ancestor lookup.
---@field AssignChildren fun(node: ATTQuestWindowTestNode): nil Assigns real containment to fixture children.
---@field TopLevelUpdateGroup fun(node: ATTQuestWindowTestNode, force?: boolean): nil Actual top-level updater, including no-parent callback dispatch.
---@field UpdateGroups fun(parent: ATTQuestWindowTestNode, children: ATTQuestWindowTestNode[]): nil Actual updater.
---@field __CreateObject fun(node: ATTQuestWindowTestNode, rootOnly?: boolean): ATTQuestWindowTestNode Actual cloning.
---@field MergeProperties fun(target: ATTQuestWindowTestNode, source: ATTQuestWindowTestNode, noReplace?: boolean, clone?: boolean): nil Actual property merging.
---@field NestObject fun(parent: ATTQuestWindowTestNode, child: ATTQuestWindowTestNode, clone?: boolean, index?: integer): nil Actual nesting.
---@field GetWindow fun(self: ATTQuestWindowTestApp, suffix: string, existingOnly?: boolean): ATTQuestWindowTestWindow? Frame lookup.
---@field CreateWindow fun(self: ATTQuestWindowTestApp, suffix: string, definition: ATTQuestWindowTestDefinition): ATTQuestWindowTestWindow Fixture frame executing actual initialization.
---@field GenerateSourceHash fun(node: ATTQuestWindowTestNode): string Stable fixture window identity.
---@field CreateMiniListForGroup fun(self: ATTQuestWindowTestApp, group: ATTQuestWindowTestNode): nil Real shared popout opener.
---@field CreatePopoutForSearch fun(search: string): true? Real slash-search opener.
---@field GetSourceID fun(link: string): nil Synthetic items have no transmog source.
---@field SetSkipLevel fun(level: integer): nil No-op fill scheduling boundary.
---@field ImportRawLink fun(node: ATTQuestWindowTestNode, link: string): nil No-op native-link decorator.
---@field Sort fun(nodes?: ATTQuestWindowTestNode[]|string[], order?: string|ATTQuestTooltipTestSourceOrder): nil Native presentation sorting boundary; lexical tooltip source order is executed.
---@field SortDefaults {Global: string, Strings?: fun(left: string, right: string): boolean} Sort descriptor placeholder.
---@field EmptyFunction fun(): nil Production merge no-op callback.
---@field ReturnTrue fun(): true Constant true helper.
---@field ReturnFalse fun(): false Constant false helper.
---@field AlwaysShowUpdate ATTQuestSourceSetVisibility Existing source visibility helper.
---@field DefaultGroupFilter fun(): boolean Default/debug group visibility.
---@field DefaultThingFilter fun(): boolean Default/debug leaf visibility.
---@field GroupFilter fun(node: ATTQuestWindowTestNode): boolean Existing character/filter simulation.
---@field RecursiveGroupRequirementsFilter fun(node: ATTQuestWindowTestNode): boolean Existing ancestor-filter simulation.
---@field RecursiveCharacterRequirementsFilter fun(node: ATTQuestWindowTestNode): boolean Existing source priority filter simulation.
---@field GroupVisibilityFilter fun(): false Completed-group visibility.
---@field CollectedItemVisibilityFilter fun(): false Collected-item visibility.
---@field ShowTrackableThings fun(): false Trackable visibility.
---@field CollectibleAsQuest fun(): boolean? Existing Quest tracking switch.
---@field asset fun(name: string): string Native texture placeholder.
---@field UI {OnClick: {OnlySortingRightClick: ATTQuestWindowTestClick}} Captured Reagent header callback.
---@field ChatCommands { [string]: ATTQuestWindowTestSlash } Empty custom-command lookup for slash dispatch.
---@field ParseCommandArgsAndParams fun(command: string): string[], ATTQuestWindowTestFlags Minimal command tokenizer.
---@alias ATTQuestWindowTestSlash fun(command: string): boolean?

--- Captured runner is not executed; per-frame scheduling is outside this fixture.
---@class ATTQuestWindowTestRunner
---@field Run? fun(action: ATTQuestWindowTestEvent): nil Not provided or called.

---@class ATTQuestWindowTestEnvironment
---@field app? ATTQuestWindowTestApp Captured addon for UI snippet.
---@field wipe fun<K,V>(values: { [K]: V }): nil Dictionary clearing.
---@field GetTimePreciseSec fun(): number Native clock input for actual TopLevelUpdateGroup.
---@field tinsert fun(nodes: ATTQuestWindowTestNode[], index: integer|ATTQuestWindowTestNode, node?: ATTQuestWindowTestNode): nil Array insertion.
---@field tremove fun(values: ATTQuestWindowTestValue[], index?: integer): ATTQuestWindowTestValue Array removal.
---@field AddSlashCommands? fun(names: string[], action: ATTQuestWindowTestSlash, help: string[]): nil Captures the actual root slash callback.

---@class ATTQuestWindowTestFixture
---@field app ATTQuestWindowTestApp Real addon exports plus native/cache stubs.
---@field api ATTQuestRewardVisibilityAPI Actual independent classifier API.
---@field values ATTQuestWindowTestFlags General option backing store.
---@field references ATTQuestWindowTestSources Original item-index arrays.
---@field qItemSources ATTQuestWindowTestSources Quest-start-item direct source fallback.
---@field objects ATTQuestWindowTestObjects Additional source lookup objects.
---@field windows ATTQuestWindowTestWindows Created native frame mocks.
---@field item ATTQuestWindowTestConstructor Actual Item-class constructor with default f55.
---@field quest fun(id: QuestID, fields?: ATTQuestWindowTestNode): ATTQuestWindowTestNode Quest with actual reset property.
---@field link fun(parent: ATTQuestWindowTestNode, child: ATTQuestWindowTestNode): ATTQuestWindowTestNode Original hierarchy assignment.
---@field addSource fun(item: ATTQuestWindowTestNode, parent: ATTQuestWindowTestNode): ATTQuestWindowTestNode Original containment plus cache indexing.
---@field rightClick ATTQuestWindowTestClick Real default row-right-click callback.
---@field slash ATTQuestWindowTestSlash Real root slash callback.
---@field env ATTQuestWindowTestEnvironment Fixture globals.
---@field debug {active: boolean} Default visibility switch.

---@alias ATTQuestWindowTestCheckboxCallback fun(self: ATTQuestWindowTestCheckbox): nil
---@class ATTQuestWindowTestCheckbox
---@field checked? boolean Simulated check state.
---@field OnRefresh ATTQuestWindowTestCheckboxCallback Actual callback.
---@field OnClick ATTQuestWindowTestCheckboxCallback Actual callback.
---@field GetChecked fun(self: ATTQuestWindowTestCheckbox): boolean? State getter.
---@field SetChecked fun(self: ATTQuestWindowTestCheckbox, value?: boolean): nil State setter.
---@field SetATTTooltip fun(self: ATTQuestWindowTestCheckbox, text?: string): nil Native tooltip no-op.
---@field AlignBelow fun(self: ATTQuestWindowTestCheckbox): nil Native layout no-op.
---@class ATTQuestWindowTestCheckboxParent
---@field CreateCheckBox fun(self: ATTQuestWindowTestCheckboxParent, text: string?, refresh: ATTQuestWindowTestCheckboxCallback, click: ATTQuestWindowTestCheckboxCallback): ATTQuestWindowTestCheckbox Retains actual callbacks.


---@alias ATTQuestTooltipTestSourceOrder fun(left: string, right: string): boolean
---@alias ATTQuestTooltipTestSearchArgument string|number|ATTQuestWindowTestSearch|{SkipFill?: boolean, IgnoreCache?: boolean}
---@alias ATTQuestTooltipTestSearchBuilder fun(...: ATTQuestTooltipTestSearchArgument): ATTQuestWindowTestNode?, boolean?
---@alias ATTQuestTooltipTestSettingsChunk fun(addonName: string, app: ATTQuestWindowTestApp, values: ATTQuestWindowTestFlags): nil
---@alias ATTQuestTooltipTestSetData fun(window: ATTQuestWindowTestWindow, data?: ATTQuestWindowTestNode): nil
---@alias ATTQuestTooltipTestSetDataFactory fun(): ATTQuestTooltipTestSetData
---@alias ATTQuestTooltipTestPayloadChunk fun(): ATTQuestWindowTestNode
---@alias ATTQuestTooltipTestAttach fun(tooltip: ATTQuestTooltipTestTooltip, method: ATTQuestWindowTestSearch, search: string): nil
---@alias ATTQuestTooltipTestAttachFactory fun(addonName: string, app: ATTQuestTooltipTestApp): ATTQuestTooltipTestAttach
---@alias ATTQuestTooltipTestLeaveFactory fun(): ATTQuestTooltipTestEnter
---@alias ATTQuestTooltipTestEnter fun(row: ATTQuestTooltipTestRow): nil
---@class ATTQuestTooltipTestInformation
---@field Process fun(self: ATTQuestTooltipTestInformation, reference: ATTQuestWindowTestNode, info: ATTQuestSourceTooltipInfo): nil Actual source-location processor.
---@class ATTQuestTooltipTestTooltip
---@field lines string[] Native rendered lines, cleared independently of the addon cache.
---@field owner? ATTQuestTooltipTestRow Native owner; external tooltips have no ATT row.
---@field visible boolean Native visibility.
---@field ATT_AttachComplete? boolean Native ATT attachment marker.
---@field ATT_IsRefreshing? boolean Native refresh marker.
---@field ATT_IsModifierKeyDown? boolean Native modifier marker.
---@field AddLine fun(self: ATTQuestTooltipTestTooltip, text: string, ...: number): nil Native text rendering boundary.
---@field AddDoubleLine fun(self: ATTQuestTooltipTestTooltip, text: string, right: string, ...: number): nil Native text rendering boundary.
---@field NumLines fun(self: ATTQuestTooltipTestTooltip): integer Native rendered-line count.
---@field ClearLines fun(self: ATTQuestTooltipTestTooltip): nil Native clearing boundary.
---@field ClearATTReferenceTexture fun(self: ATTQuestTooltipTestTooltip): nil Texture boundary.
---@field Hide fun(self: ATTQuestTooltipTestTooltip): nil Native hiding boundary.
---@field IsVisible fun(self: ATTQuestTooltipTestTooltip): boolean Native visibility query.
---@field GetOwner fun(self: ATTQuestTooltipTestTooltip): ATTQuestTooltipTestRow? Native owner query.
---@class ATTQuestTooltipTestRow
---@field ref ATTQuestWindowTestNode Displayed reference.
---@field enter ATTQuestTooltipTestEnter Fixture native OnEnter boundary invoking the actual source processor.
---@field leave ATTQuestTooltipTestEnter Actual RowOnLeave.
---@field GetScript fun(self: ATTQuestTooltipTestRow, script: string): ATTQuestTooltipTestEnter Native script lookup.
---@class ATTQuestTooltipTestState
---@field processCalls integer Source processor invocations, exposing cache hits.
---@field rawCalls integer Feature raw-index lookups.
---@field tooltipSettings { [string]: boolean|number } Existing tooltip controls.
---@field info ATTQuestTooltipTestInformation Actual source-location definition.
---@field attach ATTQuestTooltipTestAttach Actual external cache/render path.
---@class ATTQuestTooltipTestApp: ATTQuestWindowTestApp
---@field print fun(status: boolean, message: string): nil Tooltip search-error assertion boundary.
---@field FillGroups fun(node: ATTQuestWindowTestNode): nil No-op unrelated symlink/cost filling boundary.
---@field EmptyTable ATTQuestWindowTestNode[] Empty search fallback.
---@field WOWAPI {issecretvalue: fun(text: string): false} Plain fixture strings.
---@field MODE_DEBUG? boolean Existing debug display setting.
---@field IsComplete fun(node: ATTQuestWindowTestNode): boolean|integer|nil Actual completion helper.
---@field ArrayAppend fun(target: string[], ...: string[]): nil Source-bucket concatenation.
---@field GetRelativeGroup fun(node: ATTQuestWindowTestNode, field: string, expected: boolean): ATTQuestWindowTestNode? No event/unobtainable ancestors in these fixtures.
---@field AbbreviateString fun(text: string): string Display abbreviation boundary.
---@field CloneDictionary fun(original: ATTQuestWindowTestFlags, overrides: ATTQuestWindowTestFlags): ATTQuestWindowTestFlags Source-key allowlist.
---@field ProcessInformationTypesForExternalTooltips fun(rows: ATTQuestSourceTooltipInfo, reference: ATTQuestWindowTestNode): nil Calls the captured actual SourceLocations processor.
---@field ActiveRowReference? ATTQuestWindowTestNode Native active-row reference.
---@class ATTQuestTooltipTestEnvironment: ATTQuestWindowTestEnvironment
---@field GameTooltip? ATTQuestTooltipTestTooltip Native tooltip frame.
---@field q ATTQuestWindowTestConstructor Quest payload constructor.
---@field i ATTQuestWindowTestConstructor Item payload constructor.
---@field qo ATTQuestWindowTestConstructor Objective payload constructor.
---@field s fun(sourceID: SourceID, itemID: ItemID, fields: ATTQuestWindowTestNode): ATTQuestWindowTestNode Unrelated appearance constructor boundary.

assert(_VERSION == "Lua 5.1", "Run these tests with Lua 5.1")
local root = arg[1] or "."
---@param path string Repository-relative source path.
---@return string source Complete source bytes.
local function read(path)
	local file = assert(io.open(root.."/"..path, "rb"))
	local source = file:read("*a"); file:close(); return source
end
---@param path string Repository-relative source path.
---@param first string Included literal start marker.
---@param last string Excluded literal end marker.
---@return string source Verbatim production region.
local function section(path, first, last)
	local source = read(path)
	local start = assert(source:find(first, 1, true), "Missing section: "..first)
	local finish = assert(source:find(last, start + #first, true), "Missing end: "..last)
	return source:sub(start, finish - 1)
end
---@param source string Lua 5.1 production snippet.
---@param env ATTQuestWindowTestEnvironment|ATTQuestTooltipTestEnvironment|_G Supplied native/cache services.
---@param name string Diagnostic name identifying the source region.
---@return ATTQuestWindowTestChunk chunk Callable with one of the concrete region contracts.
local function compile(source, env, name)
	return setfenv(assert(loadstring(source, name)), env) --[[@as ATTQuestWindowTestChunk]]
end
---@generic K,V
---@param values { [K]: V } Dictionary cleared in place.
---@return nil
local function wipe(values) for key in pairs(values) do values[key] = nil end end
---@return nil
local function noop() end
---@return true value Constant true.
local function yes() return true end
---@return false value Constant false.
local function no() return false end
local checks = 0
---@generic T
---@param actual T Observed value or reference.
---@param expected T Expected value or reference.
---@param message string Failure context.
---@return nil
local function equal(actual, expected, message)
	checks = checks + 1
	assert(actual == expected, message..": expected "..tostring(expected)..", got "..tostring(actual))
end
local repeatable = (compile("return "..assert(read("src/Classes/Quests.lua"):match(
	"local createQuest = app.CreateClass.-repeatable = (function%(t%).-end),")), _G, "Quest.repeatable")
	--[[@as ATTQuestWindowTestResetFactory]])()

-- WoW adds string.split; only plain item commands need it in this fixture.
---@param separator string Literal delimiter used as the method receiver.
---@param text string Text to split.
---@return string ... Segments including empty fields.
local function split(separator, text)
	local parts, start = {}, 1
	while true do
		local finish = text:find(separator, start, true)
		if not finish then parts[#parts + 1] = text:sub(start); break end
		parts[#parts + 1] = text:sub(start, finish - 1); start = finish + #separator
	end
	return unpack(parts)
end
string.split = split

---@return ATTQuestWindowTestFixture fixture Fresh source index, real exports and simulated native frames.
local function fixture()
	---@type ATTQuestWindowTestEvents, ATTQuestWindowTestSources, ATTQuestWindowTestObjects, ATTQuestWindowTestWindows
	local events, references, objects, windows = {}, {}, {}, {}
	---@type ATTQuestWindowTestSources
	local qItemSources = {}
	local values, debugVisibility = { ["Show:QuestRewardConsumables"] = false }, {active = false}
	local app
	---@param node ATTQuestWindowTestNode Node whose containing metadata is queried.
	---@param field string Requested inherited field.
	---@return ATTQuestWindowTestValue value First value found in the original hierarchy.
	local function relative(node, field)
		while node do
			if node[field] ~= nil then return node[field] end
			node = node.parent
		end
	end
	---@param name string Runtime class name.
	---@param key string Identifier field.
	---@param fields ATTQuestWindowTestFields Production getters and registration metadata.
	---@param ... ATTQuestWindowTestSubclass Repeated name/fields/predicate triplets.
	---@return ATTQuestWindowTestConstructor constructor Fixture engine executing real subclass predicates.
	local function createClass(name, key, fields, ...)
		local subclasses = {...}
		---@param id integer Runtime identifier.
		---@param item? ATTQuestWindowTestNode Supplied data fields.
		---@return ATTQuestWindowTestNode node Instance with actual production getter declarations.
		return function(id, item)
			item = item or {}; item[key] = id
			local selected, className = fields, name
			for i=1,#subclasses,3 do
				if (subclasses[i+2] --[[@as ATTQuestWindowTestPredicate]])(item) then
					selected = subclasses[i+1] --[[@as ATTQuestWindowTestFields]]
					className = name..(subclasses[i] --[[@as string]]); break
				end
			end
			return setmetatable(item, {
				---@param node ATTQuestWindowTestNode Instance requesting a runtime field.
				---@param field string Requested field name.
				---@return ATTQuestWindowTestValue value Stored or computed property.
				__index = function(node, field)
					if field == "key" then return key end
					if field == "__type" then return className end
					if field == "hash" then return app.CreateHash(node) end
					if field == "parent" then return node.sourceParent end
					local value = selected[field]
					if value == nil then value = fields[field] end
					if type(value) == "function" then return value(node) end
					return value
				end })
		end
	end
	---@param name string Simple non-item class name.
	---@param key string Runtime identity field.
	---@return ATTQuestWindowTestConstructor constructor Source constructor using the fixture base fields.
	local function constructor(name, key) return createClass(name, key, {}) end
	app = {
		Modules = { Upgrade = {}, Reagent = {GetReagentCollector = noop}, Filter = {Set = {ItemUnbound = noop}, Get = {ItemUnbound = no},
			Filters = {ItemUnbound = no}}, Item = {
			---@param link string Native link or plain command.
			---@return string link Unchanged plain fixture command.
			CleanLink = function(link) return link end } },
		L = { SOURCES = "Sources", SOURCES_DESC = "Known acquisition sources" },
		HeaderConstants = {}, ReagentsDB = {}, CallbackHandlers = {},
		GlobalVariants = {AndLockCriteria = {}, AndFactionBonus = {}},
		---@return ATTQuestWindowTestRunner runner Captured placeholder; scheduling is not exercised.
		CreateRunner = function() return {} end, CreateClass = createClass, ReturnTrue = yes, ReturnFalse = no,
		EmptyFunction = noop, WipeTooltipInfoCache = noop, GetRelativeValue = relative, Sort = noop, SortDefaults = {Global = "global"},
		SetSkipLevel = noop, ImportRawLink = noop, GetSourceID = noop,
		---@param node ATTQuestWindowTestNode Map header source.
		---@return ATTQuestWindowTestNode node Same fixture display object.
		CreateVisualHeaderWithGroups = function(node) return node end,
		GroupFilter = yes, RecursiveGroupRequirementsFilter = yes, RecursiveCharacterRequirementsFilter = yes,
		GroupVisibilityFilter = no, CollectedItemVisibilityFilter = no, ShowTrackableThings = no,
		UI = {OnClick = {OnlySortingRightClick = noop}}, ChatCommands = {},
		---@return boolean visible Simulated default/debug visibility.
		DefaultGroupFilter = function() return debugVisibility.active end,
		---@return boolean visible Simulated default/debug visibility.
		DefaultThingFilter = function() return debugVisibility.active end,
		---@param name string Native asset name.
		---@return string name Fixture texture label.
		asset = function(name) return name end,
	}
	---@cast app ATTQuestWindowTestApp
	---@param event string Event name.
	---@param action ATTQuestWindowTestEvent Captured production or native-frame callback.
	---@return nil
	app.AddEventHandler = function(event, action)
		events[event] = events[event] or {}; events[event][#events[event]+1] = action
	end
	---@param event string Event name.
	---@param ... boolean|string|ATTQuestWindowTestNode Event payload.
	---@return nil
	app.HandleEvent = function(event, ...) for _,action in ipairs(events[event] or {}) do action(...) end end
	app.Settings = { Collectibles = {Quests = false, Loot = false}, Set = noop, -- Replaced by actual Settings.Set below.
		---@param self ATTQuestWindowTestSettings Unused settings receiver.
		---@param key string General setting key.
		---@return boolean? value Current value.
		Get = function(self, key) return values[key] end,
		GetTooltipSetting = no,
		Refresh = noop,
		---@param _ ATTQuestWindowTestSettings Unused settings receiver.
		---@param mode string Any global collection-mode refresh is a regression.
		---@return nil
		UpdateMode = function(_, mode) error("Source setting must not recompute collection modes: "..mode) end }
	---@return boolean? collectible Existing quest collection switch.
	app.CollectibleAsQuest = function() return app.Settings.Collectibles.Quests end
	---@param field string Indexed field; itemID is populated by fixtures.
	---@param id number Indexed identifier.
	---@return ATTQuestWindowTestNode[]? sources Original occurrence array.
	app.GetRawField = function(field, id) return (field == "itemID" and references[id]) or (field == "qItemID" and qItemSources[id]) or nil end
	app.SearchForField = app.GetRawField
	---@param field string Identifier to search.
	---@param id number Identifier value.
	---@param mode? string Production search mode.
	---@param all? boolean Return all matches for the source searcher.
	---@return ATTQuestWindowTestNode|ATTQuestWindowTestNode[]|nil result Indexed object or original array.
	app.SearchForObject = function(field, id, mode, all)
		if all then return app.GetRawField(field, id) end
		return objects[field..id]
	end
	---@param command string Plain item command supplied by actual slash/popout entry points.
	---@return ATTQuestWindowTestNode[]? references Original occurrences.
	---@return string field Normalized thing key.
	---@return number? id Base item identifier.
	app.SearchForLink = function(command)
		local id = tonumber(command:match("item:(%d+)"))
		if id then return references[id], "itemID", id end
		id = tonumber(command:match("questID:(%d+)"))
		if id then
			for _,items in pairs(references) do
				for _,item in ipairs(items) do
					local parent = item.parent
					while parent do
						if parent.key == "questID" and parent.questID == id then return {parent}, "questID", id end
						parent = parent.parent
					end
				end
			end
		end
		return nil, "itemID", id
	end
	---@param nodes ATTQuestWindowTestNode[] Search results already matching the synthetic item command.
	---@param id number Searched item ID.
	---@return { [integer]: ATTQuestWindowTestNode[] } matches Best exact-match bucket consumed by production search merging.
	app.GroupBestMatchingItems = function(nodes, id) return { [3] = nodes } end
	---@param node ATTQuestWindowTestNode Original occurrence.
	---@param key string Requested identifier field.
	---@param id number Requested identifier.
	---@return boolean matches Whether this occurrence matches the search.
	app.GroupMatchesParams = function(node, key, id) return node[key] == id end
	---@param parent ATTQuestWindowTestNode Containing node.
	---@param child ATTQuestWindowTestNode Actual child reference.
	---@return ATTQuestWindowTestNode child Same child after assigning containment.
	local function link(parent, child)
		parent.hash = parent.hash or app.CreateHash(parent)
		parent.g = parent.g or {}; parent.g[#parent.g+1] = child; child.parent = parent; return child
	end
	---@param node ATTQuestWindowTestNode Root whose existing descendants need original/display parent links.
	---@return nil
	app.AssignChildren = function(node)
		for _,child in ipairs(node.g or {}) do child.parent = node; app.AssignChildren(child) end
	end
	local env = setmetatable({ app = app, wipe = wipe, tinsert = table.insert, tremove = table.remove,
		---@return number now Stable native-clock fixture value.
		GetTimePreciseSec = function() return 0 end }, {__index = _G})
	---@cast env ATTQuestWindowTestEnvironment
	local prefix = "local _, app = ...\n"
	;(compile(prefix.."local settings, RawSettings = app.Settings, {General = select(3, ...)}\n"..
		section("src/Settings/Settings.lua", "settings.Set = function", "settings.SetValue = function"), env,
		"Settings.Set") --[[@as ATTQuestTooltipTestSettingsChunk]])("ATT", app, values)
	;(compile(prefix.."local IsRetrieving = app.ReturnFalse\n"..
		read("src/Modules/RetrievingData.lua"):sub((assert(read("src/Modules/RetrievingData.lua"):find("local searchCache, working", 1, true)))), env,
		"Search cache") --[[@as ATTQuestWindowTestModule]])("ATT", app)

	;(compile(prefix.."local GetRelativeValue = app.GetRelativeValue\n"..
		section("src/Classes/base.lua", "local returnZero", "-- Helper Functions"), env, "CreateHash")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix.."local CLASS, KEY = 'Item', 'itemID'\nlocal math_floor = math.floor\n"..
		section("src/Classes/Item.Retail.lua", "local function GetGroupItemIDWithModID", "local function ItemMatchDepth")..
		section("src/Classes/Item.Retail.lua", "local itemFields = {", "local function OnClickCostItem"), env,
		"Item classes") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	app.CreateNPC = constructor("NPC", "npcID"); app.CreateObject = constructor("Object", "objectID")
	app.CreateSpell = constructor("Spell", "spellID"); app.CreateRecipe = constructor("Recipe", "recipeID")
	---@param id nil Unused class-engine identifier.
	---@param key nil Unused class-engine key.
	---@param node ATTQuestWindowTestNode Data with one of the fixture's source identifiers.
	---@return ATTQuestWindowTestNode node Normalized source object.
	app.CreateClassInstance = function(id, key, node)
		for _,field in ipairs({"itemID", "questID", "npcID", "objectID", "spellID", "recipeID"}) do
			if node[field] then return constructor(field, field)(node[field], node) end
		end
		error("Unrecognized fixture source")
	end
	---@param text string Header label.
	---@param node ATTQuestWindowTestNode Header metadata and children.
	---@return ATTQuestWindowTestNode node Header with fixture class/base properties.
	app.CreateRawText = function(text, node) node.text = text; return constructor("RawText", "text")(text, node) end
	;(compile(prefix.."local L = app.L\nlocal tinsert, rawget = table.insert, rawget\n"..
		section("src/DataHandling.lua", "local MergeSkipFields", "-- Merges multiple sources of an object")..
		"\napp.NestObject = NestObject; app.NestObjects = NestObjects; app.MergeObjects = MergeObjects; app.PriorityNestObjects = PriorityNestObjects\n", env,
		"Object cloning and merging") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(read("src/Modules/QuestRewardVisibility.lua"), env, "QuestRewardVisibility")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(section("src/DataHandling.lua", "local _, app = ...", "--[[")..
		section("src/DataHandling.lua", "local function TopLevelUpdateGroup(group, forceShow)", "local DGUDelay"), env, "UpdateGroups")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix..section("src/base.lua", "app.AlwaysShowUpdate =", "app.AlwaysShowUpdateWithoutReturn ="), env, "Source helper")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix.."local SearchForObject = app.SearchForObject\nlocal GetItemIDAndModID = math.floor\n"..
		section("src/Modules/Search.lua", "local SourceSearcher", "-- Search Results"), env, "SourceSearcher")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	local helpers = prefix.."local L = app.L\nlocal CreateObject, MergeProperties, MergeObjects, NestObject, NestObjects, PriorityNestObjects = app.__CreateObject, app.MergeProperties, app.MergeObjects, app.NestObject, app.NestObjects, app.PriorityNestObjects\n"..
		"local GetRelativeValue, GroupMatchesParams, SearchForObject, SearchForField = app.GetRelativeValue, app.GroupMatchesParams, app.SearchForObject, app.SearchForField\n"
	;(compile(helpers.."local GetGroupItemIDWithModID = app.GetGroupItemIDWithModID\n"..
		section("AllTheThings.lua", "local function GetSearchResults", "end\t-- Search results Lib"), env, "Search result processing")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	-- Reagent and cost headers precede BuildSourceParent in the real event order.
	;(compile(prefix.."local L = app.L\n"..
		section("src/Modules/Reagent.lua", "local RefreshCollectorHooked", "-- Reagent Capture Handling")..
		"\napp.AddEventHandler('OnNewPopoutGroup', BuildReagents)\n", env, "Reagent popout header")
		--[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(helpers..section("AllTheThings.lua", "-- Keys for groups which are in-game 'Things'", "end)();"), env,
		"BuildSourceParent") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	local ui = "src/UI/Window Definitions.lua"
	;(compile(prefix..section(ui, "app.AddEventHandler(\"OnRefreshComplete\"", "-- Expand / Collapse Functions"), env,
		"Window refresh dispatch") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix.."local OnInitForPopout\n"..
		section(ui, "function app:CreateMiniListForGroup(group)", "function app:CreateMiniListFromSource")..
		section(ui, "app.CreatePopoutForSearch = function(search)", "\t-- Adjust some update/refresh logic if this is a Quest Chain window").."\nend\n", env,
		"Shared popout entry points") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	local rightClick = (compile(section(ui, "local function HandleRightClickDefault", "local function HandleLeftClickDefault")..
		"\nreturn HandleRightClickDefault\n", env, "Right-click entry") --[[@as ATTQuestWindowTestClickFactory]])()
	---@param command string Plain command text.
	---@return string[] args Single command token for the synthetic /att item:ID cases.
	---@return ATTQuestWindowTestFlags params Empty custom-parameter map.
	app.ParseCommandArgsAndParams = function(command) return {command}, {} end
	---@type ATTQuestWindowTestSlash
	local slash
	---@param names string[] Slash aliases registered by production.
	---@param action ATTQuestWindowTestSlash Root slash callback.
	---@param help string[] Production help strings, not rendered.
	---@return nil
	env.AddSlashCommands = function(names, action, help) slash = action end
	;(compile(prefix.."local AddSlashCommands = AddSlashCommands\n"..
		read("src/Commands.lua"):sub((assert(read("src/Commands.lua"):find('AddSlashCommands({"att","allthethings","attc"}', 1, true)))), env,
		"Root slash dispatch") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix..section("src/Cache.lua", "local function GenerateSourceHash", "-- Hash-Based Searching"), env,
		"Source path hashes") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	local setData = (compile("return "..section(ui, "SetData = function", "\tExpandData = function"):match("= (.*),%s*$"), env,
		"Window.SetData") --[[@as ATTQuestTooltipTestSetDataFactory]])()
	---@param self ATTQuestWindowTestApp Addon receiver.
	---@param suffix string Existing source hash.
	---@return ATTQuestWindowTestWindow? window Matching frame, if created.
	app.GetWindow = function(self, suffix) return windows[suffix] end
	---@param self ATTQuestWindowTestApp Addon receiver.
	---@param suffix string New source hash.
	---@param definition ATTQuestWindowTestDefinition Real mini-list definition.
	---@return ATTQuestWindowTestWindow window Native frame mock running the real initializer.
	app.CreateWindow = function(self, suffix, definition)
		local window = {Suffix = suffix, updates = 0,
			---@param self ATTQuestWindowTestWindow Native frame receiver.
			---@return nil
			Toggle = function(self) self.visible = not self.visible end,
			---@param self ATTQuestWindowTestWindow Native frame receiver.
			---@param visible boolean New frame visibility.
			---@return nil
			SetVisible = function(self, visible) self.visible = visible end,
			SetData = setData,
			---@param self ATTQuestWindowTestWindow Native frame receiver.
			---@return nil
			AssignChildren = function(self) app.AssignChildren(self.data) end,
			ExpandData = noop,
			---@param self ATTQuestWindowTestWindow Native frame receiver.
			---@param force? boolean Full refresh signal from actual window event callback.
			---@return nil
			Update = function(self, force) self.updates = self.updates + 1; app.TopLevelUpdateGroup(self.data, true) end,
			---@param self ATTQuestWindowTestWindow Native frame receiver.
			---@param event string Addon event name.
			---@param action ATTQuestWindowTestEvent Actual event handler.
			---@return nil
			AddEventHandler = function(self, event, action) app.AddEventHandler(event, action) end }
		---@cast window ATTQuestWindowTestWindow
		windows[suffix] = window
		;(compile("local window = ...\n"..section(ui, '\twindow:AddEventHandler("OnUpdateWindows"', '\twindow:AddEventHandler("OnRefreshWindows"'),
			env, "Existing window update callback") --[[@as ATTQuestWindowTestWindowChunk]])(window)
		definition.OnInit(window)
		return window
	end
	app.HandleEvent("OnLoad"); app.HandleEvent("OnStartup")
	---@param id ItemID Item identifier.
	---@param fields? ATTQuestWindowTestNode Extra metadata or specialized item selectors.
	---@return ATTQuestWindowTestNode item Actual item class with default consumable category.
	local function item(id, fields)
		fields = fields or {}; fields.f = fields.f or 55; fields.link = "item:"..id; return app.CreateItem(id, fields)
	end
	---@param id QuestID Quest identifier.
	---@param fields? ATTQuestWindowTestNode Reset flags or extra source metadata.
	---@return ATTQuestWindowTestNode quest Quest with the actual computed reset property.
	local function quest(id, fields)
		fields = fields or {}
		fields.key, fields.questID = "questID", id
		fields.__type = "Quest"
		return setmetatable(fields, {
			---@param node ATTQuestWindowTestNode Quest instance.
			---@param key string Requested runtime field.
			---@return ATTQuestWindowTestValue value Actual reset flag, tracking switch or base-field fallback.
			__index = function(node, key)
				if key == "repeatable" then return repeatable(node) end
				if key == "collectible" then return app.Settings.Collectibles.Quests end
				if key == "parent" then return node.sourceParent end
				if key == "hash" then return app.CreateHash(node) end
			end })
	end
	---@param item ATTQuestWindowTestNode Original item occurrence.
	---@param parent ATTQuestWindowTestNode Original containing acquisition source.
	---@return ATTQuestWindowTestNode item Same occurrence after indexing and containment assignment.
	local function addSource(item, parent)
		link(parent, item); local id = assert(item.itemID)
		references[id] = references[id] or {}; references[id][#references[id]+1] = item; return item
	end
	return { app = app, api = app.Modules.QuestRewardVisibility, values = values, references = references, objects = objects,
		windows = windows, qItemSources = qItemSources, item = item, quest = quest, link = link, addSource = addSource,
		rightClick = rightClick, slash = slash, env = env, debug = debugVisibility }
end

---@param window ATTQuestWindowTestWindow Created popout.
---@return ATTQuestWindowTestNode header Its final Sources header, found among earlier view-only children.
local function sources(window)
	for _,child in ipairs(window.data.g or {}) do if child.text == "Sources" then return child end end
	error("Missing Sources header")
end
---@param header ATTQuestWindowTestNode Sources header.
---@param field string Source identifier field.
---@param id integer Source identifier.
---@return ATTQuestWindowTestNode row Matching final merged source copy.
local function row(header, field, id)
	for _,child in ipairs(header.g or {}) do if child[field] == id then return child end end
	error("Missing source "..field..id)
end
---@param f ATTQuestWindowTestFixture Fixture whose source window is refreshed.
---@param enabled boolean New feature state.
---@return nil
local function toggle(f, enabled)
	f.app.Settings:Set("Show:QuestRewardConsumables", enabled)
end

---@param f ATTQuestWindowTestFixture Fixture containing initialized windows.
---@param field string Root identifier field.
---@param id integer Root identifier.
---@return ATTQuestWindowTestWindow window Window matched independently of its full source path.
local function windowFor(f, field, id)
	for _,window in pairs(f.windows) do if window.data[field] == id then return window end end
	error("Missing popout "..field..id)
end

-- Both real user entry points share the real initializer and source builder.
local f = fixture()
f.addSource(f.item(3382), f.quest(100))
f.addSource(f.item(3382), f.quest(101, {isDaily = true}))
f.addSource(f.item(3382), f.app.CreateNPC(200))
f.app.ReagentsDB[300] = { [400] = {3382, 1} }
equal(f.slash("item:3382"), true, "Actual root slash dispatch opens the item popout")
local window = windowFor(f, "itemID", 3382)
local header = sources(window)
equal(#window.data.g > 1, true, "Earlier real Reagent handler inserts non-collection view children")
equal(row(header, "questID", 100).visible, nil, "OFF hides one-time quest reward source after search merging")
equal(row(header, "questID", 101).visible, true, "OFF preserves repeatable quest source")
equal(row(header, "npcID", 200).visible, true, "OFF preserves vendor source")
equal(row(header, "recipeID", 400).visible, true, "OFF preserves synthetic crafting source")
equal(window.data.total, 0, "Sources add no collection denominator with Quest and Loot tracking off")
equal(window.data.progress, 0, "Sources add no collection numerator")
local originalHeader = header
local initialUpdates = window.updates
toggle(f, true)
equal(sources(window), originalHeader, "Settings refresh updates the existing source tree")
equal(window.updates > initialUpdates, true, "Scoped Settings.OnSet updates the existing source frame")
equal(row(header, "questID", 100).visible, true, "ON restores one-time source with Quest and Loot tracking off")
equal(window.data.total, 0, "ON does not add a collection denominator")
f.rightClick({index = 1}, window.data)
equal(windowFor(f, "itemID", 3382), window, "Right-click reuses the existing suffix window")
equal(sources(window), originalHeader, "Existing-window toggle does not rebuild source data")
toggle(f, false)
equal(row(header, "questID", 100).visible, nil, "OFF immediately hides a previously visible quest source")
equal(row(header, "npcID", 200).visible, true, "Repeated toggle keeps other acquisition sources")

-- A fresh right-click takes the actual clone/search path, not only slash search.
local clicked = fixture()
local clickItem = clicked.addSource(clicked.item(3382), clicked.quest(110))
clicked.rightClick({index = 1}, clickItem)
local clickWindow = windowFor(clicked, "itemID", 3382)
equal(row(sources(clickWindow), "questID", 110).visible, nil, "Fresh right-click hides one-time source")
equal(sources(clickWindow).visible, nil, "No empty Sources header when every source is hidden")
toggle(clicked, true)
equal(sources(clickWindow).visible, true, "ON restores Sources header and its quest child")
equal(row(sources(clickWindow), "questID", 110).visible, true, "ON restores right-click source")
clicked.app.Settings.Collectibles.Quests = true
clicked.app.Settings.Collectibles.Loot = true
clicked.debug.active = true
clicked.app.HandleEvent("OnSettingsRefreshed")
toggle(clicked, false)
equal(sources(clickWindow).visible, nil, "OFF beats collectible, Loot and default/debug visibility")
equal(row(sources(clickWindow), "questID", 110).visible, nil, "Hidden-only header also clears a previously visible source row")
equal(clickWindow.data.total, 0, "Hidden Sources header does not contribute collection totals")

-- Full computed quest.repeatable covers every reset category in each source copy.
for i,reset in ipairs({"repeatable", "isDaily", "isWeekly", "isMonthly", "isYearly", "isWorldQuest"}) do
	local resetFixture = fixture()
	resetFixture.addSource(resetFixture.item(500), resetFixture.quest(500+i, {[reset] = true}))
	resetFixture.slash("item:500")
	equal(row(sources(windowFor(resetFixture, "itemID", 500)), "questID", 500+i).visible, true,
		"OFF preserves "..reset.." sources")
end

-- Only transparent classification headers can connect an ordinary reward to a quest.
local qualifying = fixture()
local quest = qualifying.quest(600)
local category = qualifying.link(quest, {key = "headerID", headerID = -600})
qualifying.addSource(qualifying.item(600), category)
qualifying.slash("item:600")
equal(row(sources(windowFor(qualifying, "itemID", 600)), "questID", 600).visible, nil, "Transparent header keeps direct reward classification")

---@type ATTQuestWindowTestNode[]
local wrappers = {
	{key = "objectiveID", objectiveID = 1}, {key = "itemID", itemID = 700},
	{key = "headerID", headerID = -1, providers = {{"n", 10}}},
	{key = "headerID", headerID = -1, crs = {10}},
	{key = "headerID", headerID = -1, npcID = 10},
	{key = "headerID", headerID = -1, objectID = 10},
	{key = "headerID", headerID = -1, cost = {{"i", 10, 1}}},
}
for i,wrapper in ipairs(wrappers) do
	local wrapped = fixture()
	wrapped.link(wrapped.quest(700+i), wrapper)
	wrapped.addSource(wrapped.item(701), wrapper)
	local record = assert(wrapped.api.Get(701))
	equal(record:IsQuestSource(700+i), false, "Non-reward wrapper "..i.." preserves its quest relationship")
end
local nested = fixture()
local outer, inner = nested.quest(720), nested.quest(721, {isDaily = true})
nested.link(outer, inner); nested.addSource(nested.item(720), inner)
equal(assert(nested.api.Get(720)):IsQuestSource(720), false, "Nested task is not an outer quest reward")

-- Duplicate hashes merge before gates are installed, in either occurrence order.
for _,reverse in ipairs({false, true}) do
	local mixed = fixture()
	local shared = mixed.quest(800)
	local reward = mixed.addSource(mixed.item(800), shared)
	local objective = mixed.link(shared, {key = "objectiveID", objectiveID = 1})
	local requirement = mixed.addSource(mixed.item(800), objective)
	if reverse then mixed.references[800] = {requirement, reward} end
	mixed.slash("item:800")
	local mixedHeader = sources(windowFor(mixed, "itemID", 800))
	equal(#mixedHeader.g, 1, "Identical quest source hashes merge once")
	equal(row(mixedHeader, "questID", 800).visible, true, "Mixed reward/requirement source survives either merge order")
end
local merged = fixture()
---@type {count: integer, parent?: ATTQuestSourceView, updateGroup?: ATTQuestSourceUpdateGroup}
local callbackCalls = {count = 0}
---@param self ATTQuestSourceView Source copy being updated.
---@param parent? ATTQuestSourceView Containing source header.
---@param updateGroup? ATTQuestSourceUpdateGroup Existing standard updater.
---@return nil handled Let the standard updater continue.
local function existingUpdate(self, parent, updateGroup)
	callbackCalls.count = callbackCalls.count + 1
	callbackCalls.parent, callbackCalls.updateGroup = parent, updateGroup
end
merged.addSource(merged.item(810), merged.quest(810, {OnUpdate = existingUpdate}))
merged.addSource(merged.item(810), merged.quest(810))
merged.slash("item:810")
local mergedHeader = sources(windowFor(merged, "itemID", 810))
equal(#mergedHeader.g, 1, "All qualifying duplicates merge to one gated row")
equal(row(mergedHeader, "questID", 810).visible, nil, "Merged source stays hidden OFF")
equal(callbackCalls.count, 0, "Hidden source never runs its original callback")
toggle(merged, true)
equal(callbackCalls.count, 1, "ON delegates to original callback after merging")
equal(callbackCalls.parent, mergedHeader, "Original callback receives source header")
equal(type(callbackCalls.updateGroup), "function", "Original callback receives standard updater")
local sourceRow = row(mergedHeader, "questID", 810)
merged.rightClick({index = 1}, sourceRow)
local questWindow = windowFor(merged, "questID", 810)
equal(questWindow.data.visible, true, "ON source row can open an independent quest popout")
toggle(merged, false)
equal(sourceRow.visible, nil, "OFF still hides the original item source row")
equal(questWindow.data.visible, true, "OFF preserves independently opened quest popout")
-- Direct row updates pass no parent; identity scoping still hides the same source.
sourceRow.visible = true
merged.app.TopLevelUpdateGroup(sourceRow)
equal(sourceRow.visible, nil, "OFF also gates direct updates with no parent argument")
local copiedHeader = merged.app.__CreateObject(mergedHeader)
sourceRow.visible = true
merged.app.TopLevelUpdateGroup(copiedHeader)
equal(sourceRow.visible, true, "Cloned header callbacks cannot clear original source rows")
equal(copiedHeader.visible, true, "Copied Sources tree delegates its original header visibility")


-- Specific-source copies are resolved from raw occurrences, never clone containment.
local specific = fixture()
local raw = specific.addSource(specific.item(900, {providers = {{"n", 901}}}), specific.quest(900))
local copied = specific.app.__CreateObject(raw, true)
specific.rightClick({index = 1}, copied)
local specificHeader = sources(windowFor(specific, "itemID", 900))
equal(row(specificHeader, "questID", 900).visible, nil, "Specific-source clone uses matching original reward")
equal(row(specificHeader, "npcID", 901).visible, true, "Specific-source clone preserves its provider NPC")
local unindexed = fixture()
local fakeParent = unindexed.quest(910)
local fakeCopy = unindexed.item(910, {providers = {{"n", 911}}, sourceParent = fakeParent})
unindexed.rightClick({index = 1}, fakeCopy)
equal(row(sources(windowFor(unindexed, "itemID", 910)), "questID", 910).visible, true, "Unindexed clone parent cannot fabricate reward eligibility")

-- Extra acquisition candidates with a shared hash override a gate, independent of order.
local independent = fixture()
independent.addSource(independent.item(920), independent.quest(920))
local gate = assert(independent.api.CreateSourceFilter(independent.item(920)))
local source = independent.quest(920)
local nongated = independent.quest(920)
gate:Add(source, true)
equal(gate:IsHidden(assert(source.hash)), true, "Qualifying raw reference controls the quest candidate before mixing")
gate:Add(nongated)
equal(gate:IsHidden(assert(source.hash)), false, "Additional source sharing a hash preserves the merged row")
local reverseGate = assert(independent.api.CreateSourceFilter(independent.item(920)))
reverseGate:Add(nongated); reverseGate:Add(source, true)
equal(reverseGate:IsHidden(assert(source.hash)), false, "Additional-source preservation is order independent")

-- Specialized collections and original containers never enter this display control.
---@type ATTQuestWindowTestNode[]
local specialFields = {
	{factionID = 1}, {questID = 930}, {questID = 930, type = "ihqt"},
	{questID = 930, type = "characterUnlock"}, {collectible = true}, {trackable = true},
	{g = {{key = "itemID", itemID = 931, collectible = true}}}, {customTotal = 1},
}
for i,fields in ipairs(specialFields) do
	local special = fixture()
	special.addSource(special.item(930, fields), special.quest(930))
	equal(assert(special.api.Get(930)):IsQuestSource(930), false, "Special collection/container "..i.." remains uncontrolled")
end
local unrelated = fixture()
unrelated.addSource(unrelated.item(940, {f = 100}), unrelated.quest(940))
unrelated.slash("item:940")
local otherHeader = sources(windowFor(unrelated, "itemID", 940))
equal(otherHeader.OnUpdate, nil, "Other item categories keep original Sources header behavior")
equal(otherHeader.OnSetVisibility, unrelated.app.ReturnTrue, "Other Sources headers retain original callback")

-- Class memoization and invalidation never mutate the original ATT occurrence.
local cached = fixture()
local original = cached.addSource(cached.item(950), cached.quest(950))
---@type { [string]: ATTQuestWindowTestValue }
local snapshot = {}
for key,value in pairs(original) do snapshot[key] = value end
local record = assert(cached.api.Get(950))
equal(cached.api.Get(950), record, "Unchanged source arrays reuse the independent class")
equal(record:IsQuestSource(950), true, "Class stores qualifying original source decisions")
original.g = {}
equal(record:IsQuestSource(950), true, "Empty original children do not make a container")
original.g[1] = cached.item(951, {collectible = true})
equal(record:IsQuestSource(950), false, "Filling the same original child array cannot expose a container reward")
original.g[1] = nil
equal(record:IsQuestSource(950), true, "Clearing filled children restores ordinary source classification")
original.g = nil
cached.addSource(cached.item(950), cached.app.CreateNPC(952))
local grown = assert(cached.api.Get(950))
equal(grown == record, false, "Progressive source growth rebuilds the item record")
cached.references[950] = {original}
local replaced = assert(cached.api.Get(950))
equal(replaced == grown, false, "Source-array replacement rebuilds the record")
cached.app.HandleEvent("OnSettingsRefreshed")
equal(cached.api.Get(950) == replaced, false, "Settings refresh invalidates independent classifications")
local unchanged = true
for key,value in pairs(original) do if snapshot[key] ~= value then unchanged = false end end
for key,value in pairs(snapshot) do if original[key] ~= value then unchanged = false end end
equal(unchanged, true, "Classification never adds or changes ATT occurrence fields")
equal(getmetatable(record.ordinary).__mode, "k", "Display-copy decisions use weak keys with boolean values")

-- Real checkbox callback follows the actual refresh event route to an open window.
---@type ATTQuestWindowTestCheckbox
local checkbox
---@type ATTQuestWindowTestCheckboxParent
local child = {
	---@param self ATTQuestWindowTestCheckboxParent Unused settings-page receiver.
	---@param text string? Optional localized label.
	---@param refresh ATTQuestWindowTestCheckboxCallback Actual refresh callback.
	---@param click ATTQuestWindowTestCheckboxCallback Actual click callback.
	---@return ATTQuestWindowTestCheckbox checkbox Mock native checkbox retaining real behavior.
	CreateCheckBox = function(self, text, refresh, click)
		checkbox = {OnRefresh = refresh, OnClick = click,
			---@param self ATTQuestWindowTestCheckbox Native receiver.
			---@return boolean? checked Current state.
			GetChecked = function(self) return self.checked end,
			---@param self ATTQuestWindowTestCheckbox Native receiver.
			---@param checked? boolean New checkmark.
			---@return nil
			SetChecked = function(self, checked) self.checked = checked end,
			SetATTTooltip = noop, AlignBelow = noop }
		return checkbox
	end }
;(compile("local child, settings, L = ...\n"..
	section("src/Settings/Pages/General.lua", "local checkboxQuestRewardConsumables", "local checkboxNoSeasonalFilter"), f.env,
	"Quest source checkbox") --[[@as ATTQuestWindowTestCheckboxChunk]])(child, f.app.Settings, {})
checkbox:OnRefresh(); equal(checkbox.checked, false, "Checkbox reflects OFF source setting")
checkbox.checked = true; checkbox:OnClick()
equal(row(header, "questID", 100).visible, true, "Actual checkbox displays source in an existing window")
checkbox.checked = false; checkbox:OnClick()
equal(row(header, "questID", 100).visible, nil, "Actual checkbox hides source in the same existing window")
equal(window.data.total, 0, "Checkbox never changes collection denominator")
equal(window.data.progress, 0, "Checkbox never changes collection numerator")


-- Tooltip coverage loads actual Camelot payloads, the native SourceLocations processor,
-- search cache, tooltip cache/rendering, and row redraw/leave callbacks. Native frame
-- methods and OnEnter's unrelated information types remain fixture boundaries.
---@param sourceFixture ATTQuestWindowTestFixture Source fixture extended with actual tooltip code.
---@return ATTQuestTooltipTestState state Tooltip controls, actual processor and external attachment function.
local function tooltipFixture(sourceFixture)
	local app = sourceFixture.app --[[@as ATTQuestTooltipTestApp]]
	local env = sourceFixture.env --[[@as ATTQuestTooltipTestEnvironment]]
	local state = {processCalls = 0, rawCalls = 0, tooltipSettings = {
		SourceLocations = true, ["SourceLocations:Things"] = true,
		["SourceLocations:Completed"] = true, ["SourceLocations:Unsorted"] = true,
		["SourceLocations:Wrapping"] = true, Locations = 20,
	}}
	---@cast state ATTQuestTooltipTestState
	---@param _ ATTQuestWindowTestSettings Unused settings receiver.
	---@param key string Tooltip setting key.
	---@return boolean|number|nil value Existing tooltip control.
	app.Settings.GetTooltipSetting = function(_, key) return state.tooltipSettings[key] end
	---@param _ string Information-type name.
	---@param definition ATTQuestTooltipTestInformation Actual processor registration.
	---@return nil
	app.Settings.CreateInformationType = function(_, definition) state.info = definition end
	---@param _ boolean Failed pcall result.
	---@param message string Search error, surfaced instead of silently swallowing a fixture omission.
	---@return nil
	app.print = function(_, message) error(message) end
	app.FillGroups = noop
	app.EmptyTable, app.WOWAPI = {}, {issecretvalue = no}
	app.Modules.Filter.Filters.InGame = yes
	app.GetRelativeGroup = noop
	---@param text string Display text.
	---@return string text Same fixture label.
	app.AbbreviateString = function(text) return text end
	---@param target string[] Destination source bucket.
	---@param ... string[] Additional source buckets.
	---@return nil
	app.ArrayAppend = function(target, ...)
		for _,values in ipairs({...}) do for _,value in ipairs(values) do target[#target+1] = value end end
	end
	---@param registry ATTQuestWindowTestFlags Existing thing-key registry.
	---@param overrides ATTQuestWindowTestFlags Per-information-type overrides.
	---@return ATTQuestWindowTestFlags copy Independent key registry.
	app.CloneDictionary = function(registry, overrides)
		local copy = {}; for key,value in pairs(registry) do copy[key] = value end
		for key,value in pairs(overrides) do copy[key] = value end; return copy
	end
	---@param values? ATTQuestWindowTestNode[]|string[] Display nodes or source paths.
	---@param order? string|ATTQuestTooltipTestSourceOrder Node sorting descriptor or actual lexical comparator.
	---@return nil
	app.Sort = function(values, order) if values and type(order) == "function" then table.sort(values, order) end end
	---@param left string Left source path.
	---@param right string Right source path.
	---@return boolean before Whether the first source sorts before the second.
	app.SortDefaults.Strings = function(left, right) return left < right end
	app.L.UNSORTED, app.L.HIDDEN_QUEST_TRIGGERS = "UNSORTED", "HIDDEN_QUEST_TRIGGERS"
	app.L.AND_OTHER_SOURCES, app.L.UNOBTAINABLE_ITEM_TEXTURES = "and %d others", {[0] = "other", [1] = "unobtainable"}
	local prefix = "local _, app = ...\nlocal L = app.L\n"
	;(compile(prefix..section("src/base.lua", "app.IsComplete = function", "\nend").."\nend", env,
		"IsComplete") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	;(compile(prefix..section("AllTheThings.lua", "local SourceLocationSettingsKey", "local function AddContainsData")..
		"local SourceSearcher = app.SourceSearcher\nlocal IsRetrieving = app.ReturnFalse\nlocal GetUnobtainableTexture = app.EmptyFunction\nlocal DESCRIPTION_SEPARATOR = ' :: '\n"..
		section("AllTheThings.lua", "local function AddSourceLinesForTooltip", "local unpack = unpack"), env,
		"SourceLocations formatter and registration") --[[@as ATTQuestWindowTestModule]])("ATT", app)
	app.HandleEvent("OnLoad")
	---@param info ATTQuestSourceTooltipInfo Tooltip lines awaiting rendering.
	---@param reference ATTQuestWindowTestNode Displayed item or search root.
	---@return nil
	app.ProcessInformationTypesForExternalTooltips = function(info, reference)
		state.processCalls = state.processCalls + 1; state.info:Process(reference, info)
	end
	local loadAttach = compile(prefix.."local wipe = wipe\n"..
		section("src/Modules/Tooltip.lua", "local function AttachTooltipInformationEntry", "local CanAttachTooltips")..
		section("src/Modules/Tooltip.lua", "local TooltipInfoCache", "local AttachTypicalSearchResults")..
		"\nreturn AttachTooltipSearchResults", env, "External tooltip cache and rendering")
	---@cast loadAttach ATTQuestTooltipTestAttachFactory
	state.attach = loadAttach("ATT", app)
	return state
end

---@return ATTQuestTooltipTestTooltip tooltip Native frame boundary with observable rendered lines.
local function tooltipFrame()
	return {lines = {}, visible = true,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@param text string Native line text.
		---@return nil
		AddLine = function(self, text) self.lines[#self.lines+1] = text end,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@param text string Native left text.
		---@param right string Native right text.
		---@return nil
		AddDoubleLine = function(self, text, right) self.lines[#self.lines+1] = text.." | "..right end,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@return integer count Native line count.
		NumLines = function(self) return #self.lines end,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@return nil
		ClearLines = function(self) self.lines = {} end,
		ClearATTReferenceTexture = noop,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@return nil
		Hide = function(self) self.visible = false end,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@return boolean visible Native visibility.
		IsVisible = function(self) return self.visible end,
		---@param self ATTQuestTooltipTestTooltip Tooltip receiver.
		---@return ATTQuestTooltipTestRow? owner Native owner.
		GetOwner = function(self) return self.owner end,
	}
end

local tooltipSources = fixture()
local tooltipState = tooltipFixture(tooltipSources)
local tooltipApp = tooltipSources.app --[[@as ATTQuestTooltipTestApp]]
local tooltipEnv = tooltipSources.env --[[@as ATTQuestTooltipTestEnvironment]]
tooltipEnv.q, tooltipEnv.i = tooltipSources.quest, tooltipSources.item
tooltipEnv.qo = tooltipApp.CreateClass("Objective", "objectiveID", {})
---@param sourceID SourceID Unrelated appearance source from actual quest payload.
---@param itemID ItemID Appearance item from the payload.
---@param fields ATTQuestWindowTestNode Appearance metadata.
---@return ATTQuestWindowTestNode item Unrelated non-consumable node retained in its actual quest.
tooltipEnv.s = function(sourceID, itemID, fields) fields.sourceID = sourceID; return tooltipApp.CreateItem(itemID, fields) end
for _,markers in ipairs({{"q(367,{", "q(368,{"}, {"q(92840,{", "q(92460,{"}}) do
	local payload = section("db/Camelot/Categories/Zones.lua", markers[1], markers[2]):gsub(",%s*$", "")
	local questSource = (compile("return "..payload, tooltipEnv, "Actual Camelot quest payload")
		--[[@as ATTQuestTooltipTestPayloadChunk]])()
	questSource.text = "quest:"..assert(questSource.questID)
	local zone = {text = "Zone", g = {questSource}}
	tooltipApp.AssignChildren(zone)
	for _,item in ipairs(questSource.g or {}) do
		if item.itemID == 3382 then
			tooltipSources.references[3382] = tooltipSources.references[3382] or {}
			table.insert(tooltipSources.references[3382], item)
		end
	end
end
local craftPayload = assert(read("db/Camelot/Categories/Craftables.lua"):match("i%(3382,%b{}%)"))
local loadCraft = compile("return "..craftPayload, tooltipEnv, "Actual Camelot crafting payload")
---@cast loadCraft ATTQuestTooltipTestPayloadChunk
local crafted = loadCraft()
local alchemy = tooltipSources.link({text = "Craftables"}, {text = "Alchemy"})
tooltipSources.addSource(crafted, alchemy)
local tooltipReference = tooltipSources.item(3382, {text = "item:3382"})
---@return ATTQuestSourceTooltipInfo info Actual ATT-row source processor result.
local function sourceInfo()
	local info = {}; tooltipState.info:Process(tooltipReference, info); return info
end
local offInfo = sourceInfo()
equal(#offInfo, 1, "OFF tooltip preserves actual crafting source and omits both actual Camelot quest rewards")
equal(offInfo[1].left:find("Alchemy", 1, true) ~= nil, true, "OFF tooltip retains Alchemy path")
toggle(tooltipSources, true)
equal(#sourceInfo(), 3, "ON tooltip includes both actual Camelot quest reward paths and Alchemy")
tooltipState.tooltipSettings["SourceLocations:Completed"] = false
equal(#sourceInfo(), 2, "ON independently displays ordinary rewards while completed setting still hides Alchemy")
toggle(tooltipSources, false)
equal(#sourceInfo(), 0, "OFF cannot restore ordinary completed paths when completed setting is disabled")
tooltipState.tooltipSettings["SourceLocations:Completed"] = true
for _,key in ipairs({"SourceLocations", "SourceLocations:Things"}) do
	toggle(tooltipSources, true); tooltipState.tooltipSettings[key] = false
	equal(#sourceInfo(), 0, "Feature respects tooltip "..key.." master/type setting")
	tooltipState.tooltipSettings[key] = true
end
tooltipState.tooltipSettings.Locations = 1
equal(#sourceInfo(), 2, "Existing tooltip location cap adds its normal overflow summary")
tooltipState.tooltipSettings.Locations = 20
tooltipApp.MODE_DEBUG = true; toggle(tooltipSources, false)
equal(#sourceInfo(), 1, "Debug source fallback cannot restore hidden one-time reward paths")
local ordinaryRecord = assert(tooltipSources.api.Get(3382))
equal(ordinaryRecord:IsQuestSource(367), true, "Actual q367 payload preserves original reward containment")
equal(ordinaryRecord:IsQuestSource(92840), true, "Actual q92840 payload preserves original reward containment")
local rawLookup = tooltipApp.GetRawField
---@param field string Source field.
---@param id number Item identifier.
---@return ATTQuestWindowTestNode[]? references Original sources.
tooltipApp.GetRawField = function(field, id) tooltipState.rawCalls = tooltipState.rawCalls + 1; return rawLookup(field, id) end
local beforeRaw = tooltipState.rawCalls
equal(tooltipSources.api.GetSourceVisibility(tooltipSources.item(980, {f = 100})), nil, "Other item categories remain uncontrolled")
equal(tooltipState.rawCalls, beforeRaw, "Other item categories never create a feature raw-source cache record")

-- Distinct original occurrences remain independent even when they share a quest/item ID.
local mixedTooltip = fixture()
local mixedState = tooltipFixture(mixedTooltip)
local mixedQuest = mixedTooltip.link({text = "Zone"}, mixedTooltip.quest(3000, {text = "One-time quest"}))
local mixedReward = mixedTooltip.addSource(mixedTooltip.item(3000), mixedQuest)
local objective = mixedTooltip.link(mixedQuest, {key = "objectiveID", objectiveID = 1, text = "Requirement"})
local mixedRequirement = mixedTooltip.addSource(mixedTooltip.item(3000), objective)
local dailyQuest = mixedTooltip.link({text = "Zone"}, mixedTooltip.quest(3001, {text = "Daily quest", isDaily = true}))
mixedTooltip.addSource(mixedTooltip.item(3000), dailyQuest)
local vendor = mixedTooltip.link({text = "Zone"}, mixedTooltip.app.CreateNPC(3002, {text = "Vendor"}))
mixedTooltip.addSource(mixedTooltip.item(3000), vendor)
local mixedReference = mixedTooltip.item(3000)
local mixedInfo = {}; mixedState.info:Process(mixedReference, mixedInfo)
equal(#mixedInfo, 3, "OFF tooltip preserves same-quest requirement, repeatable quest and vendor paths")
equal(mixedTooltip.api.GetSourceVisibility(mixedReward), false, "OFF controls only the direct reward occurrence")
equal(mixedTooltip.api.GetSourceVisibility(mixedRequirement), nil, "Same-quest requirement occurrence remains uncontrolled")
toggle(mixedTooltip, true)
local mixedOn = {}; mixedState.info:Process(mixedReference, mixedOn)
equal(#mixedOn, 3, "ON keeps existing source-path deduplication for reward plus requirement")
local specialQuest = mixedTooltip.link({text = "Zone"}, mixedTooltip.quest(3003, {text = "Special collection quest"}))
local specialItem = mixedTooltip.addSource(mixedTooltip.item(3003, {collectible = true}), specialQuest)
toggle(mixedTooltip, false)
equal(mixedTooltip.api.GetSourceVisibility(specialItem), nil, "Special collectible consumable keeps its existing source rules")
local specialInfo = {}; mixedState.info:Process(mixedTooltip.item(3003), specialInfo)
equal(#specialInfo, 1, "OFF tooltip retains specialized consumable source")
local starterQuest = mixedTooltip.link({text = "Zone"}, mixedTooltip.quest(3004, {text = "Quest-start source", qItemID = 3004}))
mixedTooltip.qItemSources[3004] = {starterQuest}
local starterInfo = {}; mixedState.info:Process(mixedTooltip.item(3004), starterInfo)
equal(#starterInfo, 1, "Actual qItemID directSources fallback remains visible OFF")
equal(starterInfo[1].left:find("Quest-start source", 1, true) ~= nil, true, "Quest-start fallback retains its original source path")

-- Native search and tooltip caches must be invalidated before the settings-triggered redraw.
local external = tooltipFrame()
---@return nil
local function externalHover()
	external:ClearLines(); external:AddLine("native item line")
	tooltipState.attach(external, tooltipApp.SearchForLink, "item:3382")
end
externalHover(); equal(#external.lines, 2, "External OFF hover renders only Alchemy after its native item line")
local cachedCalls = tooltipState.processCalls
externalHover(); equal(tooltipState.processCalls, cachedCalls, "Repeated hover reuses real tooltip cache")
toggle(tooltipSources, true); externalHover()
equal(#external.lines, 4, "External ON rehover sees rebuilt search/tooltip caches")
toggle(tooltipSources, false); externalHover()
equal(#external.lines, 2, "External OFF rehover removes old quest lines without appending duplicates")

local activeTooltip = tooltipFrame()
tooltipEnv.GameTooltip = activeTooltip
local ui = "src/UI/Window Definitions.lua"
local leave = (compile(section(ui, "local function RowOnLeave", "local function CreateRow").."\nreturn RowOnLeave", tooltipEnv,
	"Actual row leave") --[[@as ATTQuestTooltipTestLeaveFactory]])()
local activeRow = {ref = tooltipReference, leave = leave,
	---@param ownerRow ATTQuestTooltipTestRow Native row invoking actual SourceLocations processing.
	---@return nil
	enter = function(ownerRow)
		activeTooltip.visible = true; activeTooltip.owner = ownerRow
		activeTooltip:AddLine("native row line")
		for _,entry in ipairs(sourceInfo()) do activeTooltip:AddLine(entry.left) end
		activeTooltip.ATT_AttachComplete = true
	end,
	---@param self ATTQuestTooltipTestRow Native owner receiver.
	---@param script string Requested native event script.
	---@return ATTQuestTooltipTestEnter callback Captured row script.
	GetScript = function(self, script) return script == "OnLeave" and self.leave or self.enter end,
}
---@cast activeRow ATTQuestTooltipTestRow
;(compile("local _, app = ...\n"..section(ui, "local function RedrawRowTooltip", "local function StopMovingOrSizing"), tooltipEnv,
	"Actual row tooltip redraw event") --[[@as ATTQuestWindowTestModule]])("ATT", tooltipApp)
activeRow:enter(); equal(#activeTooltip.lines, 2, "Current ATT row starts with OFF tooltip paths")
local collection = f.app:CreateWindow("Collection fixture", {OnInit = noop})
collection:SetData({key = "headerID", total = 7, progress = 3})
local collectionUpdates, itemUpdates = collection.updates, window.updates
checkbox.checked = true; checkbox:OnClick()
equal(collection.updates, collectionUpdates, "Actual checkbox does not update unrelated collection windows")
equal(window.updates > itemUpdates, true, "Actual checkbox still updates registered source windows")
equal(collection.data.total, 7, "Actual checkbox preserves unrelated collection total")
equal(collection.data.progress, 3, "Actual checkbox preserves unrelated collection progress")
-- The row belongs to the independent tooltip fixture; its own actual Settings.Set event rebuilds it.
toggle(tooltipSources, true)
equal(#activeTooltip.lines, 4, "Current ATT row immediately rebuilds ON with both quest paths")
toggle(tooltipSources, false)
equal(#activeTooltip.lines, 2, "Current ATT row immediately clears old quest lines OFF")
equal(activeTooltip.ATT_AttachComplete, true, "Row redraw completes through real RowOnLeave and fixture OnEnter")
equal(tooltipReference.total, nil, "Tooltip source display never adds collection totals to its item")
equal(tooltipReference.collectible, nil, "Tooltip source display never marks its item collectible")
print("PASS: "..checks.." quest consumable source-window/tooltip checks")
