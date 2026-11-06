-- Lua 5.1 behavior checks for native output from Parser --phase-example.
assert(_VERSION == "Lua 5.1", "run these checks with Lua 5.1")
local evaluate = dofile(assert(arg[1], "evaluator path required"))
local checks = 0
local function check(value, message)
    checks = checks + 1
    assert(value, message)
end
local function fails(action, fragment)
    local ok, message = pcall(action)
    check(not ok and tostring(message):find(fragment, 1, true), "expected failure: " .. fragment)
end
local function equal(left, right, path)
    path = path or "module"
    check(type(left) == type(right), path .. ": type differs")
    if type(left) ~= "table" then
        check(left == right, path .. ": value differs")
        return
    end
    for key, value in pairs(left) do equal(value, right[key], path .. "." .. tostring(key)) end
    for key in pairs(right) do check(left[key] ~= nil, path .. ": extra key " .. tostring(key)) end
end
local function satisfied() return true end
local function item(data, id, view, predicate)
    return evaluate.find(data, { itemID = id }, view, predicate or satisfied)
end
local function obtainable(data, id, view, expected)
    local result = item(data, id, view)
    check(result.obtainable == expected, data.context .. " item " .. id .. " at " .. tostring(view))
    return result
end
local function ancestor(route, field, value)
    for _, node in ipairs(route.nodes) do
        if node[field] == value then return node end
    end
end
local function ordinaryGnomer(route)
    local direct = false
    for index, node in ipairs(route.nodes) do
        if node.encounterID == 418 then
            direct = index > 1 and route.nodes[index - 1].instanceID == 231
        end
    end
    check(direct, "ordinary Gnomeregan encounter stays directly under instance 231")
    check(not ancestor(route, "difficultyID", 1), "ordinary Gnomeregan must not gain a difficulty wrapper")
end

