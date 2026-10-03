RAID_GEAR_CONVERSION = createHeader({
	readable = "Raid Gear Conversion",
	icon = 1391675,
	text = {
		en = "Raid Gear Conversion",
		-- TODO: de = "",
		es = "Conversión de equipo de banda",
		mx = "Conversión de equipo de banda",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "团队装备转换",
		tw = "團隊裝備轉換",
	},
	description = {
		en = "When transferring a Timerunner to Retail, any Normal+ raid drop in your |cffFF0000bags and bank only|R will grant the appearances for their LFR, N, H, and M difficulty Remix variants.",
		es = "Al transferir un Cronoaventurero a retail, cualquier botín de banda Normal+ en tus |cffFF0000bolsas o banco solamente|R otorgará las apariencias para sus variantes de Remix de dificultad BdB, N, H, y M.",
		mx = "Al transferir un Cronoaventurero a retail, cualquier botín de banda Normal+ en tus |cffFF0000bolsas o banco solamente|R otorgará las apariencias para sus variantes de Remix de dificultad BdB, N, H, y M.",
		cn = "将幻境新生角色转移到正式服时，你 |cffFF0000仅限背包和银行|R 中的任何普通及以上难度的团队副本掉落，都会解锁其随机团队、普通、英雄和史诗难度幻境新生版本的幻化外观。",
	},
});

-- allows creating an Item which has a cost assignment from the other variants of that item
i_RAID_GEAR_CONVERSION = function(itemID, t)
	-- This is expected to be an LFR variant of the Item
	local item = i(itemID, t)
	item.providers = {
		{"i",modItemId(itemID,3)},	-- Normal
		{"i",modItemId(itemID,5)},	-- Heroic
		{"i",modItemId(itemID,6)},	-- Mythic
	}
	return item
end
