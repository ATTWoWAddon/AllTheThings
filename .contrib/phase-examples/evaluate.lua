-- Standalone Lua 5.1 evaluator for the executable phase examples.
-- It does not change ATT runtime settings or decide client/quest eligibility.
local M = {}

local function fail(message)
    error("phase example: " .. message, 3)
end

local function denseArray(value, label)
    if type(value) ~= "table" then fail(label .. " must be an array") end
    local count = 0
    for key in pairs(value) do
        if type(key) ~= "number" or key < 1 or key % 1 ~= 0 then
            fail(label .. " must be a dense array")
        end
        count = count + 1
    end
    if count ~= #value then fail(label .. " must be a dense array") end
    return value
end

local function prepare(data, view)
    if type(data) ~= "table" or type(data.context) ~= "string" then
        fail("compiled module must name its context")
    end
    local order = { start = 0 }
    for index, key in ipairs(denseArray(data.milestones, "milestones")) do
        if type(key) ~= "string" or key == "" or order[key] then
            fail("milestones must contain unique nonempty keys other than start")
        end
        order[key] = index
    end
    if type(data.policies) ~= "table" then fail("policies must be a table") end
    denseArray(data.groups, "groups")
    if data.context == "retail" then
        if next(data.policies) or #data.milestones > 0 then
            fail("Retail must not require a phase policy")
        end
        return order, nil
    end
    if not order[view] or view == "start" then fail("unknown viewed milestone") end
    return order, order[view]
end

local function state(policy, key, order, viewed)
    if type(policy) ~= "table" then fail("missing policy " .. key) end
    local windows = denseArray(policy.windows, "windows for " .. key)
    if policy.status == "disabled" or policy.status == "unknown" then
        if #windows ~= 0 then fail("disabled/unknown policy has windows: " .. key) end
        return policy.status
    end
    if policy.status ~= nil then fail("invalid policy status: " .. key) end
    if #windows == 0 then fail("scheduled policy has no windows: " .. key) end
    local first, active, previousUntil = nil, false, nil
    for index, window in ipairs(windows) do
        if type(window) ~= "table" then fail("invalid window: " .. key) end
        local ending = window["until"]
        local opening, closing = order[window.from], ending and order[ending]
        if not opening or (ending and not closing) then
            fail("unknown window boundary: " .. key)
        end
        if closing and closing <= opening then fail("window closes before opening: " .. key) end
        if index > 1 and (not previousUntil or opening < previousUntil) then
            fail("unordered or overlapping windows: " .. key)
        end
        first = first or opening
        if viewed >= opening and (not closing or viewed < closing) then active = true end
        previousUntil = closing
    end
    if active then return "active" end
    if viewed < first then return "future" end
    return "removed"
end

-- Pure schedule query. Availability still requires all ordinary source conditions.
function M.scopeState(data, key, view)
    local order, viewed = prepare(data, view)
    if not viewed then fail("Retail has no scheduled scopes") end
    return state(data.policies[key], key, order, viewed)
end

local priority = { active = 0, removed = 1, future = 2, unknown = 3, disabled = 4 }

-- Return complete matching acquisition routes, including closed routes for inspection.
-- condition(node, ancestors) MUST independently decide that node's ordinary
-- requirements, including client/timeline, u, level, quests, faction and costs.
-- It is called for every ancestor and the matching node, even on a closed route.
-- Inspecting a returned route never changes its obtainable flag.
function M.find(data, query, view, condition)
    if type(condition) ~= "function" then fail("an ordinary-condition predicate is required") end
    local matches
    if type(query) == "function" then
        matches = query
    elseif type(query) == "table" then
        if not next(query) then fail("query must identify a source") end
        matches = function(node)
            for key, value in pairs(query) do
                if node[key] ~= value then return false end
            end
            return true
        end
    else
        fail("query must be a field table or predicate")
    end
    local order, viewed = prepare(data, view)
    local result = { obtainable = false, routes = {} }
    local path, ancestry = {}, {}
    local function visit(nodes)
        denseArray(nodes, "node groups")
        for _, node in ipairs(nodes) do
            if type(node) ~= "table" then fail("acquisition node must be a table") end
            path[#path + 1] = node
            if ancestry[node] then fail("cyclic acquisition tree") end
            ancestry[node] = true
            if matches(node, path) then
                local route = {
                    nodes = {}, scopeStates = {}, schedule = "active",
                    conditionsPass = true, obtainable = false,
                }
                local seenScopes = {}
                for index, ancestor in ipairs(path) do
                    route.nodes[index] = ancestor
                    -- Evaluate all conditions and policies; a disabled parent must
                    -- not conceal a missing child's policy or condition failure.
                    local passed = condition(ancestor, path, index)
                    if type(passed) ~= "boolean" then fail("condition predicate must return a boolean") end
                    if not passed then route.conditionsPass = false end
                    if ancestor.progressionScopes then
                        if not viewed then fail("Retail node contains progression scopes") end
                        for _, key in ipairs(denseArray(ancestor.progressionScopes, "progressionScopes")) do
                            if type(key) ~= "string" or key == "" then fail("invalid progression scope") end
                            if not seenScopes[key] then
                                seenScopes[key] = true
                                local scope = state(data.policies[key], key, order, viewed)
                                route.scopeStates[#route.scopeStates + 1] = { key = key, state = scope }
                                if priority[scope] > priority[route.schedule] then route.schedule = scope end
                            end
                        end
                    end
                end
                route.obtainable = route.schedule == "active" and route.conditionsPass
                if route.obtainable then result.obtainable = true end
                result.routes[#result.routes + 1] = route
            end
            if node.groups then visit(node.groups) end
            ancestry[node] = nil
            path[#path] = nil
        end
    end
    visit(data.groups)
    return result
end

return M
