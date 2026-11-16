-- Only match groups with npcID
--- Tests whether an object has positive NPC ID.
---@param t ATTObject # Object to inspect.
---@return boolean|nil # Match result used by bubble-down filtering.
function FILTERFUNC_npcID(t) return t.npcID and t.npcID > 0 and true; end

-- Only match groups with itemID
--- Tests whether an object has item ID.
---@param t ATTObject # Object to inspect.
---@return true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_itemID(t) return t.itemID and true; end

-- Only match groups with questID
--- Tests whether an object has quest ID.
---@param t ATTObject # Object to inspect.
---@return true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_questID(t) return t.questID and true; end

-- Only match groups with recipeID
--- Tests whether an object has recipe ID.
---@param t ATTObject # Object to inspect.
---@return true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_recipeID(t) return t.recipeID and true; end

-- Only match groups with criteriaID
--- Tests whether an object has criterion ID.
---@param t ATTObject # Object to inspect.
---@return true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_criteriaID(t) return t.criteriaID and true; end

-- Only match groups with objectID
--- Tests whether an object has object ID.
---@param t ATTObject # Object to inspect.
---@return true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_objectID(t) return t.objectID and true; end

-- Only match groups with questID/encounterID
--- Tests whether an object has quest or encounter ID.
---@param t ATTObject # Object to inspect.
---@return QuestID|true|nil # Match result used by bubble-down filtering.
function FILTERFUNC_questIDORencounterID(t) return t.questID or t.encounterID and true; end

-- Only match groups without an explicit timeline
--- Tests whether an object has no timeline.
---@param t ATTObject # Object to inspect.
---@return boolean # Match result used by bubble-down filtering.
function FILTERFUNC_NoTimeline(t) return not t.timeline and true; end

-- Only match groups without a headerID/f
--- Tests whether an object has neither header nor filter.
---@param t ATTObject # Object to inspect.
---@return boolean # Match result used by bubble-down filtering.
function FILTERFUNC_NoheaderID(t) return not t.headerID and not t.f and true; end
