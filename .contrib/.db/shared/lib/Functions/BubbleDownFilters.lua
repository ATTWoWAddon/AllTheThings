-- Only match groups with npcID
--- Matches objects with a positive NPC ID.
---@param t ATTObject # Parser object to check.
---@return boolean|nil # True for a positive NPC ID, false for a nonpositive ID, or nil when absent.
function FILTERFUNC_npcID(t) return t.npcID and t.npcID > 0 and true; end

-- Only match groups with itemID
--- Matches objects carrying an item ID.
---@param t ATTObject # Parser object to check.
---@return true|nil # True when an item ID is present, otherwise nil.
function FILTERFUNC_itemID(t) return t.itemID and true; end

-- Only match groups with questID
--- Matches objects carrying a quest ID.
---@param t ATTObject # Parser object to check.
---@return true|nil # True when a quest ID is present, otherwise nil.
function FILTERFUNC_questID(t) return t.questID and true; end

-- Only match groups with recipeID
--- Matches objects carrying a recipe ID.
---@param t ATTObject # Parser object to check.
---@return true|nil # True when a recipe ID is present, otherwise nil.
function FILTERFUNC_recipeID(t) return t.recipeID and true; end

-- Only match groups with criteriaID
--- Matches objects carrying a criteria ID.
---@param t ATTObject # Parser object to check.
---@return true|nil # True when a criteria ID is present, otherwise nil.
function FILTERFUNC_criteriaID(t) return t.criteriaID and true; end

-- Only match groups with objectID
--- Matches objects carrying a world object ID.
---@param t ATTObject # Parser object to check.
---@return true|nil # True when an object ID is present, otherwise nil.
function FILTERFUNC_objectID(t) return t.objectID and true; end

-- Only match groups with questID/encounterID
--- Matches objects carrying a quest or encounter ID.
---@param t ATTObject # Parser object to check.
---@return QuestID|true|nil # The quest ID when present, otherwise true for an encounter ID or nil.
function FILTERFUNC_questIDORencounterID(t) return t.questID or t.encounterID and true; end

-- Only match groups without an explicit timeline
--- Matches objects without a timeline.
---@param t ATTObject # Parser object to check.
---@return boolean # Whether the object has no timeline.
function FILTERFUNC_NoTimeline(t) return not t.timeline and true; end

-- Only match groups without a headerID/f
--- Matches objects without a header ID or filter.
---@param t ATTObject # Parser object to check.
---@return boolean # Whether both the header ID and filter are absent.
function FILTERFUNC_NoheaderID(t) return not t.headerID and not t.f and true; end
