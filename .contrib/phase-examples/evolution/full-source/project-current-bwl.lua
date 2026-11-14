-- Project the bounded owner spines extracted from the current standalone SoD BWL source.
-- This is a bounded source projection, not a legacy Parser or an independent golden run.
assert(_VERSION == "Lua 5.1", "Lua 5.1 is required")
local input = assert(arg[1], "selected source path required")
local output = assert(arg[2], "literal output path required")

---@type table<string, any> Bounded fixture globals, including constructor callbacks.
local environment = {
    ROOTS = { Instances = "instances" },
    EXPANSION = { CLASSIC = "classic" },
    DIFFICULTY = { LEGACY_RAID = { PLAYER40 = 9 }, SOD = { PLAYER20 = 201 } },
    HORDE_ONLY = { 2, 5, 6, 8 },
    ALLIANCE_ONLY = { 1, 3, 4, 7 }, -- The selected Vanilla SoD race constant.
    ADDED_1_6_0 = "added 1.6.0.4500",
    REMOVED_1_15_4 = "removed 1.15.4.56738",
    ADDED_1_15_4 = "added 1.15.4.56738",
    PHASE_THREE = {}, -- Inert tokens: neither their values nor legacy IDs determine timing.
    SOD_PHASE_FIVE = {},
}
local captured
for name, field in pairs({ inst = "instanceID", e = "encounterID", i = "itemID", d = "difficultyID" }) do
    ---Attach the constructor identity to a projected source node.
    ---@param id integer
    ---@param data table|nil
    ---@return table
    environment[name] = function(id, data)
        data = data or {}
        assert(data[field] == nil, "constructor identity already present")
        data[field] = id
        return data
    end
end

-- Retired production timing never enters the projection. The actual source
-- still calls its original wrappers; only their timing behavior is suppressed.
---Discard retired phase timing while retaining the wrapped payload.
---@param _ any
---@param payload any
---@return any
environment.applyclassicphase = function(_, payload) return payload end
---Retain expansion-wrapped data without projecting expansion timing.
---@param _ any
---@param payload any
---@return any
environment.expansion = function(_, payload) return payload end
---Capture the single projected fixture root.
---@param _ any
---@param payload table
environment.root = function(_, payload)
    assert(captured == nil, "the bounded fixture must have exactly one root")
    captured = payload.instanceID and { payload } or payload
end
---Construct and capture the current instance root shortcut.
---@param id integer
---@param payload table
environment.instanceroot = function(id, payload)
    -- Match the current shared shortcut: root(ROOTS.Instances, inst(id, payload)).
    environment.root(environment.ROOTS.Instances, environment.inst(id, payload))
end

-- Match the used helper's array-to-groups normalization and recursive history
-- event. These intrinsic timelines remain ordinary conditions on the routes.
---Wrap children and propagate their intrinsic timeline event recursively.
---@param event string
---@param children table[]
---@return table
environment.bubbleDownTimelineEventSelf = function(event, children)
    local wrapper = { groups = children }
    ---Add the timeline event once to the wrapper and each descendant.
    ---@param node table
    local function apply(node)
        node.timeline = node.timeline or {}
        local present = false
        for _, existing in ipairs(node.timeline) do
            if existing == event then present = true end
        end
        if not present then node.timeline[#node.timeline + 1] = event end
        for _, child in ipairs(node.groups or {}) do apply(child) end
    end
    apply(wrapper)
    return wrapper
end
setmetatable(environment, {
    ---Reject globals outside the bounded fixture environment.
    ---@param _ table
    ---@param key any
    __index = function(_, key) error("unsupported fixture global: " .. tostring(key)) end,
})
local source = assert(loadfile(input))
setfenv(source, environment)
source()
assert(type(captured) == "table" and #captured == 1, "expected one current bounded BWL instance")

---Serialize the bounded projection as a deterministic Lua literal.
---@param value any
---@param depth integer
---@return string
local function literal(value, depth)
    local kind = type(value)
    if kind == "string" then return string.format("%q", value) end
    if kind == "number" or kind == "boolean" then return tostring(value) end
    assert(kind == "table", "unsupported source value: " .. kind)
    local keys = {}
    for key in pairs(value) do keys[#keys + 1] = key end
    if #keys == 0 then return "{}" end
    table.sort(keys,
        ---Order unlike key types consistently before ordering their values.
        ---@param a any
        ---@param b any
        ---@return boolean
        function(a, b)
        if type(a) ~= type(b) then return type(a) < type(b) end
        return a < b
    end)
    local rows, indent = {}, string.rep("    ", depth)
    for _, key in ipairs(keys) do
        local prefix = type(key) == "number" and "" or "[" .. literal(key, 0) .. "] = "
        rows[#rows + 1] = indent .. "    " .. prefix .. literal(value[key], depth + 1)
    end
    return "{\n" .. table.concat(rows, ",\n") .. "\n" .. indent .. "}"
end
local file = assert(io.open(output, "wb"))
file:write("-- Comparison projection (P2.2 shadow / P3 progress); regenerate from the selected source.\nreturn ")
file:write(literal(captured, 0), "\n")
file:close()