-- Independent evaluator fixtures: these are not a second compiler, and do not
-- manufacture expected Parser output from a canonical policy file.
local unit = {
    context = "test:main", milestones = { "4", "4.1", "4.2", "4.10" },
    policies = {
        parent = { windows = { { from = "4.1" } } },
        child = { windows = { { from = "start", ["until"] = "4.2" }, { from = "4.10" } } },
        disabled = { status = "disabled", windows = {} },
        unknown = { status = "unknown", windows = {} },
    },
    groups = {
        { instanceID = 1, progressionScopes = { "parent" }, groups = {
            { encounterID = 2, progressionScopes = { "parent", "child" }, groups = { { itemID = 3 } } },
        } },
        { encounterID = 4, progressionScopes = { "disabled" }, groups = { { itemID = 3 } } },
    },
}
check(evaluate.scopeState(unit, "child", "4") == "active", "start boundary")
check(evaluate.scopeState(unit, "child", "4.2") == "removed", "exclusive removal")
check(evaluate.scopeState(unit, "child", "4.10") == "active", "reopening / string subphase order")
obtainable(unit, 3, "4", false) -- child cannot reopen a future parent
obtainable(unit, 3, "4.1", true)
obtainable(unit, 3, "4.2", false)
local reopened = obtainable(unit, 3, "4.10", true)
check(#reopened.routes == 2 and reopened.routes[2].schedule == "disabled", "complete alternatives stay separate")
unit.groups[1].progressionScopes = { "disabled" }
unit.groups[1].groups[1].progressionScopes = { "disabled", "unknown" }
local blocked = obtainable(unit, 3, "4.10", false)
check(blocked.routes[1].schedule == "disabled", "disabled ancestor dominates unknown")
check(#blocked.routes[1].scopeStates == 2, "retain both disabled and unknown reasons")
unit.policies.unknown = nil
fails(function() item(unit, 3, "4.10") end, "missing policy unknown")
unit.policies.unknown = { status = "unknown", windows = {} }
fails(function() evaluate.find(unit, { itemID = 3 }, "4.1") end, "predicate is required")
fails(function() item(unit, 3, "4.01") end, "unknown viewed milestone")
unit.policies.child.windows = { { from = "4.2", ["until"] = "4.1" } }
fails(function() evaluate.scopeState(unit, "child", "4.1") end, "closes before opening")

-- Ordinary requirements belong to every ancestor. The caller supplies game
-- state and client/timeline rules; inspection does not override this predicate.
local gated = {
    context = "test:main", milestones = { "4" }, policies = {}, groups = {
        { instanceID = 1, lvl = 55, sourceQuest = 84384, timeline = { "fixture-client" }, groups = {
            { npcID = 16097, cost = { { "i", 22050, 1 } }, groups = { { itemID = 22315, u = 1 } } },
        } },
    },
}
local world = { level = 60, quest = true, inventory = 1, client = true, unavailable = false }
local visits = 0
local function conditions(node)
    visits = visits + 1
    if node.lvl and world.level < node.lvl then return false end
    if node.sourceQuest and not world.quest then return false end
    if node.timeline and not world.client then return false end
    if node.cost and world.inventory < node.cost[1][3] then return false end
    if node.u and not world.unavailable then return false end
    return true
end
check(not item(gated, 22315, "4", conditions).obtainable and visits == 3, "every ancestor checked")
world.unavailable = true
check(item(gated, 22315, "4", conditions).obtainable, "requirements all pass")
for _, change in ipairs({ { "level", 50 }, { "quest", false }, { "inventory", 0 }, { "client", false } }) do
    local old = world[change[1]]
    world[change[1]] = change[2]
    local inspected = item(gated, 22315, "4", conditions)
    check(not inspected.obtainable and #inspected.routes == 1, "inspection cannot bypass " .. change[1])
    world[change[1]] = old
end

if arg[2] == "--windows" then
    local data = dofile(assert(arg[3], "compiled windows fixture required"))
    obtainable(data, 230818, "vanilla.5", false)
    obtainable(data, 230818, "fixture.5.1", true)
    obtainable(data, 230818, "fixture.5.2", false)
    obtainable(data, 230818, "fixture.5.10", true)
    obtainable(data, 19364, "fixture.5.10", false)
    obtainable(data, 11140, "vanilla.1", true) -- start works for an ordinary named policy
elseif arg[2] and arg[2] ~= "--unit" then
    local contexts = { "retail", "progression:main", "anniversary:main", "era:main", "sod:main", "sod:replay", "progression:replay" }
    local compiled = {}
    for _, context in ipairs(contexts) do
        local slug = context:gsub(":", "-")
        local a = dofile(arg[2] .. "/A/" .. slug .. ".lua")
        equal(a, dofile(arg[2] .. "/B/" .. slug .. ".lua"))
        equal(a, dofile(arg[2] .. "/C/" .. slug .. ".lua"))
        check(a.context == context, "context identity")
        local function metadata(nodes)
            for _, node in ipairs(nodes) do
                check(node.progressionKey == nil and node.flavors == nil, "input annotation leaked")
                local seen = {}
                for _, scope in ipairs(node.progressionScopes or {}) do
                    check(not seen[scope], "duplicate cumulative scope")
                    seen[scope] = true
                    check(a.policies[scope] ~= nil, "compiled scope without policy")
                end
                if node.groups then metadata(node.groups) end
            end
        end
        metadata(a.groups)
        compiled[context] = a
    end
    local retail = compiled.retail
    for _, id in ipairs({ 230818, 231913, 235787, 233634, 213410 }) do
        check(#item(retail, id, nil).routes == 0, "Retail leaked special item " .. id)
    end
    local normal = obtainable(retail, 19364, nil, true)
    check(not ancestor(normal.routes[1], "difficultyID", 9), "ordinary BWL stays flat")
    local normalGnomer = obtainable(retail, 9449, nil, true)
    check(#normalGnomer.routes == 1, "ordinary Gnomeregan route count")
    ordinaryGnomer(normalGnomer.routes[1])
    obtainable(retail, 11934, nil, true)

    local sod = compiled["sod:main"]
    obtainable(sod, 213410, "vanilla.1", false)
    obtainable(sod, 213410, "vanilla.2", true)
    local oldGnomer = obtainable(sod, 9449, "vanilla.2", false)
    check(#oldGnomer.routes == 1 and oldGnomer.routes[1].schedule == "disabled", "ordinary Gnomer retained as disabled history")
    check(ancestor(oldGnomer.routes[1], "difficultyID", 1) ~= nil, "SoD Gnomeregan history keeps its original normal-difficulty parent")
    obtainable(sod, 223539, "vanilla.3", true)
    obtainable(sod, 223539, "vanilla.4", true) -- opening the second half does not close the early route
    obtainable(sod, 227948, "vanilla.3", false)
    obtainable(sod, 227948, "vanilla.4", true)
    local emperor = obtainable(sod, 11934, "vanilla.3", false)
    check(#emperor.routes == 1, "Emperor's Seal retains its acquisition route")
    check(ancestor(emperor.routes[1], "encounterID", 387) ~= nil, "Emperor's Seal belongs to encounter 387")
    check(ancestor(emperor.routes[1], "creatureID", 9019) ~= nil, "Emperor Dagran Thaurissan NPC identity")
    check(evaluate.scopeState(sod, "sod:main:brd.second-half", "vanilla.3") == "future", "BRD second half is future in phase 3")
    check(evaluate.scopeState(sod, "sod:main:brd.second-half", "vanilla.4") == "active", "BRD second half opens in phase 4")
    obtainable(sod, 11934, "vanilla.4", true)
    for _, view in ipairs({ "vanilla.3", "vanilla.4" }) do
        local early = evaluate.find(sod, { encounterID = 369 }, view, satisfied)
        check(early.obtainable, "early BRD boss remains open at " .. view)
        local late = evaluate.find(sod, { encounterID = 387, creatureID = 9019 }, view, satisfied)
        check(#late.routes == 1 and late.obtainable == (view == "vanilla.4"), "later BRD boss boundary at " .. view)
    end
    for _, view in ipairs(sod.milestones) do
        local original = obtainable(sod, 19364, view, false)
        check(#original.routes == 1 and original.routes[1].schedule == "disabled", "original BWL history retained")
        check(ancestor(original.routes[1], "difficultyID", 9) ~= nil, "original BWL keeps history parent")
        local originalAQ = obtainable(sod, 21126, view, false)
        check(#originalAQ.routes == 1 and originalAQ.routes[1].schedule == "disabled", "original AQ history retained")
        local unknown = obtainable(sod, 228082, view, false)
        check(#unknown.routes == 1 and unknown.routes[1].schedule == "unknown", "DFC main uncertainty is explicit, not absent")
    end
    obtainable(sod, 230818, "vanilla.4", false)
    obtainable(sod, 230818, "vanilla.5", true)
    local head = obtainable(sod, 19003, "vanilla.5", true)
    check(#head.routes == 2, "shared head keeps two complete routes")
    check(head.routes[1].obtainable ~= head.routes[2].obtainable, "disabled original must not contribute")
    local book = item(sod, 21109, "vanilla.5")
    check(#book.routes == 1 and #book.routes[1].scopeStates == 3, "book retains independent scope under disabled original")
    local bookPolicy = "sod:main:raid.bwl.draconic-for-dummies"
    check(sod.policies[bookPolicy].status == "unknown", "historical book mapping is not invented")
    local savedBook = sod.policies[bookPolicy]
    sod.policies[bookPolicy] = nil
    fails(function() item(sod, 21109, "vanilla.5") end, "missing policy")
    sod.policies[bookPolicy] = savedBook
    local reworkPolicy = sod.policies["sod:main:raid.bwl.sod20"]
    sod.policies["sod:main:raid.bwl.sod20"] = { windows = { { from = "vanilla.4" } } }
    obtainable(sod, 230818, "vanilla.4", false) -- a child cannot open its parent
    sod.policies["sod:main:raid.bwl.sod20"] = reworkPolicy
    for _, preparation in ipairs({ "vanilla.6.scepter", "vanilla.6.war-effort", "vanilla.6.war-effort-end", "vanilla.6.war" }) do
        obtainable(sod, 233634, preparation, false)
    end
    obtainable(sod, 233634, "vanilla.6.raids", true)

    local replay = compiled["sod:replay"]
    obtainable(replay, 228082, "vanilla.4", false)
    obtainable(replay, 228082, "fixture.dfc-open", true)
    obtainable(replay, 231913, "fixture.dfc-open", false)
    obtainable(replay, 231913, "vanilla.5", true)
    obtainable(replay, 235787, "vanilla.5", false)
    obtainable(replay, 235787, "vanilla.7", true)
    local function missingAttunement(node) return node.sourceQuest ~= 84384 end
    check(not item(replay, 228082, "fixture.dfc-open", missingAttunement).obtainable, "DFC attunement predicate")

    local anniversary = compiled["anniversary:main"]
    obtainable(anniversary, 22315, "vanilla.3", false)
    obtainable(anniversary, 22315, "vanilla.4", true)
    local summoned = item(anniversary, 22315, "vanilla.4", function(node) return node.cost == nil end)
    check(not summoned.obtainable, "Isalien summoning cost stays on full route")
    for _, context in ipairs({ "progression:main", "era:main", "anniversary:main" }) do
        local data = compiled[context]
        local gnomer = obtainable(data, 9449, data.milestones[#data.milestones], true)
        check(#gnomer.routes == 1, "one ordinary Gnomeregan route in " .. context)
        ordinaryGnomer(gnomer.routes[1])
        obtainable(data, 11934, data.milestones[1], true)
    end
    for _, context in ipairs({ "progression:main", "era:main" }) do
        local data = compiled[context]
        obtainable(data, 22315, data.milestones[#data.milestones], false)
        obtainable(data, 19364, "vanilla.3", true)
        check(#item(data, 230818, "vanilla.3").routes == 0, "non-SoD must not construct rework")
    end
    local set2 = compiled["progression:replay"]
    obtainable(set2, 22315, "vanilla.4", false)
    obtainable(set2, 22315, "fixture.set2-open", true)
end
print("Lua 5.1 phase example checks passed (" .. checks .. " assertions)")
