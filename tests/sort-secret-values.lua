-- Run with Lua 5.1 from the repository root: lua tests/sort-secret-values.lua
-- Verifies that lib/Sort.lua never lowercases a secret value; it sorts as "".
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root = arg[1] or "."
local secret = "ZZZ"
local app = {WOWAPI = {issecretvalue = function(v) return v == secret end}}
local chunk = assert(loadfile(root .. "/lib/Sort.lua"))
chunk("AllTheThings", app)
local strings = app.SortDefaults.Strings
assert(strings("Alpha", "beta"), "plain strings sort case-insensitively")
assert(not strings("beta", "Alpha"), "plain strings sort case-insensitively")
assert(strings(secret, "a"), "secret value sorts as empty, before any text")
assert(not strings("a", secret), "secret value sorts as empty, before any text")
print("sort-secret-values: 4 assertions passed")
