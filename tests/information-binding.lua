-- Run from the repository root: lua5.1 tests/information-binding.lua [repository-root]
-- Executes the actual Information binding converter without the game UI.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root = arg[1] or "."
local file = assert(io.open(root .. "/src/Settings/Pages/Interface - Information.lua", "r"))
local source = file:read("*a"):gsub("\r\n", "\n")
file:close()
local converterSource = assert(source:match("^(.-)\n%-%- Class Template"))
local checks = 0
local function equal(actual, expected, label)
	assert(actual == expected, (label or "value") .. ": expected " .. tostring(expected) .. ", got " .. tostring(actual))
	checks = checks + 1
end
local function initialize(optionalLabels)
	local queries, bindingByItem = {}, {}
	local app = {
		L = {},
		Settings = { CreateOptionsPage = function() return {} end },
		Modules = {
			Color = { Colorize = function(value) return value end },
			RetrievingData = { IsRetrieving = function(value) return value == nil end },
		},
		WOWAPI = {
			GetItemInfo = function(item)
				queries[#queries + 1] = item
				local binding = bindingByItem[item]
				if binding == nil then return end
				return "Fixture Item", "item:123", 2, 77, 1, "Armor", "Cloth", 1, "INVTYPE_HEAD", 123, 1, 4, 1, binding
			end,
		},
	}
	local env = setmetatable({
		ITEM_BIND_ON_PICKUP = "Pickup",
		ITEM_BIND_ON_EQUIP = "Equip",
		ITEM_BIND_ON_USE = "Use",
		ITEM_BIND_QUEST = "Quest",
	}, { __index = _G })
	if optionalLabels then
		env.ITEM_ACCOUNTBOUND = "Account"
		env.ITEM_BNETACCOUNTBOUND = "BNet Account"
		env.ITEM_ACCOUNTBOUND_UNTIL_EQUIP = "Account Until Equipped"
		if optionalLabels ~= "fallback" then
			env.ITEM_BIND_TO_ACCOUNT = "Account"
			env.ITEM_BIND_TO_BNETACCOUNT = "BNet Account"
			env.ITEM_BIND_TO_ACCOUNT_UNTIL_EQUIP = "Account Until Equipped"
		end
	end
	local chunk = assert(loadstring(converterSource, "@Information-converters"))
	setfenv(chunk, env)
	chunk("AllTheThings", app)
	return app.Settings.InformationTypeConversionMethods, queries, bindingByItem, app
end

local conversions, queries, bindings, app = initialize(true)
for value, label in pairs({ [1] = "Pickup", [2] = "Equip", [3] = "Use", [4] = "Quest", [7] = "Account", [8] = "BNet Account", [9] = "Account Until Equipped" }) do
	equal(conversions.b(value, {}), label, "binding " .. value)
end
equal(conversions.b(0, {}), nil, "unbound item")
for _, value in ipairs({ 5, 6, 99 }) do
	equal(tostring(conversions.b(value, {})), tostring(value), "unrecognized nonzero binding " .. value)
end
equal(#queries, 0, "metadata-only values do not request item data")

bindings[123] = 3
equal(conversions.b(3, { itemID = 123 }), "Use", "native bind-on-use remains bind-on-use")
equal(queries[#queries], 123, "item ID lookup")
bindings[123] = 9
equal(conversions.b(3, { itemID = 123 }), "Account Until Equipped", "account override is distinguished from bind-on-use")
bindings[123] = 7
equal(conversions.b(3, { itemID = 123 }), "Account", "native account binding")
bindings["item:123:bonus"] = 9
bindings["item:123"] = 3
equal(conversions.b(3, { itemID = 123, rawlink = "item:123:bonus", link = "item:123" }), "Account Until Equipped", "raw item link preserves its binding")
equal(queries[#queries], "item:123:bonus", "raw link lookup")
equal(conversions.b(3, { itemID = 123, link = "item:123" }), "Use", "item link lookup")
equal(queries[#queries], "item:123", "link takes precedence over item ID")
equal(conversions.b(3, { itemID = 999 }), "3", "unloaded item keeps an ambiguous binding numeric")
local count = #queries
equal(conversions.b(1, { itemID = 123 }), "Pickup", "explicit pickup metadata remains authoritative")
equal(#queries, count, "only ambiguous binding metadata needs native lookup")
bindings[123] = 9
app.ActiveRowReference = { questID = 456 }
equal(conversions.b(3, { itemID = 123, b = 3 }), "Account Until Equipped", "row without binding keeps the reference item context")
bindings[321] = 3
app.ActiveRowReference = { itemID = 321, b = 3 }
equal(conversions.b(3, { itemID = 123, b = 3 }), "Use", "row binding uses its own item context")
app.ActiveRowReference = { b = 3 }
equal(conversions.b(3, { itemID = 123, b = 3 }), "Use", "non-item row binding remains metadata-only")
app.ActiveRowReference = nil

local withoutOptionalLabels = initialize(false)
for _, value in ipairs({ 7, 8, 9 }) do
	equal(tostring(withoutOptionalLabels.b(value, {})), tostring(value), "missing optional binding label " .. value)
end
local fallbackLabels = initialize("fallback")
equal(fallbackLabels.b(7, {}), "Account", "fallback account label")
equal(fallbackLabels.b(8, {}), "BNet Account", "fallback Battle.net account label")
equal(fallbackLabels.b(9, {}), "Account Until Equipped", "fallback account-until-equipped label")

print("Information binding tests passed: " .. checks .. " assertions")
