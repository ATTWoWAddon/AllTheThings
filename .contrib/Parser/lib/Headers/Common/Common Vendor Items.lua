COMMON_VENDOR_ITEMS = createHeader({
	readable = "Common Vendor Items",
	constant = "COMMON_VENDOR_ITEMS",
	npcfill = true,
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in the NPCExpandHeaders / SpecificSources
	-- #endif
	icon = 133785,
	text = {
		-- [[~BATTLE_PET_BREED_QUALITY2.." "..BATTLE_PET_SOURCE_3 .. " " .. ITEMS]]
		-- Technically you can use the above string, but it's kinda dirty.
		en = "Common Vendor Items",
		-- TODO: de = "",
		es = "Objetos comunes entre vendedores",
		mx = "Objetos comunes entre vendedores",
		fr = "Objets communs des vendeurs",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Обычные предметы у Торговцев",
		cn = "商人共同物品",
		tw = "商人共通物品",
	},
});

-- Expects a table with 'crs' (Vendor NPCIDs) and 'groups' (Common Vendor Items)
n_CommonVendorItems = function(t)
	if not t.crs then
		print("ERROR: n_CommonVendors: No NPCs specified in 'crs'");
		return {}
	end
	t = togroups(t)
	local groups = t.groups
	if not groups then
		print("ERROR: n_CommonVendors: No 'groups' data specified in 't'");
		return {}
	end
	-- copy the crs table to each item in the group
	for i = 1,#groups do
		groups[i].crs = t.crs
	end
	return n(COMMON_VENDOR_ITEMS, {
		groups = groups,
	})
end
