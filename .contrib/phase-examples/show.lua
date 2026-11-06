-- Comparison tooling (P4 example / Retail default): print the acquisition routes in a generated database for one milestone and item.
assert(_VERSION == "Lua 5.1", "Run this example with Lua 5.1")
if #arg ~= 3 or not tonumber(arg[3]) then
    io.stderr:write("Usage: lua5.1 show.lua OUTPUT.lua MILESTONE|- ITEM_ID\n")
    os.exit(2)
end
local here = arg[0]:match("^(.*[/\\])") or "./"
local evaluate = dofile(here .. "evaluate.lua")
local data = dofile(arg[1])
local view = arg[2]
if view == "-" then view = nil end

local result = evaluate.find(data, { itemID = tonumber(arg[3]) }, view, function()
    return true -- Compare scheduling with all ordinary requirements satisfied.
end)
print(("Context %s | view %s | item %s"):format(data.context, view or "ordinary default", arg[3]))
if #result.routes == 0 then print("No route in this database."); return end
local fields = {"instanceID", "difficultyID", "encounterID", "npcID", "headerID", "objectID", "questID", "itemID"}
for _, route in ipairs(result.routes) do
    local names = {}
    for _, node in ipairs(route.nodes) do
        for _, field in ipairs(fields) do
            if node[field] then
                names[#names + 1] = field .. "=" .. node[field]
                break
            end
        end
    end
    print(("  %-9s %s"):format(route.schedule, table.concat(names, " / ")))
    for _, scope in ipairs(route.scopeStates) do
        print(("    %s  %s"):format(scope.state, scope.key))
    end
end
print(result.obtainable and "At least one route passes the schedule." or "No route passes the schedule.")
