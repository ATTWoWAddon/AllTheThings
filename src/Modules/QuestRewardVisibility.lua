-- Controls one-time quest reward sources in ordinary consumable source windows.
-- Classification and display decisions belong to independent records, not ATT objects.
local _, app = ...
local floor = math.floor

--- Existing native window contract used only to refresh its source rows.
---@class ATTQuestRewardSourceWindow
---@field Update fun(self: ATTQuestRewardSourceWindow, force?: boolean): boolean? Rebuild visible rows, or mark a hidden window pending.

--- Read-only input to the consumable source classifier.
---@class ATTQuestConsumableSource
---@field __type? string Existing runtime class name.
---@field key? string Existing primary identifier field.
---@field itemID? ItemID Base item identifier.
---@field f? FilterID Existing item category.
---@field questID? QuestID Existing quest association.
---@field objectiveID? ObjectiveID Existing objective association.
---@field parent? ATTQuestConsumableSource Original containing source.
---@field g? ATTQuestConsumableSource[] Existing child references.
---@field collectible? boolean|integer Existing collection eligibility.
---@field trackable? boolean|integer Existing tracking eligibility.
---@field customTotal? number Existing custom collection denominator.
---@field repeatable? boolean|integer Complete quest reset property, including daily and world quests.
---@field providers? ATTProvider[] Acquisition providers.
---@field crs? CreatureID[] Acquisition creatures.
---@field npcID? NPCID Acquisition NPC.
---@field objectID? ObjectID Acquisition object.
---@field cost? number|ATTCost[] Acquisition cost.
---@field window? ATTQuestRewardSourceWindow Existing window assigned to a popout root by SetData.

---@alias ATTQuestRewardReferenceDecisions { [ATTQuestConsumableSource]: boolean }
---@alias ATTQuestRewardReferencesByQuest { [QuestID]: ATTQuestConsumableSource[] }
---@alias ATTQuestRewardConsumablesByItem { [ItemID]: ATTQuestRewardConsumable }

--- Original occurrence classifications for one item; no state is written to source data.
---@class ATTQuestRewardConsumable
---@field itemID ItemID Base item represented by this record.
---@field references? ATTQuestConsumableSource[] Original source array used to build this record.
---@field count integer Source count used to detect progressive loading changes.
---@field ordinary ATTQuestRewardReferenceDecisions Weak-key collection exclusions for sources and display copies.
---@field rewards ATTQuestRewardReferenceDecisions Original occurrence reward decisions.
---@field quests ATTQuestRewardReferencesByQuest All occurrences under each nearest quest, including non-rewards.
local QuestRewardConsumable = {}
QuestRewardConsumable.__index = QuestRewardConsumable

--- Checks item identity and remembers collection exclusions independently of view children.
---@param item ATTQuestConsumableSource Original source or current display copy.
---@return boolean ordinary Whether this is currently an ordinary consumable of this item ID.
function QuestRewardConsumable:IsOrdinary(item)
	if item.__type ~= "Item" or item.key ~= "itemID" or item.f ~= 55 or item.itemID ~= self.itemID
		or item.questID or item.objectiveID or (item.customTotal and item.customTotal > 0)
	then return false end
	local ordinary = self.ordinary[item]
	if ordinary == nil then
		ordinary = not item.collectible and not item.trackable
		self.ordinary[item] = ordinary
	end
	return ordinary
end

--- Classifies an original occurrence using actual containment and the nearest quest.
---@param item ATTQuestConsumableSource Original occurrence from the itemID source array.
---@return boolean reward Whether this occurrence is a non-repeatable quest reward.
function QuestRewardConsumable:IsQuestReward(item)
	if not self:IsOrdinary(item) or (item.g and #item.g > 0) then return false end
	local child, parent = item, item.parent
	while parent do
		local children, contained = parent.g, false
		if children then
			for i=1,#children do
				if children[i] == child then contained = true; break end
			end
		end
		if not contained then return false end
		if parent.questID then
			return parent.key == "questID" and not parent.repeatable
		end
		local key = parent.key
		if (key ~= "headerID" and key ~= "filterID") or parent.objectiveID or parent.itemID
			or parent.providers or parent.crs or parent.npcID or parent.objectID or parent.cost
		then return false end
		child, parent = parent, parent.parent
	end
	return false
end

--- Reads a memoized occurrence decision while rechecking mutable container structure.
---@param item ATTQuestConsumableSource Original occurrence, not a merged source or display clone.
---@return boolean reward Whether this original is still an ordinary one-time quest reward.
function QuestRewardConsumable:IsRewardReference(item)
	return self.rewards[item] == true and self:IsOrdinary(item) and not (item.g and #item.g > 0)
end

--- A merged quest source is controlled only when every matching original is a reward.
---@param questID QuestID Quest represented by the source copy, never a clone's parent chain.
---@return boolean reward Whether hiding this quest preserves all other acquisition relationships.
function QuestRewardConsumable:IsQuestSource(questID)
	local references = self.quests[questID]
	if not references then return false end
	for i=1,#references do
		local item = references[i]
		-- Filling may add children without replacing the source array.
		if not self:IsRewardReference(item) then return false end
	end
	return true
end

--- Builds the original-occurrence index, retaining mixed non-reward relationships.
---@param itemID ItemID Base item identifier.
---@param references? ATTQuestConsumableSource[] Current original source array.
---@return ATTQuestRewardConsumable consumable Independent classification record.
local function CreateConsumable(itemID, references)
	local consumable = setmetatable({
		itemID = itemID, references = references, count = references and #references or 0,
		ordinary = setmetatable({}, { __mode = "k" }), rewards = {}, quests = {},
	}, QuestRewardConsumable)
	if not references then return consumable end
	for i=1,consumable.count do
		local item = references[i]
		consumable.rewards[item] = consumable:IsQuestReward(item)
		local parent = item.parent
		while parent do
			local questID = parent.questID
			if questID then
				local sources = consumable.quests[questID]
				if not sources then sources = {}; consumable.quests[questID] = sources end
				sources[#sources + 1] = item
				break
			end
			parent = parent.parent
		end
	end
	return consumable
end

---@alias ATTQuestSourceUpdateGroup fun(group: ATTQuestSourceView, parent?: ATTQuestSourceView): nil
---@alias ATTQuestSourceUpdate fun(self: ATTQuestSourceView, parent?: ATTQuestSourceView, updateGroup?: ATTQuestSourceUpdateGroup): boolean|integer|nil
---@alias ATTQuestSourceSetVisibility fun(self: ATTQuestSourceView): boolean|integer|nil

--- Fields used on the existing source-window copies; no feature cache is added here.
---@class ATTQuestSourceView: ATTQuestConsumableSource
---@field hash string Existing merge identity of this display copy.
---@field text? string Existing display label.
---@field achievementID? AchievementID Existing criteria association.
---@field visible? boolean Existing row visibility.
---@field g? ATTQuestSourceView[] Existing nested display copies.
---@field OnUpdate? ATTQuestSourceUpdate Existing update callback.
---@field OnSetVisibility? ATTQuestSourceSetVisibility Existing custom visibility callback.

--- A false entry preserves a source shared with any uncontrolled acquisition method.
---@alias ATTQuestSourceDecisions { [string]: QuestID|false }

--- Per-window merge decisions, independent of the ATT display objects.
---@class ATTQuestSourceVisibility
---@field itemID ItemID Item whose original occurrences classify quest sources.
---@field sources ATTQuestSourceDecisions Candidate copy hashes mapped to quests or unconditional preservation.
---@field window? ATTQuestRewardSourceWindow Popout window owning these display decisions.
local QuestSourceVisibility = {}
QuestSourceVisibility.__index = QuestSourceVisibility

---@class ATTQuestRewardVisibilityAPI
---@field Get fun(itemID?: number): ATTQuestRewardConsumable?
---@field GetSourceVisibility fun(item: ATTQuestConsumableSource): boolean?
---@field CreateSourceFilter fun(group: ATTQuestConsumableSource): ATTQuestSourceVisibility?
local api = {}
app.Modules.QuestRewardVisibility = api
---@type ATTQuestRewardConsumablesByItem
local consumables = {}
--- Weak keys do not retain discarded native popouts.
---@type { [ATTQuestRewardSourceWindow]: true }
local sourceWindows = setmetatable({}, { __mode = "k" })

--- Refreshes only registered item source windows when their display setting changes.
---@param context string Settings container whose value was written.
---@param setting string Changed setting key; all unrelated keys are ignored.
---@return nil
local function RefreshSourceWindows(context, setting)
	if context ~= "General" or setting ~= "Show:QuestRewardConsumables" then return end
	app.WipeSearchCache()
	for window in pairs(sourceWindows) do window:Update(true) end
	app.HandleEvent("QuestRewardConsumablesChanged")
end
app.AddEventHandler("Settings.OnSet", RefreshSourceWindows)

--- Clears independent records after loading or refreshing settings.
---@return nil
local function ResetConsumables() wipe(consumables) end
app.AddEventHandler("OnLoad", ResetConsumables)
app.AddEventHandler("OnSettingsRefreshed", ResetConsumables)

--- Reuses a record until its original source array is replaced or changes size.
---@param itemID? number Base item ID or encoded modItemID.
---@return ATTQuestRewardConsumable? consumable Current original-source classifications.
function api.Get(itemID)
	if not itemID then return end
	itemID = floor(itemID)
	local references = app.GetRawField("itemID", itemID)
	local count = references and #references or 0
	local consumable = consumables[itemID]
	if not consumable or consumable.references ~= references or consumable.count ~= count then
		consumable = CreateConsumable(itemID, references)
		consumables[itemID] = consumable
	end
	return consumable
end

--- Overrides only original one-time reward paths; nil preserves all other tooltip rules.
---@param item ATTQuestConsumableSource Original occurrence returned by the item source searcher.
---@return boolean? visible The setting for a qualifying reward, or nil for an uncontrolled source.
function api.GetSourceVisibility(item)
	if item.f ~= 55 then return end
	local consumable = api.Get(item.itemID)
	if consumable and consumable:IsRewardReference(item) then
		return not not app.Settings:Get("Show:QuestRewardConsumables")
	end
end

--- Records candidates before merging; an uncontrolled duplicate always wins.
---@param source ATTQuestSourceView Candidate copy with its own merge hash.
---@param hierarchy? boolean Whether this candidate came from the item's containing source hierarchy.
---@return nil
function QuestSourceVisibility:Add(source, hierarchy)
	local hash = source.hash
	local questID = hierarchy and source.key == "questID" and source.questID or false
	local previous = self.sources[hash]
	if previous == nil then self.sources[hash] = questID
	elseif previous ~= questID then self.sources[hash] = false end
end

--- Uses current settings and source-cache generations even for an already-open window.
---@param hash string Final merged source copy's hash.
---@return boolean hidden Whether this source consists only of one-time quest rewards.
function QuestSourceVisibility:IsHidden(hash)
	if app.Settings:Get("Show:QuestRewardConsumables") then return false end
	local questID = self.sources[hash]
	if not questID then return false end
	local consumable = api.Get(self.itemID)
	return consumable and consumable:IsQuestSource(questID) or false
end

--- Installs gates after merging so callback merging cannot discard a later decision.
---@param sourceGroup ATTQuestSourceView Completed Sources header and its merged children.
---@return nil
function QuestSourceVisibility:Apply(sourceGroup)
	local sources, controlled = sourceGroup.g, false
	---@cast sources ATTQuestSourceView[]
	for i=1,#sources do
		local source = sources[i]
		local hash = source.hash
		if self.sources[hash] then
			controlled = true
			local onUpdate = source.OnUpdate
			---@param row ATTQuestSourceView Existing source copy being refreshed.
			---@param parent? ATTQuestSourceView Containing Sources header.
			---@param updateGroup? ATTQuestSourceUpdateGroup Standard updater passed to the original callback.
			---@return boolean|integer|nil handled Original result, or true to suppress the entire hidden subtree.
			source.OnUpdate = function(row, parent, updateGroup)
				if row == source and self:IsHidden(hash) then row.visible = nil; return true end
				if onUpdate then return onUpdate(row, parent, updateGroup) end
			end
		end
	end
	if not controlled then return end
	if self.window then sourceWindows[self.window] = true end
	local onSetVisibility = sourceGroup.OnSetVisibility
	---@param header ATTQuestSourceView Sources header being refreshed.
	---@return true|nil handled Skip the header when every final source is gated off.
	sourceGroup.OnUpdate = function(header)
		if header ~= sourceGroup then return end
		for i=1,#sources do
			if not self:IsHidden(sources[i].hash) then return end
		end
		for i=1,#sources do sources[i].visible = nil end
		header.visible = nil
		return true
	end
	---@param header ATTQuestSourceView Sources header after its children have been updated.
	---@return boolean|integer|nil visible Preserve unrelated sources, or follow children for controlled rewards.
	sourceGroup.OnSetVisibility = function(header)
		local consumable = header == sourceGroup and api.Get(self.itemID)
		for _,questID in pairs(self.sources) do
			if questID and consumable and consumable:IsQuestSource(questID) then
				for i=1,#sources do if sources[i].visible then return true end end
				return
			end
		end
		if onSetVisibility then return onSetVisibility(header) end
	end
end

--- Creates display decisions for an ordinary consumable; earlier popout handlers may have added view children.
---@param group ATTQuestConsumableSource Item being opened; source copies are classified from original references.
---@return ATTQuestSourceVisibility? filter Independent per-window decision owner.
function api.CreateSourceFilter(group)
	local consumable = group.f == 55 and api.Get(group.itemID)
	if consumable and consumable:IsOrdinary(group) then
		return setmetatable({ itemID = consumable.itemID, sources = {}, window = group.window }, QuestSourceVisibility)
	end
end
